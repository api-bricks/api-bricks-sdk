#' Create a new UniswapV2UniswapFactoryDTO
#'
#' @description
#' The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
#'
#' @docType class
#' @title UniswapV2UniswapFactoryDTO
#' @description UniswapV2UniswapFactoryDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Factory address. character [optional]
#' @field pair_count Amount of pairs created by the Uniswap factory. integer [optional]
#' @field total_volume_usd All time USD volume across all pairs (USD is derived). character [optional]
#' @field total_volume_eth All time volume in ETH across all pairs (ETH is derived). character [optional]
#' @field untracked_volume_usd Untracked volume USD. character [optional]
#' @field total_liquidity_usd Total liquidity across all pairs stored as a derived USD amount. character [optional]
#' @field total_liquidity_eth Total liquidity across all pairs stored as a derived ETH amount. character [optional]
#' @field tx_count All time amount of transactions across all pairs. character [optional]
#' @field vid . integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2UniswapFactoryDTO <- R6::R6Class(
  "UniswapV2UniswapFactoryDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `pair_count` = NULL,
    `total_volume_usd` = NULL,
    `total_volume_eth` = NULL,
    `untracked_volume_usd` = NULL,
    `total_liquidity_usd` = NULL,
    `total_liquidity_eth` = NULL,
    `tx_count` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV2UniswapFactoryDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2UniswapFactoryDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Factory address.
    #' @param pair_count Amount of pairs created by the Uniswap factory.
    #' @param total_volume_usd All time USD volume across all pairs (USD is derived).
    #' @param total_volume_eth All time volume in ETH across all pairs (ETH is derived).
    #' @param untracked_volume_usd Untracked volume USD.
    #' @param total_liquidity_usd Total liquidity across all pairs stored as a derived USD amount.
    #' @param total_liquidity_eth Total liquidity across all pairs stored as a derived ETH amount.
    #' @param tx_count All time amount of transactions across all pairs.
    #' @param vid .
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `pair_count` = NULL, `total_volume_usd` = NULL, `total_volume_eth` = NULL, `untracked_volume_usd` = NULL, `total_liquidity_usd` = NULL, `total_liquidity_eth` = NULL, `tx_count` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`pair_count`)) {
        if (!(is.numeric(`pair_count`) && length(`pair_count`) == 1)) {
          stop(paste("Error! Invalid data for `pair_count`. Must be an integer:", `pair_count`))
        }
        self$`pair_count` <- `pair_count`
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
      if (!is.null(`untracked_volume_usd`)) {
        if (!(is.character(`untracked_volume_usd`) && length(`untracked_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `untracked_volume_usd`. Must be a string:", `untracked_volume_usd`))
        }
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`total_liquidity_usd`)) {
        if (!(is.character(`total_liquidity_usd`) && length(`total_liquidity_usd`) == 1)) {
          stop(paste("Error! Invalid data for `total_liquidity_usd`. Must be a string:", `total_liquidity_usd`))
        }
        self$`total_liquidity_usd` <- `total_liquidity_usd`
      }
      if (!is.null(`total_liquidity_eth`)) {
        if (!(is.character(`total_liquidity_eth`) && length(`total_liquidity_eth`) == 1)) {
          stop(paste("Error! Invalid data for `total_liquidity_eth`. Must be a string:", `total_liquidity_eth`))
        }
        self$`total_liquidity_eth` <- `total_liquidity_eth`
      }
      if (!is.null(`tx_count`)) {
        if (!(is.character(`tx_count`) && length(`tx_count`) == 1)) {
          stop(paste("Error! Invalid data for `tx_count`. Must be a string:", `tx_count`))
        }
        self$`tx_count` <- `tx_count`
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
    #' @return UniswapV2UniswapFactoryDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2UniswapFactoryDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2UniswapFactoryDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2UniswapFactoryDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2UniswapFactoryDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV2UniswapFactoryDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`pair_count`)) {
        UniswapV2UniswapFactoryDTOObject[["pair_count"]] <-
          self$`pair_count`
      }
      if (!is.null(self$`total_volume_usd`)) {
        UniswapV2UniswapFactoryDTOObject[["total_volume_usd"]] <-
          self$`total_volume_usd`
      }
      if (!is.null(self$`total_volume_eth`)) {
        UniswapV2UniswapFactoryDTOObject[["total_volume_eth"]] <-
          self$`total_volume_eth`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        UniswapV2UniswapFactoryDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`total_liquidity_usd`)) {
        UniswapV2UniswapFactoryDTOObject[["total_liquidity_usd"]] <-
          self$`total_liquidity_usd`
      }
      if (!is.null(self$`total_liquidity_eth`)) {
        UniswapV2UniswapFactoryDTOObject[["total_liquidity_eth"]] <-
          self$`total_liquidity_eth`
      }
      if (!is.null(self$`tx_count`)) {
        UniswapV2UniswapFactoryDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2UniswapFactoryDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV2UniswapFactoryDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2UniswapFactoryDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2UniswapFactoryDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2UniswapFactoryDTO
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
      if (!is.null(this_object$`pair_count`)) {
        self$`pair_count` <- this_object$`pair_count`
      }
      if (!is.null(this_object$`total_volume_usd`)) {
        self$`total_volume_usd` <- this_object$`total_volume_usd`
      }
      if (!is.null(this_object$`total_volume_eth`)) {
        self$`total_volume_eth` <- this_object$`total_volume_eth`
      }
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`total_liquidity_usd`)) {
        self$`total_liquidity_usd` <- this_object$`total_liquidity_usd`
      }
      if (!is.null(this_object$`total_liquidity_eth`)) {
        self$`total_liquidity_eth` <- this_object$`total_liquidity_eth`
      }
      if (!is.null(this_object$`tx_count`)) {
        self$`tx_count` <- this_object$`tx_count`
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
    #' @return UniswapV2UniswapFactoryDTO in JSON format
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
        if (!is.null(self$`pair_count`)) {
          sprintf(
          '"pair_count":
            %d
                    ',
          self$`pair_count`
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
        if (!is.null(self$`untracked_volume_usd`)) {
          sprintf(
          '"untracked_volume_usd":
            "%s"
                    ',
          self$`untracked_volume_usd`
          )
        },
        if (!is.null(self$`total_liquidity_usd`)) {
          sprintf(
          '"total_liquidity_usd":
            "%s"
                    ',
          self$`total_liquidity_usd`
          )
        },
        if (!is.null(self$`total_liquidity_eth`)) {
          sprintf(
          '"total_liquidity_eth":
            "%s"
                    ',
          self$`total_liquidity_eth`
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
    #' Deserialize JSON string into an instance of UniswapV2UniswapFactoryDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2UniswapFactoryDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2UniswapFactoryDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`pair_count` <- this_object$`pair_count`
      self$`total_volume_usd` <- this_object$`total_volume_usd`
      self$`total_volume_eth` <- this_object$`total_volume_eth`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`total_liquidity_usd` <- this_object$`total_liquidity_usd`
      self$`total_liquidity_eth` <- this_object$`total_liquidity_eth`
      self$`tx_count` <- this_object$`tx_count`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV2UniswapFactoryDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2UniswapFactoryDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2UniswapFactoryDTO
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
# UniswapV2UniswapFactoryDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2UniswapFactoryDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2UniswapFactoryDTO$lock()

