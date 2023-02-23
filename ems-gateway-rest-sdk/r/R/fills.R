#' Create a new Fills
#'
#' @description
#' Fills Class
#'
#' @docType class
#' @title Fills
#' @description Fills Class
#' @format An \code{R6Class} generator object
#' @field time Execution time. character [optional]
#' @field price Execution price. numeric [optional]
#' @field amount Executed quantity. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Fills <- R6::R6Class(
  "Fills",
  public = list(
    `time` = NULL,
    `price` = NULL,
    `amount` = NULL,
    #' Initialize a new Fills class.
    #'
    #' @description
    #' Initialize a new Fills class.
    #'
    #' @param time Execution time.
    #' @param price Execution price.
    #' @param amount Executed quantity.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`time` = NULL, `price` = NULL, `amount` = NULL, ...) {
      if (!is.null(`time`)) {
        self$`time` <- `time`
      }
      if (!is.null(`price`)) {
        self$`price` <- `price`
      }
      if (!is.null(`amount`)) {
        self$`amount` <- `amount`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Fills in JSON format
    #' @export
    toJSON = function() {
      FillsObject <- list()
      if (!is.null(self$`time`)) {
        FillsObject[["time"]] <-
          self$`time`
      }
      if (!is.null(self$`price`)) {
        FillsObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`amount`)) {
        FillsObject[["amount"]] <-
          self$`amount`
      }
      FillsObject
    },
    #' Deserialize JSON string into an instance of Fills
    #'
    #' @description
    #' Deserialize JSON string into an instance of Fills
    #'
    #' @param input_json the JSON input
    #' @return the instance of Fills
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`time`)) {
        self$`time` <- this_object$`time`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Fills in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`time`)) {
          sprintf(
          '"time":
            "%s"
                    ',
          self$`time`
          )
        },
        if (!is.null(self$`price`)) {
          sprintf(
          '"price":
            %d
                    ',
          self$`price`
          )
        },
        if (!is.null(self$`amount`)) {
          sprintf(
          '"amount":
            %d
                    ',
          self$`amount`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Fills
    #'
    #' @description
    #' Deserialize JSON string into an instance of Fills
    #'
    #' @param input_json the JSON input
    #' @return the instance of Fills
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`time` <- this_object$`time`
      self$`price` <- this_object$`price`
      self$`amount` <- this_object$`amount`
      self
    },
    #' Validate JSON input with respect to Fills
    #'
    #' @description
    #' Validate JSON input with respect to Fills and throw an exception if invalid
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
    #' @return String representation of Fills
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
# Fills$unlock()
#
## Below is an example to define the print fnuction
# Fills$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Fills$lock()

