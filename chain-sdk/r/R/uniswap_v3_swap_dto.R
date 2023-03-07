#' Create a new UniswapV3SwapDTO
#'
#' @description
#' Swap are created for each token swap within a pair.
#'
#' @docType class
#' @title UniswapV3SwapDTO
#' @description UniswapV3SwapDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field vid  integer [optional]
#' @field id Identifier, format: (transaction hash) + # + (index in swaps Transaction array). character [optional]
#' @field transaction Pointer to transaction. character [optional]
#' @field timestamp Timestamp of transaction. character [optional]
#' @field pool Pool swap occured within. character [optional]
#' @field token_0 Reference to token0 as stored in pair contract. character [optional]
#' @field token_1 Reference to token1 as stored in pair contract. character [optional]
#' @field sender Sender of the swap. character [optional]
#' @field recipient Recipient of the swap. character [optional]
#' @field origin Transaction origin: the EOA (Externally Owned Account) that initiated the transaction character [optional]
#' @field amount_0 Delta of token0 swapped. character [optional]
#' @field amount_1 Delta of token1 swapped. character [optional]
#' @field amount_usd Derived amount of tokens sold in USD. character [optional]
#' @field sqrt_price_x96  \link{NumericsBigInteger} [optional]
#' @field tick  \link{NumericsBigInteger} [optional]
#' @field log_index  \link{NumericsBigInteger} [optional]
#' @field evaluated_price  numeric [optional]
#' @field evaluated_amount  numeric [optional]
#' @field evaluated_aggressor  \link{TransactionsETradeAggressiveSide} [optional]
#' @field pool_id  character [optional]
#' @field transaction_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3SwapDTO <- R6::R6Class(
  "UniswapV3SwapDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `id` = NULL,
    `transaction` = NULL,
    `timestamp` = NULL,
    `pool` = NULL,
    `token_0` = NULL,
    `token_1` = NULL,
    `sender` = NULL,
    `recipient` = NULL,
    `origin` = NULL,
    `amount_0` = NULL,
    `amount_1` = NULL,
    `amount_usd` = NULL,
    `sqrt_price_x96` = NULL,
    `tick` = NULL,
    `log_index` = NULL,
    `evaluated_price` = NULL,
    `evaluated_amount` = NULL,
    `evaluated_aggressor` = NULL,
    `pool_id` = NULL,
    `transaction_id` = NULL,
    #' Initialize a new UniswapV3SwapDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3SwapDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param vid 
    #' @param id Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
    #' @param transaction Pointer to transaction.
    #' @param timestamp Timestamp of transaction.
    #' @param pool Pool swap occured within.
    #' @param token_0 Reference to token0 as stored in pair contract.
    #' @param token_1 Reference to token1 as stored in pair contract.
    #' @param sender Sender of the swap.
    #' @param recipient Recipient of the swap.
    #' @param origin Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
    #' @param amount_0 Delta of token0 swapped.
    #' @param amount_1 Delta of token1 swapped.
    #' @param amount_usd Derived amount of tokens sold in USD.
    #' @param sqrt_price_x96 sqrt_price_x96
    #' @param tick tick
    #' @param log_index log_index
    #' @param evaluated_price evaluated_price
    #' @param evaluated_amount evaluated_amount
    #' @param evaluated_aggressor evaluated_aggressor
    #' @param pool_id pool_id
    #' @param transaction_id transaction_id
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `transaction` = NULL, `timestamp` = NULL, `pool` = NULL, `token_0` = NULL, `token_1` = NULL, `sender` = NULL, `recipient` = NULL, `origin` = NULL, `amount_0` = NULL, `amount_1` = NULL, `amount_usd` = NULL, `sqrt_price_x96` = NULL, `tick` = NULL, `log_index` = NULL, `evaluated_price` = NULL, `evaluated_amount` = NULL, `evaluated_aggressor` = NULL, `pool_id` = NULL, `transaction_id` = NULL, ...) {
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
      if (!is.null(`vid`)) {
        if (!(is.numeric(`vid`) && length(`vid`) == 1)) {
          stop(paste("Error! Invalid data for `vid`. Must be an integer:", `vid`))
        }
        self$`vid` <- `vid`
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
        if (!is.character(`timestamp`)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
      }
      if (!is.null(`token_0`)) {
        if (!(is.character(`token_0`) && length(`token_0`) == 1)) {
          stop(paste("Error! Invalid data for `token_0`. Must be a string:", `token_0`))
        }
        self$`token_0` <- `token_0`
      }
      if (!is.null(`token_1`)) {
        if (!(is.character(`token_1`) && length(`token_1`) == 1)) {
          stop(paste("Error! Invalid data for `token_1`. Must be a string:", `token_1`))
        }
        self$`token_1` <- `token_1`
      }
      if (!is.null(`sender`)) {
        if (!(is.character(`sender`) && length(`sender`) == 1)) {
          stop(paste("Error! Invalid data for `sender`. Must be a string:", `sender`))
        }
        self$`sender` <- `sender`
      }
      if (!is.null(`recipient`)) {
        if (!(is.character(`recipient`) && length(`recipient`) == 1)) {
          stop(paste("Error! Invalid data for `recipient`. Must be a string:", `recipient`))
        }
        self$`recipient` <- `recipient`
      }
      if (!is.null(`origin`)) {
        if (!(is.character(`origin`) && length(`origin`) == 1)) {
          stop(paste("Error! Invalid data for `origin`. Must be a string:", `origin`))
        }
        self$`origin` <- `origin`
      }
      if (!is.null(`amount_0`)) {
        if (!(is.character(`amount_0`) && length(`amount_0`) == 1)) {
          stop(paste("Error! Invalid data for `amount_0`. Must be a string:", `amount_0`))
        }
        self$`amount_0` <- `amount_0`
      }
      if (!is.null(`amount_1`)) {
        if (!(is.character(`amount_1`) && length(`amount_1`) == 1)) {
          stop(paste("Error! Invalid data for `amount_1`. Must be a string:", `amount_1`))
        }
        self$`amount_1` <- `amount_1`
      }
      if (!is.null(`amount_usd`)) {
        if (!(is.character(`amount_usd`) && length(`amount_usd`) == 1)) {
          stop(paste("Error! Invalid data for `amount_usd`. Must be a string:", `amount_usd`))
        }
        self$`amount_usd` <- `amount_usd`
      }
      if (!is.null(`sqrt_price_x96`)) {
        stopifnot(R6::is.R6(`sqrt_price_x96`))
        self$`sqrt_price_x96` <- `sqrt_price_x96`
      }
      if (!is.null(`tick`)) {
        stopifnot(R6::is.R6(`tick`))
        self$`tick` <- `tick`
      }
      if (!is.null(`log_index`)) {
        stopifnot(R6::is.R6(`log_index`))
        self$`log_index` <- `log_index`
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3SwapDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3SwapDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3SwapDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3SwapDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3SwapDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3SwapDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        UniswapV3SwapDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`transaction`)) {
        UniswapV3SwapDTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`timestamp`)) {
        UniswapV3SwapDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`pool`)) {
        UniswapV3SwapDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`token_0`)) {
        UniswapV3SwapDTOObject[["token_0"]] <-
          self$`token_0`
      }
      if (!is.null(self$`token_1`)) {
        UniswapV3SwapDTOObject[["token_1"]] <-
          self$`token_1`
      }
      if (!is.null(self$`sender`)) {
        UniswapV3SwapDTOObject[["sender"]] <-
          self$`sender`
      }
      if (!is.null(self$`recipient`)) {
        UniswapV3SwapDTOObject[["recipient"]] <-
          self$`recipient`
      }
      if (!is.null(self$`origin`)) {
        UniswapV3SwapDTOObject[["origin"]] <-
          self$`origin`
      }
      if (!is.null(self$`amount_0`)) {
        UniswapV3SwapDTOObject[["amount_0"]] <-
          self$`amount_0`
      }
      if (!is.null(self$`amount_1`)) {
        UniswapV3SwapDTOObject[["amount_1"]] <-
          self$`amount_1`
      }
      if (!is.null(self$`amount_usd`)) {
        UniswapV3SwapDTOObject[["amount_usd"]] <-
          self$`amount_usd`
      }
      if (!is.null(self$`sqrt_price_x96`)) {
        UniswapV3SwapDTOObject[["sqrt_price_x96"]] <-
          self$`sqrt_price_x96`$toJSON()
      }
      if (!is.null(self$`tick`)) {
        UniswapV3SwapDTOObject[["tick"]] <-
          self$`tick`$toJSON()
      }
      if (!is.null(self$`log_index`)) {
        UniswapV3SwapDTOObject[["log_index"]] <-
          self$`log_index`$toJSON()
      }
      if (!is.null(self$`evaluated_price`)) {
        UniswapV3SwapDTOObject[["evaluated_price"]] <-
          self$`evaluated_price`
      }
      if (!is.null(self$`evaluated_amount`)) {
        UniswapV3SwapDTOObject[["evaluated_amount"]] <-
          self$`evaluated_amount`
      }
      if (!is.null(self$`evaluated_aggressor`)) {
        UniswapV3SwapDTOObject[["evaluated_aggressor"]] <-
          self$`evaluated_aggressor`$toJSON()
      }
      if (!is.null(self$`pool_id`)) {
        UniswapV3SwapDTOObject[["pool_id"]] <-
          self$`pool_id`
      }
      if (!is.null(self$`transaction_id`)) {
        UniswapV3SwapDTOObject[["transaction_id"]] <-
          self$`transaction_id`
      }
      UniswapV3SwapDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3SwapDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3SwapDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3SwapDTO
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
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
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
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`token_0`)) {
        self$`token_0` <- this_object$`token_0`
      }
      if (!is.null(this_object$`token_1`)) {
        self$`token_1` <- this_object$`token_1`
      }
      if (!is.null(this_object$`sender`)) {
        self$`sender` <- this_object$`sender`
      }
      if (!is.null(this_object$`recipient`)) {
        self$`recipient` <- this_object$`recipient`
      }
      if (!is.null(this_object$`origin`)) {
        self$`origin` <- this_object$`origin`
      }
      if (!is.null(this_object$`amount_0`)) {
        self$`amount_0` <- this_object$`amount_0`
      }
      if (!is.null(this_object$`amount_1`)) {
        self$`amount_1` <- this_object$`amount_1`
      }
      if (!is.null(this_object$`amount_usd`)) {
        self$`amount_usd` <- this_object$`amount_usd`
      }
      if (!is.null(this_object$`sqrt_price_x96`)) {
        `sqrt_price_x96_object` <- NumericsBigInteger$new()
        `sqrt_price_x96_object`$fromJSON(jsonlite::toJSON(this_object$`sqrt_price_x96`, auto_unbox = TRUE, digits = NA))
        self$`sqrt_price_x96` <- `sqrt_price_x96_object`
      }
      if (!is.null(this_object$`tick`)) {
        `tick_object` <- NumericsBigInteger$new()
        `tick_object`$fromJSON(jsonlite::toJSON(this_object$`tick`, auto_unbox = TRUE, digits = NA))
        self$`tick` <- `tick_object`
      }
      if (!is.null(this_object$`log_index`)) {
        `log_index_object` <- NumericsBigInteger$new()
        `log_index_object`$fromJSON(jsonlite::toJSON(this_object$`log_index`, auto_unbox = TRUE, digits = NA))
        self$`log_index` <- `log_index_object`
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
      if (!is.null(this_object$`pool_id`)) {
        self$`pool_id` <- this_object$`pool_id`
      }
      if (!is.null(this_object$`transaction_id`)) {
        self$`transaction_id` <- this_object$`transaction_id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3SwapDTO in JSON format
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
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
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
        if (!is.null(self$`pool`)) {
          sprintf(
          '"pool":
            "%s"
                    ',
          self$`pool`
          )
        },
        if (!is.null(self$`token_0`)) {
          sprintf(
          '"token_0":
            "%s"
                    ',
          self$`token_0`
          )
        },
        if (!is.null(self$`token_1`)) {
          sprintf(
          '"token_1":
            "%s"
                    ',
          self$`token_1`
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
        if (!is.null(self$`recipient`)) {
          sprintf(
          '"recipient":
            "%s"
                    ',
          self$`recipient`
          )
        },
        if (!is.null(self$`origin`)) {
          sprintf(
          '"origin":
            "%s"
                    ',
          self$`origin`
          )
        },
        if (!is.null(self$`amount_0`)) {
          sprintf(
          '"amount_0":
            "%s"
                    ',
          self$`amount_0`
          )
        },
        if (!is.null(self$`amount_1`)) {
          sprintf(
          '"amount_1":
            "%s"
                    ',
          self$`amount_1`
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
        if (!is.null(self$`sqrt_price_x96`)) {
          sprintf(
          '"sqrt_price_x96":
          %s
          ',
          jsonlite::toJSON(self$`sqrt_price_x96`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`tick`)) {
          sprintf(
          '"tick":
          %s
          ',
          jsonlite::toJSON(self$`tick`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`log_index`)) {
          sprintf(
          '"log_index":
          %s
          ',
          jsonlite::toJSON(self$`log_index`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UniswapV3SwapDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3SwapDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3SwapDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`id` <- this_object$`id`
      self$`transaction` <- this_object$`transaction`
      self$`timestamp` <- this_object$`timestamp`
      self$`pool` <- this_object$`pool`
      self$`token_0` <- this_object$`token_0`
      self$`token_1` <- this_object$`token_1`
      self$`sender` <- this_object$`sender`
      self$`recipient` <- this_object$`recipient`
      self$`origin` <- this_object$`origin`
      self$`amount_0` <- this_object$`amount_0`
      self$`amount_1` <- this_object$`amount_1`
      self$`amount_usd` <- this_object$`amount_usd`
      self$`sqrt_price_x96` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`sqrt_price_x96`, auto_unbox = TRUE, digits = NA))
      self$`tick` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`tick`, auto_unbox = TRUE, digits = NA))
      self$`log_index` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`log_index`, auto_unbox = TRUE, digits = NA))
      self$`evaluated_price` <- this_object$`evaluated_price`
      self$`evaluated_amount` <- this_object$`evaluated_amount`
      self$`evaluated_aggressor` <- TransactionsETradeAggressiveSide$new()$fromJSON(jsonlite::toJSON(this_object$`evaluated_aggressor`, auto_unbox = TRUE, digits = NA))
      self$`pool_id` <- this_object$`pool_id`
      self$`transaction_id` <- this_object$`transaction_id`
      self
    },
    #' Validate JSON input with respect to UniswapV3SwapDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3SwapDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3SwapDTO
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
# UniswapV3SwapDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3SwapDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3SwapDTO$lock()

