#' @title Build the API endpoint
#' @description Take an endpoint and attach it to the base url
#'
#' @param end_point An API endpoint.
#'
#' @return
#'
#' @examples
#' api_base_url <- 'https://finnhub.io/api/v1/'
#' endpoint_url('stock/peers')
endpoint_url <- function(end_point, ...){
  paste0(api_base_url, end_point)
}
