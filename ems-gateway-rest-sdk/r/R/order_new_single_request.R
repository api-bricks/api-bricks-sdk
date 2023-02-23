#' Create a new OrderNewSingleRequest
#'
#' @description
#' The new order message.
#'
#' @docType class
#' @title OrderNewSingleRequest
#' @description OrderNewSingleRequest Class
#' @format An \code{R6Class} generator object
#' @field exchange_id Exchange identifier used to identify the routing destination. character
#' @field client_order_id The unique identifier of the order assigned by the client. character
#' @field symbol_id_exchange Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. character [optional]
#' @field symbol_id_coinapi CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. character [optional]
#' @field amount_order Order quantity. numeric
#' @field price Order price. numeric
#' @field side  \link{OrdSide}
#' @field order_type  \link{OrdType}
#' @field time_in_force  \link{TimeInForce}
#' @field expire_time Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. character [optional]
#' @field exec_inst Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderNewSingleRequest <- R6::R6Class(
  "OrderNewSingleRequest",
  public = list(
    `exchange_id` = NULL,
    `client_order_id` = NULL,
    `symbol_id_exchange` = NULL,
    `symbol_id_coinapi` = NULL,
    `amount_order` = NULL,
    `price` = NULL,
    `side` = NULL,
    `order_type` = NULL,
    `time_in_force` = NULL,
    `expire_time` = NULL,
    `exec_inst` = NULL,
    #' Initialize a new OrderNewSingleRequest class.
    #'
    #' @description
    #' Initialize a new OrderNewSingleRequest class.
    #'
    #' @param exchange_id Exchange identifier used to identify the routing destination.
    #' @param client_order_id The unique identifier of the order assigned by the client.
    #' @param amount_order Order quantity.
    #' @param price Order price.
    #' @param side side
    #' @param order_type order_type
    #' @param time_in_force time_in_force
    #' @param symbol_id_exchange Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    #' @param symbol_id_coinapi CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    #' @param expire_time Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
    #' @param exec_inst Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a>
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`exchange_id`, `client_order_id`, `amount_order`, `price`, `side`, `order_type`, `time_in_force`, `symbol_id_exchange` = NULL, `symbol_id_coinapi` = NULL, `expire_time` = NULL, `exec_inst` = NULL, ...) {
      if (!missing(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!missing(`client_order_id`)) {
        if (!(is.character(`client_order_id`) && length(`client_order_id`) == 1)) {
          stop(paste("Error! Invalid data for `client_order_id`. Must be a string:", `client_order_id`))
        }
        self$`client_order_id` <- `client_order_id`
      }
      if (!missing(`amount_order`)) {
        self$`amount_order` <- `amount_order`
      }
      if (!missing(`price`)) {
        self$`price` <- `price`
      }
      if (!missing(`side`)) {
        stopifnot(R6::is.R6(`side`))
        self$`side` <- `side`
      }
      if (!missing(`order_type`)) {
        stopifnot(R6::is.R6(`order_type`))
        self$`order_type` <- `order_type`
      }
      if (!missing(`time_in_force`)) {
        stopifnot(R6::is.R6(`time_in_force`))
        self$`time_in_force` <- `time_in_force`
      }
      if (!is.null(`symbol_id_exchange`)) {
        if (!(is.character(`symbol_id_exchange`) && length(`symbol_id_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id_exchange`. Must be a string:", `symbol_id_exchange`))
        }
        self$`symbol_id_exchange` <- `symbol_id_exchange`
      }
      if (!is.null(`symbol_id_coinapi`)) {
        if (!(is.character(`symbol_id_coinapi`) && length(`symbol_id_coinapi`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id_coinapi`. Must be a string:", `symbol_id_coinapi`))
        }
        self$`symbol_id_coinapi` <- `symbol_id_coinapi`
      }
      if (!is.null(`expire_time`)) {
        self$`expire_time` <- `expire_time`
      }
      if (!is.null(`exec_inst`)) {
        stopifnot(is.vector(`exec_inst`), length(`exec_inst`) != 0)
        sapply(`exec_inst`, function(x) stopifnot(is.character(x)))
        self$`exec_inst` <- `exec_inst`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderNewSingleRequest in JSON format
    #' @export
    toJSON = function() {
      OrderNewSingleRequestObject <- list()
      if (!is.null(self$`exchange_id`)) {
        OrderNewSingleRequestObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`client_order_id`)) {
        OrderNewSingleRequestObject[["client_order_id"]] <-
          self$`client_order_id`
      }
      if (!is.null(self$`symbol_id_exchange`)) {
        OrderNewSingleRequestObject[["symbol_id_exchange"]] <-
          self$`symbol_id_exchange`
      }
      if (!is.null(self$`symbol_id_coinapi`)) {
        OrderNewSingleRequestObject[["symbol_id_coinapi"]] <-
          self$`symbol_id_coinapi`
      }
      if (!is.null(self$`amount_order`)) {
        OrderNewSingleRequestObject[["amount_order"]] <-
          self$`amount_order`
      }
      if (!is.null(self$`price`)) {
        OrderNewSingleRequestObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`side`)) {
        OrderNewSingleRequestObject[["side"]] <-
          self$`side`$toJSON()
      }
      if (!is.null(self$`order_type`)) {
        OrderNewSingleRequestObject[["order_type"]] <-
          self$`order_type`$toJSON()
      }
      if (!is.null(self$`time_in_force`)) {
        OrderNewSingleRequestObject[["time_in_force"]] <-
          self$`time_in_force`$toJSON()
      }
      if (!is.null(self$`expire_time`)) {
        OrderNewSingleRequestObject[["expire_time"]] <-
          self$`expire_time`
      }
      if (!is.null(self$`exec_inst`)) {
        OrderNewSingleRequestObject[["exec_inst"]] <-
          self$`exec_inst`
      }
      OrderNewSingleRequestObject
    },
    #' Deserialize JSON string into an instance of OrderNewSingleRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderNewSingleRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderNewSingleRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`client_order_id`)) {
        self$`client_order_id` <- this_object$`client_order_id`
      }
      if (!is.null(this_object$`symbol_id_exchange`)) {
        self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      }
      if (!is.null(this_object$`symbol_id_coinapi`)) {
        self$`symbol_id_coinapi` <- this_object$`symbol_id_coinapi`
      }
      if (!is.null(this_object$`amount_order`)) {
        self$`amount_order` <- this_object$`amount_order`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`side`)) {
        side_object <- OrdSide$new()
        side_object$fromJSON(jsonlite::toJSON(this_object$side, auto_unbox = TRUE, digits = NA))
        self$`side` <- side_object
      }
      if (!is.null(this_object$`order_type`)) {
        order_type_object <- OrdType$new()
        order_type_object$fromJSON(jsonlite::toJSON(this_object$order_type, auto_unbox = TRUE, digits = NA))
        self$`order_type` <- order_type_object
      }
      if (!is.null(this_object$`time_in_force`)) {
        time_in_force_object <- TimeInForce$new()
        time_in_force_object$fromJSON(jsonlite::toJSON(this_object$time_in_force, auto_unbox = TRUE, digits = NA))
        self$`time_in_force` <- time_in_force_object
      }
      if (!is.null(this_object$`expire_time`)) {
        self$`expire_time` <- this_object$`expire_time`
      }
      if (!is.null(this_object$`exec_inst`)) {
        self$`exec_inst` <- ApiClient$new()$deserializeObj(this_object$`exec_inst`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderNewSingleRequest in JSON format
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
        if (!is.null(self$`client_order_id`)) {
          sprintf(
          '"client_order_id":
            "%s"
                    ',
          self$`client_order_id`
          )
        },
        if (!is.null(self$`symbol_id_exchange`)) {
          sprintf(
          '"symbol_id_exchange":
            "%s"
                    ',
          self$`symbol_id_exchange`
          )
        },
        if (!is.null(self$`symbol_id_coinapi`)) {
          sprintf(
          '"symbol_id_coinapi":
            "%s"
                    ',
          self$`symbol_id_coinapi`
          )
        },
        if (!is.null(self$`amount_order`)) {
          sprintf(
          '"amount_order":
            %d
                    ',
          self$`amount_order`
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
        if (!is.null(self$`side`)) {
          sprintf(
          '"side":
          %s
          ',
          jsonlite::toJSON(self$`side`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`order_type`)) {
          sprintf(
          '"order_type":
          %s
          ',
          jsonlite::toJSON(self$`order_type`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`time_in_force`)) {
          sprintf(
          '"time_in_force":
          %s
          ',
          jsonlite::toJSON(self$`time_in_force`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`expire_time`)) {
          sprintf(
          '"expire_time":
            "%s"
                    ',
          self$`expire_time`
          )
        },
        if (!is.null(self$`exec_inst`)) {
          sprintf(
          '"exec_inst":
             [%s]
          ',
          paste(unlist(lapply(self$`exec_inst`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of OrderNewSingleRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderNewSingleRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderNewSingleRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchange_id` <- this_object$`exchange_id`
      self$`client_order_id` <- this_object$`client_order_id`
      self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      self$`symbol_id_coinapi` <- this_object$`symbol_id_coinapi`
      self$`amount_order` <- this_object$`amount_order`
      self$`price` <- this_object$`price`
      self$`side` <- OrdSide$new()$fromJSON(jsonlite::toJSON(this_object$side, auto_unbox = TRUE, digits = NA))
      self$`order_type` <- OrdType$new()$fromJSON(jsonlite::toJSON(this_object$order_type, auto_unbox = TRUE, digits = NA))
      self$`time_in_force` <- TimeInForce$new()$fromJSON(jsonlite::toJSON(this_object$time_in_force, auto_unbox = TRUE, digits = NA))
      self$`expire_time` <- this_object$`expire_time`
      self$`exec_inst` <- ApiClient$new()$deserializeObj(this_object$`exec_inst`, "array[character]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to OrderNewSingleRequest
    #'
    #' @description
    #' Validate JSON input with respect to OrderNewSingleRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for OrderNewSingleRequest: the required field `exchange_id` is missing."))
      }
      # check the required field `client_order_id`
      if (!is.null(input_json$`client_order_id`)) {
        if (!(is.character(input_json$`client_order_id`) && length(input_json$`client_order_id`) == 1)) {
          stop(paste("Error! Invalid data for `client_order_id`. Must be a string:", input_json$`client_order_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderNewSingleRequest: the required field `client_order_id` is missing."))
      }
      # check the required field `amount_order`
      if (!is.null(input_json$`amount_order`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderNewSingleRequest: the required field `amount_order` is missing."))
      }
      # check the required field `price`
      if (!is.null(input_json$`price`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderNewSingleRequest: the required field `price` is missing."))
      }
      # check the required field `side`
      if (!is.null(input_json$`side`)) {
        stopifnot(R6::is.R6(input_json$`side`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderNewSingleRequest: the required field `side` is missing."))
      }
      # check the required field `order_type`
      if (!is.null(input_json$`order_type`)) {
        stopifnot(R6::is.R6(input_json$`order_type`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderNewSingleRequest: the required field `order_type` is missing."))
      }
      # check the required field `time_in_force`
      if (!is.null(input_json$`time_in_force`)) {
        stopifnot(R6::is.R6(input_json$`time_in_force`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderNewSingleRequest: the required field `time_in_force` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderNewSingleRequest
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

      # check if the required `client_order_id` is null
      if (is.null(self$`client_order_id`)) {
        return(FALSE)
      }

      # check if the required `amount_order` is null
      if (is.null(self$`amount_order`)) {
        return(FALSE)
      }

      # check if the required `price` is null
      if (is.null(self$`price`)) {
        return(FALSE)
      }

      # check if the required `side` is null
      if (is.null(self$`side`)) {
        return(FALSE)
      }

      # check if the required `order_type` is null
      if (is.null(self$`order_type`)) {
        return(FALSE)
      }

      # check if the required `time_in_force` is null
      if (is.null(self$`time_in_force`)) {
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

      # check if the required `client_order_id` is null
      if (is.null(self$`client_order_id`)) {
        invalid_fields["client_order_id"] <- "Non-nullable required field `client_order_id` cannot be null."
      }

      # check if the required `amount_order` is null
      if (is.null(self$`amount_order`)) {
        invalid_fields["amount_order"] <- "Non-nullable required field `amount_order` cannot be null."
      }

      # check if the required `price` is null
      if (is.null(self$`price`)) {
        invalid_fields["price"] <- "Non-nullable required field `price` cannot be null."
      }

      # check if the required `side` is null
      if (is.null(self$`side`)) {
        invalid_fields["side"] <- "Non-nullable required field `side` cannot be null."
      }

      # check if the required `order_type` is null
      if (is.null(self$`order_type`)) {
        invalid_fields["order_type"] <- "Non-nullable required field `order_type` cannot be null."
      }

      # check if the required `time_in_force` is null
      if (is.null(self$`time_in_force`)) {
        invalid_fields["time_in_force"] <- "Non-nullable required field `time_in_force` cannot be null."
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
# OrderNewSingleRequest$unlock()
#
## Below is an example to define the print fnuction
# OrderNewSingleRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderNewSingleRequest$lock()

