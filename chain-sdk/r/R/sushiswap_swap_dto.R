#' Create a new SushiswapSwapDTO
#'
#' @description
#' Swap are created for each token swap within a pair.
#'
#' @docType class
#' @title SushiswapSwapDTO
#' @description SushiswapSwapDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Transaction hash plus index in Transaction swap array. character [optional]
#' @field transaction Reference to transaction swap was included in. character [optional]
#' @field timestamp Timestamp of swap, used for sorted lookups. character [optional]
#' @field pair Reference to pair. character [optional]
#' @field sender Address that initiated the swap. character [optional]
#' @field amount_0_in Amount of token0 sold. character [optional]
#' @field amount_1_in Amount of token1 sold. character [optional]
#' @field amount_0_out Amount of token0 received. character [optional]
#' @field amount_1_out Amount of token1 received. character [optional]
#' @field to Recipient of output tokens. character [optional]
#' @field log_index Event index within transaction. character [optional]
#' @field amount_usd Derived amount of tokens sold in USD. character [optional]
#' @field vid  integer [optional]
#' @field pool_id  character [optional]
#' @field transaction_id  character [optional]
#' @field evaluated_price  numeric [optional]
#' @field evaluated_amount  numeric [optional]
#' @field evaluated_aggressor  \link{TransactionsETradeAggressiveSide} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SushiswapSwapDTO <- R6::R6Class(
  "SushiswapSwapDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `transaction` = NULL,
    `timestamp` = NULL,
    `pair` = NULL,
    `sender` = NULL,
    `amount_0_in` = NULL,
    `amount_1_in` = NULL,
    `amount_0_out` = NULL,
    `amount_1_out` = NULL,
    `to` = NULL,
    `log_index` = NULL,
    `amount_usd` = NULL,
    `vid` = NULL,
    `pool_id` = NULL,
    `transaction_id` = NULL,
    `evaluated_price` = NULL,
    `evaluated_amount` = NULL,
    `evaluated_aggressor` = NULL,
    #' Initialize a new SushiswapSwapDTO class.
    #'
    #' @description
    #' Initialize a new SushiswapSwapDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Transaction hash plus index in Transaction swap array.
    #' @param transaction Reference to transaction swap was included in.
    #' @param timestamp Timestamp of swap, used for sorted lookups.
    #' @param pair Reference to pair.
    #' @param sender Address that initiated the swap.
    #' @param amount_0_in Amount of token0 sold.
    #' @param amount_1_in Amount of token1 sold.
    #' @param amount_0_out Amount of token0 received.
    #' @param amount_1_out Amount of token1 received.
    #' @param to Recipient of output tokens.
    #' @param log_index Event index within transaction.
    #' @param amount_usd Derived amount of tokens sold in USD.
    #' @param vid 
    #' @param pool_id pool_id
    #' @param transaction_id transaction_id
    #' @param evaluated_price evaluated_price
    #' @param evaluated_amount evaluated_amount
    #' @param evaluated_aggressor evaluated_aggressor
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `transaction` = NULL, `timestamp` = NULL, `pair` = NULL, `sender` = NULL, `amount_0_in` = NULL, `amount_1_in` = NULL, `amount_0_out` = NULL, `amount_1_out` = NULL, `to` = NULL, `log_index` = NULL, `amount_usd` = NULL, `vid` = NULL, `pool_id` = NULL, `transaction_id` = NULL, `evaluated_price` = NULL, `evaluated_amount` = NULL, `evaluated_aggressor` = NULL, ...) {
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
      if (!is.null(`transaction`)) {
        if (!(is.character(`transaction`) && length(`transaction`) == 1)) {
          stop(paste("Error! Invalid data for `transaction`. Must be a string:", `transaction`))
        }
        self$`transaction` <- `transaction`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`pair`)) {
        if (!(is.character(`pair`) && length(`pair`) == 1)) {
          stop(paste("Error! Invalid data for `pair`. Must be a string:", `pair`))
        }
        self$`pair` <- `pair`
      }
      if (!is.null(`sender`)) {
        if (!(is.character(`sender`) && length(`sender`) == 1)) {
          stop(paste("Error! Invalid data for `sender`. Must be a string:", `sender`))
        }
        self$`sender` <- `sender`
      }
      if (!is.null(`amount_0_in`)) {
        if (!(is.character(`amount_0_in`) && length(`amount_0_in`) == 1)) {
          stop(paste("Error! Invalid data for `amount_0_in`. Must be a string:", `amount_0_in`))
        }
        self$`amount_0_in` <- `amount_0_in`
      }
      if (!is.null(`amount_1_in`)) {
        if (!(is.character(`amount_1_in`) && length(`amount_1_in`) == 1)) {
          stop(paste("Error! Invalid data for `amount_1_in`. Must be a string:", `amount_1_in`))
        }
        self$`amount_1_in` <- `amount_1_in`
      }
      if (!is.null(`amount_0_out`)) {
        if (!(is.character(`amount_0_out`) && length(`amount_0_out`) == 1)) {
          stop(paste("Error! Invalid data for `amount_0_out`. Must be a string:", `amount_0_out`))
        }
        self$`amount_0_out` <- `amount_0_out`
      }
      if (!is.null(`amount_1_out`)) {
        if (!(is.character(`amount_1_out`) && length(`amount_1_out`) == 1)) {
          stop(paste("Error! Invalid data for `amount_1_out`. Must be a string:", `amount_1_out`))
        }
        self$`amount_1_out` <- `amount_1_out`
      }
      if (!is.null(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!is.null(`log_index`)) {
        if (!(is.character(`log_index`) && length(`log_index`) == 1)) {
          stop(paste("Error! Invalid data for `log_index`. Must be a string:", `log_index`))
        }
        self$`log_index` <- `log_index`
      }
      if (!is.null(`amount_usd`)) {
        if (!(is.character(`amount_usd`) && length(`amount_usd`) == 1)) {
          stop(paste("Error! Invalid data for `amount_usd`. Must be a string:", `amount_usd`))
        }
        self$`amount_usd` <- `amount_usd`
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
    #' @return SushiswapSwapDTO in JSON format
    #' @export
    toJSON = function() {
      SushiswapSwapDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SushiswapSwapDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SushiswapSwapDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SushiswapSwapDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SushiswapSwapDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`transaction`)) {
        SushiswapSwapDTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`timestamp`)) {
        SushiswapSwapDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`pair`)) {
        SushiswapSwapDTOObject[["pair"]] <-
          self$`pair`
      }
      if (!is.null(self$`sender`)) {
        SushiswapSwapDTOObject[["sender"]] <-
          self$`sender`
      }
      if (!is.null(self$`amount_0_in`)) {
        SushiswapSwapDTOObject[["amount_0_in"]] <-
          self$`amount_0_in`
      }
      if (!is.null(self$`amount_1_in`)) {
        SushiswapSwapDTOObject[["amount_1_in"]] <-
          self$`amount_1_in`
      }
      if (!is.null(self$`amount_0_out`)) {
        SushiswapSwapDTOObject[["amount_0_out"]] <-
          self$`amount_0_out`
      }
      if (!is.null(self$`amount_1_out`)) {
        SushiswapSwapDTOObject[["amount_1_out"]] <-
          self$`amount_1_out`
      }
      if (!is.null(self$`to`)) {
        SushiswapSwapDTOObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`log_index`)) {
        SushiswapSwapDTOObject[["log_index"]] <-
          self$`log_index`
      }
      if (!is.null(self$`amount_usd`)) {
        SushiswapSwapDTOObject[["amount_usd"]] <-
          self$`amount_usd`
      }
      if (!is.null(self$`vid`)) {
        SushiswapSwapDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`pool_id`)) {
        SushiswapSwapDTOObject[["pool_id"]] <-
          self$`pool_id`
      }
      if (!is.null(self$`transaction_id`)) {
        SushiswapSwapDTOObject[["transaction_id"]] <-
          self$`transaction_id`
      }
      if (!is.null(self$`evaluated_price`)) {
        SushiswapSwapDTOObject[["evaluated_price"]] <-
          self$`evaluated_price`
      }
      if (!is.null(self$`evaluated_amount`)) {
        SushiswapSwapDTOObject[["evaluated_amount"]] <-
          self$`evaluated_amount`
      }
      if (!is.null(self$`evaluated_aggressor`)) {
        SushiswapSwapDTOObject[["evaluated_aggressor"]] <-
          self$`evaluated_aggressor`$toJSON()
      }
      SushiswapSwapDTOObject
    },
    #' Deserialize JSON string into an instance of SushiswapSwapDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapSwapDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapSwapDTO
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
      if (!is.null(this_object$`transaction`)) {
        self$`transaction` <- this_object$`transaction`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`pair`)) {
        self$`pair` <- this_object$`pair`
      }
      if (!is.null(this_object$`sender`)) {
        self$`sender` <- this_object$`sender`
      }
      if (!is.null(this_object$`amount_0_in`)) {
        self$`amount_0_in` <- this_object$`amount_0_in`
      }
      if (!is.null(this_object$`amount_1_in`)) {
        self$`amount_1_in` <- this_object$`amount_1_in`
      }
      if (!is.null(this_object$`amount_0_out`)) {
        self$`amount_0_out` <- this_object$`amount_0_out`
      }
      if (!is.null(this_object$`amount_1_out`)) {
        self$`amount_1_out` <- this_object$`amount_1_out`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`log_index`)) {
        self$`log_index` <- this_object$`log_index`
      }
      if (!is.null(this_object$`amount_usd`)) {
        self$`amount_usd` <- this_object$`amount_usd`
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
    #' @return SushiswapSwapDTO in JSON format
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
        if (!is.null(self$`transaction`)) {
          sprintf(
          '"transaction":
            "%s"
                    ',
          self$`transaction`
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
        if (!is.null(self$`pair`)) {
          sprintf(
          '"pair":
            "%s"
                    ',
          self$`pair`
          )
        },
        if (!is.null(self$`sender`)) {
          sprintf(
          '"sender":
            "%s"
                    ',
          self$`sender`
          )
        },
        if (!is.null(self$`amount_0_in`)) {
          sprintf(
          '"amount_0_in":
            "%s"
                    ',
          self$`amount_0_in`
          )
        },
        if (!is.null(self$`amount_1_in`)) {
          sprintf(
          '"amount_1_in":
            "%s"
                    ',
          self$`amount_1_in`
          )
        },
        if (!is.null(self$`amount_0_out`)) {
          sprintf(
          '"amount_0_out":
            "%s"
                    ',
          self$`amount_0_out`
          )
        },
        if (!is.null(self$`amount_1_out`)) {
          sprintf(
          '"amount_1_out":
            "%s"
                    ',
          self$`amount_1_out`
          )
        },
        if (!is.null(self$`to`)) {
          sprintf(
          '"to":
            "%s"
                    ',
          self$`to`
          )
        },
        if (!is.null(self$`log_index`)) {
          sprintf(
          '"log_index":
            "%s"
                    ',
          self$`log_index`
          )
        },
        if (!is.null(self$`amount_usd`)) {
          sprintf(
          '"amount_usd":
            "%s"
                    ',
          self$`amount_usd`
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
    #' Deserialize JSON string into an instance of SushiswapSwapDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapSwapDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapSwapDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`transaction` <- this_object$`transaction`
      self$`timestamp` <- this_object$`timestamp`
      self$`pair` <- this_object$`pair`
      self$`sender` <- this_object$`sender`
      self$`amount_0_in` <- this_object$`amount_0_in`
      self$`amount_1_in` <- this_object$`amount_1_in`
      self$`amount_0_out` <- this_object$`amount_0_out`
      self$`amount_1_out` <- this_object$`amount_1_out`
      self$`to` <- this_object$`to`
      self$`log_index` <- this_object$`log_index`
      self$`amount_usd` <- this_object$`amount_usd`
      self$`vid` <- this_object$`vid`
      self$`pool_id` <- this_object$`pool_id`
      self$`transaction_id` <- this_object$`transaction_id`
      self$`evaluated_price` <- this_object$`evaluated_price`
      self$`evaluated_amount` <- this_object$`evaluated_amount`
      self$`evaluated_aggressor` <- TransactionsETradeAggressiveSide$new()$fromJSON(jsonlite::toJSON(this_object$`evaluated_aggressor`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to SushiswapSwapDTO
    #'
    #' @description
    #' Validate JSON input with respect to SushiswapSwapDTO and throw an exception if invalid
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
    #' @return String representation of SushiswapSwapDTO
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
# SushiswapSwapDTO$unlock()
#
## Below is an example to define the print function
# SushiswapSwapDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SushiswapSwapDTO$lock()

