#' @title API endpoint selection
#' @description Select the correct endpoint from an API
#'
#' @param end_point An API endpoint.
#'
#' @return
#'
#' @examples
#' api_endpoint('revenue_est')
api_endpoint <- function(end_point, ...){

  url <- switch(end_point,
                # Stock Fundamentals--------------------------------------------
                'company_symbols' = endpoint_url('/stock/symbol'), # Finnhub reinstated (7/17/2020)
                'company_profile' = endpoint_url('/stock/profile'),
                'company_profile2' = endpoint_url('/stock/profile2'),
                'company_symbols' = endpoint_url('/stock/symbol'),
                'company_executive' = endpoint_url('/stock/executive'),
  )
  url
}
