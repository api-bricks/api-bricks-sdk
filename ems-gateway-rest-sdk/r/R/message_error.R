#' Create a new MessageError
#'
#' @description
#' MessageError Class
#'
#' @docType class
#' @title MessageError
#' @description MessageError Class
#' @format An \code{R6Class} generator object
#' @field message Message text. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessageError <- R6::R6Class(
  "MessageError",
  public = list(
    `message` = NULL,
    #' Initialize a new MessageError class.
    #'
    #' @description
    #' Initialize a new MessageError class.
    #'
    #' @param message Message text.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`message` = NULL, ...) {
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MessageError in JSON format
    #' @export
    toJSON = function() {
      MessageErrorObject <- list()
      if (!is.null(self$`message`)) {
        MessageErrorObject[["message"]] <-
          self$`message`
      }
      MessageErrorObject
    },
    #' Deserialize JSON string into an instance of MessageError
    #'
    #' @description
    #' Deserialize JSON string into an instance of MessageError
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageError
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MessageError in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of MessageError
    #'
    #' @description
    #' Deserialize JSON string into an instance of MessageError
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageError
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self
    },
    #' Validate JSON input with respect to MessageError
    #'
    #' @description
    #' Validate JSON input with respect to MessageError and throw an exception if invalid
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
    #' @return String representation of MessageError
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
# MessageError$unlock()
#
## Below is an example to define the print fnuction
# MessageError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MessageError$lock()

