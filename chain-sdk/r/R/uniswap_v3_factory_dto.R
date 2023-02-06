#' Create a new UniswapV3FactoryDTO
#'
#' @description
#' The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
#'
#' @docType class
#' @title UniswapV3FactoryDTO
#' @description UniswapV3FactoryDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Factory address. character [optional]
#' @field pool_count Amount of pools created. character [optional]
#' @field tx_count Amount of transactions all time. character [optional]
#' @field total_volume_usd Total volume all time in derived USD. character [optional]
#' @field total_volume_eth Total volume all time in derived ETH. character [optional]
#' @field total_fees_usd Total swap fees all time in USD. character [optional]
#' @field total_fees_eth All volume even through less reliable USD values. character [optional]
#' @field untracked_volume_usd All volume even through less reliable USD values. character [optional]
#' @field total_value_locked_usd Total value locked derived in USD. character [optional]
#' @field total_value_locked_eth Total value locked derived in ETH. character [optional]
#' @field total_value_locked_usd_untracked Total value locked derived in USD untracked. character [optional]
#' @field total_value_locked_eth_untracked Total value locked derived in ETH untracked. character [optional]
#' @field owner Current owner of the factory. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3FactoryDTO <- R6::R6Class(
  "UniswapV3FactoryDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `pool_count` = NULL,
    `tx_count` = NULL,
    `total_volume_usd` = NULL,
    `total_volume_eth` = NULL,
    `total_fees_usd` = NULL,
    `total_fees_eth` = NULL,
    `untracked_volume_usd` = NULL,
    `total_value_locked_usd` = NULL,
    `total_value_locked_eth` = NULL,
    `total_value_locked_usd_untracked` = NULL,
    `total_value_locked_eth_untracked` = NULL,
    `owner` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV3FactoryDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3FactoryDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Factory address.
    #' @param pool_count Amount of pools created.
    #' @param tx_count Amount of transactions all time.
    #' @param total_volume_usd Total volume all time in derived USD.
    #' @param total_volume_eth Total volume all time in derived ETH.
    #' @param total_fees_usd Total swap fees all time in USD.
    #' @param total_fees_eth All volume even through less reliable USD values.
    #' @param untracked_volume_usd All volume even through less reliable USD values.
    #' @param total_value_locked_usd Total value locked derived in USD.
    #' @param total_value_locked_eth Total value locked derived in ETH.
    #' @param total_value_locked_usd_untracked Total value locked derived in USD untracked.
    #' @param total_value_locked_eth_untracked Total value locked derived in ETH untracked.
    #' @param owner Current owner of the factory.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `pool_count` = NULL, `tx_count` = NULL, `total_volume_usd` = NULL, `total_volume_eth` = NULL, `total_fees_usd` = NULL, `total_fees_eth` = NULL, `untracked_volume_usd` = NULL, `total_value_locked_usd` = NULL, `total_value_locked_eth` = NULL, `total_value_locked_usd_untracked` = NULL, `total_value_locked_eth_untracked` = NULL, `owner` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`pool_count`)) {
        if (!(is.character(`pool_count`) && length(`pool_count`) == 1)) {
          stop(paste("Error! Invalid data for `pool_count`. Must be a string:", `pool_count`))
        }
        self$`pool_count` <- `pool_count`
      }
      if (!is.null(`tx_count`)) {
        if (!(is.character(`tx_count`) && length(`tx_count`) == 1)) {
          stop(paste("Error! Invalid data for `tx_count`. Must be a string:", `tx_count`))
        }
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`total_volume_usd`)) {
        if (!(is.character(`total_volume_usd`) && length(`total_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `total_volume_usd`. Must be a string:", `total_volume_usd`))
        }
        self$`total_volume_usd` <- `total_volume_usd`
      }
      if (!is.null(`total_volume_eth`)) {
        if (!(is.character(`total_volume_eth`) && length(`total_volume_eth`) == 1)) {
          stop(paste("Error! Invalid data for `total_volume_eth`. Must be a string:", `total_volume_eth`))
        }
        self$`total_volume_eth` <- `total_volume_eth`
      }
      if (!is.null(`total_fees_usd`)) {
        if (!(is.character(`total_fees_usd`) && length(`total_fees_usd`) == 1)) {
          stop(paste("Error! Invalid data for `total_fees_usd`. Must be a string:", `total_fees_usd`))
        }
        self$`total_fees_usd` <- `total_fees_usd`
      }
      if (!is.null(`total_fees_eth`)) {
        if (!(is.character(`total_fees_eth`) && length(`total_fees_eth`) == 1)) {
          stop(paste("Error! Invalid data for `total_fees_eth`. Must be a string:", `total_fees_eth`))
        }
        self$`total_fees_eth` <- `total_fees_eth`
      }
      if (!is.null(`untracked_volume_usd`)) {
        if (!(is.character(`untracked_volume_usd`) && length(`untracked_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `untracked_volume_usd`. Must be a string:", `untracked_volume_usd`))
        }
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`total_value_locked_usd`)) {
        if (!(is.character(`total_value_locked_usd`) && length(`total_value_locked_usd`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_usd`. Must be a string:", `total_value_locked_usd`))
        }
        self$`total_value_locked_usd` <- `total_value_locked_usd`
      }
      if (!is.null(`total_value_locked_eth`)) {
        if (!(is.character(`total_value_locked_eth`) && length(`total_value_locked_eth`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_eth`. Must be a string:", `total_value_locked_eth`))
        }
        self$`total_value_locked_eth` <- `total_value_locked_eth`
      }
      if (!is.null(`total_value_locked_usd_untracked`)) {
        if (!(is.character(`total_value_locked_usd_untracked`) && length(`total_value_locked_usd_untracked`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_usd_untracked`. Must be a string:", `total_value_locked_usd_untracked`))
        }
        self$`total_value_locked_usd_untracked` <- `total_value_locked_usd_untracked`
      }
      if (!is.null(`total_value_locked_eth_untracked`)) {
        if (!(is.character(`total_value_locked_eth_untracked`) && length(`total_value_locked_eth_untracked`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_eth_untracked`. Must be a string:", `total_value_locked_eth_untracked`))
        }
        self$`total_value_locked_eth_untracked` <- `total_value_locked_eth_untracked`
      }
      if (!is.null(`owner`)) {
        if (!(is.character(`owner`) && length(`owner`) == 1)) {
          stop(paste("Error! Invalid data for `owner`. Must be a string:", `owner`))
        }
        self$`owner` <- `owner`
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
    #' @return UniswapV3FactoryDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3FactoryDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3FactoryDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3FactoryDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3FactoryDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV3FactoryDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`pool_count`)) {
        UniswapV3FactoryDTOObject[["pool_count"]] <-
          self$`pool_count`
      }
      if (!is.null(self$`tx_count`)) {
        UniswapV3FactoryDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`total_volume_usd`)) {
        UniswapV3FactoryDTOObject[["total_volume_usd"]] <-
          self$`total_volume_usd`
      }
      if (!is.null(self$`total_volume_eth`)) {
        UniswapV3FactoryDTOObject[["total_volume_eth"]] <-
          self$`total_volume_eth`
      }
      if (!is.null(self$`total_fees_usd`)) {
        UniswapV3FactoryDTOObject[["total_fees_usd"]] <-
          self$`total_fees_usd`
      }
      if (!is.null(self$`total_fees_eth`)) {
        UniswapV3FactoryDTOObject[["total_fees_eth"]] <-
          self$`total_fees_eth`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        UniswapV3FactoryDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`total_value_locked_usd`)) {
        UniswapV3FactoryDTOObject[["total_value_locked_usd"]] <-
          self$`total_value_locked_usd`
      }
      if (!is.null(self$`total_value_locked_eth`)) {
        UniswapV3FactoryDTOObject[["total_value_locked_eth"]] <-
          self$`total_value_locked_eth`
      }
      if (!is.null(self$`total_value_locked_usd_untracked`)) {
        UniswapV3FactoryDTOObject[["total_value_locked_usd_untracked"]] <-
          self$`total_value_locked_usd_untracked`
      }
      if (!is.null(self$`total_value_locked_eth_untracked`)) {
        UniswapV3FactoryDTOObject[["total_value_locked_eth_untracked"]] <-
          self$`total_value_locked_eth_untracked`
      }
      if (!is.null(self$`owner`)) {
        UniswapV3FactoryDTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3FactoryDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV3FactoryDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3FactoryDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3FactoryDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3FactoryDTO
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
      if (!is.null(this_object$`pool_count`)) {
        self$`pool_count` <- this_object$`pool_count`
      }
      if (!is.null(this_object$`tx_count`)) {
        self$`tx_count` <- this_object$`tx_count`
      }
      if (!is.null(this_object$`total_volume_usd`)) {
        self$`total_volume_usd` <- this_object$`total_volume_usd`
      }
      if (!is.null(this_object$`total_volume_eth`)) {
        self$`total_volume_eth` <- this_object$`total_volume_eth`
      }
      if (!is.null(this_object$`total_fees_usd`)) {
        self$`total_fees_usd` <- this_object$`total_fees_usd`
      }
      if (!is.null(this_object$`total_fees_eth`)) {
        self$`total_fees_eth` <- this_object$`total_fees_eth`
      }
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`total_value_locked_usd`)) {
        self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      }
      if (!is.null(this_object$`total_value_locked_eth`)) {
        self$`total_value_locked_eth` <- this_object$`total_value_locked_eth`
      }
      if (!is.null(this_object$`total_value_locked_usd_untracked`)) {
        self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      }
      if (!is.null(this_object$`total_value_locked_eth_untracked`)) {
        self$`total_value_locked_eth_untracked` <- this_object$`total_value_locked_eth_untracked`
      }
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
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
    #' @return UniswapV3FactoryDTO in JSON format
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
        if (!is.null(self$`pool_count`)) {
          sprintf(
          '"pool_count":
            "%s"
                    ',
          self$`pool_count`
          )
        },
        if (!is.null(self$`tx_count`)) {
          sprintf(
          '"tx_count":
            "%s"
                    ',
          self$`tx_count`
          )
        },
        if (!is.null(self$`total_volume_usd`)) {
          sprintf(
          '"total_volume_usd":
            "%s"
                    ',
          self$`total_volume_usd`
          )
        },
        if (!is.null(self$`total_volume_eth`)) {
          sprintf(
          '"total_volume_eth":
            "%s"
                    ',
          self$`total_volume_eth`
          )
        },
        if (!is.null(self$`total_fees_usd`)) {
          sprintf(
          '"total_fees_usd":
            "%s"
                    ',
          self$`total_fees_usd`
          )
        },
        if (!is.null(self$`total_fees_eth`)) {
          sprintf(
          '"total_fees_eth":
            "%s"
                    ',
          self$`total_fees_eth`
          )
        },
        if (!is.null(self$`untracked_volume_usd`)) {
          sprintf(
          '"untracked_volume_usd":
            "%s"
                    ',
          self$`untracked_volume_usd`
          )
        },
        if (!is.null(self$`total_value_locked_usd`)) {
          sprintf(
          '"total_value_locked_usd":
            "%s"
                    ',
          self$`total_value_locked_usd`
          )
        },
        if (!is.null(self$`total_value_locked_eth`)) {
          sprintf(
          '"total_value_locked_eth":
            "%s"
                    ',
          self$`total_value_locked_eth`
          )
        },
        if (!is.null(self$`total_value_locked_usd_untracked`)) {
          sprintf(
          '"total_value_locked_usd_untracked":
            "%s"
                    ',
          self$`total_value_locked_usd_untracked`
          )
        },
        if (!is.null(self$`total_value_locked_eth_untracked`)) {
          sprintf(
          '"total_value_locked_eth_untracked":
            "%s"
                    ',
          self$`total_value_locked_eth_untracked`
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
    #' Deserialize JSON string into an instance of UniswapV3FactoryDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3FactoryDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3FactoryDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`pool_count` <- this_object$`pool_count`
      self$`tx_count` <- this_object$`tx_count`
      self$`total_volume_usd` <- this_object$`total_volume_usd`
      self$`total_volume_eth` <- this_object$`total_volume_eth`
      self$`total_fees_usd` <- this_object$`total_fees_usd`
      self$`total_fees_eth` <- this_object$`total_fees_eth`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      self$`total_value_locked_eth` <- this_object$`total_value_locked_eth`
      self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      self$`total_value_locked_eth_untracked` <- this_object$`total_value_locked_eth_untracked`
      self$`owner` <- this_object$`owner`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV3FactoryDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3FactoryDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3FactoryDTO
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
# UniswapV3FactoryDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3FactoryDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3FactoryDTO$lock()

