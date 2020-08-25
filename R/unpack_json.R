#' @title Unpack JSON
#' @description Helper function to unpack returned JSON object
#'
#' @param res Response object from httr::GET() call to an API
#'
#' @importFrom httr warn_for_status content
#' @importFrom jsonlite fromJSON
#'
#' @return
#' @export
#'
#' @examples
#' unpack_json(finnhub_GET_response_object)
unpack_json <- function(res){
  res %>%
    httr::warn_for_status() %>%
    httr::content(as = 'text') %>%
    jsonlite::fromJSON()
}
