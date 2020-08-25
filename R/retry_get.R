#' @title GET() retry function.
#' @description If GET() fails, retry endpoint a set number of times.
#'
#' @param url Complete endpoint
#' @param query The GET() query
#' @param times Number of times to retry GET() query
#'
#' @importFrom httr RETRY GET
#'
#' @return
#'
#' @examples
#' retry_get(url = api_endpoint('stock_peers'),
#' query = list(symbol = 'NVDA'),
#' times = 10)
retry_get <- function(url, query, times = 10, ...){

  Sys.sleep(api_sleep)

  httr::RETRY('GET',
              url,
              query = query,
              times = times) %>%
    unpack_json()
}
