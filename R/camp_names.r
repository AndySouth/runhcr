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

  #data1 <- jsonlite::fromJSON(getURL(url))
  data1 <- jsonlite::fromJSON(url)

  #data2 <- jsonlite::fromJSON(url, simplifyDataFrame = TRUE)

  # 'data.frame':	15 obs. of  3 variables:
  #   $ name       : chr  "Country Level" "Katanga" "Maniema" "Nord-Kivu" ...
  # $ country    : chr  "Democratic Republic of the Congo" "Democratic Republic of the Congo" "Democratic Republic of the Congo" "Democratic Republic of the Congo" ...
  # $ settlements:List of 15
  # ..$ :'data.frame':	0 obs. of  0 variables
  # ..$ :'data.frame':	2 obs. of  4 variables:
  #   .. ..$ name      : chr  "Kalemie (Rural Area)" "Lubumbashi"
  # .. ..$ latitude  : chr  "-5.908278000" "-11.994540000"
  # .. ..$ longitude : chr  "29.198500000" "27.479600000"
  # .. ..$ updated_at: chr  "2015-11-12 12:19:21" "2015-11-12 12:21:45"

  #so it has name which is 15
  #and then has elements

  data1$name

}
