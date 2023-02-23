#' @docType class
#' @title OrdStatus
#' @description OrdStatus Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrdStatus <- R6::R6Class(
  "OrdStatus",
  public = list(
    #' Initialize a new OrdStatus class.
    #'
    #' @description
    #' Initialize a new OrdStatus class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_OrdStatus()

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
    #' @return OrdStatus in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of OrdStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrdStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrdStatus
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
    #' @return OrdStatus in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of OrdStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrdStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrdStatus
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
.parse_OrdStatus <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[RECEIVED, ROUTING, ROUTED, NEW, PENDING_CANCEL, PARTIALLY_FILLED, FILLED, CANCELED, REJECTED]")
  unlist(strsplit(res, ", "))
}

