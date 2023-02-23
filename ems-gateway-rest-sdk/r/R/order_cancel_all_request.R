#' Create a new OrderCancelAllRequest
#'
#' @description
#' Cancel all orders request object.
#'
#' @docType class
#' @title OrderCancelAllRequest
#' @description OrderCancelAllRequest Class
#' @format An \code{R6Class} generator object
#' @field exchange_id Identifier of the exchange from which active orders should be canceled. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderCancelAllRequest <- R6::R6Class(
  "OrderCancelAllRequest",
  public = list(
    `exchange_id` = NULL,
    #' Initialize a new OrderCancelAllRequest class.
    #'
    #' @description
    #' Initialize a new OrderCancelAllRequest class.
    #'
    #' @param exchange_id Identifier of the exchange from which active orders should be canceled.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`exchange_id`, ...) {
      if (!missing(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderCancelAllRequest in JSON format
    #' @export
    toJSON = function() {
      OrderCancelAllRequestObject <- list()
      if (!is.null(self$`exchange_id`)) {
        OrderCancelAllRequestObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      OrderCancelAllRequestObject
    },
    #' Deserialize JSON string into an instance of OrderCancelAllRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderCancelAllRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderCancelAllRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderCancelAllRequest in JSON format
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of OrderCancelAllRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderCancelAllRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderCancelAllRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchange_id` <- this_object$`exchange_id`
      self
    },
    #' Validate JSON input with respect to OrderCancelAllRequest
    #'
    #' @description
    #' Validate JSON input with respect to OrderCancelAllRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `exchange_id`
      if (!is.null(input_json$`exchange_id`)) {
        if (!(is.character(input_json$`exchange_id`) && length(input_json$`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", input_json$`exchange_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderCancelAllRequest: the required field `exchange_id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderCancelAllRequest
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
      # check if the required `exchange_id` is null
      if (is.null(self$`exchange_id`)) {
        return(FALSE)
      }

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
      # check if the required `exchange_id` is null
      if (is.null(self$`exchange_id`)) {
        invalid_fields["exchange_id"] <- "Non-nullable required field `exchange_id` cannot be null."
      }

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
# OrderCancelAllRequest$unlock()
#
## Below is an example to define the print fnuction
# OrderCancelAllRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderCancelAllRequest$lock()

