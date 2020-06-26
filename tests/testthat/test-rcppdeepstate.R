library(testthat)
library(RcppDeepState)
library(nc)
context("rcppdeepstate")

result <- RcppDeepState::check_print()

test_that("valid in lopart", {
  expect_equal(result,"HI function working")
  
})
vars <- system.file(package="LOPART")
print(vars)
path<-system.file("inst",package="LOPART")
print(path)
paths <- gsub("inst","",path)
print(paths)
var <- system.file("inst\testfiles",package="LOPART")
print(var)
result <- RcppDeepState::package_deepstate_pkg_create("/home/travis/build/akhikolla/LOPART/")
test_that("deepstate pkg create in lopart", {
  expect_equal(result,"Testharness created!!")
  
})
#path <- system.file(package="lopartcheck")
RcppDeepState::package_deep_harness_compile_run("/home/travis/build/akhikolla/LOPART/")
