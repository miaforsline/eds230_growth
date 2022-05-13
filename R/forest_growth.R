#'  More complex population growth
#' @param time  period of growth
#' @param pop initial population
#' @param parameters$r - exponential growth rate
#' @param parameters$g - linear growth rate
#' @parms parameters$K - carrying capacity in units of carbon 
#' @parms parameters$C - forest size measured in units of carbon 
#' @parms parameters$threshold - threshold canopy closure in units of carbon
#' @return change in population
#'
forest_growth = function(time, pop, parameters) {
  
  #C is below a threshold canopy closure
  if(parameters$C < parameters$threshold){
    dC_dt = parameters$r * parameters$C
  }
  #C is above a threshold canopy closure
  else{
    dC_dt = parameters$g * (1 - (parameters$C / parameters$K))
  }
  
  return(list(dC_dt))
}
