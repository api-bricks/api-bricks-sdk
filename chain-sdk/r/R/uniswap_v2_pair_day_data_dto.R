#' Create a new UniswapV2PairDayDataDTO
#'
#' @description
#' Tracks pair data across each day.
#'
#' @docType class
#' @title UniswapV2PairDayDataDTO
#' @description UniswapV2PairDayDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field date Unix timestamp for start of day. integer [optional]
#' @field pair_address Address for pair contract. character [optional]
#' @field token_0 Reference to token0. character [optional]
#' @field token_1 Reference to token1. character [optional]
#' @field reserve_0 Reserve of token0 (updated during each transaction on pair). character [optional]
#' @field reserve_1 Reserve of token1 (updated during each transaction on pair). character [optional]
#' @field total_supply Total supply of liquidity token distributed to LPs. character [optional]
#' @field reserve_usd Reserve of token0 plus token1 stored as a derived USD amount. character [optional]
#' @field daily_volume_token_0 Total amount of token0 swapped throughout day. character [optional]
#' @field daily_volume_token_1 Total amount of token1 swapped throughout day. character [optional]
#' @field daily_volume_usd Total volume within pair throughout day. character [optional]
#' @field daily_txns Amount of transactions on pair throughout day. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2PairDayDataDTO <- R6::R6Class(
  "UniswapV2PairDayDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `date` = NULL,
    `pair_address` = NULL,
    `token_0` = NULL,
    `token_1` = NULL,
    `reserve_0` = NULL,
    `reserve_1` = NULL,
    `total_supply` = NULL,
    `reserve_usd` = NULL,
    `daily_volume_token_0` = NULL,
    `daily_volume_token_1` = NULL,
    `daily_volume_usd` = NULL,
    `daily_txns` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV2PairDayDataDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2PairDayDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param date Unix timestamp for start of day.
    #' @param pair_address Address for pair contract.
    #' @param token_0 Reference to token0.
    #' @param token_1 Reference to token1.
    #' @param reserve_0 Reserve of token0 (updated during each transaction on pair).
    #' @param reserve_1 Reserve of token1 (updated during each transaction on pair).
    #' @param total_supply Total supply of liquidity token distributed to LPs.
    #' @param reserve_usd Reserve of token0 plus token1 stored as a derived USD amount.
    #' @param daily_volume_token_0 Total amount of token0 swapped throughout day.
    #' @param daily_volume_token_1 Total amount of token1 swapped throughout day.
    #' @param daily_volume_usd Total volume within pair throughout day.
    #' @param daily_txns Amount of transactions on pair throughout day.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `date` = NULL, `pair_address` = NULL, `token_0` = NULL, `token_1` = NULL, `reserve_0` = NULL, `reserve_1` = NULL, `total_supply` = NULL, `reserve_usd` = NULL, `daily_volume_token_0` = NULL, `daily_volume_token_1` = NULL, `daily_volume_usd` = NULL, `daily_txns` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`date`)) {
        if (!(is.numeric(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be an integer:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`pair_address`)) {
        if (!(is.character(`pair_address`) && length(`pair_address`) == 1)) {
          stop(paste("Error! Invalid data for `pair_address`. Must be a string:", `pair_address`))
        }
        self$`pair_address` <- `pair_address`
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
      if (!is.null(`daily_volume_token_0`)) {
        if (!(is.character(`daily_volume_token_0`) && length(`daily_volume_token_0`) == 1)) {
          stop(paste("Error! Invalid data for `daily_volume_token_0`. Must be a string:", `daily_volume_token_0`))
        }
        self$`daily_volume_token_0` <- `daily_volume_token_0`
      }
      if (!is.null(`daily_volume_token_1`)) {
        if (!(is.character(`daily_volume_token_1`) && length(`daily_volume_token_1`) == 1)) {
          stop(paste("Error! Invalid data for `daily_volume_token_1`. Must be a string:", `daily_volume_token_1`))
        }
        self$`daily_volume_token_1` <- `daily_volume_token_1`
      }
      if (!is.null(`daily_volume_usd`)) {
        if (!(is.character(`daily_volume_usd`) && length(`daily_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `daily_volume_usd`. Must be a string:", `daily_volume_usd`))
        }
        self$`daily_volume_usd` <- `daily_volume_usd`
      }
      if (!is.null(`daily_txns`)) {
        if (!(is.character(`daily_txns`) && length(`daily_txns`) == 1)) {
          stop(paste("Error! Invalid data for `daily_txns`. Must be a string:", `daily_txns`))
        }
        self$`daily_txns` <- `daily_txns`
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
    #' @return UniswapV2PairDayDataDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2PairDayDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2PairDayDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2PairDayDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2PairDayDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV2PairDayDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        UniswapV2PairDayDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`pair_address`)) {
        UniswapV2PairDayDataDTOObject[["pair_address"]] <-
          self$`pair_address`
      }
      if (!is.null(self$`token_0`)) {
        UniswapV2PairDayDataDTOObject[["token_0"]] <-
          self$`token_0`
      }
      if (!is.null(self$`token_1`)) {
        UniswapV2PairDayDataDTOObject[["token_1"]] <-
          self$`token_1`
      }
      if (!is.null(self$`reserve_0`)) {
        UniswapV2PairDayDataDTOObject[["reserve_0"]] <-
          self$`reserve_0`
      }
      if (!is.null(self$`reserve_1`)) {
        UniswapV2PairDayDataDTOObject[["reserve_1"]] <-
          self$`reserve_1`
      }
      if (!is.null(self$`total_supply`)) {
        UniswapV2PairDayDataDTOObject[["total_supply"]] <-
          self$`total_supply`
      }
      if (!is.null(self$`reserve_usd`)) {
        UniswapV2PairDayDataDTOObject[["reserve_usd"]] <-
          self$`reserve_usd`
      }
      if (!is.null(self$`daily_volume_token_0`)) {
        UniswapV2PairDayDataDTOObject[["daily_volume_token_0"]] <-
          self$`daily_volume_token_0`
      }
      if (!is.null(self$`daily_volume_token_1`)) {
        UniswapV2PairDayDataDTOObject[["daily_volume_token_1"]] <-
          self$`daily_volume_token_1`
      }
      if (!is.null(self$`daily_volume_usd`)) {
        UniswapV2PairDayDataDTOObject[["daily_volume_usd"]] <-
          self$`daily_volume_usd`
      }
      if (!is.null(self$`daily_txns`)) {
        UniswapV2PairDayDataDTOObject[["daily_txns"]] <-
          self$`daily_txns`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2PairDayDataDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV2PairDayDataDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2PairDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2PairDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2PairDayDataDTO
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
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`pair_address`)) {
        self$`pair_address` <- this_object$`pair_address`
      }
      if (!is.null(this_object$`token_0`)) {
        self$`token_0` <- this_object$`token_0`
      }
      if (!is.null(this_object$`token_1`)) {
        self$`token_1` <- this_object$`token_1`
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
      if (!is.null(this_object$`daily_volume_token_0`)) {
        self$`daily_volume_token_0` <- this_object$`daily_volume_token_0`
      }
      if (!is.null(this_object$`daily_volume_token_1`)) {
        self$`daily_volume_token_1` <- this_object$`daily_volume_token_1`
      }
      if (!is.null(this_object$`daily_volume_usd`)) {
        self$`daily_volume_usd` <- this_object$`daily_volume_usd`
      }
      if (!is.null(this_object$`daily_txns`)) {
        self$`daily_txns` <- this_object$`daily_txns`
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
    #' @return UniswapV2PairDayDataDTO in JSON format
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
        if (!is.null(self$`date`)) {
          sprintf(
          '"date":
            %d
                    ',
          self$`date`
          )
        },
        if (!is.null(self$`pair_address`)) {
          sprintf(
          '"pair_address":
            "%s"
                    ',
          self$`pair_address`
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
        if (!is.null(self$`daily_volume_token_0`)) {
          sprintf(
          '"daily_volume_token_0":
            "%s"
                    ',
          self$`daily_volume_token_0`
          )
        },
        if (!is.null(self$`daily_volume_token_1`)) {
          sprintf(
          '"daily_volume_token_1":
            "%s"
                    ',
          self$`daily_volume_token_1`
          )
        },
        if (!is.null(self$`daily_volume_usd`)) {
          sprintf(
          '"daily_volume_usd":
            "%s"
                    ',
          self$`daily_volume_usd`
          )
        },
        if (!is.null(self$`daily_txns`)) {
          sprintf(
          '"daily_txns":
            "%s"
                    ',
          self$`daily_txns`
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
    #' Deserialize JSON string into an instance of UniswapV2PairDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2PairDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2PairDayDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`pair_address` <- this_object$`pair_address`
      self$`token_0` <- this_object$`token_0`
      self$`token_1` <- this_object$`token_1`
      self$`reserve_0` <- this_object$`reserve_0`
      self$`reserve_1` <- this_object$`reserve_1`
      self$`total_supply` <- this_object$`total_supply`
      self$`reserve_usd` <- this_object$`reserve_usd`
      self$`daily_volume_token_0` <- this_object$`daily_volume_token_0`
      self$`daily_volume_token_1` <- this_object$`daily_volume_token_1`
      self$`daily_volume_usd` <- this_object$`daily_volume_usd`
      self$`daily_txns` <- this_object$`daily_txns`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV2PairDayDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2PairDayDataDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2PairDayDataDTO
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
# UniswapV2PairDayDataDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2PairDayDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2PairDayDataDTO$lock()

