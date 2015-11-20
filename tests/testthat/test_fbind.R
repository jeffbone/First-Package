test_that("fbind binds factors",{
  a <- factor(c("Jeff","Gal"))
  b <- factor(c("Adrian","Lena"))
  res <- fbind(a,b)
  expect_identical(res,factor(c("Jeff","Gal","Adrian","Lena")))

})

test_that("Only Accepts Factors",{
  x <- 1313
  y <- "Hello World"
  a <- factor(c("a","b"))

  expect_error(fbind(x,a))
  expect_error(fbind(a,y))
})

test_that("Returns Factor",{
  x <- c("Jeff","Jeff","Jeff","Gal","Gal","Adrian")
  x <- as.factor(x)
  a <- factor(c("a","b"))

  expect_is(fbind(x,a),"factor")
})
