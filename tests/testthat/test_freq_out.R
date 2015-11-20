test_that("Freq Out Returns Correct Number",{
  x <- c("Jeff","Jeff","Jeff","Gal","Gal","Adrian")
  x.factor <- as.factor(x)

  y <- dplyr::data_frame(x = as.factor(levels(x.factor)), n = as.integer(c(1,2,3)))


  expect_identical(freq_out(x.factor),y)
})

test_that("Only Accepts Factors",{
  x <- 1313
  y <- "Hello World"

  expect_error(freq_out(x))
  expect_error(freq_out(y))
})

test_that("Order Doesn't Matter",{
  x <- c("Jeff","Jeff","Jeff","Gal","Gal","Adrian")
  x <- as.factor(x)
  y <- c("Adrian","Jeff","Gal","Jeff","Gal","Jeff")
  y <- as.factor(y)
  expect_identical(freq_out(x),freq_out(y))
})

test_that("Returns Factor",{
  x <- c("Jeff","Jeff","Jeff","Gal","Gal","Adrian")
  x <- as.factor(x)

  expect_is(freq_out(x),"tbl_df")
})
