#' Create a new UniswapV2UniswapDayDataDTO
#'
#' @description
#' Tracks data across all pairs aggregated into a daily bucket.
#'
#' @docType class
#' @title UniswapV2UniswapDayDataDTO
#' @description UniswapV2UniswapDayDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Unix timestamp for start of day / 86400 giving a unique day index. character [optional]
#' @field date Unix timestamp for start of day. integer [optional]
#' @field daily_volume_eth Total volume across all pairs on this day, stored as a derived amount of ETH. character [optional]
#' @field daily_volume_usd Total volume across all pairs on this day, stored as a derived amount of USD. character [optional]
#' @field daily_volume_untracked Total volume across all pairs on this day, untracked. character [optional]
#' @field total_volume_eth All time volume across all pairs in ETH up to and including this day. character [optional]
#' @field total_liquidity_eth Total liquidity across all pairs in ETH up to and including this day. character [optional]
#' @field total_volume_usd All time volume across all pairs in USD up to and including this day. character [optional]
#' @field total_liquidity_usd Total liquidity across all pairs in USD up to and including this day. character [optional]
#' @field tx_count Number of transactions throughout this day. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2UniswapDayDataDTO <- R6::R6Class(
  "UniswapV2UniswapDayDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `date` = NULL,
    `daily_volume_eth` = NULL,
    `daily_volume_usd` = NULL,
    `daily_volume_untracked` = NULL,
    `total_volume_eth` = NULL,
    `total_liquidity_eth` = NULL,
    `total_volume_usd` = NULL,
    `total_liquidity_usd` = NULL,
    `tx_count` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV2UniswapDayDataDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2UniswapDayDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Unix timestamp for start of day / 86400 giving a unique day index.
    #' @param date Unix timestamp for start of day.
    #' @param daily_volume_eth Total volume across all pairs on this day, stored as a derived amount of ETH.
    #' @param daily_volume_usd Total volume across all pairs on this day, stored as a derived amount of USD.
    #' @param daily_volume_untracked Total volume across all pairs on this day, untracked.
    #' @param total_volume_eth All time volume across all pairs in ETH up to and including this day.
    #' @param total_liquidity_eth Total liquidity across all pairs in ETH up to and including this day.
    #' @param total_volume_usd All time volume across all pairs in USD up to and including this day.
    #' @param total_liquidity_usd Total liquidity across all pairs in USD up to and including this day.
    #' @param tx_count Number of transactions throughout this day.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `date` = NULL, `daily_volume_eth` = NULL, `daily_volume_usd` = NULL, `daily_volume_untracked` = NULL, `total_volume_eth` = NULL, `total_liquidity_eth` = NULL, `total_volume_usd` = NULL, `total_liquidity_usd` = NULL, `tx_count` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`daily_volume_untracked`)) {
        if (!(is.character(`daily_volume_untracked`) && length(`daily_volume_untracked`) == 1)) {
          stop(paste("Error! Invalid data for `daily_volume_untracked`. Must be a string:", `daily_volume_untracked`))
        }
        self$`daily_volume_untracked` <- `daily_volume_untracked`
      }
      if (!is.null(`total_volume_eth`)) {
        if (!(is.character(`total_volume_eth`) && length(`total_volume_eth`) == 1)) {
          stop(paste("Error! Invalid data for `total_volume_eth`. Must be a string:", `total_volume_eth`))
        }
        self$`total_volume_eth` <- `total_volume_eth`
      }
      if (!is.null(`total_liquidity_eth`)) {
        if (!(is.character(`total_liquidity_eth`) && length(`total_liquidity_eth`) == 1)) {
          stop(paste("Error! Invalid data for `total_liquidity_eth`. Must be a string:", `total_liquidity_eth`))
        }
        self$`total_liquidity_eth` <- `total_liquidity_eth`
      }
      if (!is.null(`total_volume_usd`)) {
        if (!(is.character(`total_volume_usd`) && length(`total_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `total_volume_usd`. Must be a string:", `total_volume_usd`))
        }
        self$`total_volume_usd` <- `total_volume_usd`
      }
      if (!is.null(`total_liquidity_usd`)) {
        if (!(is.character(`total_liquidity_usd`) && length(`total_liquidity_usd`) == 1)) {
          stop(paste("Error! Invalid data for `total_liquidity_usd`. Must be a string:", `total_liquidity_usd`))
        }
        self$`total_liquidity_usd` <- `total_liquidity_usd`
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
    #' @return UniswapV2UniswapDayDataDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2UniswapDayDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2UniswapDayDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2UniswapDayDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2UniswapDayDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV2UniswapDayDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        UniswapV2UniswapDayDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`daily_volume_eth`)) {
        UniswapV2UniswapDayDataDTOObject[["daily_volume_eth"]] <-
          self$`daily_volume_eth`
      }
      if (!is.null(self$`daily_volume_usd`)) {
        UniswapV2UniswapDayDataDTOObject[["daily_volume_usd"]] <-
          self$`daily_volume_usd`
      }
      if (!is.null(self$`daily_volume_untracked`)) {
        UniswapV2UniswapDayDataDTOObject[["daily_volume_untracked"]] <-
          self$`daily_volume_untracked`
      }
      if (!is.null(self$`total_volume_eth`)) {
        UniswapV2UniswapDayDataDTOObject[["total_volume_eth"]] <-
          self$`total_volume_eth`
      }
      if (!is.null(self$`total_liquidity_eth`)) {
        UniswapV2UniswapDayDataDTOObject[["total_liquidity_eth"]] <-
          self$`total_liquidity_eth`
      }
      if (!is.null(self$`total_volume_usd`)) {
        UniswapV2UniswapDayDataDTOObject[["total_volume_usd"]] <-
          self$`total_volume_usd`
      }
      if (!is.null(self$`total_liquidity_usd`)) {
        UniswapV2UniswapDayDataDTOObject[["total_liquidity_usd"]] <-
          self$`total_liquidity_usd`
      }
      if (!is.null(self$`tx_count`)) {
        UniswapV2UniswapDayDataDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2UniswapDayDataDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV2UniswapDayDataDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2UniswapDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2UniswapDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2UniswapDayDataDTO
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
      if (!is.null(this_object$`daily_volume_eth`)) {
        self$`daily_volume_eth` <- this_object$`daily_volume_eth`
      }
      if (!is.null(this_object$`daily_volume_usd`)) {
        self$`daily_volume_usd` <- this_object$`daily_volume_usd`
      }
      if (!is.null(this_object$`daily_volume_untracked`)) {
        self$`daily_volume_untracked` <- this_object$`daily_volume_untracked`
      }
      if (!is.null(this_object$`total_volume_eth`)) {
        self$`total_volume_eth` <- this_object$`total_volume_eth`
      }
      if (!is.null(this_object$`total_liquidity_eth`)) {
        self$`total_liquidity_eth` <- this_object$`total_liquidity_eth`
      }
      if (!is.null(this_object$`total_volume_usd`)) {
        self$`total_volume_usd` <- this_object$`total_volume_usd`
      }
      if (!is.null(this_object$`total_liquidity_usd`)) {
        self$`total_liquidity_usd` <- this_object$`total_liquidity_usd`
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
    #' @return UniswapV2UniswapDayDataDTO in JSON format
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
        if (!is.null(self$`daily_volume_untracked`)) {
          sprintf(
          '"daily_volume_untracked":
            "%s"
                    ',
          self$`daily_volume_untracked`
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
        if (!is.null(self$`total_liquidity_eth`)) {
          sprintf(
          '"total_liquidity_eth":
            "%s"
                    ',
          self$`total_liquidity_eth`
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
        if (!is.null(self$`total_liquidity_usd`)) {
          sprintf(
          '"total_liquidity_usd":
            "%s"
                    ',
          self$`total_liquidity_usd`
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
    #' Deserialize JSON string into an instance of UniswapV2UniswapDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2UniswapDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2UniswapDayDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`daily_volume_eth` <- this_object$`daily_volume_eth`
      self$`daily_volume_usd` <- this_object$`daily_volume_usd`
      self$`daily_volume_untracked` <- this_object$`daily_volume_untracked`
      self$`total_volume_eth` <- this_object$`total_volume_eth`
      self$`total_liquidity_eth` <- this_object$`total_liquidity_eth`
      self$`total_volume_usd` <- this_object$`total_volume_usd`
      self$`total_liquidity_usd` <- this_object$`total_liquidity_usd`
      self$`tx_count` <- this_object$`tx_count`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV2UniswapDayDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2UniswapDayDataDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2UniswapDayDataDTO
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
# UniswapV2UniswapDayDataDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2UniswapDayDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2UniswapDayDataDTO$lock()

