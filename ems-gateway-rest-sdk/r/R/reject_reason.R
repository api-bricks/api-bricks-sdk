#' @docType class
#' @title RejectReason
#' @description RejectReason Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RejectReason <- R6::R6Class(
  "RejectReason",
  public = list(
    #' Initialize a new RejectReason class.
    #'
    #' @description
    #' Initialize a new RejectReason class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_RejectReason()

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
    #' @return RejectReason in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of RejectReason
    #'
    #' @description
    #' Deserialize JSON string into an instance of RejectReason
    #'
    #' @param input_json the JSON input
    #' @return the instance of RejectReason
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
    #' @return RejectReason in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of RejectReason
    #'
    #' @description
    #' Deserialize JSON string into an instance of RejectReason
    #'
    #' @param input_json the JSON input
    #' @return the instance of RejectReason
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
.parse_RejectReason <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[OTHER, EXCHANGE_UNREACHABLE, EXCHANGE_RESPONSE_TIMEOUT, ORDER_ID_NOT_FOUND, INVALID_TYPE, METHOD_NOT_SUPPORTED, JSON_ERROR]")
  unlist(strsplit(res, ", "))
}

