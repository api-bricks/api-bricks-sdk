#' Create a new SushiswapHourDataDTO
#'
#' @description
#' SushiswapHourDataDTO Class
#'
#' @docType class
#' @title SushiswapHourDataDTO
#' @description SushiswapHourDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Start of hour timestamp. character [optional]
#' @field date  integer [optional]
#' @field factory  character [optional]
#' @field volume_eth  character [optional]
#' @field volume_usd  character [optional]
#' @field untracked_volume  character [optional]
#' @field liquidity_eth  character [optional]
#' @field liquidity_usd  character [optional]
#' @field tx_count  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SushiswapHourDataDTO <- R6::R6Class(
  "SushiswapHourDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `date` = NULL,
    `factory` = NULL,
    `volume_eth` = NULL,
    `volume_usd` = NULL,
    `untracked_volume` = NULL,
    `liquidity_eth` = NULL,
    `liquidity_usd` = NULL,
    `tx_count` = NULL,
    `vid` = NULL,
    #' Initialize a new SushiswapHourDataDTO class.
    #'
    #' @description
    #' Initialize a new SushiswapHourDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Start of hour timestamp.
    #' @param date 
    #' @param factory 
    #' @param volume_eth 
    #' @param volume_usd 
    #' @param untracked_volume 
    #' @param liquidity_eth 
    #' @param liquidity_usd 
    #' @param tx_count 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `date` = NULL, `factory` = NULL, `volume_eth` = NULL, `volume_usd` = NULL, `untracked_volume` = NULL, `liquidity_eth` = NULL, `liquidity_usd` = NULL, `tx_count` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`factory`)) {
        if (!(is.character(`factory`) && length(`factory`) == 1)) {
          stop(paste("Error! Invalid data for `factory`. Must be a string:", `factory`))
        }
        self$`factory` <- `factory`
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
      if (!is.null(`untracked_volume`)) {
        if (!(is.character(`untracked_volume`) && length(`untracked_volume`) == 1)) {
          stop(paste("Error! Invalid data for `untracked_volume`. Must be a string:", `untracked_volume`))
        }
        self$`untracked_volume` <- `untracked_volume`
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
    #' @return SushiswapHourDataDTO in JSON format
    #' @export
    toJSON = function() {
      SushiswapHourDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SushiswapHourDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SushiswapHourDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SushiswapHourDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SushiswapHourDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        SushiswapHourDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`factory`)) {
        SushiswapHourDataDTOObject[["factory"]] <-
          self$`factory`
      }
      if (!is.null(self$`volume_eth`)) {
        SushiswapHourDataDTOObject[["volume_eth"]] <-
          self$`volume_eth`
      }
      if (!is.null(self$`volume_usd`)) {
        SushiswapHourDataDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume`)) {
        SushiswapHourDataDTOObject[["untracked_volume"]] <-
          self$`untracked_volume`
      }
      if (!is.null(self$`liquidity_eth`)) {
        SushiswapHourDataDTOObject[["liquidity_eth"]] <-
          self$`liquidity_eth`
      }
      if (!is.null(self$`liquidity_usd`)) {
        SushiswapHourDataDTOObject[["liquidity_usd"]] <-
          self$`liquidity_usd`
      }
      if (!is.null(self$`tx_count`)) {
        SushiswapHourDataDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`vid`)) {
        SushiswapHourDataDTOObject[["vid"]] <-
          self$`vid`
      }
      SushiswapHourDataDTOObject
    },
    #' Deserialize JSON string into an instance of SushiswapHourDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapHourDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapHourDataDTO
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
      if (!is.null(this_object$`factory`)) {
        self$`factory` <- this_object$`factory`
      }
      if (!is.null(this_object$`volume_eth`)) {
        self$`volume_eth` <- this_object$`volume_eth`
      }
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`untracked_volume`)) {
        self$`untracked_volume` <- this_object$`untracked_volume`
      }
      if (!is.null(this_object$`liquidity_eth`)) {
        self$`liquidity_eth` <- this_object$`liquidity_eth`
      }
      if (!is.null(this_object$`liquidity_usd`)) {
        self$`liquidity_usd` <- this_object$`liquidity_usd`
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
    #' @return SushiswapHourDataDTO in JSON format
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
        if (!is.null(self$`factory`)) {
          sprintf(
          '"factory":
            "%s"
                    ',
          self$`factory`
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
        if (!is.null(self$`untracked_volume`)) {
          sprintf(
          '"untracked_volume":
            "%s"
                    ',
          self$`untracked_volume`
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
    #' Deserialize JSON string into an instance of SushiswapHourDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapHourDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapHourDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`factory` <- this_object$`factory`
      self$`volume_eth` <- this_object$`volume_eth`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume` <- this_object$`untracked_volume`
      self$`liquidity_eth` <- this_object$`liquidity_eth`
      self$`liquidity_usd` <- this_object$`liquidity_usd`
      self$`tx_count` <- this_object$`tx_count`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to SushiswapHourDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to SushiswapHourDataDTO and throw an exception if invalid
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
    #' @return String representation of SushiswapHourDataDTO
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
# SushiswapHourDataDTO$unlock()
#
## Below is an example to define the print function
# SushiswapHourDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SushiswapHourDataDTO$lock()

