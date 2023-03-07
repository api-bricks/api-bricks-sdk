#' Create a new CowTradeDTO
#'
#' @description
#' Trade entity.
#'
#' @docType class
#' @title CowTradeDTO
#' @description CowTradeDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, format: (order id)|(transaction hash)|(event index). character [optional]
#' @field timestamp Block's timestamp. character [optional]
#' @field gas_price Transaction's gas price. character [optional]
#' @field gas_limit Transaction's gas limit. character [optional]
#' @field fee_amount Trade's fee amount. character [optional]
#' @field tx_hash Trade event transaction hash. character [optional]
#' @field settlement Reference to settlement. character [optional]
#' @field buy_amount Buy amount. character [optional]
#' @field sell_amount Sell amount. character [optional]
#' @field sell_token Address of token that is sold. character [optional]
#' @field buy_token Address of token that is bought. character [optional]
#' @field order Reference to order. character [optional]
#' @field vid  integer [optional]
#' @field pool_id  character [optional]
#' @field transaction_id  character [optional]
#' @field evaluated_price  numeric [optional]
#' @field evaluated_amount  numeric [optional]
#' @field evaluated_aggressor  \link{TransactionsETradeAggressiveSide} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CowTradeDTO <- R6::R6Class(
  "CowTradeDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `timestamp` = NULL,
    `gas_price` = NULL,
    `gas_limit` = NULL,
    `fee_amount` = NULL,
    `tx_hash` = NULL,
    `settlement` = NULL,
    `buy_amount` = NULL,
    `sell_amount` = NULL,
    `sell_token` = NULL,
    `buy_token` = NULL,
    `order` = NULL,
    `vid` = NULL,
    `pool_id` = NULL,
    `transaction_id` = NULL,
    `evaluated_price` = NULL,
    `evaluated_amount` = NULL,
    `evaluated_aggressor` = NULL,
    #' Initialize a new CowTradeDTO class.
    #'
    #' @description
    #' Initialize a new CowTradeDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, format: (order id)|(transaction hash)|(event index).
    #' @param timestamp Block's timestamp.
    #' @param gas_price Transaction's gas price.
    #' @param gas_limit Transaction's gas limit.
    #' @param fee_amount Trade's fee amount.
    #' @param tx_hash Trade event transaction hash.
    #' @param settlement Reference to settlement.
    #' @param buy_amount Buy amount.
    #' @param sell_amount Sell amount.
    #' @param sell_token Address of token that is sold.
    #' @param buy_token Address of token that is bought.
    #' @param order Reference to order.
    #' @param vid 
    #' @param pool_id pool_id
    #' @param transaction_id transaction_id
    #' @param evaluated_price evaluated_price
    #' @param evaluated_amount evaluated_amount
    #' @param evaluated_aggressor evaluated_aggressor
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `timestamp` = NULL, `gas_price` = NULL, `gas_limit` = NULL, `fee_amount` = NULL, `tx_hash` = NULL, `settlement` = NULL, `buy_amount` = NULL, `sell_amount` = NULL, `sell_token` = NULL, `buy_token` = NULL, `order` = NULL, `vid` = NULL, `pool_id` = NULL, `transaction_id` = NULL, `evaluated_price` = NULL, `evaluated_amount` = NULL, `evaluated_aggressor` = NULL, ...) {
      if (!is.null(`entry_time`)) {
        if (!is.character(`entry_time`)) {
          stop(paste("Error! Invalid data for `entry_time`. Must be a string:", `entry_time`))
        }
        self$`entry_time` <- `entry_time`
      }
      if (!is.null(`recv_time`)) {
        if (!is.character(`recv_time`)) {
          stop(paste("Error! Invalid data for `recv_time`. Must be a string:", `recv_time`))
        }
        self$`recv_time` <- `recv_time`
      }
      if (!is.null(`block_number`)) {
        if (!(is.numeric(`block_number`) && length(`block_number`) == 1)) {
          stop(paste("Error! Invalid data for `block_number`. Must be an integer:", `block_number`))
        }
        self$`block_number` <- `block_number`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`gas_price`)) {
        if (!(is.character(`gas_price`) && length(`gas_price`) == 1)) {
          stop(paste("Error! Invalid data for `gas_price`. Must be a string:", `gas_price`))
        }
        self$`gas_price` <- `gas_price`
      }
      if (!is.null(`gas_limit`)) {
        if (!(is.character(`gas_limit`) && length(`gas_limit`) == 1)) {
          stop(paste("Error! Invalid data for `gas_limit`. Must be a string:", `gas_limit`))
        }
        self$`gas_limit` <- `gas_limit`
      }
      if (!is.null(`fee_amount`)) {
        if (!(is.character(`fee_amount`) && length(`fee_amount`) == 1)) {
          stop(paste("Error! Invalid data for `fee_amount`. Must be a string:", `fee_amount`))
        }
        self$`fee_amount` <- `fee_amount`
      }
      if (!is.null(`tx_hash`)) {
        if (!(is.character(`tx_hash`) && length(`tx_hash`) == 1)) {
          stop(paste("Error! Invalid data for `tx_hash`. Must be a string:", `tx_hash`))
        }
        self$`tx_hash` <- `tx_hash`
      }
      if (!is.null(`settlement`)) {
        if (!(is.character(`settlement`) && length(`settlement`) == 1)) {
          stop(paste("Error! Invalid data for `settlement`. Must be a string:", `settlement`))
        }
        self$`settlement` <- `settlement`
      }
      if (!is.null(`buy_amount`)) {
        if (!(is.character(`buy_amount`) && length(`buy_amount`) == 1)) {
          stop(paste("Error! Invalid data for `buy_amount`. Must be a string:", `buy_amount`))
        }
        self$`buy_amount` <- `buy_amount`
      }
      if (!is.null(`sell_amount`)) {
        if (!(is.character(`sell_amount`) && length(`sell_amount`) == 1)) {
          stop(paste("Error! Invalid data for `sell_amount`. Must be a string:", `sell_amount`))
        }
        self$`sell_amount` <- `sell_amount`
      }
      if (!is.null(`sell_token`)) {
        if (!(is.character(`sell_token`) && length(`sell_token`) == 1)) {
          stop(paste("Error! Invalid data for `sell_token`. Must be a string:", `sell_token`))
        }
        self$`sell_token` <- `sell_token`
      }
      if (!is.null(`buy_token`)) {
        if (!(is.character(`buy_token`) && length(`buy_token`) == 1)) {
          stop(paste("Error! Invalid data for `buy_token`. Must be a string:", `buy_token`))
        }
        self$`buy_token` <- `buy_token`
      }
      if (!is.null(`order`)) {
        if (!(is.character(`order`) && length(`order`) == 1)) {
          stop(paste("Error! Invalid data for `order`. Must be a string:", `order`))
        }
        self$`order` <- `order`
      }
      if (!is.null(`vid`)) {
        if (!(is.numeric(`vid`) && length(`vid`) == 1)) {
          stop(paste("Error! Invalid data for `vid`. Must be an integer:", `vid`))
        }
        self$`vid` <- `vid`
      }
      if (!is.null(`pool_id`)) {
        if (!(is.character(`pool_id`) && length(`pool_id`) == 1)) {
          stop(paste("Error! Invalid data for `pool_id`. Must be a string:", `pool_id`))
        }
        self$`pool_id` <- `pool_id`
      }
      if (!is.null(`transaction_id`)) {
        if (!(is.character(`transaction_id`) && length(`transaction_id`) == 1)) {
          stop(paste("Error! Invalid data for `transaction_id`. Must be a string:", `transaction_id`))
        }
        self$`transaction_id` <- `transaction_id`
      }
      if (!is.null(`evaluated_price`)) {
        if (!(is.numeric(`evaluated_price`) && length(`evaluated_price`) == 1)) {
          stop(paste("Error! Invalid data for `evaluated_price`. Must be a number:", `evaluated_price`))
        }
        self$`evaluated_price` <- `evaluated_price`
      }
      if (!is.null(`evaluated_amount`)) {
        if (!(is.numeric(`evaluated_amount`) && length(`evaluated_amount`) == 1)) {
          stop(paste("Error! Invalid data for `evaluated_amount`. Must be a number:", `evaluated_amount`))
        }
        self$`evaluated_amount` <- `evaluated_amount`
      }
      if (!is.null(`evaluated_aggressor`)) {
        if (!(`evaluated_aggressor` %in% c())) {
          stop(paste("Error! \"", `evaluated_aggressor`, "\" cannot be assigned to `evaluated_aggressor`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`evaluated_aggressor`))
        self$`evaluated_aggressor` <- `evaluated_aggressor`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CowTradeDTO in JSON format
    #' @export
    toJSON = function() {
      CowTradeDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CowTradeDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CowTradeDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CowTradeDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CowTradeDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`timestamp`)) {
        CowTradeDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`gas_price`)) {
        CowTradeDTOObject[["gas_price"]] <-
          self$`gas_price`
      }
      if (!is.null(self$`gas_limit`)) {
        CowTradeDTOObject[["gas_limit"]] <-
          self$`gas_limit`
      }
      if (!is.null(self$`fee_amount`)) {
        CowTradeDTOObject[["fee_amount"]] <-
          self$`fee_amount`
      }
      if (!is.null(self$`tx_hash`)) {
        CowTradeDTOObject[["tx_hash"]] <-
          self$`tx_hash`
      }
      if (!is.null(self$`settlement`)) {
        CowTradeDTOObject[["settlement"]] <-
          self$`settlement`
      }
      if (!is.null(self$`buy_amount`)) {
        CowTradeDTOObject[["buy_amount"]] <-
          self$`buy_amount`
      }
      if (!is.null(self$`sell_amount`)) {
        CowTradeDTOObject[["sell_amount"]] <-
          self$`sell_amount`
      }
      if (!is.null(self$`sell_token`)) {
        CowTradeDTOObject[["sell_token"]] <-
          self$`sell_token`
      }
      if (!is.null(self$`buy_token`)) {
        CowTradeDTOObject[["buy_token"]] <-
          self$`buy_token`
      }
      if (!is.null(self$`order`)) {
        CowTradeDTOObject[["order"]] <-
          self$`order`
      }
      if (!is.null(self$`vid`)) {
        CowTradeDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`pool_id`)) {
        CowTradeDTOObject[["pool_id"]] <-
          self$`pool_id`
      }
      if (!is.null(self$`transaction_id`)) {
        CowTradeDTOObject[["transaction_id"]] <-
          self$`transaction_id`
      }
      if (!is.null(self$`evaluated_price`)) {
        CowTradeDTOObject[["evaluated_price"]] <-
          self$`evaluated_price`
      }
      if (!is.null(self$`evaluated_amount`)) {
        CowTradeDTOObject[["evaluated_amount"]] <-
          self$`evaluated_amount`
      }
      if (!is.null(self$`evaluated_aggressor`)) {
        CowTradeDTOObject[["evaluated_aggressor"]] <-
          self$`evaluated_aggressor`$toJSON()
      }
      CowTradeDTOObject
    },
    #' Deserialize JSON string into an instance of CowTradeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowTradeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowTradeDTO
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entry_time`)) {
        self$`entry_time` <- this_object$`entry_time`
      }
      if (!is.null(this_object$`recv_time`)) {
        self$`recv_time` <- this_object$`recv_time`
      }
      if (!is.null(this_object$`block_number`)) {
        self$`block_number` <- this_object$`block_number`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`gas_price`)) {
        self$`gas_price` <- this_object$`gas_price`
      }
      if (!is.null(this_object$`gas_limit`)) {
        self$`gas_limit` <- this_object$`gas_limit`
      }
      if (!is.null(this_object$`fee_amount`)) {
        self$`fee_amount` <- this_object$`fee_amount`
      }
      if (!is.null(this_object$`tx_hash`)) {
        self$`tx_hash` <- this_object$`tx_hash`
      }
      if (!is.null(this_object$`settlement`)) {
        self$`settlement` <- this_object$`settlement`
      }
      if (!is.null(this_object$`buy_amount`)) {
        self$`buy_amount` <- this_object$`buy_amount`
      }
      if (!is.null(this_object$`sell_amount`)) {
        self$`sell_amount` <- this_object$`sell_amount`
      }
      if (!is.null(this_object$`sell_token`)) {
        self$`sell_token` <- this_object$`sell_token`
      }
      if (!is.null(this_object$`buy_token`)) {
        self$`buy_token` <- this_object$`buy_token`
      }
      if (!is.null(this_object$`order`)) {
        self$`order` <- this_object$`order`
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`pool_id`)) {
        self$`pool_id` <- this_object$`pool_id`
      }
      if (!is.null(this_object$`transaction_id`)) {
        self$`transaction_id` <- this_object$`transaction_id`
      }
      if (!is.null(this_object$`evaluated_price`)) {
        self$`evaluated_price` <- this_object$`evaluated_price`
      }
      if (!is.null(this_object$`evaluated_amount`)) {
        self$`evaluated_amount` <- this_object$`evaluated_amount`
      }
      if (!is.null(this_object$`evaluated_aggressor`)) {
        `evaluated_aggressor_object` <- TransactionsETradeAggressiveSide$new()
        `evaluated_aggressor_object`$fromJSON(jsonlite::toJSON(this_object$`evaluated_aggressor`, auto_unbox = TRUE, digits = NA))
        self$`evaluated_aggressor` <- `evaluated_aggressor_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CowTradeDTO in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`entry_time`)) {
          sprintf(
          '"entry_time":
            "%s"
                    ',
          self$`entry_time`
          )
        },
        if (!is.null(self$`recv_time`)) {
          sprintf(
          '"recv_time":
            "%s"
                    ',
          self$`recv_time`
          )
        },
        if (!is.null(self$`block_number`)) {
          sprintf(
          '"block_number":
            %d
                    ',
          self$`block_number`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`gas_price`)) {
          sprintf(
          '"gas_price":
            "%s"
                    ',
          self$`gas_price`
          )
        },
        if (!is.null(self$`gas_limit`)) {
          sprintf(
          '"gas_limit":
            "%s"
                    ',
          self$`gas_limit`
          )
        },
        if (!is.null(self$`fee_amount`)) {
          sprintf(
          '"fee_amount":
            "%s"
                    ',
          self$`fee_amount`
          )
        },
        if (!is.null(self$`tx_hash`)) {
          sprintf(
          '"tx_hash":
            "%s"
                    ',
          self$`tx_hash`
          )
        },
        if (!is.null(self$`settlement`)) {
          sprintf(
          '"settlement":
            "%s"
                    ',
          self$`settlement`
          )
        },
        if (!is.null(self$`buy_amount`)) {
          sprintf(
          '"buy_amount":
            "%s"
                    ',
          self$`buy_amount`
          )
        },
        if (!is.null(self$`sell_amount`)) {
          sprintf(
          '"sell_amount":
            "%s"
                    ',
          self$`sell_amount`
          )
        },
        if (!is.null(self$`sell_token`)) {
          sprintf(
          '"sell_token":
            "%s"
                    ',
          self$`sell_token`
          )
        },
        if (!is.null(self$`buy_token`)) {
          sprintf(
          '"buy_token":
            "%s"
                    ',
          self$`buy_token`
          )
        },
        if (!is.null(self$`order`)) {
          sprintf(
          '"order":
            "%s"
                    ',
          self$`order`
          )
        },
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
          )
        },
        if (!is.null(self$`pool_id`)) {
          sprintf(
          '"pool_id":
            "%s"
                    ',
          self$`pool_id`
          )
        },
        if (!is.null(self$`transaction_id`)) {
          sprintf(
          '"transaction_id":
            "%s"
                    ',
          self$`transaction_id`
          )
        },
        if (!is.null(self$`evaluated_price`)) {
          sprintf(
          '"evaluated_price":
            %d
                    ',
          self$`evaluated_price`
          )
        },
        if (!is.null(self$`evaluated_amount`)) {
          sprintf(
          '"evaluated_amount":
            %d
                    ',
          self$`evaluated_amount`
          )
        },
        if (!is.null(self$`evaluated_aggressor`)) {
          sprintf(
          '"evaluated_aggressor":
          %s
          ',
          jsonlite::toJSON(self$`evaluated_aggressor`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CowTradeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowTradeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowTradeDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`timestamp` <- this_object$`timestamp`
      self$`gas_price` <- this_object$`gas_price`
      self$`gas_limit` <- this_object$`gas_limit`
      self$`fee_amount` <- this_object$`fee_amount`
      self$`tx_hash` <- this_object$`tx_hash`
      self$`settlement` <- this_object$`settlement`
      self$`buy_amount` <- this_object$`buy_amount`
      self$`sell_amount` <- this_object$`sell_amount`
      self$`sell_token` <- this_object$`sell_token`
      self$`buy_token` <- this_object$`buy_token`
      self$`order` <- this_object$`order`
      self$`vid` <- this_object$`vid`
      self$`pool_id` <- this_object$`pool_id`
      self$`transaction_id` <- this_object$`transaction_id`
      self$`evaluated_price` <- this_object$`evaluated_price`
      self$`evaluated_amount` <- this_object$`evaluated_amount`
      self$`evaluated_aggressor` <- TransactionsETradeAggressiveSide$new()$fromJSON(jsonlite::toJSON(this_object$`evaluated_aggressor`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to CowTradeDTO
    #'
    #' @description
    #' Validate JSON input with respect to CowTradeDTO and throw an exception if invalid
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
    #' @return String representation of CowTradeDTO
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
# CowTradeDTO$unlock()
#
## Below is an example to define the print function
# CowTradeDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CowTradeDTO$lock()

