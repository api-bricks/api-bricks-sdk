#' Create a new SushiswapTokenDayDataDTO
#'
#' @description
#' Token data aggregated across all pairs that include token.
#'
#' @docType class
#' @title SushiswapTokenDayDataDTO
#' @description SushiswapTokenDayDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, day start timestamp in unix / 86400. character [optional]
#' @field date Unix timestamp for start of day. integer [optional]
#' @field token Reference to token entity. character [optional]
#' @field volume Amount of token swapped across all pairs throughout day. character [optional]
#' @field volume_eth Amount of token swapped across all pairs throughout day stored as a derived amount of ETH. character [optional]
#' @field volume_usd Amount of token swapped across all pairs throughout day stored as a derived amount of USD. character [optional]
#' @field tx_count Amount of transactions with this token across all pairs. character [optional]
#' @field liquidity Token amount of token deposited across all pairs. character [optional]
#' @field liquidity_eth Token amount of token deposited across all pairs stored as amount of ETH. character [optional]
#' @field liquidity_usd Token amount of token deposited across all pairs stored as amount of USD. character [optional]
#' @field price_usd Price of token in derived USD. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SushiswapTokenDayDataDTO <- R6::R6Class(
  "SushiswapTokenDayDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `date` = NULL,
    `token` = NULL,
    `volume` = NULL,
    `volume_eth` = NULL,
    `volume_usd` = NULL,
    `tx_count` = NULL,
    `liquidity` = NULL,
    `liquidity_eth` = NULL,
    `liquidity_usd` = NULL,
    `price_usd` = NULL,
    `vid` = NULL,
    #' Initialize a new SushiswapTokenDayDataDTO class.
    #'
    #' @description
    #' Initialize a new SushiswapTokenDayDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, day start timestamp in unix / 86400.
    #' @param date Unix timestamp for start of day.
    #' @param token Reference to token entity.
    #' @param volume Amount of token swapped across all pairs throughout day.
    #' @param volume_eth Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
    #' @param volume_usd Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
    #' @param tx_count Amount of transactions with this token across all pairs.
    #' @param liquidity Token amount of token deposited across all pairs.
    #' @param liquidity_eth Token amount of token deposited across all pairs stored as amount of ETH.
    #' @param liquidity_usd Token amount of token deposited across all pairs stored as amount of USD.
    #' @param price_usd Price of token in derived USD.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `date` = NULL, `token` = NULL, `volume` = NULL, `volume_eth` = NULL, `volume_usd` = NULL, `tx_count` = NULL, `liquidity` = NULL, `liquidity_eth` = NULL, `liquidity_usd` = NULL, `price_usd` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`volume`)) {
        if (!(is.character(`volume`) && length(`volume`) == 1)) {
          stop(paste("Error! Invalid data for `volume`. Must be a string:", `volume`))
        }
        self$`volume` <- `volume`
      }
      if (!is.null(`volume_eth`)) {
        if (!(is.character(`volume_eth`) && length(`volume_eth`) == 1)) {
          stop(paste("Error! Invalid data for `volume_eth`. Must be a string:", `volume_eth`))
        }
        self$`volume_eth` <- `volume_eth`
      }
      if (!is.null(`volume_usd`)) {
        if (!(is.character(`volume_usd`) && length(`volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_usd`. Must be a string:", `volume_usd`))
        }
        self$`volume_usd` <- `volume_usd`
      }
      if (!is.null(`tx_count`)) {
        if (!(is.character(`tx_count`) && length(`tx_count`) == 1)) {
          stop(paste("Error! Invalid data for `tx_count`. Must be a string:", `tx_count`))
        }
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`liquidity`)) {
        if (!(is.character(`liquidity`) && length(`liquidity`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity`. Must be a string:", `liquidity`))
        }
        self$`liquidity` <- `liquidity`
      }
      if (!is.null(`liquidity_eth`)) {
        if (!(is.character(`liquidity_eth`) && length(`liquidity_eth`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_eth`. Must be a string:", `liquidity_eth`))
        }
        self$`liquidity_eth` <- `liquidity_eth`
      }
      if (!is.null(`liquidity_usd`)) {
        if (!(is.character(`liquidity_usd`) && length(`liquidity_usd`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_usd`. Must be a string:", `liquidity_usd`))
        }
        self$`liquidity_usd` <- `liquidity_usd`
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
    #' @return SushiswapTokenDayDataDTO in JSON format
    #' @export
    toJSON = function() {
      SushiswapTokenDayDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SushiswapTokenDayDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SushiswapTokenDayDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SushiswapTokenDayDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SushiswapTokenDayDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        SushiswapTokenDayDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`token`)) {
        SushiswapTokenDayDataDTOObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`volume`)) {
        SushiswapTokenDayDataDTOObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`volume_eth`)) {
        SushiswapTokenDayDataDTOObject[["volume_eth"]] <-
          self$`volume_eth`
      }
      if (!is.null(self$`volume_usd`)) {
        SushiswapTokenDayDataDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`tx_count`)) {
        SushiswapTokenDayDataDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`liquidity`)) {
        SushiswapTokenDayDataDTOObject[["liquidity"]] <-
          self$`liquidity`
      }
      if (!is.null(self$`liquidity_eth`)) {
        SushiswapTokenDayDataDTOObject[["liquidity_eth"]] <-
          self$`liquidity_eth`
      }
      if (!is.null(self$`liquidity_usd`)) {
        SushiswapTokenDayDataDTOObject[["liquidity_usd"]] <-
          self$`liquidity_usd`
      }
      if (!is.null(self$`price_usd`)) {
        SushiswapTokenDayDataDTOObject[["price_usd"]] <-
          self$`price_usd`
      }
      if (!is.null(self$`vid`)) {
        SushiswapTokenDayDataDTOObject[["vid"]] <-
          self$`vid`
      }
      SushiswapTokenDayDataDTOObject
    },
    #' Deserialize JSON string into an instance of SushiswapTokenDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapTokenDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapTokenDayDataDTO
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
      if (!is.null(this_object$`volume`)) {
        self$`volume` <- this_object$`volume`
      }
      if (!is.null(this_object$`volume_eth`)) {
        self$`volume_eth` <- this_object$`volume_eth`
      }
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        self$`tx_count` <- this_object$`tx_count`
      }
      if (!is.null(this_object$`liquidity`)) {
        self$`liquidity` <- this_object$`liquidity`
      }
      if (!is.null(this_object$`liquidity_eth`)) {
        self$`liquidity_eth` <- this_object$`liquidity_eth`
      }
      if (!is.null(this_object$`liquidity_usd`)) {
        self$`liquidity_usd` <- this_object$`liquidity_usd`
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
    #' @return SushiswapTokenDayDataDTO in JSON format
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
        if (!is.null(self$`volume`)) {
          sprintf(
          '"volume":
            "%s"
                    ',
          self$`volume`
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
        if (!is.null(self$`volume_usd`)) {
          sprintf(
          '"volume_usd":
            "%s"
                    ',
          self$`volume_usd`
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
        if (!is.null(self$`liquidity`)) {
          sprintf(
          '"liquidity":
            "%s"
                    ',
          self$`liquidity`
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
        if (!is.null(self$`liquidity_usd`)) {
          sprintf(
          '"liquidity_usd":
            "%s"
                    ',
          self$`liquidity_usd`
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
    #' Deserialize JSON string into an instance of SushiswapTokenDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapTokenDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapTokenDayDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`token` <- this_object$`token`
      self$`volume` <- this_object$`volume`
      self$`volume_eth` <- this_object$`volume_eth`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`tx_count` <- this_object$`tx_count`
      self$`liquidity` <- this_object$`liquidity`
      self$`liquidity_eth` <- this_object$`liquidity_eth`
      self$`liquidity_usd` <- this_object$`liquidity_usd`
      self$`price_usd` <- this_object$`price_usd`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to SushiswapTokenDayDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to SushiswapTokenDayDataDTO and throw an exception if invalid
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
    #' @return String representation of SushiswapTokenDayDataDTO
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
# SushiswapTokenDayDataDTO$unlock()
#
## Below is an example to define the print function
# SushiswapTokenDayDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SushiswapTokenDayDataDTO$lock()

