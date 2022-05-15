#'  More complex population growth
#' @param time  period of growth
#' @param r exponential growth rate
#' @param g linear growth rate
#' @param K carrying capacity in units of carbon 
#' @param C forest size measured in units of carbon 
#' @param threshold threshold canopy closure in units of carbon
#' @param parms as list with six values C, time, threshold, K, r, g 
#' @return change in population


forest_growth = function(time, C, parms) {
  
  #C is below a threshold canopy closure
  if(C < parms$threshold){
    dC_dt = parms$r * C
  }
  #C is above a threshold canopy closure
  else{
    dC_dt = parms$g * (1 - (C / parms$K))
  }
  
  return(list(dC_dt))
}
