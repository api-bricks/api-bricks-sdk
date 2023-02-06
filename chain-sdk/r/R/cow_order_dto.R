#' Create a new CowOrderDTO
#'
#' @description
#' CowOrderDTO Class
#'
#' @docType class
#' @title CowOrderDTO
#' @description CowOrderDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id User's address. character [optional]
#' @field owner User's address. character [optional]
#' @field trades_timestamp Block's timestamp on trade event. character [optional]
#' @field invalidate_timestamp Block's timestamp on invalidate event. character [optional]
#' @field presign_timestamp Block's timestamp on presign event. character [optional]
#' @field is_signed Determines whether order is signed. character [optional]
#' @field is_valid Determines whether order is valid. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CowOrderDTO <- R6::R6Class(
  "CowOrderDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `owner` = NULL,
    `trades_timestamp` = NULL,
    `invalidate_timestamp` = NULL,
    `presign_timestamp` = NULL,
    `is_signed` = NULL,
    `is_valid` = NULL,
    `vid` = NULL,
    #' Initialize a new CowOrderDTO class.
    #'
    #' @description
    #' Initialize a new CowOrderDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id User's address.
    #' @param owner User's address.
    #' @param trades_timestamp Block's timestamp on trade event.
    #' @param invalidate_timestamp Block's timestamp on invalidate event.
    #' @param presign_timestamp Block's timestamp on presign event.
    #' @param is_signed Determines whether order is signed.
    #' @param is_valid Determines whether order is valid.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `owner` = NULL, `trades_timestamp` = NULL, `invalidate_timestamp` = NULL, `presign_timestamp` = NULL, `is_signed` = NULL, `is_valid` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`owner`)) {
        if (!(is.character(`owner`) && length(`owner`) == 1)) {
          stop(paste("Error! Invalid data for `owner`. Must be a string:", `owner`))
        }
        self$`owner` <- `owner`
      }
      if (!is.null(`trades_timestamp`)) {
        if (!(is.character(`trades_timestamp`) && length(`trades_timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `trades_timestamp`. Must be a string:", `trades_timestamp`))
        }
        self$`trades_timestamp` <- `trades_timestamp`
      }
      if (!is.null(`invalidate_timestamp`)) {
        if (!(is.character(`invalidate_timestamp`) && length(`invalidate_timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `invalidate_timestamp`. Must be a string:", `invalidate_timestamp`))
        }
        self$`invalidate_timestamp` <- `invalidate_timestamp`
      }
      if (!is.null(`presign_timestamp`)) {
        if (!(is.character(`presign_timestamp`) && length(`presign_timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `presign_timestamp`. Must be a string:", `presign_timestamp`))
        }
        self$`presign_timestamp` <- `presign_timestamp`
      }
      if (!is.null(`is_signed`)) {
        if (!(is.logical(`is_signed`) && length(`is_signed`) == 1)) {
          stop(paste("Error! Invalid data for `is_signed`. Must be a boolean:", `is_signed`))
        }
        self$`is_signed` <- `is_signed`
      }
      if (!is.null(`is_valid`)) {
        if (!(is.logical(`is_valid`) && length(`is_valid`) == 1)) {
          stop(paste("Error! Invalid data for `is_valid`. Must be a boolean:", `is_valid`))
        }
        self$`is_valid` <- `is_valid`
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
    #' @return CowOrderDTO in JSON format
    #' @export
    toJSON = function() {
      CowOrderDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CowOrderDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CowOrderDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CowOrderDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CowOrderDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`owner`)) {
        CowOrderDTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`trades_timestamp`)) {
        CowOrderDTOObject[["trades_timestamp"]] <-
          self$`trades_timestamp`
      }
      if (!is.null(self$`invalidate_timestamp`)) {
        CowOrderDTOObject[["invalidate_timestamp"]] <-
          self$`invalidate_timestamp`
      }
      if (!is.null(self$`presign_timestamp`)) {
        CowOrderDTOObject[["presign_timestamp"]] <-
          self$`presign_timestamp`
      }
      if (!is.null(self$`is_signed`)) {
        CowOrderDTOObject[["is_signed"]] <-
          self$`is_signed`
      }
      if (!is.null(self$`is_valid`)) {
        CowOrderDTOObject[["is_valid"]] <-
          self$`is_valid`
      }
      if (!is.null(self$`vid`)) {
        CowOrderDTOObject[["vid"]] <-
          self$`vid`
      }
      CowOrderDTOObject
    },
    #' Deserialize JSON string into an instance of CowOrderDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowOrderDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowOrderDTO
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
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
      }
      if (!is.null(this_object$`trades_timestamp`)) {
        self$`trades_timestamp` <- this_object$`trades_timestamp`
      }
      if (!is.null(this_object$`invalidate_timestamp`)) {
        self$`invalidate_timestamp` <- this_object$`invalidate_timestamp`
      }
      if (!is.null(this_object$`presign_timestamp`)) {
        self$`presign_timestamp` <- this_object$`presign_timestamp`
      }
      if (!is.null(this_object$`is_signed`)) {
        self$`is_signed` <- this_object$`is_signed`
      }
      if (!is.null(this_object$`is_valid`)) {
        self$`is_valid` <- this_object$`is_valid`
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
    #' @return CowOrderDTO in JSON format
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
        if (!is.null(self$`owner`)) {
          sprintf(
          '"owner":
            "%s"
                    ',
          self$`owner`
          )
        },
        if (!is.null(self$`trades_timestamp`)) {
          sprintf(
          '"trades_timestamp":
            "%s"
                    ',
          self$`trades_timestamp`
          )
        },
        if (!is.null(self$`invalidate_timestamp`)) {
          sprintf(
          '"invalidate_timestamp":
            "%s"
                    ',
          self$`invalidate_timestamp`
          )
        },
        if (!is.null(self$`presign_timestamp`)) {
          sprintf(
          '"presign_timestamp":
            "%s"
                    ',
          self$`presign_timestamp`
          )
        },
        if (!is.null(self$`is_signed`)) {
          sprintf(
          '"is_signed":
            %s
                    ',
          tolower(self$`is_signed`)
          )
        },
        if (!is.null(self$`is_valid`)) {
          sprintf(
          '"is_valid":
            %s
                    ',
          tolower(self$`is_valid`)
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
    #' Deserialize JSON string into an instance of CowOrderDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowOrderDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowOrderDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`owner` <- this_object$`owner`
      self$`trades_timestamp` <- this_object$`trades_timestamp`
      self$`invalidate_timestamp` <- this_object$`invalidate_timestamp`
      self$`presign_timestamp` <- this_object$`presign_timestamp`
      self$`is_signed` <- this_object$`is_signed`
      self$`is_valid` <- this_object$`is_valid`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CowOrderDTO
    #'
    #' @description
    #' Validate JSON input with respect to CowOrderDTO and throw an exception if invalid
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
    #' @return String representation of CowOrderDTO
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
# CowOrderDTO$unlock()
#
## Below is an example to define the print function
# CowOrderDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CowOrderDTO$lock()

