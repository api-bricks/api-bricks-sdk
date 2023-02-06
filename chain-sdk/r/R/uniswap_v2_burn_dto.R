#' Create a new UniswapV2BurnDTO
#'
#' @description
#' Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
#'
#' @docType class
#' @title UniswapV2BurnDTO
#' @description UniswapV2BurnDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Transaction hash plus index in the transaction burn array character [optional]
#' @field transaction Reference to the transaction Burn was included in. character [optional]
#' @field timestamp Timestamp of Burn, used to sort recent liquidity removals. character [optional]
#' @field pair Reference to pair. character [optional]
#' @field liquidity Amount of liquidity tokens burned. character [optional]
#' @field sender Address that initiated the liquidity removal. character [optional]
#' @field amount_0 Amount of token0 removed. character [optional]
#' @field amount_1 Amount of token1 removed. character [optional]
#' @field to Recipient of tokens. character [optional]
#' @field log_index Index in the transaction event was emitted. character [optional]
#' @field amount_usd Derived USD value of token0 amount plus token1 amount. character [optional]
#' @field needs_complete  character [optional]
#' @field fee_to Address of fee recipient (if fee is on). character [optional]
#' @field fee_liquidity Amount of tokens sent to fee recipient (if fee is on). character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2BurnDTO <- R6::R6Class(
  "UniswapV2BurnDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `transaction` = NULL,
    `timestamp` = NULL,
    `pair` = NULL,
    `liquidity` = NULL,
    `sender` = NULL,
    `amount_0` = NULL,
    `amount_1` = NULL,
    `to` = NULL,
    `log_index` = NULL,
    `amount_usd` = NULL,
    `needs_complete` = NULL,
    `fee_to` = NULL,
    `fee_liquidity` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV2BurnDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2BurnDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Transaction hash plus index in the transaction burn array
    #' @param transaction Reference to the transaction Burn was included in.
    #' @param timestamp Timestamp of Burn, used to sort recent liquidity removals.
    #' @param pair Reference to pair.
    #' @param liquidity Amount of liquidity tokens burned.
    #' @param sender Address that initiated the liquidity removal.
    #' @param amount_0 Amount of token0 removed.
    #' @param amount_1 Amount of token1 removed.
    #' @param to Recipient of tokens.
    #' @param log_index Index in the transaction event was emitted.
    #' @param amount_usd Derived USD value of token0 amount plus token1 amount.
    #' @param needs_complete 
    #' @param fee_to Address of fee recipient (if fee is on).
    #' @param fee_liquidity Amount of tokens sent to fee recipient (if fee is on).
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `transaction` = NULL, `timestamp` = NULL, `pair` = NULL, `liquidity` = NULL, `sender` = NULL, `amount_0` = NULL, `amount_1` = NULL, `to` = NULL, `log_index` = NULL, `amount_usd` = NULL, `needs_complete` = NULL, `fee_to` = NULL, `fee_liquidity` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`liquidity`)) {
        if (!(is.character(`liquidity`) && length(`liquidity`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity`. Must be a string:", `liquidity`))
        }
        self$`liquidity` <- `liquidity`
      }
      if (!is.null(`sender`)) {
        if (!(is.character(`sender`) && length(`sender`) == 1)) {
          stop(paste("Error! Invalid data for `sender`. Must be a string:", `sender`))
        }
        self$`sender` <- `sender`
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
      if (!is.null(`needs_complete`)) {
        if (!(is.logical(`needs_complete`) && length(`needs_complete`) == 1)) {
          stop(paste("Error! Invalid data for `needs_complete`. Must be a boolean:", `needs_complete`))
        }
        self$`needs_complete` <- `needs_complete`
      }
      if (!is.null(`fee_to`)) {
        if (!(is.character(`fee_to`) && length(`fee_to`) == 1)) {
          stop(paste("Error! Invalid data for `fee_to`. Must be a string:", `fee_to`))
        }
        self$`fee_to` <- `fee_to`
      }
      if (!is.null(`fee_liquidity`)) {
        if (!(is.character(`fee_liquidity`) && length(`fee_liquidity`) == 1)) {
          stop(paste("Error! Invalid data for `fee_liquidity`. Must be a string:", `fee_liquidity`))
        }
        self$`fee_liquidity` <- `fee_liquidity`
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
    #' @return UniswapV2BurnDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2BurnDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2BurnDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2BurnDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2BurnDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV2BurnDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`transaction`)) {
        UniswapV2BurnDTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`timestamp`)) {
        UniswapV2BurnDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`pair`)) {
        UniswapV2BurnDTOObject[["pair"]] <-
          self$`pair`
      }
      if (!is.null(self$`liquidity`)) {
        UniswapV2BurnDTOObject[["liquidity"]] <-
          self$`liquidity`
      }
      if (!is.null(self$`sender`)) {
        UniswapV2BurnDTOObject[["sender"]] <-
          self$`sender`
      }
      if (!is.null(self$`amount_0`)) {
        UniswapV2BurnDTOObject[["amount_0"]] <-
          self$`amount_0`
      }
      if (!is.null(self$`amount_1`)) {
        UniswapV2BurnDTOObject[["amount_1"]] <-
          self$`amount_1`
      }
      if (!is.null(self$`to`)) {
        UniswapV2BurnDTOObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`log_index`)) {
        UniswapV2BurnDTOObject[["log_index"]] <-
          self$`log_index`
      }
      if (!is.null(self$`amount_usd`)) {
        UniswapV2BurnDTOObject[["amount_usd"]] <-
          self$`amount_usd`
      }
      if (!is.null(self$`needs_complete`)) {
        UniswapV2BurnDTOObject[["needs_complete"]] <-
          self$`needs_complete`
      }
      if (!is.null(self$`fee_to`)) {
        UniswapV2BurnDTOObject[["fee_to"]] <-
          self$`fee_to`
      }
      if (!is.null(self$`fee_liquidity`)) {
        UniswapV2BurnDTOObject[["fee_liquidity"]] <-
          self$`fee_liquidity`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2BurnDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV2BurnDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2BurnDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2BurnDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2BurnDTO
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
      if (!is.null(this_object$`liquidity`)) {
        self$`liquidity` <- this_object$`liquidity`
      }
      if (!is.null(this_object$`sender`)) {
        self$`sender` <- this_object$`sender`
      }
      if (!is.null(this_object$`amount_0`)) {
        self$`amount_0` <- this_object$`amount_0`
      }
      if (!is.null(this_object$`amount_1`)) {
        self$`amount_1` <- this_object$`amount_1`
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
      if (!is.null(this_object$`needs_complete`)) {
        self$`needs_complete` <- this_object$`needs_complete`
      }
      if (!is.null(this_object$`fee_to`)) {
        self$`fee_to` <- this_object$`fee_to`
      }
      if (!is.null(this_object$`fee_liquidity`)) {
        self$`fee_liquidity` <- this_object$`fee_liquidity`
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
    #' @return UniswapV2BurnDTO in JSON format
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
        if (!is.null(self$`liquidity`)) {
          sprintf(
          '"liquidity":
            "%s"
                    ',
          self$`liquidity`
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
        if (!is.null(self$`needs_complete`)) {
          sprintf(
          '"needs_complete":
            %s
                    ',
          tolower(self$`needs_complete`)
          )
        },
        if (!is.null(self$`fee_to`)) {
          sprintf(
          '"fee_to":
            "%s"
                    ',
          self$`fee_to`
          )
        },
        if (!is.null(self$`fee_liquidity`)) {
          sprintf(
          '"fee_liquidity":
            "%s"
                    ',
          self$`fee_liquidity`
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
    #' Deserialize JSON string into an instance of UniswapV2BurnDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2BurnDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2BurnDTO
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
      self$`liquidity` <- this_object$`liquidity`
      self$`sender` <- this_object$`sender`
      self$`amount_0` <- this_object$`amount_0`
      self$`amount_1` <- this_object$`amount_1`
      self$`to` <- this_object$`to`
      self$`log_index` <- this_object$`log_index`
      self$`amount_usd` <- this_object$`amount_usd`
      self$`needs_complete` <- this_object$`needs_complete`
      self$`fee_to` <- this_object$`fee_to`
      self$`fee_liquidity` <- this_object$`fee_liquidity`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV2BurnDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2BurnDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2BurnDTO
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
# UniswapV2BurnDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2BurnDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2BurnDTO$lock()

