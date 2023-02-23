#' Create a new Position
#'
#' @description
#' Position Class
#'
#' @docType class
#' @title Position
#' @description Position Class
#' @format An \code{R6Class} generator object
#' @field exchange_id Exchange identifier used to identify the routing destination. character [optional]
#' @field data  list(\link{PositionDataInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Position <- R6::R6Class(
  "Position",
  public = list(
    `exchange_id` = NULL,
    `data` = NULL,
    #' Initialize a new Position class.
    #'
    #' @description
    #' Initialize a new Position class.
    #'
    #' @param exchange_id Exchange identifier used to identify the routing destination.
    #' @param data data
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`exchange_id` = NULL, `data` = NULL, ...) {
      if (!is.null(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Position in JSON format
    #' @export
    toJSON = function() {
      PositionObject <- list()
      if (!is.null(self$`exchange_id`)) {
        PositionObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`data`)) {
        PositionObject[["data"]] <-
          lapply(self$`data`, function(x) x$toJSON())
      }
      PositionObject
    },
    #' Deserialize JSON string into an instance of Position
    #'
    #' @description
    #' Deserialize JSON string into an instance of Position
    #'
    #' @param input_json the JSON input
    #' @return the instance of Position
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[PositionDataInner]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Position in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`exchange_id`)) {
          sprintf(
          '"exchange_id":
            "%s"
                    ',
          self$`exchange_id`
          )
        },
        if (!is.null(self$`data`)) {
          sprintf(
          '"data":
          [%s]
',
          paste(sapply(self$`data`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Position
    #'
    #' @description
    #' Deserialize JSON string into an instance of Position
    #'
    #' @param input_json the JSON input
    #' @return the instance of Position
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchange_id` <- this_object$`exchange_id`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[PositionDataInner]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to Position
    #'
    #' @description
    #' Validate JSON input with respect to Position and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Position
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# Position$unlock()
#
## Below is an example to define the print fnuction
# Position$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Position$lock()

