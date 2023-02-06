#' Create a new SushiswapFactoryDTO
#'
#' @description
#' The Sushiswap Factory entity is responsible for storing aggregate information across all Sushiswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
#'
#' @docType class
#' @title SushiswapFactoryDTO
#' @description SushiswapFactoryDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Factory address. character [optional]
#' @field pair_count Amount of pairs created by the Sushiswap factory. character [optional]
#' @field volume_usd All time USD volume across all pairs (USD is derived). character [optional]
#' @field volume_eth All time volume in ETH across all pairs (ETH is derived). character [optional]
#' @field untracked_volume_usd Untracked volume USD. character [optional]
#' @field liquidity_usd Total liquidity across all pairs stored as a derived USD amount. character [optional]
#' @field liquidity_eth Total liquidity across all pairs stored as a derived ETH amount. character [optional]
#' @field tx_count All time amount of transactions across all pairs. character [optional]
#' @field token_count Total count of tokens. character [optional]
#' @field user_count Users count. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SushiswapFactoryDTO <- R6::R6Class(
  "SushiswapFactoryDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `pair_count` = NULL,
    `volume_usd` = NULL,
    `volume_eth` = NULL,
    `untracked_volume_usd` = NULL,
    `liquidity_usd` = NULL,
    `liquidity_eth` = NULL,
    `tx_count` = NULL,
    `token_count` = NULL,
    `user_count` = NULL,
    `vid` = NULL,
    #' Initialize a new SushiswapFactoryDTO class.
    #'
    #' @description
    #' Initialize a new SushiswapFactoryDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Factory address.
    #' @param pair_count Amount of pairs created by the Sushiswap factory.
    #' @param volume_usd All time USD volume across all pairs (USD is derived).
    #' @param volume_eth All time volume in ETH across all pairs (ETH is derived).
    #' @param untracked_volume_usd Untracked volume USD.
    #' @param liquidity_usd Total liquidity across all pairs stored as a derived USD amount.
    #' @param liquidity_eth Total liquidity across all pairs stored as a derived ETH amount.
    #' @param tx_count All time amount of transactions across all pairs.
    #' @param token_count Total count of tokens.
    #' @param user_count Users count.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `pair_count` = NULL, `volume_usd` = NULL, `volume_eth` = NULL, `untracked_volume_usd` = NULL, `liquidity_usd` = NULL, `liquidity_eth` = NULL, `tx_count` = NULL, `token_count` = NULL, `user_count` = NULL, `vid` = NULL, ...) {
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
        if (!(is.character(`pair_count`) && length(`pair_count`) == 1)) {
          stop(paste("Error! Invalid data for `pair_count`. Must be a string:", `pair_count`))
        }
        self$`pair_count` <- `pair_count`
      }
      if (!is.null(`volume_usd`)) {
        if (!(is.character(`volume_usd`) && length(`volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_usd`. Must be a string:", `volume_usd`))
        }
        self$`volume_usd` <- `volume_usd`
      }
      if (!is.null(`volume_eth`)) {
        if (!(is.character(`volume_eth`) && length(`volume_eth`) == 1)) {
          stop(paste("Error! Invalid data for `volume_eth`. Must be a string:", `volume_eth`))
        }
        self$`volume_eth` <- `volume_eth`
      }
      if (!is.null(`untracked_volume_usd`)) {
        if (!(is.character(`untracked_volume_usd`) && length(`untracked_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `untracked_volume_usd`. Must be a string:", `untracked_volume_usd`))
        }
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`liquidity_usd`)) {
        if (!(is.character(`liquidity_usd`) && length(`liquidity_usd`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_usd`. Must be a string:", `liquidity_usd`))
        }
        self$`liquidity_usd` <- `liquidity_usd`
      }
      if (!is.null(`liquidity_eth`)) {
        if (!(is.character(`liquidity_eth`) && length(`liquidity_eth`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_eth`. Must be a string:", `liquidity_eth`))
        }
        self$`liquidity_eth` <- `liquidity_eth`
      }
      if (!is.null(`tx_count`)) {
        if (!(is.character(`tx_count`) && length(`tx_count`) == 1)) {
          stop(paste("Error! Invalid data for `tx_count`. Must be a string:", `tx_count`))
        }
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`token_count`)) {
        if (!(is.character(`token_count`) && length(`token_count`) == 1)) {
          stop(paste("Error! Invalid data for `token_count`. Must be a string:", `token_count`))
        }
        self$`token_count` <- `token_count`
      }
      if (!is.null(`user_count`)) {
        if (!(is.character(`user_count`) && length(`user_count`) == 1)) {
          stop(paste("Error! Invalid data for `user_count`. Must be a string:", `user_count`))
        }
        self$`user_count` <- `user_count`
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
    #' @return SushiswapFactoryDTO in JSON format
    #' @export
    toJSON = function() {
      SushiswapFactoryDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SushiswapFactoryDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SushiswapFactoryDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SushiswapFactoryDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SushiswapFactoryDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`pair_count`)) {
        SushiswapFactoryDTOObject[["pair_count"]] <-
          self$`pair_count`
      }
      if (!is.null(self$`volume_usd`)) {
        SushiswapFactoryDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`volume_eth`)) {
        SushiswapFactoryDTOObject[["volume_eth"]] <-
          self$`volume_eth`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        SushiswapFactoryDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`liquidity_usd`)) {
        SushiswapFactoryDTOObject[["liquidity_usd"]] <-
          self$`liquidity_usd`
      }
      if (!is.null(self$`liquidity_eth`)) {
        SushiswapFactoryDTOObject[["liquidity_eth"]] <-
          self$`liquidity_eth`
      }
      if (!is.null(self$`tx_count`)) {
        SushiswapFactoryDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`token_count`)) {
        SushiswapFactoryDTOObject[["token_count"]] <-
          self$`token_count`
      }
      if (!is.null(self$`user_count`)) {
        SushiswapFactoryDTOObject[["user_count"]] <-
          self$`user_count`
      }
      if (!is.null(self$`vid`)) {
        SushiswapFactoryDTOObject[["vid"]] <-
          self$`vid`
      }
      SushiswapFactoryDTOObject
    },
    #' Deserialize JSON string into an instance of SushiswapFactoryDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapFactoryDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapFactoryDTO
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
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`volume_eth`)) {
        self$`volume_eth` <- this_object$`volume_eth`
      }
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`liquidity_usd`)) {
        self$`liquidity_usd` <- this_object$`liquidity_usd`
      }
      if (!is.null(this_object$`liquidity_eth`)) {
        self$`liquidity_eth` <- this_object$`liquidity_eth`
      }
      if (!is.null(this_object$`tx_count`)) {
        self$`tx_count` <- this_object$`tx_count`
      }
      if (!is.null(this_object$`token_count`)) {
        self$`token_count` <- this_object$`token_count`
      }
      if (!is.null(this_object$`user_count`)) {
        self$`user_count` <- this_object$`user_count`
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
    #' @return SushiswapFactoryDTO in JSON format
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
            "%s"
                    ',
          self$`pair_count`
          )
        },
        if (!is.null(self$`volume_usd`)) {
          sprintf(
          '"volume_usd":
            "%s"
                    ',
          self$`volume_usd`
          )
        },
        if (!is.null(self$`volume_eth`)) {
          sprintf(
          '"volume_eth":
            "%s"
                    ',
          self$`volume_eth`
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
        if (!is.null(self$`liquidity_usd`)) {
          sprintf(
          '"liquidity_usd":
            "%s"
                    ',
          self$`liquidity_usd`
          )
        },
        if (!is.null(self$`liquidity_eth`)) {
          sprintf(
          '"liquidity_eth":
            "%s"
                    ',
          self$`liquidity_eth`
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
        if (!is.null(self$`token_count`)) {
          sprintf(
          '"token_count":
            "%s"
                    ',
          self$`token_count`
          )
        },
        if (!is.null(self$`user_count`)) {
          sprintf(
          '"user_count":
            "%s"
                    ',
          self$`user_count`
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
    #' Deserialize JSON string into an instance of SushiswapFactoryDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapFactoryDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapFactoryDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`pair_count` <- this_object$`pair_count`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`volume_eth` <- this_object$`volume_eth`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`liquidity_usd` <- this_object$`liquidity_usd`
      self$`liquidity_eth` <- this_object$`liquidity_eth`
      self$`tx_count` <- this_object$`tx_count`
      self$`token_count` <- this_object$`token_count`
      self$`user_count` <- this_object$`user_count`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to SushiswapFactoryDTO
    #'
    #' @description
    #' Validate JSON input with respect to SushiswapFactoryDTO and throw an exception if invalid
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
    #' @return String representation of SushiswapFactoryDTO
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
# SushiswapFactoryDTO$unlock()
#
## Below is an example to define the print function
# SushiswapFactoryDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SushiswapFactoryDTO$lock()

