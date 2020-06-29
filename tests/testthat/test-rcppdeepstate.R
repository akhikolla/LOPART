library(testthat)
library(RcppDeepState)
library(nc)
context("rcppdeepstate")

path<-system.file("inst",package="LOPART")
print(path)
print("paths")
paths <- gsub("/inst","",path)
print(paths)

result <- RcppDeepState::package_deepstate_pkg_create("/home/travis/build/akhikolla/LOPART")
test_that("deepstate pkg create in lopart", {
  expect_equal(result,"Testharness created!!")
  
})
#path <- system.file(package="lopartcheck")
RcppDeepState::package_deep_harness_compile_run("/home/travis/build/akhikolla/LOPART")

system("cat /home/travis/build/akhikolla/LOPART/inst/testfiles/LOPART_interface_log")