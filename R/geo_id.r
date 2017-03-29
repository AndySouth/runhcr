#' geo_id for a camp from the name from unhcr api
#'
#'
#' @param name_camp name of the camp
#'
#' @examples
#' geo_id("Katanga")
#'
#' @return string
#' @export

geo_id <- function ( name_camp ) {

  #for now uses a lookup table from Diana because we couldn't work from the API
  data(geo_id_lookup)

  #which(geo_id_lookup$name=="Katanga")
  geo_id_lookup$geo_id[ which(geo_id_lookup$name==name_camp)]

  #but seems that the IDs can be repeated ....
  #Katanga
  #963, 499

}
