#' Binds Two Factors Together
#'
#' @param a a factor
#' @param b a factor
#'
#' @return a factor combined of the input factors
#' @export
#'
#' @examples
#' fbind(iris$Species[c(1,51,101)], PlantGrowth$group[c(1,11,21)])
fbind <- function(a,b){
  factor(c(as.character(a),as.character(b)))
}
