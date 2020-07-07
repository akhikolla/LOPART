library(testthat)
library(RcppDeepState)
library(nc)
context("rcppdeepstate")

insts_path <- system.file(package="LOPART")
print(insts_path)
insts_path <- gsub("/LOPART.Rcheck/LOPART","",insts_path)
print(insts_path)
RcppDeepState::make_run()
RcppDeepState::deepstate_ci_setup(insts_path)
travis_path<-file.path(insts_path,".travis.yml")
testfile<-"test-rcppdeepstates.R"
testdir_path<-file.path(insts_path,"tests/testthat/",testfile)
test_that("deepstate ci setup test", {
  expect_true(file.exists(travis_path))
  expect_true(file.exists(testdir_path))
})

result <- RcppDeepState::deepstate_pkg_create(insts_path)
test_that("deepstate create TestHarness",{
  expect_equal(result,"Testharness created!!")
})
RcppDeepState::deep_harness_compile_run(insts_path)
error.list <- RcppDeepState::user_error_display(system.file("testfiles/LOPART_interface_log",package="LOPART"))
test_that("log files check",{
  expect_equal(paste0(error.list$src.file.lines,collapse=""),"")
})