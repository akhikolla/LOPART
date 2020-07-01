library(testthat)
library(RcppDeepState)
library(nc)
context("rcppdeepstate")

path<-system.file("inst",package="LOPART")
print(path)
print("paths")
paths <- gsub("/inst","",path)
print(paths)
RcppDeepState::deepstate_create_static_lib()
result <- RcppDeepState::deepstate_pkg_create("/home/travis/build/akhikolla/LOPART")
test_that("deepstate pkg create in lopart", {
  expect_equal(result,"Testharness created!!")
  
})
#path <- system.file(package="lopartcheck")
RcppDeepState::deep_harness_compile_run("/home/travis/build/akhikolla/LOPART")
cat(system.file("testfiles/LOPART_interface_log",package = "LOPART"))
result <- user_error_display(system.file("testfiles/LOPART_interface_log",package = "LOPART"))
test_that("deepstate pkg create in lopart", {
expect_equal(paste0(result$src.file.lines,collapse = ""),"")
})
