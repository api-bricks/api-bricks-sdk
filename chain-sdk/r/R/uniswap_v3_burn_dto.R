#' Create a new UniswapV3BurnDTO
#'
#' @description
#' Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
#'
#' @docType class
#' @title UniswapV3BurnDTO
#' @description UniswapV3BurnDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Transaction hash + '#' + index in mints Transaction array. character [optional]
#' @field transaction Transaction burn was included in. character [optional]
#' @field pool Pool position is within. character [optional]
#' @field token_0 Reference to token0 as stored in pool contract. character [optional]
#' @field token_1 Reference to token1 as stored in pool contract. character [optional]
#' @field timestamp Timestamp. character [optional]
#' @field owner Owner of position where liquidity was burned. character [optional]
#' @field origin Transaction origin: the EOA (Externally Owned Account) that initiated the transaction. character [optional]
#' @field amount Amount of liquidity burned. character [optional]
#' @field amount_0 Amount of token 0 burned. character [optional]
#' @field amount_1 Amount of token 1 burned. character [optional]
#' @field amount_usd Derived amount based on available prices of tokens. character [optional]
#' @field tick_lower Lower tick of position. character [optional]
#' @field tick_upper Upper tick of position. character [optional]
#' @field log_index Position within the transactions. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3BurnDTO <- R6::R6Class(
  "UniswapV3BurnDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `transaction` = NULL,
    `pool` = NULL,
    `token_0` = NULL,
    `token_1` = NULL,
    `timestamp` = NULL,
    `owner` = NULL,
    `origin` = NULL,
    `amount` = NULL,
    `amount_0` = NULL,
    `amount_1` = NULL,
    `amount_usd` = NULL,
    `tick_lower` = NULL,
    `tick_upper` = NULL,
    `log_index` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV3BurnDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3BurnDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Transaction hash + '#' + index in mints Transaction array.
    #' @param transaction Transaction burn was included in.
    #' @param pool Pool position is within.
    #' @param token_0 Reference to token0 as stored in pool contract.
    #' @param token_1 Reference to token1 as stored in pool contract.
    #' @param timestamp Timestamp.
    #' @param owner Owner of position where liquidity was burned.
    #' @param origin Transaction origin: the EOA (Externally Owned Account) that initiated the transaction.
    #' @param amount Amount of liquidity burned.
    #' @param amount_0 Amount of token 0 burned.
    #' @param amount_1 Amount of token 1 burned.
    #' @param amount_usd Derived amount based on available prices of tokens.
    #' @param tick_lower Lower tick of position.
    #' @param tick_upper Upper tick of position.
    #' @param log_index Position within the transactions.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `transaction` = NULL, `pool` = NULL, `token_0` = NULL, `token_1` = NULL, `timestamp` = NULL, `owner` = NULL, `origin` = NULL, `amount` = NULL, `amount_0` = NULL, `amount_1` = NULL, `amount_usd` = NULL, `tick_lower` = NULL, `tick_upper` = NULL, `log_index` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`owner`)) {
        if (!(is.character(`owner`) && length(`owner`) == 1)) {
          stop(paste("Error! Invalid data for `owner`. Must be a string:", `owner`))
        }
        self$`owner` <- `owner`
      }
      if (!is.null(`origin`)) {
        if (!(is.character(`origin`) && length(`origin`) == 1)) {
          stop(paste("Error! Invalid data for `origin`. Must be a string:", `origin`))
        }
        self$`origin` <- `origin`
      }
      if (!is.null(`amount`)) {
        if (!(is.character(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", `amount`))
        }
        self$`amount` <- `amount`
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
      if (!is.null(`tick_lower`)) {
        if (!(is.character(`tick_lower`) && length(`tick_lower`) == 1)) {
          stop(paste("Error! Invalid data for `tick_lower`. Must be a string:", `tick_lower`))
        }
        self$`tick_lower` <- `tick_lower`
      }
      if (!is.null(`tick_upper`)) {
        if (!(is.character(`tick_upper`) && length(`tick_upper`) == 1)) {
          stop(paste("Error! Invalid data for `tick_upper`. Must be a string:", `tick_upper`))
        }
        self$`tick_upper` <- `tick_upper`
      }
      if (!is.null(`log_index`)) {
        if (!(is.character(`log_index`) && length(`log_index`) == 1)) {
          stop(paste("Error! Invalid data for `log_index`. Must be a string:", `log_index`))
        }
        self$`log_index` <- `log_index`
      }
      if (!is.null(`vid`)) {
        if (!(is.numeric(`vid`) && length(`vid`) == 1)) {
          stop(paste("Error! Invalid data for `vid`. Must be an integer:", `vid`))
        }
        self$`vid` <- `vid`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3BurnDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3BurnDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3BurnDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3BurnDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3BurnDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV3BurnDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`transaction`)) {
        UniswapV3BurnDTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`pool`)) {
        UniswapV3BurnDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`token_0`)) {
        UniswapV3BurnDTOObject[["token_0"]] <-
          self$`token_0`
      }
      if (!is.null(self$`token_1`)) {
        UniswapV3BurnDTOObject[["token_1"]] <-
          self$`token_1`
      }
      if (!is.null(self$`timestamp`)) {
        UniswapV3BurnDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`owner`)) {
        UniswapV3BurnDTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`origin`)) {
        UniswapV3BurnDTOObject[["origin"]] <-
          self$`origin`
      }
      if (!is.null(self$`amount`)) {
        UniswapV3BurnDTOObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`amount_0`)) {
        UniswapV3BurnDTOObject[["amount_0"]] <-
          self$`amount_0`
      }
      if (!is.null(self$`amount_1`)) {
        UniswapV3BurnDTOObject[["amount_1"]] <-
          self$`amount_1`
      }
      if (!is.null(self$`amount_usd`)) {
        UniswapV3BurnDTOObject[["amount_usd"]] <-
          self$`amount_usd`
      }
      if (!is.null(self$`tick_lower`)) {
        UniswapV3BurnDTOObject[["tick_lower"]] <-
          self$`tick_lower`
      }
      if (!is.null(self$`tick_upper`)) {
        UniswapV3BurnDTOObject[["tick_upper"]] <-
          self$`tick_upper`
      }
      if (!is.null(self$`log_index`)) {
        UniswapV3BurnDTOObject[["log_index"]] <-
          self$`log_index`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3BurnDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV3BurnDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3BurnDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3BurnDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3BurnDTO
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
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`token_0`)) {
        self$`token_0` <- this_object$`token_0`
      }
      if (!is.null(this_object$`token_1`)) {
        self$`token_1` <- this_object$`token_1`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
      }
      if (!is.null(this_object$`origin`)) {
        self$`origin` <- this_object$`origin`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
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
      if (!is.null(this_object$`tick_lower`)) {
        self$`tick_lower` <- this_object$`tick_lower`
      }
      if (!is.null(this_object$`tick_upper`)) {
        self$`tick_upper` <- this_object$`tick_upper`
      }
      if (!is.null(this_object$`log_index`)) {
        self$`log_index` <- this_object$`log_index`
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3BurnDTO in JSON format
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
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`owner`)) {
          sprintf(
          '"owner":
            "%s"
                    ',
          self$`owner`
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
        if (!is.null(self$`amount`)) {
          sprintf(
          '"amount":
            "%s"
                    ',
          self$`amount`
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
        if (!is.null(self$`tick_lower`)) {
          sprintf(
          '"tick_lower":
            "%s"
                    ',
          self$`tick_lower`
          )
        },
        if (!is.null(self$`tick_upper`)) {
          sprintf(
          '"tick_upper":
            "%s"
                    ',
          self$`tick_upper`
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
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UniswapV3BurnDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3BurnDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3BurnDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`transaction` <- this_object$`transaction`
      self$`pool` <- this_object$`pool`
      self$`token_0` <- this_object$`token_0`
      self$`token_1` <- this_object$`token_1`
      self$`timestamp` <- this_object$`timestamp`
      self$`owner` <- this_object$`owner`
      self$`origin` <- this_object$`origin`
      self$`amount` <- this_object$`amount`
      self$`amount_0` <- this_object$`amount_0`
      self$`amount_1` <- this_object$`amount_1`
      self$`amount_usd` <- this_object$`amount_usd`
      self$`tick_lower` <- this_object$`tick_lower`
      self$`tick_upper` <- this_object$`tick_upper`
      self$`log_index` <- this_object$`log_index`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV3BurnDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3BurnDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3BurnDTO
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
# UniswapV3BurnDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3BurnDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3BurnDTO$lock()

