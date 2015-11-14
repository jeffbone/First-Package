# write dreq_out()
## input: factor
## output: tbl_df w/ input factor levels and frequencies

freq_out <- function(x){
  xdf <- dplyr::data.frame(x)
  dplyr::count(xdf, x)
}
