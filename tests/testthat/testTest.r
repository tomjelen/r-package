context("my first test")

test_that("1 is 1", {
  expect_equal(1, 1)
})

test_that("can access package code", {
  theMatrix <- getMatrix()
  expect_equal(theMatrix["mandag", "eur"], 7.5)  
})