#' Create a new SushiswapPairHourDataDTO
#'
#' @description
#' Tracks pair data across each hour.
#'
#' @docType class
#' @title SushiswapPairHourDataDTO
#' @description SushiswapPairHourDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, format: (pair id)-(hour start timestamp). character [optional]
#' @field date Hour start timestamp. integer [optional]
#' @field pair Reference to pair. character [optional]
#' @field reserve_0 Reserve of token0 (updated during each transaction on pair). character [optional]
#' @field reserve_1 Reserve of token1 (updated during each transaction on pair). character [optional]
#' @field reserve_usd Reserve of token0 plus token1 stored as a derived USD amount. character [optional]
#' @field volume_token_0 Total amount of token0 swapped throughout hour. character [optional]
#' @field volume_token_1 Total amount of token1 swapped throughout hour. character [optional]
#' @field volume_usd Total volume within pair throughout hour. character [optional]
#' @field tx_count Amount of transactions on pair throughout hour. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SushiswapPairHourDataDTO <- R6::R6Class(
  "SushiswapPairHourDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `date` = NULL,
    `pair` = NULL,
    `reserve_0` = NULL,
    `reserve_1` = NULL,
    `reserve_usd` = NULL,
    `volume_token_0` = NULL,
    `volume_token_1` = NULL,
    `volume_usd` = NULL,
    `tx_count` = NULL,
    `vid` = NULL,
    #' Initialize a new SushiswapPairHourDataDTO class.
    #'
    #' @description
    #' Initialize a new SushiswapPairHourDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, format: (pair id)-(hour start timestamp).
    #' @param date Hour start timestamp.
    #' @param pair Reference to pair.
    #' @param reserve_0 Reserve of token0 (updated during each transaction on pair).
    #' @param reserve_1 Reserve of token1 (updated during each transaction on pair).
    #' @param reserve_usd Reserve of token0 plus token1 stored as a derived USD amount.
    #' @param volume_token_0 Total amount of token0 swapped throughout hour.
    #' @param volume_token_1 Total amount of token1 swapped throughout hour.
    #' @param volume_usd Total volume within pair throughout hour.
    #' @param tx_count Amount of transactions on pair throughout hour.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `date` = NULL, `pair` = NULL, `reserve_0` = NULL, `reserve_1` = NULL, `reserve_usd` = NULL, `volume_token_0` = NULL, `volume_token_1` = NULL, `volume_usd` = NULL, `tx_count` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`reserve_usd`)) {
        if (!(is.character(`reserve_usd`) && length(`reserve_usd`) == 1)) {
          stop(paste("Error! Invalid data for `reserve_usd`. Must be a string:", `reserve_usd`))
        }
        self$`reserve_usd` <- `reserve_usd`
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
    #' @return SushiswapPairHourDataDTO in JSON format
    #' @export
    toJSON = function() {
      SushiswapPairHourDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SushiswapPairHourDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SushiswapPairHourDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SushiswapPairHourDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SushiswapPairHourDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        SushiswapPairHourDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`pair`)) {
        SushiswapPairHourDataDTOObject[["pair"]] <-
          self$`pair`
      }
      if (!is.null(self$`reserve_0`)) {
        SushiswapPairHourDataDTOObject[["reserve_0"]] <-
          self$`reserve_0`
      }
      if (!is.null(self$`reserve_1`)) {
        SushiswapPairHourDataDTOObject[["reserve_1"]] <-
          self$`reserve_1`
      }
      if (!is.null(self$`reserve_usd`)) {
        SushiswapPairHourDataDTOObject[["reserve_usd"]] <-
          self$`reserve_usd`
      }
      if (!is.null(self$`volume_token_0`)) {
        SushiswapPairHourDataDTOObject[["volume_token_0"]] <-
          self$`volume_token_0`
      }
      if (!is.null(self$`volume_token_1`)) {
        SushiswapPairHourDataDTOObject[["volume_token_1"]] <-
          self$`volume_token_1`
      }
      if (!is.null(self$`volume_usd`)) {
        SushiswapPairHourDataDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`tx_count`)) {
        SushiswapPairHourDataDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`vid`)) {
        SushiswapPairHourDataDTOObject[["vid"]] <-
          self$`vid`
      }
      SushiswapPairHourDataDTOObject
    },
    #' Deserialize JSON string into an instance of SushiswapPairHourDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapPairHourDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapPairHourDataDTO
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
      if (!is.null(this_object$`pair`)) {
        self$`pair` <- this_object$`pair`
      }
      if (!is.null(this_object$`reserve_0`)) {
        self$`reserve_0` <- this_object$`reserve_0`
      }
      if (!is.null(this_object$`reserve_1`)) {
        self$`reserve_1` <- this_object$`reserve_1`
      }
      if (!is.null(this_object$`reserve_usd`)) {
        self$`reserve_usd` <- this_object$`reserve_usd`
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
    #' @return SushiswapPairHourDataDTO in JSON format
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
        if (!is.null(self$`reserve_usd`)) {
          sprintf(
          '"reserve_usd":
            "%s"
                    ',
          self$`reserve_usd`
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
    #' Deserialize JSON string into an instance of SushiswapPairHourDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapPairHourDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapPairHourDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`pair` <- this_object$`pair`
      self$`reserve_0` <- this_object$`reserve_0`
      self$`reserve_1` <- this_object$`reserve_1`
      self$`reserve_usd` <- this_object$`reserve_usd`
      self$`volume_token_0` <- this_object$`volume_token_0`
      self$`volume_token_1` <- this_object$`volume_token_1`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`tx_count` <- this_object$`tx_count`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to SushiswapPairHourDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to SushiswapPairHourDataDTO and throw an exception if invalid
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
    #' @return String representation of SushiswapPairHourDataDTO
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
# SushiswapPairHourDataDTO$unlock()
#
## Below is an example to define the print function
# SushiswapPairHourDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SushiswapPairHourDataDTO$lock()

