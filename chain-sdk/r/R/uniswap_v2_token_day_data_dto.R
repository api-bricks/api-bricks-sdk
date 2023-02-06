#' Create a new UniswapV2TokenDayDataDTO
#'
#' @description
#' Token data aggregated across all pairs that include token.
#'
#' @docType class
#' @title UniswapV2TokenDayDataDTO
#' @description UniswapV2TokenDayDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. character [optional]
#' @field date Unix timestamp for start of day. integer [optional]
#' @field token Reference to token entity. character [optional]
#' @field daily_volume_token Amount of token swapped across all pairs throughout day. character [optional]
#' @field daily_volume_eth Amount of token swapped across all pairs throughout day stored as a derived amount of ETH. character [optional]
#' @field daily_volume_usd Amount of token swapped across all pairs throughout day stored as a derived amount of USD. character [optional]
#' @field daily_txns Amount of transactions with this token across all pairs. character [optional]
#' @field total_liquidity_token Token amount of token deposited across all pairs. character [optional]
#' @field total_liquidity_eth Token amount of token deposited across all pairs stored as amount of ETH. character [optional]
#' @field total_liquidity_usd Token amount of token deposited across all pairs stored as amount of USD. character [optional]
#' @field price_usd Price of token in derived USD. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2TokenDayDataDTO <- R6::R6Class(
  "UniswapV2TokenDayDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `date` = NULL,
    `token` = NULL,
    `daily_volume_token` = NULL,
    `daily_volume_eth` = NULL,
    `daily_volume_usd` = NULL,
    `daily_txns` = NULL,
    `total_liquidity_token` = NULL,
    `total_liquidity_eth` = NULL,
    `total_liquidity_usd` = NULL,
    `price_usd` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV2TokenDayDataDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2TokenDayDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
    #' @param date Unix timestamp for start of day.
    #' @param token Reference to token entity.
    #' @param daily_volume_token Amount of token swapped across all pairs throughout day.
    #' @param daily_volume_eth Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
    #' @param daily_volume_usd Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
    #' @param daily_txns Amount of transactions with this token across all pairs.
    #' @param total_liquidity_token Token amount of token deposited across all pairs.
    #' @param total_liquidity_eth Token amount of token deposited across all pairs stored as amount of ETH.
    #' @param total_liquidity_usd Token amount of token deposited across all pairs stored as amount of USD.
    #' @param price_usd Price of token in derived USD.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `date` = NULL, `token` = NULL, `daily_volume_token` = NULL, `daily_volume_eth` = NULL, `daily_volume_usd` = NULL, `daily_txns` = NULL, `total_liquidity_token` = NULL, `total_liquidity_eth` = NULL, `total_liquidity_usd` = NULL, `price_usd` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
      if (!is.null(`daily_volume_token`)) {
        if (!(is.character(`daily_volume_token`) && length(`daily_volume_token`) == 1)) {
          stop(paste("Error! Invalid data for `daily_volume_token`. Must be a string:", `daily_volume_token`))
        }
        self$`daily_volume_token` <- `daily_volume_token`
      }
      if (!is.null(`daily_volume_eth`)) {
        if (!(is.character(`daily_volume_eth`) && length(`daily_volume_eth`) == 1)) {
          stop(paste("Error! Invalid data for `daily_volume_eth`. Must be a string:", `daily_volume_eth`))
        }
        self$`daily_volume_eth` <- `daily_volume_eth`
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
      if (!is.null(`total_liquidity_token`)) {
        if (!(is.character(`total_liquidity_token`) && length(`total_liquidity_token`) == 1)) {
          stop(paste("Error! Invalid data for `total_liquidity_token`. Must be a string:", `total_liquidity_token`))
        }
        self$`total_liquidity_token` <- `total_liquidity_token`
      }
      if (!is.null(`total_liquidity_eth`)) {
        if (!(is.character(`total_liquidity_eth`) && length(`total_liquidity_eth`) == 1)) {
          stop(paste("Error! Invalid data for `total_liquidity_eth`. Must be a string:", `total_liquidity_eth`))
        }
        self$`total_liquidity_eth` <- `total_liquidity_eth`
      }
      if (!is.null(`total_liquidity_usd`)) {
        if (!(is.character(`total_liquidity_usd`) && length(`total_liquidity_usd`) == 1)) {
          stop(paste("Error! Invalid data for `total_liquidity_usd`. Must be a string:", `total_liquidity_usd`))
        }
        self$`total_liquidity_usd` <- `total_liquidity_usd`
      }
      if (!is.null(`price_usd`)) {
        if (!(is.character(`price_usd`) && length(`price_usd`) == 1)) {
          stop(paste("Error! Invalid data for `price_usd`. Must be a string:", `price_usd`))
        }
        self$`price_usd` <- `price_usd`
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
    #' @return UniswapV2TokenDayDataDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2TokenDayDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2TokenDayDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2TokenDayDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2TokenDayDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV2TokenDayDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        UniswapV2TokenDayDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`token`)) {
        UniswapV2TokenDayDataDTOObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`daily_volume_token`)) {
        UniswapV2TokenDayDataDTOObject[["daily_volume_token"]] <-
          self$`daily_volume_token`
      }
      if (!is.null(self$`daily_volume_eth`)) {
        UniswapV2TokenDayDataDTOObject[["daily_volume_eth"]] <-
          self$`daily_volume_eth`
      }
      if (!is.null(self$`daily_volume_usd`)) {
        UniswapV2TokenDayDataDTOObject[["daily_volume_usd"]] <-
          self$`daily_volume_usd`
      }
      if (!is.null(self$`daily_txns`)) {
        UniswapV2TokenDayDataDTOObject[["daily_txns"]] <-
          self$`daily_txns`
      }
      if (!is.null(self$`total_liquidity_token`)) {
        UniswapV2TokenDayDataDTOObject[["total_liquidity_token"]] <-
          self$`total_liquidity_token`
      }
      if (!is.null(self$`total_liquidity_eth`)) {
        UniswapV2TokenDayDataDTOObject[["total_liquidity_eth"]] <-
          self$`total_liquidity_eth`
      }
      if (!is.null(self$`total_liquidity_usd`)) {
        UniswapV2TokenDayDataDTOObject[["total_liquidity_usd"]] <-
          self$`total_liquidity_usd`
      }
      if (!is.null(self$`price_usd`)) {
        UniswapV2TokenDayDataDTOObject[["price_usd"]] <-
          self$`price_usd`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2TokenDayDataDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV2TokenDayDataDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2TokenDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2TokenDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2TokenDayDataDTO
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
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`daily_volume_token`)) {
        self$`daily_volume_token` <- this_object$`daily_volume_token`
      }
      if (!is.null(this_object$`daily_volume_eth`)) {
        self$`daily_volume_eth` <- this_object$`daily_volume_eth`
      }
      if (!is.null(this_object$`daily_volume_usd`)) {
        self$`daily_volume_usd` <- this_object$`daily_volume_usd`
      }
      if (!is.null(this_object$`daily_txns`)) {
        self$`daily_txns` <- this_object$`daily_txns`
      }
      if (!is.null(this_object$`total_liquidity_token`)) {
        self$`total_liquidity_token` <- this_object$`total_liquidity_token`
      }
      if (!is.null(this_object$`total_liquidity_eth`)) {
        self$`total_liquidity_eth` <- this_object$`total_liquidity_eth`
      }
      if (!is.null(this_object$`total_liquidity_usd`)) {
        self$`total_liquidity_usd` <- this_object$`total_liquidity_usd`
      }
      if (!is.null(this_object$`price_usd`)) {
        self$`price_usd` <- this_object$`price_usd`
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
    #' @return UniswapV2TokenDayDataDTO in JSON format
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
        if (!is.null(self$`token`)) {
          sprintf(
          '"token":
            "%s"
                    ',
          self$`token`
          )
        },
        if (!is.null(self$`daily_volume_token`)) {
          sprintf(
          '"daily_volume_token":
            "%s"
                    ',
          self$`daily_volume_token`
          )
        },
        if (!is.null(self$`daily_volume_eth`)) {
          sprintf(
          '"daily_volume_eth":
            "%s"
                    ',
          self$`daily_volume_eth`
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
        if (!is.null(self$`total_liquidity_token`)) {
          sprintf(
          '"total_liquidity_token":
            "%s"
                    ',
          self$`total_liquidity_token`
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
        if (!is.null(self$`total_liquidity_usd`)) {
          sprintf(
          '"total_liquidity_usd":
            "%s"
                    ',
          self$`total_liquidity_usd`
          )
        },
        if (!is.null(self$`price_usd`)) {
          sprintf(
          '"price_usd":
            "%s"
                    ',
          self$`price_usd`
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
    #' Deserialize JSON string into an instance of UniswapV2TokenDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2TokenDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2TokenDayDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`token` <- this_object$`token`
      self$`daily_volume_token` <- this_object$`daily_volume_token`
      self$`daily_volume_eth` <- this_object$`daily_volume_eth`
      self$`daily_volume_usd` <- this_object$`daily_volume_usd`
      self$`daily_txns` <- this_object$`daily_txns`
      self$`total_liquidity_token` <- this_object$`total_liquidity_token`
      self$`total_liquidity_eth` <- this_object$`total_liquidity_eth`
      self$`total_liquidity_usd` <- this_object$`total_liquidity_usd`
      self$`price_usd` <- this_object$`price_usd`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV2TokenDayDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2TokenDayDataDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2TokenDayDataDTO
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
# UniswapV2TokenDayDataDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2TokenDayDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2TokenDayDataDTO$lock()

