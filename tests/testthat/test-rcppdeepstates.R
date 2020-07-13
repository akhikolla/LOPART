library(testthat)
library(RcppDeepState)
library(nc)
context("rcppdeepstate")

package_path <- system.file(package="LOPART")
package_path <- gsub("/inst","",package_path)
result <- RcppDeepState::deepstate_pkg_create(package_path)
test_that("deepstate create TestHarness",{
expect_equal(result,"Testharness created!!")
})
RcppDeepState::deep_harness_compile_run(package_path)
error.list <- RcppDeepState::user_error_display("/home/akhila/R/LOPART/inst/testfiles/LOPART_interface_log")
test_that("log files check",{
expect_equal(paste0(error.list$src.file.lines,collapse=""),"")
})
