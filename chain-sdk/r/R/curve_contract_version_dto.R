#' Create a new CurveContractVersionDTO
#'
#' @description
#' CurveContractVersionDTO Class
#'
#' @docType class
#' @title CurveContractVersionDTO
#' @description CurveContractVersionDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field contract  character [optional]
#' @field address  character [optional]
#' @field version  character [optional]
#' @field added  character [optional]
#' @field added_at_block  character [optional]
#' @field added_at_transaction  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveContractVersionDTO <- R6::R6Class(
  "CurveContractVersionDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `contract` = NULL,
    `address` = NULL,
    `version` = NULL,
    `added` = NULL,
    `added_at_block` = NULL,
    `added_at_transaction` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveContractVersionDTO class.
    #'
    #' @description
    #' Initialize a new CurveContractVersionDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param contract 
    #' @param address 
    #' @param version 
    #' @param added 
    #' @param added_at_block 
    #' @param added_at_transaction 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `contract` = NULL, `address` = NULL, `version` = NULL, `added` = NULL, `added_at_block` = NULL, `added_at_transaction` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`contract`)) {
        if (!(is.character(`contract`) && length(`contract`) == 1)) {
          stop(paste("Error! Invalid data for `contract`. Must be a string:", `contract`))
        }
        self$`contract` <- `contract`
      }
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`added`)) {
        if (!(is.character(`added`) && length(`added`) == 1)) {
          stop(paste("Error! Invalid data for `added`. Must be a string:", `added`))
        }
        self$`added` <- `added`
      }
      if (!is.null(`added_at_block`)) {
        if (!(is.character(`added_at_block`) && length(`added_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `added_at_block`. Must be a string:", `added_at_block`))
        }
        self$`added_at_block` <- `added_at_block`
      }
      if (!is.null(`added_at_transaction`)) {
        if (!(is.character(`added_at_transaction`) && length(`added_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `added_at_transaction`. Must be a string:", `added_at_transaction`))
        }
        self$`added_at_transaction` <- `added_at_transaction`
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
    #' @return CurveContractVersionDTO in JSON format
    #' @export
    toJSON = function() {
      CurveContractVersionDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveContractVersionDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveContractVersionDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveContractVersionDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveContractVersionDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`contract`)) {
        CurveContractVersionDTOObject[["contract"]] <-
          self$`contract`
      }
      if (!is.null(self$`address`)) {
        CurveContractVersionDTOObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`version`)) {
        CurveContractVersionDTOObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`added`)) {
        CurveContractVersionDTOObject[["added"]] <-
          self$`added`
      }
      if (!is.null(self$`added_at_block`)) {
        CurveContractVersionDTOObject[["added_at_block"]] <-
          self$`added_at_block`
      }
      if (!is.null(self$`added_at_transaction`)) {
        CurveContractVersionDTOObject[["added_at_transaction"]] <-
          self$`added_at_transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveContractVersionDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveContractVersionDTOObject
    },
    #' Deserialize JSON string into an instance of CurveContractVersionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveContractVersionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveContractVersionDTO
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
      if (!is.null(this_object$`contract`)) {
        self$`contract` <- this_object$`contract`
      }
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`added`)) {
        self$`added` <- this_object$`added`
      }
      if (!is.null(this_object$`added_at_block`)) {
        self$`added_at_block` <- this_object$`added_at_block`
      }
      if (!is.null(this_object$`added_at_transaction`)) {
        self$`added_at_transaction` <- this_object$`added_at_transaction`
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
    #' @return CurveContractVersionDTO in JSON format
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
        if (!is.null(self$`contract`)) {
          sprintf(
          '"contract":
            "%s"
                    ',
          self$`contract`
          )
        },
        if (!is.null(self$`address`)) {
          sprintf(
          '"address":
            "%s"
                    ',
          self$`address`
          )
        },
        if (!is.null(self$`version`)) {
          sprintf(
          '"version":
            "%s"
                    ',
          self$`version`
          )
        },
        if (!is.null(self$`added`)) {
          sprintf(
          '"added":
            "%s"
                    ',
          self$`added`
          )
        },
        if (!is.null(self$`added_at_block`)) {
          sprintf(
          '"added_at_block":
            "%s"
                    ',
          self$`added_at_block`
          )
        },
        if (!is.null(self$`added_at_transaction`)) {
          sprintf(
          '"added_at_transaction":
            "%s"
                    ',
          self$`added_at_transaction`
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
    #' Deserialize JSON string into an instance of CurveContractVersionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveContractVersionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveContractVersionDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`contract` <- this_object$`contract`
      self$`address` <- this_object$`address`
      self$`version` <- this_object$`version`
      self$`added` <- this_object$`added`
      self$`added_at_block` <- this_object$`added_at_block`
      self$`added_at_transaction` <- this_object$`added_at_transaction`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveContractVersionDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveContractVersionDTO and throw an exception if invalid
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
    #' @return String representation of CurveContractVersionDTO
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
# CurveContractVersionDTO$unlock()
#
## Below is an example to define the print function
# CurveContractVersionDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveContractVersionDTO$lock()

