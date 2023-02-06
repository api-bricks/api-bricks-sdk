#' Create a new CowSettlementDTO
#'
#' @description
#' A settlement comprises a list of traded tokens with their corresponding price in the batch.
#'
#' @docType class
#' @title CowSettlementDTO
#' @description CowSettlementDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Transaction hash. character [optional]
#' @field solver Solver's address. character [optional]
#' @field tx_hash Transaction hash. character [optional]
#' @field first_trade_timestamp First trade timestamp. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CowSettlementDTO <- R6::R6Class(
  "CowSettlementDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `solver` = NULL,
    `tx_hash` = NULL,
    `first_trade_timestamp` = NULL,
    `vid` = NULL,
    #' Initialize a new CowSettlementDTO class.
    #'
    #' @description
    #' Initialize a new CowSettlementDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Transaction hash.
    #' @param solver Solver's address.
    #' @param tx_hash Transaction hash.
    #' @param first_trade_timestamp First trade timestamp.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `solver` = NULL, `tx_hash` = NULL, `first_trade_timestamp` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`solver`)) {
        if (!(is.character(`solver`) && length(`solver`) == 1)) {
          stop(paste("Error! Invalid data for `solver`. Must be a string:", `solver`))
        }
        self$`solver` <- `solver`
      }
      if (!is.null(`tx_hash`)) {
        if (!(is.character(`tx_hash`) && length(`tx_hash`) == 1)) {
          stop(paste("Error! Invalid data for `tx_hash`. Must be a string:", `tx_hash`))
        }
        self$`tx_hash` <- `tx_hash`
      }
      if (!is.null(`first_trade_timestamp`)) {
        if (!(is.character(`first_trade_timestamp`) && length(`first_trade_timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `first_trade_timestamp`. Must be a string:", `first_trade_timestamp`))
        }
        self$`first_trade_timestamp` <- `first_trade_timestamp`
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
    #' @return CowSettlementDTO in JSON format
    #' @export
    toJSON = function() {
      CowSettlementDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CowSettlementDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CowSettlementDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CowSettlementDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CowSettlementDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`solver`)) {
        CowSettlementDTOObject[["solver"]] <-
          self$`solver`
      }
      if (!is.null(self$`tx_hash`)) {
        CowSettlementDTOObject[["tx_hash"]] <-
          self$`tx_hash`
      }
      if (!is.null(self$`first_trade_timestamp`)) {
        CowSettlementDTOObject[["first_trade_timestamp"]] <-
          self$`first_trade_timestamp`
      }
      if (!is.null(self$`vid`)) {
        CowSettlementDTOObject[["vid"]] <-
          self$`vid`
      }
      CowSettlementDTOObject
    },
    #' Deserialize JSON string into an instance of CowSettlementDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowSettlementDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowSettlementDTO
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
      if (!is.null(this_object$`solver`)) {
        self$`solver` <- this_object$`solver`
      }
      if (!is.null(this_object$`tx_hash`)) {
        self$`tx_hash` <- this_object$`tx_hash`
      }
      if (!is.null(this_object$`first_trade_timestamp`)) {
        self$`first_trade_timestamp` <- this_object$`first_trade_timestamp`
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
    #' @return CowSettlementDTO in JSON format
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
        if (!is.null(self$`solver`)) {
          sprintf(
          '"solver":
            "%s"
                    ',
          self$`solver`
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
        if (!is.null(self$`first_trade_timestamp`)) {
          sprintf(
          '"first_trade_timestamp":
            "%s"
                    ',
          self$`first_trade_timestamp`
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
    #' Deserialize JSON string into an instance of CowSettlementDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowSettlementDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowSettlementDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`solver` <- this_object$`solver`
      self$`tx_hash` <- this_object$`tx_hash`
      self$`first_trade_timestamp` <- this_object$`first_trade_timestamp`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CowSettlementDTO
    #'
    #' @description
    #' Validate JSON input with respect to CowSettlementDTO and throw an exception if invalid
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
    #' @return String representation of CowSettlementDTO
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
# CowSettlementDTO$unlock()
#
## Below is an example to define the print function
# CowSettlementDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CowSettlementDTO$lock()

