#' Create a new DexOrderDTO
#'
#' @description
#' Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.
#'
#' @docType class
#' @title DexOrderDTO
#' @description DexOrderDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, format: (owner address)-(order id) character [optional]
#' @field owner Reference to owner. character [optional]
#' @field order_id Order id. integer [optional]
#' @field from_batch_id Batch id from which order became valid. character [optional]
#' @field from_epoch Start of epoch in which order was placed and became valid. character [optional]
#' @field until_batch_id Batch id until which trade was still valid. character [optional]
#' @field until_epoch End of epoch in which order was placed. character [optional]
#' @field buy_token Identifier of token that was bought. character [optional]
#' @field sell_token Identifier of token that was sold. character [optional]
#' @field price_numerator Price enumerator. character [optional]
#' @field price_denominator Price denominator. character [optional]
#' @field max_sell_amount Maximum sell amount. character [optional]
#' @field min_receive_amount Minimum receive amount. character [optional]
#' @field sold_volume Sold volume. character [optional]
#' @field bought_volume Bought volume. character [optional]
#' @field create_epoch Epoch in which order was created. character [optional]
#' @field cancel_epoch Epoch in which order was cancelled. character [optional]
#' @field delete_epoch Epoch in which order was deleted. character [optional]
#' @field tx_hash Transaction hash. character [optional]
#' @field tx_log_index Event index within transaction. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DexOrderDTO <- R6::R6Class(
  "DexOrderDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `owner` = NULL,
    `order_id` = NULL,
    `from_batch_id` = NULL,
    `from_epoch` = NULL,
    `until_batch_id` = NULL,
    `until_epoch` = NULL,
    `buy_token` = NULL,
    `sell_token` = NULL,
    `price_numerator` = NULL,
    `price_denominator` = NULL,
    `max_sell_amount` = NULL,
    `min_receive_amount` = NULL,
    `sold_volume` = NULL,
    `bought_volume` = NULL,
    `create_epoch` = NULL,
    `cancel_epoch` = NULL,
    `delete_epoch` = NULL,
    `tx_hash` = NULL,
    `tx_log_index` = NULL,
    `vid` = NULL,
    #' Initialize a new DexOrderDTO class.
    #'
    #' @description
    #' Initialize a new DexOrderDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, format: (owner address)-(order id)
    #' @param owner Reference to owner.
    #' @param order_id Order id.
    #' @param from_batch_id Batch id from which order became valid.
    #' @param from_epoch Start of epoch in which order was placed and became valid.
    #' @param until_batch_id Batch id until which trade was still valid.
    #' @param until_epoch End of epoch in which order was placed.
    #' @param buy_token Identifier of token that was bought.
    #' @param sell_token Identifier of token that was sold.
    #' @param price_numerator Price enumerator.
    #' @param price_denominator Price denominator.
    #' @param max_sell_amount Maximum sell amount.
    #' @param min_receive_amount Minimum receive amount.
    #' @param sold_volume Sold volume.
    #' @param bought_volume Bought volume.
    #' @param create_epoch Epoch in which order was created.
    #' @param cancel_epoch Epoch in which order was cancelled.
    #' @param delete_epoch Epoch in which order was deleted.
    #' @param tx_hash Transaction hash.
    #' @param tx_log_index Event index within transaction.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `owner` = NULL, `order_id` = NULL, `from_batch_id` = NULL, `from_epoch` = NULL, `until_batch_id` = NULL, `until_epoch` = NULL, `buy_token` = NULL, `sell_token` = NULL, `price_numerator` = NULL, `price_denominator` = NULL, `max_sell_amount` = NULL, `min_receive_amount` = NULL, `sold_volume` = NULL, `bought_volume` = NULL, `create_epoch` = NULL, `cancel_epoch` = NULL, `delete_epoch` = NULL, `tx_hash` = NULL, `tx_log_index` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`owner`)) {
        if (!(is.character(`owner`) && length(`owner`) == 1)) {
          stop(paste("Error! Invalid data for `owner`. Must be a string:", `owner`))
        }
        self$`owner` <- `owner`
      }
      if (!is.null(`order_id`)) {
        if (!(is.numeric(`order_id`) && length(`order_id`) == 1)) {
          stop(paste("Error! Invalid data for `order_id`. Must be an integer:", `order_id`))
        }
        self$`order_id` <- `order_id`
      }
      if (!is.null(`from_batch_id`)) {
        if (!(is.character(`from_batch_id`) && length(`from_batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `from_batch_id`. Must be a string:", `from_batch_id`))
        }
        self$`from_batch_id` <- `from_batch_id`
      }
      if (!is.null(`from_epoch`)) {
        if (!(is.character(`from_epoch`) && length(`from_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `from_epoch`. Must be a string:", `from_epoch`))
        }
        self$`from_epoch` <- `from_epoch`
      }
      if (!is.null(`until_batch_id`)) {
        if (!(is.character(`until_batch_id`) && length(`until_batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `until_batch_id`. Must be a string:", `until_batch_id`))
        }
        self$`until_batch_id` <- `until_batch_id`
      }
      if (!is.null(`until_epoch`)) {
        if (!(is.character(`until_epoch`) && length(`until_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `until_epoch`. Must be a string:", `until_epoch`))
        }
        self$`until_epoch` <- `until_epoch`
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
      if (!is.null(`price_numerator`)) {
        if (!(is.character(`price_numerator`) && length(`price_numerator`) == 1)) {
          stop(paste("Error! Invalid data for `price_numerator`. Must be a string:", `price_numerator`))
        }
        self$`price_numerator` <- `price_numerator`
      }
      if (!is.null(`price_denominator`)) {
        if (!(is.character(`price_denominator`) && length(`price_denominator`) == 1)) {
          stop(paste("Error! Invalid data for `price_denominator`. Must be a string:", `price_denominator`))
        }
        self$`price_denominator` <- `price_denominator`
      }
      if (!is.null(`max_sell_amount`)) {
        if (!(is.character(`max_sell_amount`) && length(`max_sell_amount`) == 1)) {
          stop(paste("Error! Invalid data for `max_sell_amount`. Must be a string:", `max_sell_amount`))
        }
        self$`max_sell_amount` <- `max_sell_amount`
      }
      if (!is.null(`min_receive_amount`)) {
        if (!(is.character(`min_receive_amount`) && length(`min_receive_amount`) == 1)) {
          stop(paste("Error! Invalid data for `min_receive_amount`. Must be a string:", `min_receive_amount`))
        }
        self$`min_receive_amount` <- `min_receive_amount`
      }
      if (!is.null(`sold_volume`)) {
        if (!(is.character(`sold_volume`) && length(`sold_volume`) == 1)) {
          stop(paste("Error! Invalid data for `sold_volume`. Must be a string:", `sold_volume`))
        }
        self$`sold_volume` <- `sold_volume`
      }
      if (!is.null(`bought_volume`)) {
        if (!(is.character(`bought_volume`) && length(`bought_volume`) == 1)) {
          stop(paste("Error! Invalid data for `bought_volume`. Must be a string:", `bought_volume`))
        }
        self$`bought_volume` <- `bought_volume`
      }
      if (!is.null(`create_epoch`)) {
        if (!(is.character(`create_epoch`) && length(`create_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `create_epoch`. Must be a string:", `create_epoch`))
        }
        self$`create_epoch` <- `create_epoch`
      }
      if (!is.null(`cancel_epoch`)) {
        if (!(is.character(`cancel_epoch`) && length(`cancel_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `cancel_epoch`. Must be a string:", `cancel_epoch`))
        }
        self$`cancel_epoch` <- `cancel_epoch`
      }
      if (!is.null(`delete_epoch`)) {
        if (!(is.character(`delete_epoch`) && length(`delete_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `delete_epoch`. Must be a string:", `delete_epoch`))
        }
        self$`delete_epoch` <- `delete_epoch`
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DexOrderDTO in JSON format
    #' @export
    toJSON = function() {
      DexOrderDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        DexOrderDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        DexOrderDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        DexOrderDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        DexOrderDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`owner`)) {
        DexOrderDTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`order_id`)) {
        DexOrderDTOObject[["order_id"]] <-
          self$`order_id`
      }
      if (!is.null(self$`from_batch_id`)) {
        DexOrderDTOObject[["from_batch_id"]] <-
          self$`from_batch_id`
      }
      if (!is.null(self$`from_epoch`)) {
        DexOrderDTOObject[["from_epoch"]] <-
          self$`from_epoch`
      }
      if (!is.null(self$`until_batch_id`)) {
        DexOrderDTOObject[["until_batch_id"]] <-
          self$`until_batch_id`
      }
      if (!is.null(self$`until_epoch`)) {
        DexOrderDTOObject[["until_epoch"]] <-
          self$`until_epoch`
      }
      if (!is.null(self$`buy_token`)) {
        DexOrderDTOObject[["buy_token"]] <-
          self$`buy_token`
      }
      if (!is.null(self$`sell_token`)) {
        DexOrderDTOObject[["sell_token"]] <-
          self$`sell_token`
      }
      if (!is.null(self$`price_numerator`)) {
        DexOrderDTOObject[["price_numerator"]] <-
          self$`price_numerator`
      }
      if (!is.null(self$`price_denominator`)) {
        DexOrderDTOObject[["price_denominator"]] <-
          self$`price_denominator`
      }
      if (!is.null(self$`max_sell_amount`)) {
        DexOrderDTOObject[["max_sell_amount"]] <-
          self$`max_sell_amount`
      }
      if (!is.null(self$`min_receive_amount`)) {
        DexOrderDTOObject[["min_receive_amount"]] <-
          self$`min_receive_amount`
      }
      if (!is.null(self$`sold_volume`)) {
        DexOrderDTOObject[["sold_volume"]] <-
          self$`sold_volume`
      }
      if (!is.null(self$`bought_volume`)) {
        DexOrderDTOObject[["bought_volume"]] <-
          self$`bought_volume`
      }
      if (!is.null(self$`create_epoch`)) {
        DexOrderDTOObject[["create_epoch"]] <-
          self$`create_epoch`
      }
      if (!is.null(self$`cancel_epoch`)) {
        DexOrderDTOObject[["cancel_epoch"]] <-
          self$`cancel_epoch`
      }
      if (!is.null(self$`delete_epoch`)) {
        DexOrderDTOObject[["delete_epoch"]] <-
          self$`delete_epoch`
      }
      if (!is.null(self$`tx_hash`)) {
        DexOrderDTOObject[["tx_hash"]] <-
          self$`tx_hash`
      }
      if (!is.null(self$`tx_log_index`)) {
        DexOrderDTOObject[["tx_log_index"]] <-
          self$`tx_log_index`
      }
      if (!is.null(self$`vid`)) {
        DexOrderDTOObject[["vid"]] <-
          self$`vid`
      }
      DexOrderDTOObject
    },
    #' Deserialize JSON string into an instance of DexOrderDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexOrderDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexOrderDTO
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
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
      }
      if (!is.null(this_object$`order_id`)) {
        self$`order_id` <- this_object$`order_id`
      }
      if (!is.null(this_object$`from_batch_id`)) {
        self$`from_batch_id` <- this_object$`from_batch_id`
      }
      if (!is.null(this_object$`from_epoch`)) {
        self$`from_epoch` <- this_object$`from_epoch`
      }
      if (!is.null(this_object$`until_batch_id`)) {
        self$`until_batch_id` <- this_object$`until_batch_id`
      }
      if (!is.null(this_object$`until_epoch`)) {
        self$`until_epoch` <- this_object$`until_epoch`
      }
      if (!is.null(this_object$`buy_token`)) {
        self$`buy_token` <- this_object$`buy_token`
      }
      if (!is.null(this_object$`sell_token`)) {
        self$`sell_token` <- this_object$`sell_token`
      }
      if (!is.null(this_object$`price_numerator`)) {
        self$`price_numerator` <- this_object$`price_numerator`
      }
      if (!is.null(this_object$`price_denominator`)) {
        self$`price_denominator` <- this_object$`price_denominator`
      }
      if (!is.null(this_object$`max_sell_amount`)) {
        self$`max_sell_amount` <- this_object$`max_sell_amount`
      }
      if (!is.null(this_object$`min_receive_amount`)) {
        self$`min_receive_amount` <- this_object$`min_receive_amount`
      }
      if (!is.null(this_object$`sold_volume`)) {
        self$`sold_volume` <- this_object$`sold_volume`
      }
      if (!is.null(this_object$`bought_volume`)) {
        self$`bought_volume` <- this_object$`bought_volume`
      }
      if (!is.null(this_object$`create_epoch`)) {
        self$`create_epoch` <- this_object$`create_epoch`
      }
      if (!is.null(this_object$`cancel_epoch`)) {
        self$`cancel_epoch` <- this_object$`cancel_epoch`
      }
      if (!is.null(this_object$`delete_epoch`)) {
        self$`delete_epoch` <- this_object$`delete_epoch`
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
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DexOrderDTO in JSON format
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
        if (!is.null(self$`owner`)) {
          sprintf(
          '"owner":
            "%s"
                    ',
          self$`owner`
          )
        },
        if (!is.null(self$`order_id`)) {
          sprintf(
          '"order_id":
            %d
                    ',
          self$`order_id`
          )
        },
        if (!is.null(self$`from_batch_id`)) {
          sprintf(
          '"from_batch_id":
            "%s"
                    ',
          self$`from_batch_id`
          )
        },
        if (!is.null(self$`from_epoch`)) {
          sprintf(
          '"from_epoch":
            "%s"
                    ',
          self$`from_epoch`
          )
        },
        if (!is.null(self$`until_batch_id`)) {
          sprintf(
          '"until_batch_id":
            "%s"
                    ',
          self$`until_batch_id`
          )
        },
        if (!is.null(self$`until_epoch`)) {
          sprintf(
          '"until_epoch":
            "%s"
                    ',
          self$`until_epoch`
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
        if (!is.null(self$`price_numerator`)) {
          sprintf(
          '"price_numerator":
            "%s"
                    ',
          self$`price_numerator`
          )
        },
        if (!is.null(self$`price_denominator`)) {
          sprintf(
          '"price_denominator":
            "%s"
                    ',
          self$`price_denominator`
          )
        },
        if (!is.null(self$`max_sell_amount`)) {
          sprintf(
          '"max_sell_amount":
            "%s"
                    ',
          self$`max_sell_amount`
          )
        },
        if (!is.null(self$`min_receive_amount`)) {
          sprintf(
          '"min_receive_amount":
            "%s"
                    ',
          self$`min_receive_amount`
          )
        },
        if (!is.null(self$`sold_volume`)) {
          sprintf(
          '"sold_volume":
            "%s"
                    ',
          self$`sold_volume`
          )
        },
        if (!is.null(self$`bought_volume`)) {
          sprintf(
          '"bought_volume":
            "%s"
                    ',
          self$`bought_volume`
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
        if (!is.null(self$`cancel_epoch`)) {
          sprintf(
          '"cancel_epoch":
            "%s"
                    ',
          self$`cancel_epoch`
          )
        },
        if (!is.null(self$`delete_epoch`)) {
          sprintf(
          '"delete_epoch":
            "%s"
                    ',
          self$`delete_epoch`
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DexOrderDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexOrderDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexOrderDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`owner` <- this_object$`owner`
      self$`order_id` <- this_object$`order_id`
      self$`from_batch_id` <- this_object$`from_batch_id`
      self$`from_epoch` <- this_object$`from_epoch`
      self$`until_batch_id` <- this_object$`until_batch_id`
      self$`until_epoch` <- this_object$`until_epoch`
      self$`buy_token` <- this_object$`buy_token`
      self$`sell_token` <- this_object$`sell_token`
      self$`price_numerator` <- this_object$`price_numerator`
      self$`price_denominator` <- this_object$`price_denominator`
      self$`max_sell_amount` <- this_object$`max_sell_amount`
      self$`min_receive_amount` <- this_object$`min_receive_amount`
      self$`sold_volume` <- this_object$`sold_volume`
      self$`bought_volume` <- this_object$`bought_volume`
      self$`create_epoch` <- this_object$`create_epoch`
      self$`cancel_epoch` <- this_object$`cancel_epoch`
      self$`delete_epoch` <- this_object$`delete_epoch`
      self$`tx_hash` <- this_object$`tx_hash`
      self$`tx_log_index` <- this_object$`tx_log_index`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to DexOrderDTO
    #'
    #' @description
    #' Validate JSON input with respect to DexOrderDTO and throw an exception if invalid
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
    #' @return String representation of DexOrderDTO
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
# DexOrderDTO$unlock()
#
## Below is an example to define the print function
# DexOrderDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DexOrderDTO$lock()

