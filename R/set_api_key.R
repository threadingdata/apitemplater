#' @title Set API Key
#'
#' @description Add your API key to environment variable XXXX_KEY
#'
#' @param key Insert your API key
#'
#' @return
#' @export
#'
#' @examples
#' set_api_key('fakekey123456789fakekey')
set_api_key <- function(key){
  Sys.setenv(XXXX_KEY = key)
}
