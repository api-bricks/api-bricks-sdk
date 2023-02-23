#' @docType class
#' @title TimeInForce
#' @description TimeInForce Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TimeInForce <- R6::R6Class(
  "TimeInForce",
  public = list(
    #' Initialize a new TimeInForce class.
    #'
    #' @description
    #' Initialize a new TimeInForce class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_TimeInForce()

      stopifnot(length(val) == 1L)

      if (!val %in% enumvec)
          stop("Use one of the valid values: ",
              paste0(enumvec, collapse = ", "))
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TimeInForce in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of TimeInForce
    #'
    #' @description
    #' Deserialize JSON string into an instance of TimeInForce
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeInForce
    #' @export
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TimeInForce in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of TimeInForce
    #'
    #' @description
    #' Deserialize JSON string into an instance of TimeInForce
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeInForce
    #' @export
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_TimeInForce <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[GOOD_TILL_CANCEL, GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS, FILL_OR_KILL, IMMEDIATE_OR_CANCEL]")
  unlist(strsplit(res, ", "))
}

