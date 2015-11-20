#' Reorder the levels of a factor by frequency
#'
#' @param x factor
#'
#' @return factor
#' @export
#' @examples
#' reorder(iris$Species)

reorder_factor <- function(x) {
  library(dplyr)
  if(!is.factor(x)) stop("Not a Factor")

   xdf <- dplyr::data_frame(x)

  freq <- xdf %>% dplyr::group_by(x) %>% dplyr::tally()
  new_order <- stats::reorder(freq$x,freq$n,dplyr::desc)

  factor(new_order)
}
