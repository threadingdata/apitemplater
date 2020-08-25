#' @title API Error Handler
#' @description Guide functionality based on response code from an API
#'
#' @param response GET() response code
#'
#' @return
#' 
#' @export
#' 
#' @examples
#' error_handler('200')
error_handler <- function(response, ...){

  url <- switch(response,
                # Errors--------------------------------------------------------
                '200' = 'Success',
                '300' = 'Response: 300',
                '400' = 'Response: 400',
                '500' = 'Response: 500'
  )
  url
}
