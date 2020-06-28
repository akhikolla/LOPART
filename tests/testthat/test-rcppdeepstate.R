library(testthat)
library(testproject)
library(nc)
context("rcppdeepstate")


print("vars")
vars <- system.file(package="LOPART")
print(vars)
print("path")
path<-system.file("inst",package="LOPART")
print(path)
print("paths")
paths <- gsub("/inst","",path)
print(paths)
var <- system.file("inst\testfiles",package="LOPART")
print(var)
result <- testproject::package_deepstate_pkg_create("/home/travis/build/akhikolla/LOPART/")
test_that("deepstate pkg create in lopart", {
  expect_equal(result,"Testharness created!!")
  
})
#path <- system.file(package="lopartcheck")
testproject::package_deep_harness_compile_run("/home/travis/build/akhikolla/LOPART/")

system("cat /home/travis/build/akhikolla/LOPART/inst/testfiles/LOPART_interface_log")