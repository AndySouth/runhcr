#' camp population over time from unhcr api for a camp specified by geo_id
#' e.g. from :
#' https://data2.unhcr.org/api/population/get/timeseries?geo_id=933&frequency=day&population_collection=10
#'
#' @param geo_id id for the camp
#'
#' @examples
#' camp_popn(933)
#' camp_popn(499)
#'
#' @return dataframe
#' @export

camp_popn <- function ( geo_id ) {

  #I don't know what the population_collection=10 does
  url <- paste0('https://data2.unhcr.org/api/population/get/timeseries?geo_id=', geo_id,'&frequency=day&population_collection=10')

  #data1 <- jsonlite::fromJSON(url)

  data2 <- jsonlite::fromJSON(url, simplifyDataFrame = TRUE)

  data2$data$timeseries

}
