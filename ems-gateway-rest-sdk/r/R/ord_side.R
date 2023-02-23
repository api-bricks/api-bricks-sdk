#' @docType class
#' @title OrdSide
#' @description OrdSide Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrdSide <- R6::R6Class(
  "OrdSide",
  public = list(
    #' Initialize a new OrdSide class.
    #'
    #' @description
    #' Initialize a new OrdSide class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_OrdSide()

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
    #' @return OrdSide in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of OrdSide
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrdSide
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrdSide
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
    #' @return OrdSide in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of OrdSide
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrdSide
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrdSide
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
.parse_OrdSide <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[BUY, SELL]")
  unlist(strsplit(res, ", "))
}

