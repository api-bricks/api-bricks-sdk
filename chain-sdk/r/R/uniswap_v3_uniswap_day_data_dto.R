#' Create a new UniswapV3UniswapDayDataDTO
#'
#' @description
#' Data accumulated and condensed into day stats for all of Uniswap.
#'
#' @docType class
#' @title UniswapV3UniswapDayDataDTO
#' @description UniswapV3UniswapDayDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field vid  integer [optional]
#' @field id Timestamp rounded to current day by dividing by 86400. character [optional]
#' @field date Timestamp rounded to current day by dividing by 86400. integer [optional]
#' @field volume_eth Total volume across all pairs on this day, stored as a derived amount of ETH. character [optional]
#' @field volume_usd Total volume across all pairs on this day, stored as a derived amount of USD. character [optional]
#' @field volume_usd_untracked Total daily volume in Uniswap derived in terms of USD untracked. character [optional]
#' @field fees_usd Fees in USD character [optional]
#' @field tx_count  \link{NumericsBigInteger} [optional]
#' @field tvl_usd Tvl in terms of USD. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3UniswapDayDataDTO <- R6::R6Class(
  "UniswapV3UniswapDayDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `id` = NULL,
    `date` = NULL,
    `volume_eth` = NULL,
    `volume_usd` = NULL,
    `volume_usd_untracked` = NULL,
    `fees_usd` = NULL,
    `tx_count` = NULL,
    `tvl_usd` = NULL,
    #' Initialize a new UniswapV3UniswapDayDataDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3UniswapDayDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param vid 
    #' @param id Timestamp rounded to current day by dividing by 86400.
    #' @param date Timestamp rounded to current day by dividing by 86400.
    #' @param volume_eth Total volume across all pairs on this day, stored as a derived amount of ETH.
    #' @param volume_usd Total volume across all pairs on this day, stored as a derived amount of USD.
    #' @param volume_usd_untracked Total daily volume in Uniswap derived in terms of USD untracked.
    #' @param fees_usd Fees in USD
    #' @param tx_count tx_count
    #' @param tvl_usd Tvl in terms of USD.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `date` = NULL, `volume_eth` = NULL, `volume_usd` = NULL, `volume_usd_untracked` = NULL, `fees_usd` = NULL, `tx_count` = NULL, `tvl_usd` = NULL, ...) {
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
      if (!is.null(`vid`)) {
        if (!(is.numeric(`vid`) && length(`vid`) == 1)) {
          stop(paste("Error! Invalid data for `vid`. Must be an integer:", `vid`))
        }
        self$`vid` <- `vid`
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
      if (!is.null(`volume_usd_untracked`)) {
        if (!(is.character(`volume_usd_untracked`) && length(`volume_usd_untracked`) == 1)) {
          stop(paste("Error! Invalid data for `volume_usd_untracked`. Must be a string:", `volume_usd_untracked`))
        }
        self$`volume_usd_untracked` <- `volume_usd_untracked`
      }
      if (!is.null(`fees_usd`)) {
        if (!(is.character(`fees_usd`) && length(`fees_usd`) == 1)) {
          stop(paste("Error! Invalid data for `fees_usd`. Must be a string:", `fees_usd`))
        }
        self$`fees_usd` <- `fees_usd`
      }
      if (!is.null(`tx_count`)) {
        stopifnot(R6::is.R6(`tx_count`))
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`tvl_usd`)) {
        if (!(is.character(`tvl_usd`) && length(`tvl_usd`) == 1)) {
          stop(paste("Error! Invalid data for `tvl_usd`. Must be a string:", `tvl_usd`))
        }
        self$`tvl_usd` <- `tvl_usd`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3UniswapDayDataDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3UniswapDayDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3UniswapDayDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3UniswapDayDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3UniswapDayDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3UniswapDayDataDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        UniswapV3UniswapDayDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        UniswapV3UniswapDayDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`volume_eth`)) {
        UniswapV3UniswapDayDataDTOObject[["volume_eth"]] <-
          self$`volume_eth`
      }
      if (!is.null(self$`volume_usd`)) {
        UniswapV3UniswapDayDataDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`volume_usd_untracked`)) {
        UniswapV3UniswapDayDataDTOObject[["volume_usd_untracked"]] <-
          self$`volume_usd_untracked`
      }
      if (!is.null(self$`fees_usd`)) {
        UniswapV3UniswapDayDataDTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`tx_count`)) {
        UniswapV3UniswapDayDataDTOObject[["tx_count"]] <-
          self$`tx_count`$toJSON()
      }
      if (!is.null(self$`tvl_usd`)) {
        UniswapV3UniswapDayDataDTOObject[["tvl_usd"]] <-
          self$`tvl_usd`
      }
      UniswapV3UniswapDayDataDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3UniswapDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3UniswapDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3UniswapDayDataDTO
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
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`volume_eth`)) {
        self$`volume_eth` <- this_object$`volume_eth`
      }
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`volume_usd_untracked`)) {
        self$`volume_usd_untracked` <- this_object$`volume_usd_untracked`
      }
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        `tx_count_object` <- NumericsBigInteger$new()
        `tx_count_object`$fromJSON(jsonlite::toJSON(this_object$`tx_count`, auto_unbox = TRUE, digits = NA))
        self$`tx_count` <- `tx_count_object`
      }
      if (!is.null(this_object$`tvl_usd`)) {
        self$`tvl_usd` <- this_object$`tvl_usd`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3UniswapDayDataDTO in JSON format
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
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
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
        if (!is.null(self$`volume_usd_untracked`)) {
          sprintf(
          '"volume_usd_untracked":
            "%s"
                    ',
          self$`volume_usd_untracked`
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
        if (!is.null(self$`tx_count`)) {
          sprintf(
          '"tx_count":
          %s
          ',
          jsonlite::toJSON(self$`tx_count`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`tvl_usd`)) {
          sprintf(
          '"tvl_usd":
            "%s"
                    ',
          self$`tvl_usd`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UniswapV3UniswapDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3UniswapDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3UniswapDayDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`volume_eth` <- this_object$`volume_eth`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`volume_usd_untracked` <- this_object$`volume_usd_untracked`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`tx_count` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`tx_count`, auto_unbox = TRUE, digits = NA))
      self$`tvl_usd` <- this_object$`tvl_usd`
      self
    },
    #' Validate JSON input with respect to UniswapV3UniswapDayDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3UniswapDayDataDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3UniswapDayDataDTO
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
# UniswapV3UniswapDayDataDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3UniswapDayDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3UniswapDayDataDTO$lock()

