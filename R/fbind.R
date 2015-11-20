#' Binds Two Factors Together
#'
#' @param a a factor
#' @param b a factor
#'
#' @return a factor combined of the input factors
#' @export
#'@examples ab <- as.factor(c("a","b"))
#'          cd <- as.factor(c("c","d"))
#'          fbind(ab,cd)
fbind <- function(a,b){
  if(!is.factor(a)) stop("Not a Factor")
  if(!is.factor(b)) stop("Not a Factor")
  factor(c(as.character(a),as.character(b)))
}
