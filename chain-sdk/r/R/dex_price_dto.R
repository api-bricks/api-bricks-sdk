#' Create a new DexPriceDTO
#'
#' @description
#' Token price in conjuction with batch id.
#'
#' @docType class
#' @title DexPriceDTO
#' @description DexPriceDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, format: (token id)-(batch id). character [optional]
#' @field token Token identifier. character [optional]
#' @field batch_id Batch identifier. character [optional]
#' @field price_in_owl_numerator Price enumerator in OWL (derivative of the GNO token). character [optional]
#' @field price_in_owl_denominator Price denominator in OWL (derivative of the GNO token). character [optional]
#' @field volume Volume. character [optional]
#' @field create_epoch Create epoch. character [optional]
#' @field tx_hash Transaction hash. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DexPriceDTO <- R6::R6Class(
  "DexPriceDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `token` = NULL,
    `batch_id` = NULL,
    `price_in_owl_numerator` = NULL,
    `price_in_owl_denominator` = NULL,
    `volume` = NULL,
    `create_epoch` = NULL,
    `tx_hash` = NULL,
    `vid` = NULL,
    #' Initialize a new DexPriceDTO class.
    #'
    #' @description
    #' Initialize a new DexPriceDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, format: (token id)-(batch id).
    #' @param token Token identifier.
    #' @param batch_id Batch identifier.
    #' @param price_in_owl_numerator Price enumerator in OWL (derivative of the GNO token).
    #' @param price_in_owl_denominator Price denominator in OWL (derivative of the GNO token).
    #' @param volume Volume.
    #' @param create_epoch Create epoch.
    #' @param tx_hash Transaction hash.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `token` = NULL, `batch_id` = NULL, `price_in_owl_numerator` = NULL, `price_in_owl_denominator` = NULL, `volume` = NULL, `create_epoch` = NULL, `tx_hash` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
      if (!is.null(`batch_id`)) {
        if (!(is.character(`batch_id`) && length(`batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `batch_id`. Must be a string:", `batch_id`))
        }
        self$`batch_id` <- `batch_id`
      }
      if (!is.null(`price_in_owl_numerator`)) {
        if (!(is.character(`price_in_owl_numerator`) && length(`price_in_owl_numerator`) == 1)) {
          stop(paste("Error! Invalid data for `price_in_owl_numerator`. Must be a string:", `price_in_owl_numerator`))
        }
        self$`price_in_owl_numerator` <- `price_in_owl_numerator`
      }
      if (!is.null(`price_in_owl_denominator`)) {
        if (!(is.character(`price_in_owl_denominator`) && length(`price_in_owl_denominator`) == 1)) {
          stop(paste("Error! Invalid data for `price_in_owl_denominator`. Must be a string:", `price_in_owl_denominator`))
        }
        self$`price_in_owl_denominator` <- `price_in_owl_denominator`
      }
      if (!is.null(`volume`)) {
        if (!(is.character(`volume`) && length(`volume`) == 1)) {
          stop(paste("Error! Invalid data for `volume`. Must be a string:", `volume`))
        }
        self$`volume` <- `volume`
      }
      if (!is.null(`create_epoch`)) {
        if (!(is.character(`create_epoch`) && length(`create_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `create_epoch`. Must be a string:", `create_epoch`))
        }
        self$`create_epoch` <- `create_epoch`
      }
      if (!is.null(`tx_hash`)) {
        if (!(is.character(`tx_hash`) && length(`tx_hash`) == 1)) {
          stop(paste("Error! Invalid data for `tx_hash`. Must be a string:", `tx_hash`))
        }
        self$`tx_hash` <- `tx_hash`
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
    #' @return DexPriceDTO in JSON format
    #' @export
    toJSON = function() {
      DexPriceDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        DexPriceDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        DexPriceDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        DexPriceDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        DexPriceDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`token`)) {
        DexPriceDTOObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`batch_id`)) {
        DexPriceDTOObject[["batch_id"]] <-
          self$`batch_id`
      }
      if (!is.null(self$`price_in_owl_numerator`)) {
        DexPriceDTOObject[["price_in_owl_numerator"]] <-
          self$`price_in_owl_numerator`
      }
      if (!is.null(self$`price_in_owl_denominator`)) {
        DexPriceDTOObject[["price_in_owl_denominator"]] <-
          self$`price_in_owl_denominator`
      }
      if (!is.null(self$`volume`)) {
        DexPriceDTOObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`create_epoch`)) {
        DexPriceDTOObject[["create_epoch"]] <-
          self$`create_epoch`
      }
      if (!is.null(self$`tx_hash`)) {
        DexPriceDTOObject[["tx_hash"]] <-
          self$`tx_hash`
      }
      if (!is.null(self$`vid`)) {
        DexPriceDTOObject[["vid"]] <-
          self$`vid`
      }
      DexPriceDTOObject
    },
    #' Deserialize JSON string into an instance of DexPriceDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexPriceDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexPriceDTO
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
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`batch_id`)) {
        self$`batch_id` <- this_object$`batch_id`
      }
      if (!is.null(this_object$`price_in_owl_numerator`)) {
        self$`price_in_owl_numerator` <- this_object$`price_in_owl_numerator`
      }
      if (!is.null(this_object$`price_in_owl_denominator`)) {
        self$`price_in_owl_denominator` <- this_object$`price_in_owl_denominator`
      }
      if (!is.null(this_object$`volume`)) {
        self$`volume` <- this_object$`volume`
      }
      if (!is.null(this_object$`create_epoch`)) {
        self$`create_epoch` <- this_object$`create_epoch`
      }
      if (!is.null(this_object$`tx_hash`)) {
        self$`tx_hash` <- this_object$`tx_hash`
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
    #' @return DexPriceDTO in JSON format
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
        if (!is.null(self$`token`)) {
          sprintf(
          '"token":
            "%s"
                    ',
          self$`token`
          )
        },
        if (!is.null(self$`batch_id`)) {
          sprintf(
          '"batch_id":
            "%s"
                    ',
          self$`batch_id`
          )
        },
        if (!is.null(self$`price_in_owl_numerator`)) {
          sprintf(
          '"price_in_owl_numerator":
            "%s"
                    ',
          self$`price_in_owl_numerator`
          )
        },
        if (!is.null(self$`price_in_owl_denominator`)) {
          sprintf(
          '"price_in_owl_denominator":
            "%s"
                    ',
          self$`price_in_owl_denominator`
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
        if (!is.null(self$`create_epoch`)) {
          sprintf(
          '"create_epoch":
            "%s"
                    ',
          self$`create_epoch`
          )
        },
        if (!is.null(self$`tx_hash`)) {
          sprintf(
          '"tx_hash":
            "%s"
                    ',
          self$`tx_hash`
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
    #' Deserialize JSON string into an instance of DexPriceDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexPriceDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexPriceDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`token` <- this_object$`token`
      self$`batch_id` <- this_object$`batch_id`
      self$`price_in_owl_numerator` <- this_object$`price_in_owl_numerator`
      self$`price_in_owl_denominator` <- this_object$`price_in_owl_denominator`
      self$`volume` <- this_object$`volume`
      self$`create_epoch` <- this_object$`create_epoch`
      self$`tx_hash` <- this_object$`tx_hash`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to DexPriceDTO
    #'
    #' @description
    #' Validate JSON input with respect to DexPriceDTO and throw an exception if invalid
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
    #' @return String representation of DexPriceDTO
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
# DexPriceDTO$unlock()
#
## Below is an example to define the print function
# DexPriceDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DexPriceDTO$lock()

