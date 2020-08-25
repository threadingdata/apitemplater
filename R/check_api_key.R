#' @title Check API key
#' @description Confirm environment variable XXXX_KEY has been set in working environment
#'
#' @return
#' @export
#'
#' @examples
#' check_api_key()
check_api_key <- function(){
  Sys.getenv('XXXX_KEY')
}
