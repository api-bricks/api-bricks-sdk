#' @docType class
#' @title OrdType
#' @description OrdType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrdType <- R6::R6Class(
  "OrdType",
  public = list(
    #' Initialize a new OrdType class.
    #'
    #' @description
    #' Initialize a new OrdType class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_OrdType()

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
    #' @return OrdType in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of OrdType
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrdType
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrdType
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
    #' @return OrdType in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of OrdType
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrdType
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrdType
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
.parse_OrdType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[LIMIT]")
  unlist(strsplit(res, ", "))
}

