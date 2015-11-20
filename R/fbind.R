#' Binds Two Factors Together
#'
#' @param a a factor
#' @param b a factor
#'
#' @return a factor combined of the input factors
#' @export
#'
#' @examples
#' fbind(factor(c("a,b),factor(c("c,d")))
fbind <- function(a,b){
  if(!is.factor(a)) stop("Not a Factor")
  if(!is.factor(b)) stop("Not a Factor")
  factor(c(as.character(a),as.character(b)))
}
