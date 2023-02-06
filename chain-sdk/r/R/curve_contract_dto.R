#' Create a new CurveContractDTO
#'
#' @description
#' CurveContractDTO Class
#'
#' @docType class
#' @title CurveContractDTO
#' @description CurveContractDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field description Human-readable description. character [optional]
#' @field added  character [optional]
#' @field added_at_block  character [optional]
#' @field added_at_transaction  character [optional]
#' @field modified  character [optional]
#' @field modified_at_block  character [optional]
#' @field modified_at_transaction  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveContractDTO <- R6::R6Class(
  "CurveContractDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `description` = NULL,
    `added` = NULL,
    `added_at_block` = NULL,
    `added_at_transaction` = NULL,
    `modified` = NULL,
    `modified_at_block` = NULL,
    `modified_at_transaction` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveContractDTO class.
    #'
    #' @description
    #' Initialize a new CurveContractDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param description Human-readable description.
    #' @param added 
    #' @param added_at_block 
    #' @param added_at_transaction 
    #' @param modified 
    #' @param modified_at_block 
    #' @param modified_at_transaction 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `description` = NULL, `added` = NULL, `added_at_block` = NULL, `added_at_transaction` = NULL, `modified` = NULL, `modified_at_block` = NULL, `modified_at_transaction` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
      if (!is.null(`modified`)) {
        if (!(is.character(`modified`) && length(`modified`) == 1)) {
          stop(paste("Error! Invalid data for `modified`. Must be a string:", `modified`))
        }
        self$`modified` <- `modified`
      }
      if (!is.null(`modified_at_block`)) {
        if (!(is.character(`modified_at_block`) && length(`modified_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `modified_at_block`. Must be a string:", `modified_at_block`))
        }
        self$`modified_at_block` <- `modified_at_block`
      }
      if (!is.null(`modified_at_transaction`)) {
        if (!(is.character(`modified_at_transaction`) && length(`modified_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `modified_at_transaction`. Must be a string:", `modified_at_transaction`))
        }
        self$`modified_at_transaction` <- `modified_at_transaction`
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
    #' @return CurveContractDTO in JSON format
    #' @export
    toJSON = function() {
      CurveContractDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveContractDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveContractDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveContractDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveContractDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`description`)) {
        CurveContractDTOObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`added`)) {
        CurveContractDTOObject[["added"]] <-
          self$`added`
      }
      if (!is.null(self$`added_at_block`)) {
        CurveContractDTOObject[["added_at_block"]] <-
          self$`added_at_block`
      }
      if (!is.null(self$`added_at_transaction`)) {
        CurveContractDTOObject[["added_at_transaction"]] <-
          self$`added_at_transaction`
      }
      if (!is.null(self$`modified`)) {
        CurveContractDTOObject[["modified"]] <-
          self$`modified`
      }
      if (!is.null(self$`modified_at_block`)) {
        CurveContractDTOObject[["modified_at_block"]] <-
          self$`modified_at_block`
      }
      if (!is.null(self$`modified_at_transaction`)) {
        CurveContractDTOObject[["modified_at_transaction"]] <-
          self$`modified_at_transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveContractDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveContractDTOObject
    },
    #' Deserialize JSON string into an instance of CurveContractDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveContractDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveContractDTO
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
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
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
      if (!is.null(this_object$`modified`)) {
        self$`modified` <- this_object$`modified`
      }
      if (!is.null(this_object$`modified_at_block`)) {
        self$`modified_at_block` <- this_object$`modified_at_block`
      }
      if (!is.null(this_object$`modified_at_transaction`)) {
        self$`modified_at_transaction` <- this_object$`modified_at_transaction`
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
    #' @return CurveContractDTO in JSON format
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
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
        if (!is.null(self$`modified`)) {
          sprintf(
          '"modified":
            "%s"
                    ',
          self$`modified`
          )
        },
        if (!is.null(self$`modified_at_block`)) {
          sprintf(
          '"modified_at_block":
            "%s"
                    ',
          self$`modified_at_block`
          )
        },
        if (!is.null(self$`modified_at_transaction`)) {
          sprintf(
          '"modified_at_transaction":
            "%s"
                    ',
          self$`modified_at_transaction`
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
    #' Deserialize JSON string into an instance of CurveContractDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveContractDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveContractDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`description` <- this_object$`description`
      self$`added` <- this_object$`added`
      self$`added_at_block` <- this_object$`added_at_block`
      self$`added_at_transaction` <- this_object$`added_at_transaction`
      self$`modified` <- this_object$`modified`
      self$`modified_at_block` <- this_object$`modified_at_block`
      self$`modified_at_transaction` <- this_object$`modified_at_transaction`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveContractDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveContractDTO and throw an exception if invalid
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
    #' @return String representation of CurveContractDTO
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
# CurveContractDTO$unlock()
#
## Below is an example to define the print function
# CurveContractDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveContractDTO$lock()

