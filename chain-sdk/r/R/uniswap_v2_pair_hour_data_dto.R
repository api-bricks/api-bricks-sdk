#' Create a new UniswapV2PairHourDataDTO
#'
#' @description
#' Tracks pair data across each hour.
#'
#' @docType class
#' @title UniswapV2PairHourDataDTO
#' @description UniswapV2PairHourDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field hour_start_unix Unix timestamp for start of hour. integer [optional]
#' @field pair Address for pair contract. character [optional]
#' @field reserve_0 Reserve of token0 (updated during each transaction on pair). character [optional]
#' @field reserve_1 Reserve of token1 (updated during each transaction on pair). character [optional]
#' @field total_supply Total supply of liquidity token distributed to LPs. character [optional]
#' @field reserve_usd Reserve of token0 plus token1 stored as a derived USD amount. character [optional]
#' @field hourly_volume_token_0 Total amount of token0 swapped throughout hour. character [optional]
#' @field hourly_volume_token_1 Total amount of token1 swapped throughout hour. character [optional]
#' @field hourly_volume_usd Total volume within pair throughout hour. character [optional]
#' @field hourly_txns Amount of transactions on pair throughout hour. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2PairHourDataDTO <- R6::R6Class(
  "UniswapV2PairHourDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `hour_start_unix` = NULL,
    `pair` = NULL,
    `reserve_0` = NULL,
    `reserve_1` = NULL,
    `total_supply` = NULL,
    `reserve_usd` = NULL,
    `hourly_volume_token_0` = NULL,
    `hourly_volume_token_1` = NULL,
    `hourly_volume_usd` = NULL,
    `hourly_txns` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV2PairHourDataDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2PairHourDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param hour_start_unix Unix timestamp for start of hour.
    #' @param pair Address for pair contract.
    #' @param reserve_0 Reserve of token0 (updated during each transaction on pair).
    #' @param reserve_1 Reserve of token1 (updated during each transaction on pair).
    #' @param total_supply Total supply of liquidity token distributed to LPs.
    #' @param reserve_usd Reserve of token0 plus token1 stored as a derived USD amount.
    #' @param hourly_volume_token_0 Total amount of token0 swapped throughout hour.
    #' @param hourly_volume_token_1 Total amount of token1 swapped throughout hour.
    #' @param hourly_volume_usd Total volume within pair throughout hour.
    #' @param hourly_txns Amount of transactions on pair throughout hour.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `hour_start_unix` = NULL, `pair` = NULL, `reserve_0` = NULL, `reserve_1` = NULL, `total_supply` = NULL, `reserve_usd` = NULL, `hourly_volume_token_0` = NULL, `hourly_volume_token_1` = NULL, `hourly_volume_usd` = NULL, `hourly_txns` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`hour_start_unix`)) {
        if (!(is.numeric(`hour_start_unix`) && length(`hour_start_unix`) == 1)) {
          stop(paste("Error! Invalid data for `hour_start_unix`. Must be an integer:", `hour_start_unix`))
        }
        self$`hour_start_unix` <- `hour_start_unix`
      }
      if (!is.null(`pair`)) {
        if (!(is.character(`pair`) && length(`pair`) == 1)) {
          stop(paste("Error! Invalid data for `pair`. Must be a string:", `pair`))
        }
        self$`pair` <- `pair`
      }
      if (!is.null(`reserve_0`)) {
        if (!(is.character(`reserve_0`) && length(`reserve_0`) == 1)) {
          stop(paste("Error! Invalid data for `reserve_0`. Must be a string:", `reserve_0`))
        }
        self$`reserve_0` <- `reserve_0`
      }
      if (!is.null(`reserve_1`)) {
        if (!(is.character(`reserve_1`) && length(`reserve_1`) == 1)) {
          stop(paste("Error! Invalid data for `reserve_1`. Must be a string:", `reserve_1`))
        }
        self$`reserve_1` <- `reserve_1`
      }
      if (!is.null(`total_supply`)) {
        if (!(is.character(`total_supply`) && length(`total_supply`) == 1)) {
          stop(paste("Error! Invalid data for `total_supply`. Must be a string:", `total_supply`))
        }
        self$`total_supply` <- `total_supply`
      }
      if (!is.null(`reserve_usd`)) {
        if (!(is.character(`reserve_usd`) && length(`reserve_usd`) == 1)) {
          stop(paste("Error! Invalid data for `reserve_usd`. Must be a string:", `reserve_usd`))
        }
        self$`reserve_usd` <- `reserve_usd`
      }
      if (!is.null(`hourly_volume_token_0`)) {
        if (!(is.character(`hourly_volume_token_0`) && length(`hourly_volume_token_0`) == 1)) {
          stop(paste("Error! Invalid data for `hourly_volume_token_0`. Must be a string:", `hourly_volume_token_0`))
        }
        self$`hourly_volume_token_0` <- `hourly_volume_token_0`
      }
      if (!is.null(`hourly_volume_token_1`)) {
        if (!(is.character(`hourly_volume_token_1`) && length(`hourly_volume_token_1`) == 1)) {
          stop(paste("Error! Invalid data for `hourly_volume_token_1`. Must be a string:", `hourly_volume_token_1`))
        }
        self$`hourly_volume_token_1` <- `hourly_volume_token_1`
      }
      if (!is.null(`hourly_volume_usd`)) {
        if (!(is.character(`hourly_volume_usd`) && length(`hourly_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `hourly_volume_usd`. Must be a string:", `hourly_volume_usd`))
        }
        self$`hourly_volume_usd` <- `hourly_volume_usd`
      }
      if (!is.null(`hourly_txns`)) {
        if (!(is.character(`hourly_txns`) && length(`hourly_txns`) == 1)) {
          stop(paste("Error! Invalid data for `hourly_txns`. Must be a string:", `hourly_txns`))
        }
        self$`hourly_txns` <- `hourly_txns`
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
    #' @return UniswapV2PairHourDataDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2PairHourDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2PairHourDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2PairHourDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2PairHourDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV2PairHourDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`hour_start_unix`)) {
        UniswapV2PairHourDataDTOObject[["hour_start_unix"]] <-
          self$`hour_start_unix`
      }
      if (!is.null(self$`pair`)) {
        UniswapV2PairHourDataDTOObject[["pair"]] <-
          self$`pair`
      }
      if (!is.null(self$`reserve_0`)) {
        UniswapV2PairHourDataDTOObject[["reserve_0"]] <-
          self$`reserve_0`
      }
      if (!is.null(self$`reserve_1`)) {
        UniswapV2PairHourDataDTOObject[["reserve_1"]] <-
          self$`reserve_1`
      }
      if (!is.null(self$`total_supply`)) {
        UniswapV2PairHourDataDTOObject[["total_supply"]] <-
          self$`total_supply`
      }
      if (!is.null(self$`reserve_usd`)) {
        UniswapV2PairHourDataDTOObject[["reserve_usd"]] <-
          self$`reserve_usd`
      }
      if (!is.null(self$`hourly_volume_token_0`)) {
        UniswapV2PairHourDataDTOObject[["hourly_volume_token_0"]] <-
          self$`hourly_volume_token_0`
      }
      if (!is.null(self$`hourly_volume_token_1`)) {
        UniswapV2PairHourDataDTOObject[["hourly_volume_token_1"]] <-
          self$`hourly_volume_token_1`
      }
      if (!is.null(self$`hourly_volume_usd`)) {
        UniswapV2PairHourDataDTOObject[["hourly_volume_usd"]] <-
          self$`hourly_volume_usd`
      }
      if (!is.null(self$`hourly_txns`)) {
        UniswapV2PairHourDataDTOObject[["hourly_txns"]] <-
          self$`hourly_txns`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2PairHourDataDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV2PairHourDataDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2PairHourDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2PairHourDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2PairHourDataDTO
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
      if (!is.null(this_object$`hour_start_unix`)) {
        self$`hour_start_unix` <- this_object$`hour_start_unix`
      }
      if (!is.null(this_object$`pair`)) {
        self$`pair` <- this_object$`pair`
      }
      if (!is.null(this_object$`reserve_0`)) {
        self$`reserve_0` <- this_object$`reserve_0`
      }
      if (!is.null(this_object$`reserve_1`)) {
        self$`reserve_1` <- this_object$`reserve_1`
      }
      if (!is.null(this_object$`total_supply`)) {
        self$`total_supply` <- this_object$`total_supply`
      }
      if (!is.null(this_object$`reserve_usd`)) {
        self$`reserve_usd` <- this_object$`reserve_usd`
      }
      if (!is.null(this_object$`hourly_volume_token_0`)) {
        self$`hourly_volume_token_0` <- this_object$`hourly_volume_token_0`
      }
      if (!is.null(this_object$`hourly_volume_token_1`)) {
        self$`hourly_volume_token_1` <- this_object$`hourly_volume_token_1`
      }
      if (!is.null(this_object$`hourly_volume_usd`)) {
        self$`hourly_volume_usd` <- this_object$`hourly_volume_usd`
      }
      if (!is.null(this_object$`hourly_txns`)) {
        self$`hourly_txns` <- this_object$`hourly_txns`
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
    #' @return UniswapV2PairHourDataDTO in JSON format
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
        if (!is.null(self$`hour_start_unix`)) {
          sprintf(
          '"hour_start_unix":
            %d
                    ',
          self$`hour_start_unix`
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
        if (!is.null(self$`reserve_0`)) {
          sprintf(
          '"reserve_0":
            "%s"
                    ',
          self$`reserve_0`
          )
        },
        if (!is.null(self$`reserve_1`)) {
          sprintf(
          '"reserve_1":
            "%s"
                    ',
          self$`reserve_1`
          )
        },
        if (!is.null(self$`total_supply`)) {
          sprintf(
          '"total_supply":
            "%s"
                    ',
          self$`total_supply`
          )
        },
        if (!is.null(self$`reserve_usd`)) {
          sprintf(
          '"reserve_usd":
            "%s"
                    ',
          self$`reserve_usd`
          )
        },
        if (!is.null(self$`hourly_volume_token_0`)) {
          sprintf(
          '"hourly_volume_token_0":
            "%s"
                    ',
          self$`hourly_volume_token_0`
          )
        },
        if (!is.null(self$`hourly_volume_token_1`)) {
          sprintf(
          '"hourly_volume_token_1":
            "%s"
                    ',
          self$`hourly_volume_token_1`
          )
        },
        if (!is.null(self$`hourly_volume_usd`)) {
          sprintf(
          '"hourly_volume_usd":
            "%s"
                    ',
          self$`hourly_volume_usd`
          )
        },
        if (!is.null(self$`hourly_txns`)) {
          sprintf(
          '"hourly_txns":
            "%s"
                    ',
          self$`hourly_txns`
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
    #' Deserialize JSON string into an instance of UniswapV2PairHourDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2PairHourDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2PairHourDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`hour_start_unix` <- this_object$`hour_start_unix`
      self$`pair` <- this_object$`pair`
      self$`reserve_0` <- this_object$`reserve_0`
      self$`reserve_1` <- this_object$`reserve_1`
      self$`total_supply` <- this_object$`total_supply`
      self$`reserve_usd` <- this_object$`reserve_usd`
      self$`hourly_volume_token_0` <- this_object$`hourly_volume_token_0`
      self$`hourly_volume_token_1` <- this_object$`hourly_volume_token_1`
      self$`hourly_volume_usd` <- this_object$`hourly_volume_usd`
      self$`hourly_txns` <- this_object$`hourly_txns`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV2PairHourDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2PairHourDataDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2PairHourDataDTO
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
# UniswapV2PairHourDataDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2PairHourDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2PairHourDataDTO$lock()

