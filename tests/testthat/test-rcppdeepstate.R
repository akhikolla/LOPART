library(testthat)
library(RcppDeepState)
library(nc)
context("rcppdeepstate")

path<-system.file(package="LOPART")
# print(path)
path <- gsub("/inst","",path)
RcppDeepState::deepstate_create_static_lib()
result <- RcppDeepState::deepstate_pkg_create(path)#"/home/travis/build/akhikolla/LOPART")
test_that("deepstate pkg create in lopart", {
  expect_equal(result,"Testharness created!!")
  
})
#path <- system.file(package="lopartcheck")
RcppDeepState::deep_harness_compile_run(path)#"/home/travis/build/akhikolla/LOPART")
#system("cat /home/travis/build/akhikolla/LOPART/inst/testfiles/LOPART_interface_log")
result <- user_error_display(system.file("testfiles/LOPART_interface_log",package="LOPART"))
#"/home/travis/build/akhikolla/LOPART/inst/testfiles/LOPART_interface_log")
test_that("deepstate pkg create in lopart", {
expect_equal(paste0(result$src.file.lines,collapse = ""),"")
})
