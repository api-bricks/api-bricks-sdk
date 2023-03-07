#' Create a new DexTradeDTO
#'
#' @description
#' Trade for a single user, as part of a ring trade. It's part of the solution submitted by a solver for a given batch.
#'
#' @docType class
#' @title DexTradeDTO
#' @description DexTradeDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field order  character [optional]
#' @field owner  character [optional]
#' @field sell_volume  character [optional]
#' @field buy_volume  character [optional]
#' @field trade_batch_id  character [optional]
#' @field trade_epoch The date of the end of the batch. character [optional]
#' @field buy_token  character [optional]
#' @field sell_token  character [optional]
#' @field create_epoch The date where the transaction was mined. character [optional]
#' @field revert_epoch  character [optional]
#' @field tx_hash  character [optional]
#' @field tx_log_index  character [optional]
#' @field vid  integer [optional]
#' @field pool_id  character [optional]
#' @field transaction_id  character [optional]
#' @field evaluated_price  numeric [optional]
#' @field evaluated_amount  numeric [optional]
#' @field evaluated_aggressor  \link{TransactionsETradeAggressiveSide} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DexTradeDTO <- R6::R6Class(
  "DexTradeDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `order` = NULL,
    `owner` = NULL,
    `sell_volume` = NULL,
    `buy_volume` = NULL,
    `trade_batch_id` = NULL,
    `trade_epoch` = NULL,
    `buy_token` = NULL,
    `sell_token` = NULL,
    `create_epoch` = NULL,
    `revert_epoch` = NULL,
    `tx_hash` = NULL,
    `tx_log_index` = NULL,
    `vid` = NULL,
    `pool_id` = NULL,
    `transaction_id` = NULL,
    `evaluated_price` = NULL,
    `evaluated_amount` = NULL,
    `evaluated_aggressor` = NULL,
    #' Initialize a new DexTradeDTO class.
    #'
    #' @description
    #' Initialize a new DexTradeDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param order 
    #' @param owner 
    #' @param sell_volume 
    #' @param buy_volume 
    #' @param trade_batch_id 
    #' @param trade_epoch The date of the end of the batch.
    #' @param buy_token 
    #' @param sell_token 
    #' @param create_epoch The date where the transaction was mined.
    #' @param revert_epoch 
    #' @param tx_hash 
    #' @param tx_log_index 
    #' @param vid 
    #' @param pool_id pool_id
    #' @param transaction_id transaction_id
    #' @param evaluated_price evaluated_price
    #' @param evaluated_amount evaluated_amount
    #' @param evaluated_aggressor evaluated_aggressor
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `order` = NULL, `owner` = NULL, `sell_volume` = NULL, `buy_volume` = NULL, `trade_batch_id` = NULL, `trade_epoch` = NULL, `buy_token` = NULL, `sell_token` = NULL, `create_epoch` = NULL, `revert_epoch` = NULL, `tx_hash` = NULL, `tx_log_index` = NULL, `vid` = NULL, `pool_id` = NULL, `transaction_id` = NULL, `evaluated_price` = NULL, `evaluated_amount` = NULL, `evaluated_aggressor` = NULL, ...) {
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
      if (!is.null(`order`)) {
        if (!(is.character(`order`) && length(`order`) == 1)) {
          stop(paste("Error! Invalid data for `order`. Must be a string:", `order`))
        }
        self$`order` <- `order`
      }
      if (!is.null(`owner`)) {
        if (!(is.character(`owner`) && length(`owner`) == 1)) {
          stop(paste("Error! Invalid data for `owner`. Must be a string:", `owner`))
        }
        self$`owner` <- `owner`
      }
      if (!is.null(`sell_volume`)) {
        if (!(is.character(`sell_volume`) && length(`sell_volume`) == 1)) {
          stop(paste("Error! Invalid data for `sell_volume`. Must be a string:", `sell_volume`))
        }
        self$`sell_volume` <- `sell_volume`
      }
      if (!is.null(`buy_volume`)) {
        if (!(is.character(`buy_volume`) && length(`buy_volume`) == 1)) {
          stop(paste("Error! Invalid data for `buy_volume`. Must be a string:", `buy_volume`))
        }
        self$`buy_volume` <- `buy_volume`
      }
      if (!is.null(`trade_batch_id`)) {
        if (!(is.character(`trade_batch_id`) && length(`trade_batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `trade_batch_id`. Must be a string:", `trade_batch_id`))
        }
        self$`trade_batch_id` <- `trade_batch_id`
      }
      if (!is.null(`trade_epoch`)) {
        if (!(is.character(`trade_epoch`) && length(`trade_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `trade_epoch`. Must be a string:", `trade_epoch`))
        }
        self$`trade_epoch` <- `trade_epoch`
      }
      if (!is.null(`buy_token`)) {
        if (!(is.character(`buy_token`) && length(`buy_token`) == 1)) {
          stop(paste("Error! Invalid data for `buy_token`. Must be a string:", `buy_token`))
        }
        self$`buy_token` <- `buy_token`
      }
      if (!is.null(`sell_token`)) {
        if (!(is.character(`sell_token`) && length(`sell_token`) == 1)) {
          stop(paste("Error! Invalid data for `sell_token`. Must be a string:", `sell_token`))
        }
        self$`sell_token` <- `sell_token`
      }
      if (!is.null(`create_epoch`)) {
        if (!(is.character(`create_epoch`) && length(`create_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `create_epoch`. Must be a string:", `create_epoch`))
        }
        self$`create_epoch` <- `create_epoch`
      }
      if (!is.null(`revert_epoch`)) {
        if (!(is.character(`revert_epoch`) && length(`revert_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `revert_epoch`. Must be a string:", `revert_epoch`))
        }
        self$`revert_epoch` <- `revert_epoch`
      }
      if (!is.null(`tx_hash`)) {
        if (!(is.character(`tx_hash`) && length(`tx_hash`) == 1)) {
          stop(paste("Error! Invalid data for `tx_hash`. Must be a string:", `tx_hash`))
        }
        self$`tx_hash` <- `tx_hash`
      }
      if (!is.null(`tx_log_index`)) {
        if (!(is.character(`tx_log_index`) && length(`tx_log_index`) == 1)) {
          stop(paste("Error! Invalid data for `tx_log_index`. Must be a string:", `tx_log_index`))
        }
        self$`tx_log_index` <- `tx_log_index`
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
    #' @return DexTradeDTO in JSON format
    #' @export
    toJSON = function() {
      DexTradeDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        DexTradeDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        DexTradeDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        DexTradeDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        DexTradeDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`order`)) {
        DexTradeDTOObject[["order"]] <-
          self$`order`
      }
      if (!is.null(self$`owner`)) {
        DexTradeDTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`sell_volume`)) {
        DexTradeDTOObject[["sell_volume"]] <-
          self$`sell_volume`
      }
      if (!is.null(self$`buy_volume`)) {
        DexTradeDTOObject[["buy_volume"]] <-
          self$`buy_volume`
      }
      if (!is.null(self$`trade_batch_id`)) {
        DexTradeDTOObject[["trade_batch_id"]] <-
          self$`trade_batch_id`
      }
      if (!is.null(self$`trade_epoch`)) {
        DexTradeDTOObject[["trade_epoch"]] <-
          self$`trade_epoch`
      }
      if (!is.null(self$`buy_token`)) {
        DexTradeDTOObject[["buy_token"]] <-
          self$`buy_token`
      }
      if (!is.null(self$`sell_token`)) {
        DexTradeDTOObject[["sell_token"]] <-
          self$`sell_token`
      }
      if (!is.null(self$`create_epoch`)) {
        DexTradeDTOObject[["create_epoch"]] <-
          self$`create_epoch`
      }
      if (!is.null(self$`revert_epoch`)) {
        DexTradeDTOObject[["revert_epoch"]] <-
          self$`revert_epoch`
      }
      if (!is.null(self$`tx_hash`)) {
        DexTradeDTOObject[["tx_hash"]] <-
          self$`tx_hash`
      }
      if (!is.null(self$`tx_log_index`)) {
        DexTradeDTOObject[["tx_log_index"]] <-
          self$`tx_log_index`
      }
      if (!is.null(self$`vid`)) {
        DexTradeDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`pool_id`)) {
        DexTradeDTOObject[["pool_id"]] <-
          self$`pool_id`
      }
      if (!is.null(self$`transaction_id`)) {
        DexTradeDTOObject[["transaction_id"]] <-
          self$`transaction_id`
      }
      if (!is.null(self$`evaluated_price`)) {
        DexTradeDTOObject[["evaluated_price"]] <-
          self$`evaluated_price`
      }
      if (!is.null(self$`evaluated_amount`)) {
        DexTradeDTOObject[["evaluated_amount"]] <-
          self$`evaluated_amount`
      }
      if (!is.null(self$`evaluated_aggressor`)) {
        DexTradeDTOObject[["evaluated_aggressor"]] <-
          self$`evaluated_aggressor`$toJSON()
      }
      DexTradeDTOObject
    },
    #' Deserialize JSON string into an instance of DexTradeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexTradeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexTradeDTO
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
      if (!is.null(this_object$`order`)) {
        self$`order` <- this_object$`order`
      }
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
      }
      if (!is.null(this_object$`sell_volume`)) {
        self$`sell_volume` <- this_object$`sell_volume`
      }
      if (!is.null(this_object$`buy_volume`)) {
        self$`buy_volume` <- this_object$`buy_volume`
      }
      if (!is.null(this_object$`trade_batch_id`)) {
        self$`trade_batch_id` <- this_object$`trade_batch_id`
      }
      if (!is.null(this_object$`trade_epoch`)) {
        self$`trade_epoch` <- this_object$`trade_epoch`
      }
      if (!is.null(this_object$`buy_token`)) {
        self$`buy_token` <- this_object$`buy_token`
      }
      if (!is.null(this_object$`sell_token`)) {
        self$`sell_token` <- this_object$`sell_token`
      }
      if (!is.null(this_object$`create_epoch`)) {
        self$`create_epoch` <- this_object$`create_epoch`
      }
      if (!is.null(this_object$`revert_epoch`)) {
        self$`revert_epoch` <- this_object$`revert_epoch`
      }
      if (!is.null(this_object$`tx_hash`)) {
        self$`tx_hash` <- this_object$`tx_hash`
      }
      if (!is.null(this_object$`tx_log_index`)) {
        self$`tx_log_index` <- this_object$`tx_log_index`
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
    #' @return DexTradeDTO in JSON format
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
        if (!is.null(self$`order`)) {
          sprintf(
          '"order":
            "%s"
                    ',
          self$`order`
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
        if (!is.null(self$`sell_volume`)) {
          sprintf(
          '"sell_volume":
            "%s"
                    ',
          self$`sell_volume`
          )
        },
        if (!is.null(self$`buy_volume`)) {
          sprintf(
          '"buy_volume":
            "%s"
                    ',
          self$`buy_volume`
          )
        },
        if (!is.null(self$`trade_batch_id`)) {
          sprintf(
          '"trade_batch_id":
            "%s"
                    ',
          self$`trade_batch_id`
          )
        },
        if (!is.null(self$`trade_epoch`)) {
          sprintf(
          '"trade_epoch":
            "%s"
                    ',
          self$`trade_epoch`
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
        if (!is.null(self$`sell_token`)) {
          sprintf(
          '"sell_token":
            "%s"
                    ',
          self$`sell_token`
          )
        },
        if (!is.null(self$`create_epoch`)) {
          sprintf(
          '"create_epoch":
            "%s"
                    ',
          self$`create_epoch`
          )
        },
        if (!is.null(self$`revert_epoch`)) {
          sprintf(
          '"revert_epoch":
            "%s"
                    ',
          self$`revert_epoch`
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
        if (!is.null(self$`tx_log_index`)) {
          sprintf(
          '"tx_log_index":
            "%s"
                    ',
          self$`tx_log_index`
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
    #' Deserialize JSON string into an instance of DexTradeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexTradeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexTradeDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`order` <- this_object$`order`
      self$`owner` <- this_object$`owner`
      self$`sell_volume` <- this_object$`sell_volume`
      self$`buy_volume` <- this_object$`buy_volume`
      self$`trade_batch_id` <- this_object$`trade_batch_id`
      self$`trade_epoch` <- this_object$`trade_epoch`
      self$`buy_token` <- this_object$`buy_token`
      self$`sell_token` <- this_object$`sell_token`
      self$`create_epoch` <- this_object$`create_epoch`
      self$`revert_epoch` <- this_object$`revert_epoch`
      self$`tx_hash` <- this_object$`tx_hash`
      self$`tx_log_index` <- this_object$`tx_log_index`
      self$`vid` <- this_object$`vid`
      self$`pool_id` <- this_object$`pool_id`
      self$`transaction_id` <- this_object$`transaction_id`
      self$`evaluated_price` <- this_object$`evaluated_price`
      self$`evaluated_amount` <- this_object$`evaluated_amount`
      self$`evaluated_aggressor` <- TransactionsETradeAggressiveSide$new()$fromJSON(jsonlite::toJSON(this_object$`evaluated_aggressor`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to DexTradeDTO
    #'
    #' @description
    #' Validate JSON input with respect to DexTradeDTO and throw an exception if invalid
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
    #' @return String representation of DexTradeDTO
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
# DexTradeDTO$unlock()
#
## Below is an example to define the print function
# DexTradeDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DexTradeDTO$lock()

