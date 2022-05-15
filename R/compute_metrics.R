#'  Compute max and mean values of C 
#' @param result
#' @return maximum and mean values of C 

compute_metrics = function(result) {
  maxpop = max(result$P)
  idx = which.max(result$P)
  meanpop = mean(result$P)
  return(list(maxpop = maxpop, meanpop = meanpop))
}
