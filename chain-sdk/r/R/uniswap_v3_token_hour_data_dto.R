#' Create a new UniswapV3TokenHourDataDTO
#'
#' @description
#' Token data aggregated across all pairs that include token.
#'
#' @docType class
#' @title UniswapV3TokenHourDataDTO
#' @description UniswapV3TokenHourDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Token address concatendated with date. character [optional]
#' @field period_start_unix Unix timestamp for start of hour. integer [optional]
#' @field token Pointer to token. character [optional]
#' @field volume Volume in token units. character [optional]
#' @field volume_usd Volume in derived USD. character [optional]
#' @field untracked_volume_usd Volume in USD even on pools with less reliable USD values. character [optional]
#' @field total_value_locked Liquidity across all pools in token units. character [optional]
#' @field total_value_locked_usd Liquidity across all pools in derived USD. character [optional]
#' @field price_usd Price at end of period in USD. character [optional]
#' @field fees_usd Fees in USD. character [optional]
#' @field open Opening price USD. character [optional]
#' @field high High price USD. character [optional]
#' @field low Low price USD. character [optional]
#' @field close Close price USD. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3TokenHourDataDTO <- R6::R6Class(
  "UniswapV3TokenHourDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `period_start_unix` = NULL,
    `token` = NULL,
    `volume` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `total_value_locked` = NULL,
    `total_value_locked_usd` = NULL,
    `price_usd` = NULL,
    `fees_usd` = NULL,
    `open` = NULL,
    `high` = NULL,
    `low` = NULL,
    `close` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV3TokenHourDataDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3TokenHourDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Token address concatendated with date.
    #' @param period_start_unix Unix timestamp for start of hour.
    #' @param token Pointer to token.
    #' @param volume Volume in token units.
    #' @param volume_usd Volume in derived USD.
    #' @param untracked_volume_usd Volume in USD even on pools with less reliable USD values.
    #' @param total_value_locked Liquidity across all pools in token units.
    #' @param total_value_locked_usd Liquidity across all pools in derived USD.
    #' @param price_usd Price at end of period in USD.
    #' @param fees_usd Fees in USD.
    #' @param open Opening price USD.
    #' @param high High price USD.
    #' @param low Low price USD.
    #' @param close Close price USD.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `period_start_unix` = NULL, `token` = NULL, `volume` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `total_value_locked` = NULL, `total_value_locked_usd` = NULL, `price_usd` = NULL, `fees_usd` = NULL, `open` = NULL, `high` = NULL, `low` = NULL, `close` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`period_start_unix`)) {
        if (!(is.numeric(`period_start_unix`) && length(`period_start_unix`) == 1)) {
          stop(paste("Error! Invalid data for `period_start_unix`. Must be an integer:", `period_start_unix`))
        }
        self$`period_start_unix` <- `period_start_unix`
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
      if (!is.null(`volume_usd`)) {
        if (!(is.character(`volume_usd`) && length(`volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_usd`. Must be a string:", `volume_usd`))
        }
        self$`volume_usd` <- `volume_usd`
      }
      if (!is.null(`untracked_volume_usd`)) {
        if (!(is.character(`untracked_volume_usd`) && length(`untracked_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `untracked_volume_usd`. Must be a string:", `untracked_volume_usd`))
        }
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`total_value_locked`)) {
        if (!(is.character(`total_value_locked`) && length(`total_value_locked`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked`. Must be a string:", `total_value_locked`))
        }
        self$`total_value_locked` <- `total_value_locked`
      }
      if (!is.null(`total_value_locked_usd`)) {
        if (!(is.character(`total_value_locked_usd`) && length(`total_value_locked_usd`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_usd`. Must be a string:", `total_value_locked_usd`))
        }
        self$`total_value_locked_usd` <- `total_value_locked_usd`
      }
      if (!is.null(`price_usd`)) {
        if (!(is.character(`price_usd`) && length(`price_usd`) == 1)) {
          stop(paste("Error! Invalid data for `price_usd`. Must be a string:", `price_usd`))
        }
        self$`price_usd` <- `price_usd`
      }
      if (!is.null(`fees_usd`)) {
        if (!(is.character(`fees_usd`) && length(`fees_usd`) == 1)) {
          stop(paste("Error! Invalid data for `fees_usd`. Must be a string:", `fees_usd`))
        }
        self$`fees_usd` <- `fees_usd`
      }
      if (!is.null(`open`)) {
        if (!(is.character(`open`) && length(`open`) == 1)) {
          stop(paste("Error! Invalid data for `open`. Must be a string:", `open`))
        }
        self$`open` <- `open`
      }
      if (!is.null(`high`)) {
        if (!(is.character(`high`) && length(`high`) == 1)) {
          stop(paste("Error! Invalid data for `high`. Must be a string:", `high`))
        }
        self$`high` <- `high`
      }
      if (!is.null(`low`)) {
        if (!(is.character(`low`) && length(`low`) == 1)) {
          stop(paste("Error! Invalid data for `low`. Must be a string:", `low`))
        }
        self$`low` <- `low`
      }
      if (!is.null(`close`)) {
        if (!(is.character(`close`) && length(`close`) == 1)) {
          stop(paste("Error! Invalid data for `close`. Must be a string:", `close`))
        }
        self$`close` <- `close`
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
    #' @return UniswapV3TokenHourDataDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3TokenHourDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3TokenHourDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3TokenHourDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3TokenHourDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV3TokenHourDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`period_start_unix`)) {
        UniswapV3TokenHourDataDTOObject[["period_start_unix"]] <-
          self$`period_start_unix`
      }
      if (!is.null(self$`token`)) {
        UniswapV3TokenHourDataDTOObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`volume`)) {
        UniswapV3TokenHourDataDTOObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`volume_usd`)) {
        UniswapV3TokenHourDataDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        UniswapV3TokenHourDataDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`total_value_locked`)) {
        UniswapV3TokenHourDataDTOObject[["total_value_locked"]] <-
          self$`total_value_locked`
      }
      if (!is.null(self$`total_value_locked_usd`)) {
        UniswapV3TokenHourDataDTOObject[["total_value_locked_usd"]] <-
          self$`total_value_locked_usd`
      }
      if (!is.null(self$`price_usd`)) {
        UniswapV3TokenHourDataDTOObject[["price_usd"]] <-
          self$`price_usd`
      }
      if (!is.null(self$`fees_usd`)) {
        UniswapV3TokenHourDataDTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`open`)) {
        UniswapV3TokenHourDataDTOObject[["open"]] <-
          self$`open`
      }
      if (!is.null(self$`high`)) {
        UniswapV3TokenHourDataDTOObject[["high"]] <-
          self$`high`
      }
      if (!is.null(self$`low`)) {
        UniswapV3TokenHourDataDTOObject[["low"]] <-
          self$`low`
      }
      if (!is.null(self$`close`)) {
        UniswapV3TokenHourDataDTOObject[["close"]] <-
          self$`close`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3TokenHourDataDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV3TokenHourDataDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3TokenHourDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TokenHourDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TokenHourDataDTO
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
      if (!is.null(this_object$`period_start_unix`)) {
        self$`period_start_unix` <- this_object$`period_start_unix`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`volume`)) {
        self$`volume` <- this_object$`volume`
      }
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`total_value_locked`)) {
        self$`total_value_locked` <- this_object$`total_value_locked`
      }
      if (!is.null(this_object$`total_value_locked_usd`)) {
        self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      }
      if (!is.null(this_object$`price_usd`)) {
        self$`price_usd` <- this_object$`price_usd`
      }
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`open`)) {
        self$`open` <- this_object$`open`
      }
      if (!is.null(this_object$`high`)) {
        self$`high` <- this_object$`high`
      }
      if (!is.null(this_object$`low`)) {
        self$`low` <- this_object$`low`
      }
      if (!is.null(this_object$`close`)) {
        self$`close` <- this_object$`close`
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
    #' @return UniswapV3TokenHourDataDTO in JSON format
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
        if (!is.null(self$`period_start_unix`)) {
          sprintf(
          '"period_start_unix":
            %d
                    ',
          self$`period_start_unix`
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
        if (!is.null(self$`volume_usd`)) {
          sprintf(
          '"volume_usd":
            "%s"
                    ',
          self$`volume_usd`
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
        if (!is.null(self$`total_value_locked`)) {
          sprintf(
          '"total_value_locked":
            "%s"
                    ',
          self$`total_value_locked`
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
        if (!is.null(self$`price_usd`)) {
          sprintf(
          '"price_usd":
            "%s"
                    ',
          self$`price_usd`
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
        if (!is.null(self$`open`)) {
          sprintf(
          '"open":
            "%s"
                    ',
          self$`open`
          )
        },
        if (!is.null(self$`high`)) {
          sprintf(
          '"high":
            "%s"
                    ',
          self$`high`
          )
        },
        if (!is.null(self$`low`)) {
          sprintf(
          '"low":
            "%s"
                    ',
          self$`low`
          )
        },
        if (!is.null(self$`close`)) {
          sprintf(
          '"close":
            "%s"
                    ',
          self$`close`
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
    #' Deserialize JSON string into an instance of UniswapV3TokenHourDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TokenHourDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TokenHourDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`period_start_unix` <- this_object$`period_start_unix`
      self$`token` <- this_object$`token`
      self$`volume` <- this_object$`volume`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`total_value_locked` <- this_object$`total_value_locked`
      self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      self$`price_usd` <- this_object$`price_usd`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`open` <- this_object$`open`
      self$`high` <- this_object$`high`
      self$`low` <- this_object$`low`
      self$`close` <- this_object$`close`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV3TokenHourDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3TokenHourDataDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3TokenHourDataDTO
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
# UniswapV3TokenHourDataDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3TokenHourDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3TokenHourDataDTO$lock()

