#' Create a new OrderExecutionReportAllOf
#'
#' @description
#' The order execution report message.
#'
#' @docType class
#' @title OrderExecutionReportAllOf
#' @description OrderExecutionReportAllOf Class
#' @format An \code{R6Class} generator object
#' @field client_order_id_format_exchange The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. character
#' @field exchange_order_id Unique identifier of the order assigned by the exchange or executing system. character [optional]
#' @field amount_open Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` numeric
#' @field amount_filled Total quantity filled. numeric
#' @field avg_px Calculated average price of all fills on this order. numeric [optional]
#' @field status  \link{OrdStatus}
#' @field status_history Timestamped history of order status changes. list(list(character)) [optional]
#' @field error_message Error message. character [optional]
#' @field fills Relay fill information on working orders. list(\link{Fills}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderExecutionReportAllOf <- R6::R6Class(
  "OrderExecutionReportAllOf",
  public = list(
    `client_order_id_format_exchange` = NULL,
    `exchange_order_id` = NULL,
    `amount_open` = NULL,
    `amount_filled` = NULL,
    `avg_px` = NULL,
    `status` = NULL,
    `status_history` = NULL,
    `error_message` = NULL,
    `fills` = NULL,
    #' Initialize a new OrderExecutionReportAllOf class.
    #'
    #' @description
    #' Initialize a new OrderExecutionReportAllOf class.
    #'
    #' @param client_order_id_format_exchange The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
    #' @param amount_open Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
    #' @param amount_filled Total quantity filled.
    #' @param status status
    #' @param exchange_order_id Unique identifier of the order assigned by the exchange or executing system.
    #' @param avg_px Calculated average price of all fills on this order.
    #' @param status_history Timestamped history of order status changes.
    #' @param error_message Error message.
    #' @param fills Relay fill information on working orders.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`client_order_id_format_exchange`, `amount_open`, `amount_filled`, `status`, `exchange_order_id` = NULL, `avg_px` = NULL, `status_history` = NULL, `error_message` = NULL, `fills` = NULL, ...) {
      if (!missing(`client_order_id_format_exchange`)) {
        if (!(is.character(`client_order_id_format_exchange`) && length(`client_order_id_format_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `client_order_id_format_exchange`. Must be a string:", `client_order_id_format_exchange`))
        }
        self$`client_order_id_format_exchange` <- `client_order_id_format_exchange`
      }
      if (!missing(`amount_open`)) {
        self$`amount_open` <- `amount_open`
      }
      if (!missing(`amount_filled`)) {
        self$`amount_filled` <- `amount_filled`
      }
      if (!missing(`status`)) {
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`exchange_order_id`)) {
        if (!(is.character(`exchange_order_id`) && length(`exchange_order_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_order_id`. Must be a string:", `exchange_order_id`))
        }
        self$`exchange_order_id` <- `exchange_order_id`
      }
      if (!is.null(`avg_px`)) {
        self$`avg_px` <- `avg_px`
      }
      if (!is.null(`status_history`)) {
        stopifnot(is.vector(`status_history`), length(`status_history`) != 0)
        sapply(`status_history`, function(x) stopifnot(R6::is.R6(x)))
        self$`status_history` <- `status_history`
      }
      if (!is.null(`error_message`)) {
        if (!(is.character(`error_message`) && length(`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", `error_message`))
        }
        self$`error_message` <- `error_message`
      }
      if (!is.null(`fills`)) {
        stopifnot(is.vector(`fills`), length(`fills`) != 0)
        sapply(`fills`, function(x) stopifnot(R6::is.R6(x)))
        self$`fills` <- `fills`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderExecutionReportAllOf in JSON format
    #' @export
    toJSON = function() {
      OrderExecutionReportAllOfObject <- list()
      if (!is.null(self$`client_order_id_format_exchange`)) {
        OrderExecutionReportAllOfObject[["client_order_id_format_exchange"]] <-
          self$`client_order_id_format_exchange`
      }
      if (!is.null(self$`exchange_order_id`)) {
        OrderExecutionReportAllOfObject[["exchange_order_id"]] <-
          self$`exchange_order_id`
      }
      if (!is.null(self$`amount_open`)) {
        OrderExecutionReportAllOfObject[["amount_open"]] <-
          self$`amount_open`
      }
      if (!is.null(self$`amount_filled`)) {
        OrderExecutionReportAllOfObject[["amount_filled"]] <-
          self$`amount_filled`
      }
      if (!is.null(self$`avg_px`)) {
        OrderExecutionReportAllOfObject[["avg_px"]] <-
          self$`avg_px`
      }
      if (!is.null(self$`status`)) {
        OrderExecutionReportAllOfObject[["status"]] <-
          self$`status`$toJSON()
      }
      if (!is.null(self$`status_history`)) {
        OrderExecutionReportAllOfObject[["status_history"]] <-
          lapply(self$`status_history`, function(x) x$toJSON())
      }
      if (!is.null(self$`error_message`)) {
        OrderExecutionReportAllOfObject[["error_message"]] <-
          self$`error_message`
      }
      if (!is.null(self$`fills`)) {
        OrderExecutionReportAllOfObject[["fills"]] <-
          lapply(self$`fills`, function(x) x$toJSON())
      }
      OrderExecutionReportAllOfObject
    },
    #' Deserialize JSON string into an instance of OrderExecutionReportAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderExecutionReportAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderExecutionReportAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`client_order_id_format_exchange`)) {
        self$`client_order_id_format_exchange` <- this_object$`client_order_id_format_exchange`
      }
      if (!is.null(this_object$`exchange_order_id`)) {
        self$`exchange_order_id` <- this_object$`exchange_order_id`
      }
      if (!is.null(this_object$`amount_open`)) {
        self$`amount_open` <- this_object$`amount_open`
      }
      if (!is.null(this_object$`amount_filled`)) {
        self$`amount_filled` <- this_object$`amount_filled`
      }
      if (!is.null(this_object$`avg_px`)) {
        self$`avg_px` <- this_object$`avg_px`
      }
      if (!is.null(this_object$`status`)) {
        status_object <- OrdStatus$new()
        status_object$fromJSON(jsonlite::toJSON(this_object$status, auto_unbox = TRUE, digits = NA))
        self$`status` <- status_object
      }
      if (!is.null(this_object$`status_history`)) {
        self$`status_history` <- ApiClient$new()$deserializeObj(this_object$`status_history`, "array[array[character]]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`error_message`)) {
        self$`error_message` <- this_object$`error_message`
      }
      if (!is.null(this_object$`fills`)) {
        self$`fills` <- ApiClient$new()$deserializeObj(this_object$`fills`, "array[Fills]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderExecutionReportAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`client_order_id_format_exchange`)) {
          sprintf(
          '"client_order_id_format_exchange":
            "%s"
                    ',
          self$`client_order_id_format_exchange`
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
        if (!is.null(self$`amount_open`)) {
          sprintf(
          '"amount_open":
            %d
                    ',
          self$`amount_open`
          )
        },
        if (!is.null(self$`amount_filled`)) {
          sprintf(
          '"amount_filled":
            %d
                    ',
          self$`amount_filled`
          )
        },
        if (!is.null(self$`avg_px`)) {
          sprintf(
          '"avg_px":
            %d
                    ',
          self$`avg_px`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
          %s
          ',
          jsonlite::toJSON(self$`status`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`status_history`)) {
          sprintf(
          '"status_history":
          [%s]
',
          paste(sapply(self$`status_history`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`error_message`)) {
          sprintf(
          '"error_message":
            "%s"
                    ',
          self$`error_message`
          )
        },
        if (!is.null(self$`fills`)) {
          sprintf(
          '"fills":
          [%s]
',
          paste(sapply(self$`fills`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of OrderExecutionReportAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderExecutionReportAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderExecutionReportAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`client_order_id_format_exchange` <- this_object$`client_order_id_format_exchange`
      self$`exchange_order_id` <- this_object$`exchange_order_id`
      self$`amount_open` <- this_object$`amount_open`
      self$`amount_filled` <- this_object$`amount_filled`
      self$`avg_px` <- this_object$`avg_px`
      self$`status` <- OrdStatus$new()$fromJSON(jsonlite::toJSON(this_object$status, auto_unbox = TRUE, digits = NA))
      self$`status_history` <- ApiClient$new()$deserializeObj(this_object$`status_history`, "array[array[character]]", loadNamespace("openapi"))
      self$`error_message` <- this_object$`error_message`
      self$`fills` <- ApiClient$new()$deserializeObj(this_object$`fills`, "array[Fills]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to OrderExecutionReportAllOf
    #'
    #' @description
    #' Validate JSON input with respect to OrderExecutionReportAllOf and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `client_order_id_format_exchange`
      if (!is.null(input_json$`client_order_id_format_exchange`)) {
        if (!(is.character(input_json$`client_order_id_format_exchange`) && length(input_json$`client_order_id_format_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `client_order_id_format_exchange`. Must be a string:", input_json$`client_order_id_format_exchange`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderExecutionReportAllOf: the required field `client_order_id_format_exchange` is missing."))
      }
      # check the required field `amount_open`
      if (!is.null(input_json$`amount_open`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderExecutionReportAllOf: the required field `amount_open` is missing."))
      }
      # check the required field `amount_filled`
      if (!is.null(input_json$`amount_filled`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderExecutionReportAllOf: the required field `amount_filled` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderExecutionReportAllOf: the required field `status` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderExecutionReportAllOf
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
      # check if the required `client_order_id_format_exchange` is null
      if (is.null(self$`client_order_id_format_exchange`)) {
        return(FALSE)
      }

      # check if the required `amount_open` is null
      if (is.null(self$`amount_open`)) {
        return(FALSE)
      }

      # check if the required `amount_filled` is null
      if (is.null(self$`amount_filled`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `client_order_id_format_exchange` is null
      if (is.null(self$`client_order_id_format_exchange`)) {
        invalid_fields["client_order_id_format_exchange"] <- "Non-nullable required field `client_order_id_format_exchange` cannot be null."
      }

      # check if the required `amount_open` is null
      if (is.null(self$`amount_open`)) {
        invalid_fields["amount_open"] <- "Non-nullable required field `amount_open` cannot be null."
      }

      # check if the required `amount_filled` is null
      if (is.null(self$`amount_filled`)) {
        invalid_fields["amount_filled"] <- "Non-nullable required field `amount_filled` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# OrderExecutionReportAllOf$unlock()
#
## Below is an example to define the print fnuction
# OrderExecutionReportAllOf$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderExecutionReportAllOf$lock()

