#' Stormwater BMP
#'
#' @param impervious fraction of the watershed that is considered "impervious"
#' @param acres watershed area in acres
#'
#' @returns the volume of stormwater that needs to be handled
#' @export
#'
#' @examples
#' predict_runoff(impervious = 0.3, acres = 1000)
predict_runoff <- function(impervious, acres){
  runoff_co <- (0.05 + 0.9 * impervious)
  cubic_feet_vo_h2o <- (3630 * 1 * runoff_co * acres)
  return(cubic_feet_vo_h2o)
}
