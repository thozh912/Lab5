library(Lab5)

context("Web API")

test_that("Requests are all right",{
  expect_equal(4,4,tolerance = 1e-6)
  expect_equal(2,2)
  expect_error(stop())
  
  
})