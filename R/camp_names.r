#' names of camps from unhcr api for a country
#'
#'
#' @param name_country country name
#'
#' @examples
#' camp_names('burundi')
#'
#' @return dataframe
#' @export

camp_names <- function ( name_country ) {

  url <- paste0('http://data.unhcr.org/api/regions/show.json?id=', name_country)

  #data1 <- fromJSON(getURL(url))

  data2 <- jsonlite::fromJSON(url, simplifyDataFrame = TRUE)

  data2

}
