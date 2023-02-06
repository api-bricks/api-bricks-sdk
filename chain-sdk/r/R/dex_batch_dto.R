#' Create a new DexBatchDTO
#'
#' @description
#' Batch executed. Every batch will contain at least solution with the a set of trades that are executed in it
#'
#' @docType class
#' @title DexBatchDTO
#' @description DexBatchDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier. character [optional]
#' @field start_epoch Start epoch. character [optional]
#' @field end_epoch End epoch. character [optional]
#' @field solution Reference to solution. character [optional]
#' @field first_solution_epoch First solution epoch. character [optional]
#' @field last_revert_epoch Last revert epoch. character [optional]
#' @field tx_hash Transaction hash. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DexBatchDTO <- R6::R6Class(
  "DexBatchDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `start_epoch` = NULL,
    `end_epoch` = NULL,
    `solution` = NULL,
    `first_solution_epoch` = NULL,
    `last_revert_epoch` = NULL,
    `tx_hash` = NULL,
    `vid` = NULL,
    #' Initialize a new DexBatchDTO class.
    #'
    #' @description
    #' Initialize a new DexBatchDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier.
    #' @param start_epoch Start epoch.
    #' @param end_epoch End epoch.
    #' @param solution Reference to solution.
    #' @param first_solution_epoch First solution epoch.
    #' @param last_revert_epoch Last revert epoch.
    #' @param tx_hash Transaction hash.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `start_epoch` = NULL, `end_epoch` = NULL, `solution` = NULL, `first_solution_epoch` = NULL, `last_revert_epoch` = NULL, `tx_hash` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`start_epoch`)) {
        if (!(is.character(`start_epoch`) && length(`start_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `start_epoch`. Must be a string:", `start_epoch`))
        }
        self$`start_epoch` <- `start_epoch`
      }
      if (!is.null(`end_epoch`)) {
        if (!(is.character(`end_epoch`) && length(`end_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `end_epoch`. Must be a string:", `end_epoch`))
        }
        self$`end_epoch` <- `end_epoch`
      }
      if (!is.null(`solution`)) {
        if (!(is.character(`solution`) && length(`solution`) == 1)) {
          stop(paste("Error! Invalid data for `solution`. Must be a string:", `solution`))
        }
        self$`solution` <- `solution`
      }
      if (!is.null(`first_solution_epoch`)) {
        if (!(is.character(`first_solution_epoch`) && length(`first_solution_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `first_solution_epoch`. Must be a string:", `first_solution_epoch`))
        }
        self$`first_solution_epoch` <- `first_solution_epoch`
      }
      if (!is.null(`last_revert_epoch`)) {
        if (!(is.character(`last_revert_epoch`) && length(`last_revert_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `last_revert_epoch`. Must be a string:", `last_revert_epoch`))
        }
        self$`last_revert_epoch` <- `last_revert_epoch`
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
    #' @return DexBatchDTO in JSON format
    #' @export
    toJSON = function() {
      DexBatchDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        DexBatchDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        DexBatchDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        DexBatchDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        DexBatchDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`start_epoch`)) {
        DexBatchDTOObject[["start_epoch"]] <-
          self$`start_epoch`
      }
      if (!is.null(self$`end_epoch`)) {
        DexBatchDTOObject[["end_epoch"]] <-
          self$`end_epoch`
      }
      if (!is.null(self$`solution`)) {
        DexBatchDTOObject[["solution"]] <-
          self$`solution`
      }
      if (!is.null(self$`first_solution_epoch`)) {
        DexBatchDTOObject[["first_solution_epoch"]] <-
          self$`first_solution_epoch`
      }
      if (!is.null(self$`last_revert_epoch`)) {
        DexBatchDTOObject[["last_revert_epoch"]] <-
          self$`last_revert_epoch`
      }
      if (!is.null(self$`tx_hash`)) {
        DexBatchDTOObject[["tx_hash"]] <-
          self$`tx_hash`
      }
      if (!is.null(self$`vid`)) {
        DexBatchDTOObject[["vid"]] <-
          self$`vid`
      }
      DexBatchDTOObject
    },
    #' Deserialize JSON string into an instance of DexBatchDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexBatchDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexBatchDTO
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
      if (!is.null(this_object$`start_epoch`)) {
        self$`start_epoch` <- this_object$`start_epoch`
      }
      if (!is.null(this_object$`end_epoch`)) {
        self$`end_epoch` <- this_object$`end_epoch`
      }
      if (!is.null(this_object$`solution`)) {
        self$`solution` <- this_object$`solution`
      }
      if (!is.null(this_object$`first_solution_epoch`)) {
        self$`first_solution_epoch` <- this_object$`first_solution_epoch`
      }
      if (!is.null(this_object$`last_revert_epoch`)) {
        self$`last_revert_epoch` <- this_object$`last_revert_epoch`
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
    #' @return DexBatchDTO in JSON format
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
        if (!is.null(self$`start_epoch`)) {
          sprintf(
          '"start_epoch":
            "%s"
                    ',
          self$`start_epoch`
          )
        },
        if (!is.null(self$`end_epoch`)) {
          sprintf(
          '"end_epoch":
            "%s"
                    ',
          self$`end_epoch`
          )
        },
        if (!is.null(self$`solution`)) {
          sprintf(
          '"solution":
            "%s"
                    ',
          self$`solution`
          )
        },
        if (!is.null(self$`first_solution_epoch`)) {
          sprintf(
          '"first_solution_epoch":
            "%s"
                    ',
          self$`first_solution_epoch`
          )
        },
        if (!is.null(self$`last_revert_epoch`)) {
          sprintf(
          '"last_revert_epoch":
            "%s"
                    ',
          self$`last_revert_epoch`
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
    #' Deserialize JSON string into an instance of DexBatchDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexBatchDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexBatchDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`start_epoch` <- this_object$`start_epoch`
      self$`end_epoch` <- this_object$`end_epoch`
      self$`solution` <- this_object$`solution`
      self$`first_solution_epoch` <- this_object$`first_solution_epoch`
      self$`last_revert_epoch` <- this_object$`last_revert_epoch`
      self$`tx_hash` <- this_object$`tx_hash`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to DexBatchDTO
    #'
    #' @description
    #' Validate JSON input with respect to DexBatchDTO and throw an exception if invalid
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
    #' @return String representation of DexBatchDTO
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
# DexBatchDTO$unlock()
#
## Below is an example to define the print function
# DexBatchDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DexBatchDTO$lock()

