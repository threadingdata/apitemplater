.onLoad <- function(libname, pkgname){
  api_base_url <- 'https://fakeapi.io/api/v1/'
  assign('api_base_url', api_base_url,
         envir = parent.env(environment()))

  api_sleep <- 0.3
  assign('api_sleep', api_sleep,
         envir = parent.env(environment()))

  api_timezone <- 'America/Los_Angeles'
  assign('api_timezone', api_timezone,
         envir = parent.env(environment()))

}
