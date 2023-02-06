#' Create a new UniswapV3TickDayDataDTO
#'
#' @description
#' Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
#'
#' @docType class
#' @title UniswapV3TickDayDataDTO
#' @description UniswapV3TickDayDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, format: (pool address)-(tick index)-(timestamp). character [optional]
#' @field date Timestamp rounded to current day by dividing by 86400. integer [optional]
#' @field pool Pointer to pool. character [optional]
#' @field tick Pointer to tick. character [optional]
#' @field liquidity_gross Total liquidity pool has as tick lower or upper at end of period. character [optional]
#' @field liquidity_net How much liquidity changes when tick crossed at end of period. character [optional]
#' @field volume_token_0 Hourly volume of token0 with this tick in range. character [optional]
#' @field volume_token_1 Hourly volume of token1 with this tick in range. character [optional]
#' @field volume_usd Hourly volume in derived USD with this tick in range. character [optional]
#' @field fees_usd Fees in USD. character [optional]
#' @field fee_growth_outside_0x128 Variable needed for fee computation. character [optional]
#' @field fee_growth_outside_1x128 Variable needed for fee computation. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3TickDayDataDTO <- R6::R6Class(
  "UniswapV3TickDayDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `date` = NULL,
    `pool` = NULL,
    `tick` = NULL,
    `liquidity_gross` = NULL,
    `liquidity_net` = NULL,
    `volume_token_0` = NULL,
    `volume_token_1` = NULL,
    `volume_usd` = NULL,
    `fees_usd` = NULL,
    `fee_growth_outside_0x128` = NULL,
    `fee_growth_outside_1x128` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV3TickDayDataDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3TickDayDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, format: (pool address)-(tick index)-(timestamp).
    #' @param date Timestamp rounded to current day by dividing by 86400.
    #' @param pool Pointer to pool.
    #' @param tick Pointer to tick.
    #' @param liquidity_gross Total liquidity pool has as tick lower or upper at end of period.
    #' @param liquidity_net How much liquidity changes when tick crossed at end of period.
    #' @param volume_token_0 Hourly volume of token0 with this tick in range.
    #' @param volume_token_1 Hourly volume of token1 with this tick in range.
    #' @param volume_usd Hourly volume in derived USD with this tick in range.
    #' @param fees_usd Fees in USD.
    #' @param fee_growth_outside_0x128 Variable needed for fee computation.
    #' @param fee_growth_outside_1x128 Variable needed for fee computation.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `date` = NULL, `pool` = NULL, `tick` = NULL, `liquidity_gross` = NULL, `liquidity_net` = NULL, `volume_token_0` = NULL, `volume_token_1` = NULL, `volume_usd` = NULL, `fees_usd` = NULL, `fee_growth_outside_0x128` = NULL, `fee_growth_outside_1x128` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
      }
      if (!is.null(`tick`)) {
        if (!(is.character(`tick`) && length(`tick`) == 1)) {
          stop(paste("Error! Invalid data for `tick`. Must be a string:", `tick`))
        }
        self$`tick` <- `tick`
      }
      if (!is.null(`liquidity_gross`)) {
        if (!(is.character(`liquidity_gross`) && length(`liquidity_gross`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_gross`. Must be a string:", `liquidity_gross`))
        }
        self$`liquidity_gross` <- `liquidity_gross`
      }
      if (!is.null(`liquidity_net`)) {
        if (!(is.character(`liquidity_net`) && length(`liquidity_net`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_net`. Must be a string:", `liquidity_net`))
        }
        self$`liquidity_net` <- `liquidity_net`
      }
      if (!is.null(`volume_token_0`)) {
        if (!(is.character(`volume_token_0`) && length(`volume_token_0`) == 1)) {
          stop(paste("Error! Invalid data for `volume_token_0`. Must be a string:", `volume_token_0`))
        }
        self$`volume_token_0` <- `volume_token_0`
      }
      if (!is.null(`volume_token_1`)) {
        if (!(is.character(`volume_token_1`) && length(`volume_token_1`) == 1)) {
          stop(paste("Error! Invalid data for `volume_token_1`. Must be a string:", `volume_token_1`))
        }
        self$`volume_token_1` <- `volume_token_1`
      }
      if (!is.null(`volume_usd`)) {
        if (!(is.character(`volume_usd`) && length(`volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_usd`. Must be a string:", `volume_usd`))
        }
        self$`volume_usd` <- `volume_usd`
      }
      if (!is.null(`fees_usd`)) {
        if (!(is.character(`fees_usd`) && length(`fees_usd`) == 1)) {
          stop(paste("Error! Invalid data for `fees_usd`. Must be a string:", `fees_usd`))
        }
        self$`fees_usd` <- `fees_usd`
      }
      if (!is.null(`fee_growth_outside_0x128`)) {
        if (!(is.character(`fee_growth_outside_0x128`) && length(`fee_growth_outside_0x128`) == 1)) {
          stop(paste("Error! Invalid data for `fee_growth_outside_0x128`. Must be a string:", `fee_growth_outside_0x128`))
        }
        self$`fee_growth_outside_0x128` <- `fee_growth_outside_0x128`
      }
      if (!is.null(`fee_growth_outside_1x128`)) {
        if (!(is.character(`fee_growth_outside_1x128`) && length(`fee_growth_outside_1x128`) == 1)) {
          stop(paste("Error! Invalid data for `fee_growth_outside_1x128`. Must be a string:", `fee_growth_outside_1x128`))
        }
        self$`fee_growth_outside_1x128` <- `fee_growth_outside_1x128`
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
    #' @return UniswapV3TickDayDataDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3TickDayDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3TickDayDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3TickDayDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3TickDayDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV3TickDayDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        UniswapV3TickDayDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`pool`)) {
        UniswapV3TickDayDataDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`tick`)) {
        UniswapV3TickDayDataDTOObject[["tick"]] <-
          self$`tick`
      }
      if (!is.null(self$`liquidity_gross`)) {
        UniswapV3TickDayDataDTOObject[["liquidity_gross"]] <-
          self$`liquidity_gross`
      }
      if (!is.null(self$`liquidity_net`)) {
        UniswapV3TickDayDataDTOObject[["liquidity_net"]] <-
          self$`liquidity_net`
      }
      if (!is.null(self$`volume_token_0`)) {
        UniswapV3TickDayDataDTOObject[["volume_token_0"]] <-
          self$`volume_token_0`
      }
      if (!is.null(self$`volume_token_1`)) {
        UniswapV3TickDayDataDTOObject[["volume_token_1"]] <-
          self$`volume_token_1`
      }
      if (!is.null(self$`volume_usd`)) {
        UniswapV3TickDayDataDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`fees_usd`)) {
        UniswapV3TickDayDataDTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`fee_growth_outside_0x128`)) {
        UniswapV3TickDayDataDTOObject[["fee_growth_outside_0x128"]] <-
          self$`fee_growth_outside_0x128`
      }
      if (!is.null(self$`fee_growth_outside_1x128`)) {
        UniswapV3TickDayDataDTOObject[["fee_growth_outside_1x128"]] <-
          self$`fee_growth_outside_1x128`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3TickDayDataDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV3TickDayDataDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3TickDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TickDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TickDayDataDTO
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
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`tick`)) {
        self$`tick` <- this_object$`tick`
      }
      if (!is.null(this_object$`liquidity_gross`)) {
        self$`liquidity_gross` <- this_object$`liquidity_gross`
      }
      if (!is.null(this_object$`liquidity_net`)) {
        self$`liquidity_net` <- this_object$`liquidity_net`
      }
      if (!is.null(this_object$`volume_token_0`)) {
        self$`volume_token_0` <- this_object$`volume_token_0`
      }
      if (!is.null(this_object$`volume_token_1`)) {
        self$`volume_token_1` <- this_object$`volume_token_1`
      }
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`fee_growth_outside_0x128`)) {
        self$`fee_growth_outside_0x128` <- this_object$`fee_growth_outside_0x128`
      }
      if (!is.null(this_object$`fee_growth_outside_1x128`)) {
        self$`fee_growth_outside_1x128` <- this_object$`fee_growth_outside_1x128`
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
    #' @return UniswapV3TickDayDataDTO in JSON format
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
        if (!is.null(self$`pool`)) {
          sprintf(
          '"pool":
            "%s"
                    ',
          self$`pool`
          )
        },
        if (!is.null(self$`tick`)) {
          sprintf(
          '"tick":
            "%s"
                    ',
          self$`tick`
          )
        },
        if (!is.null(self$`liquidity_gross`)) {
          sprintf(
          '"liquidity_gross":
            "%s"
                    ',
          self$`liquidity_gross`
          )
        },
        if (!is.null(self$`liquidity_net`)) {
          sprintf(
          '"liquidity_net":
            "%s"
                    ',
          self$`liquidity_net`
          )
        },
        if (!is.null(self$`volume_token_0`)) {
          sprintf(
          '"volume_token_0":
            "%s"
                    ',
          self$`volume_token_0`
          )
        },
        if (!is.null(self$`volume_token_1`)) {
          sprintf(
          '"volume_token_1":
            "%s"
                    ',
          self$`volume_token_1`
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
        if (!is.null(self$`fees_usd`)) {
          sprintf(
          '"fees_usd":
            "%s"
                    ',
          self$`fees_usd`
          )
        },
        if (!is.null(self$`fee_growth_outside_0x128`)) {
          sprintf(
          '"fee_growth_outside_0x128":
            "%s"
                    ',
          self$`fee_growth_outside_0x128`
          )
        },
        if (!is.null(self$`fee_growth_outside_1x128`)) {
          sprintf(
          '"fee_growth_outside_1x128":
            "%s"
                    ',
          self$`fee_growth_outside_1x128`
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
    #' Deserialize JSON string into an instance of UniswapV3TickDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TickDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TickDayDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`pool` <- this_object$`pool`
      self$`tick` <- this_object$`tick`
      self$`liquidity_gross` <- this_object$`liquidity_gross`
      self$`liquidity_net` <- this_object$`liquidity_net`
      self$`volume_token_0` <- this_object$`volume_token_0`
      self$`volume_token_1` <- this_object$`volume_token_1`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`fee_growth_outside_0x128` <- this_object$`fee_growth_outside_0x128`
      self$`fee_growth_outside_1x128` <- this_object$`fee_growth_outside_1x128`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV3TickDayDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3TickDayDataDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3TickDayDataDTO
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
# UniswapV3TickDayDataDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3TickDayDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3TickDayDataDTO$lock()

