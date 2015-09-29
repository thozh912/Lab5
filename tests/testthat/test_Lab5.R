library(Lab5)

context("Web API")

test_that("We can GET all channels and the correct channels",{
  expect_equal(length(get_channels()[,1]),57)
  expect_equal(get_channels()[3,1],"P3")
  expect_equal(get_channels()[which(get_channels()[,1] == "Barnwebben"),2],"1000")
  
  
})

test_that("We can GET the correct programs and their channels",{
  expect_equal(get_programs(get_channels())[1,1],"Sporten P4 Dalarna")
  expect_that("Unknown channel" %in% get_programs(get_channels())[,3],is_true())
  expect_that(is.data.frame(get_song("P3",get_channels())),is_true())
  expect_equal(length(get_song("P3",get_channels())),2)
})