#' Create a new OrderCancelSingleRequest
#'
#' @description
#' Cancel single order request object.
#'
#' @docType class
#' @title OrderCancelSingleRequest
#' @description OrderCancelSingleRequest Class
#' @format An \code{R6Class} generator object
#' @field exchange_id Exchange identifier used to identify the routing destination. character
#' @field exchange_order_id Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. character [optional]
#' @field client_order_id The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderCancelSingleRequest <- R6::R6Class(
  "OrderCancelSingleRequest",
  public = list(
    `exchange_id` = NULL,
    `exchange_order_id` = NULL,
    `client_order_id` = NULL,
    #' Initialize a new OrderCancelSingleRequest class.
    #'
    #' @description
    #' Initialize a new OrderCancelSingleRequest class.
    #'
    #' @param exchange_id Exchange identifier used to identify the routing destination.
    #' @param exchange_order_id Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    #' @param client_order_id The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`exchange_id`, `exchange_order_id` = NULL, `client_order_id` = NULL, ...) {
      if (!missing(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`exchange_order_id`)) {
        if (!(is.character(`exchange_order_id`) && length(`exchange_order_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_order_id`. Must be a string:", `exchange_order_id`))
        }
        self$`exchange_order_id` <- `exchange_order_id`
      }
      if (!is.null(`client_order_id`)) {
        if (!(is.character(`client_order_id`) && length(`client_order_id`) == 1)) {
          stop(paste("Error! Invalid data for `client_order_id`. Must be a string:", `client_order_id`))
        }
        self$`client_order_id` <- `client_order_id`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderCancelSingleRequest in JSON format
    #' @export
    toJSON = function() {
      OrderCancelSingleRequestObject <- list()
      if (!is.null(self$`exchange_id`)) {
        OrderCancelSingleRequestObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`exchange_order_id`)) {
        OrderCancelSingleRequestObject[["exchange_order_id"]] <-
          self$`exchange_order_id`
      }
      if (!is.null(self$`client_order_id`)) {
        OrderCancelSingleRequestObject[["client_order_id"]] <-
          self$`client_order_id`
      }
      OrderCancelSingleRequestObject
    },
    #' Deserialize JSON string into an instance of OrderCancelSingleRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderCancelSingleRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderCancelSingleRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`exchange_order_id`)) {
        self$`exchange_order_id` <- this_object$`exchange_order_id`
      }
      if (!is.null(this_object$`client_order_id`)) {
        self$`client_order_id` <- this_object$`client_order_id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderCancelSingleRequest in JSON format
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
        if (!is.null(self$`exchange_order_id`)) {
          sprintf(
          '"exchange_order_id":
            "%s"
                    ',
          self$`exchange_order_id`
          )
        },
        if (!is.null(self$`client_order_id`)) {
          sprintf(
          '"client_order_id":
            "%s"
                    ',
          self$`client_order_id`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of OrderCancelSingleRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderCancelSingleRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderCancelSingleRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchange_id` <- this_object$`exchange_id`
      self$`exchange_order_id` <- this_object$`exchange_order_id`
      self$`client_order_id` <- this_object$`client_order_id`
      self
    },
    #' Validate JSON input with respect to OrderCancelSingleRequest
    #'
    #' @description
    #' Validate JSON input with respect to OrderCancelSingleRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for OrderCancelSingleRequest: the required field `exchange_id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderCancelSingleRequest
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
# OrderCancelSingleRequest$unlock()
#
## Below is an example to define the print fnuction
# OrderCancelSingleRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderCancelSingleRequest$lock()

