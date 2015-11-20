test_that("Reorder Gives Correct Order",{
  x <- c("Jeff","Jeff","Jeff","Gal","Gal","Adrian")
  x.factor <- as.factor(x)

  test <- reorder_factor(x.factor)
  levels <- levels(test)

  expect_identical(levels,c("Jeff","Gal","Adrian"))
})

test_that("Only Accepts Factors",{
  x <- 1313
  y <- "Hello World"

  expect_error(reorder_factor(x))
  expect_error(reorder_factor(y))
})

test_that("Order Doesn't Matter",{
   x <- c("Jeff","Jeff","Jeff","Gal","Gal","Adrian")
   x <- as.factor(x)
  y <- c("Adrian","Jeff","Gal","Jeff","Gal","Jeff")
   y <- as.factor(y)
   expect_identical(levels(reorder_factor(x)),levels(reorder_factor(y)))
 })

test_that("Returns Factor",{
   x <- c("Jeff","Jeff","Jeff","Gal","Gal","Adrian")
   x <- as.factor(x)

   expect_is(reorder_factor(x),"factor")
 })
