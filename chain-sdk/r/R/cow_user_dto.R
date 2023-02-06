#' Create a new CowUserDTO
#'
#' @description
#' CowUserDTO Class
#'
#' @docType class
#' @title CowUserDTO
#' @description CowUserDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id User's address. character [optional]
#' @field address User's address. character [optional]
#' @field first_trade_timestamp First trade block timestamp. character [optional]
#' @field is_solver Determines if user has solved a settlement. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CowUserDTO <- R6::R6Class(
  "CowUserDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `address` = NULL,
    `first_trade_timestamp` = NULL,
    `is_solver` = NULL,
    `vid` = NULL,
    #' Initialize a new CowUserDTO class.
    #'
    #' @description
    #' Initialize a new CowUserDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id User's address.
    #' @param address User's address.
    #' @param first_trade_timestamp First trade block timestamp.
    #' @param is_solver Determines if user has solved a settlement.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `address` = NULL, `first_trade_timestamp` = NULL, `is_solver` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`first_trade_timestamp`)) {
        if (!(is.character(`first_trade_timestamp`) && length(`first_trade_timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `first_trade_timestamp`. Must be a string:", `first_trade_timestamp`))
        }
        self$`first_trade_timestamp` <- `first_trade_timestamp`
      }
      if (!is.null(`is_solver`)) {
        if (!(is.logical(`is_solver`) && length(`is_solver`) == 1)) {
          stop(paste("Error! Invalid data for `is_solver`. Must be a boolean:", `is_solver`))
        }
        self$`is_solver` <- `is_solver`
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
    #' @return CowUserDTO in JSON format
    #' @export
    toJSON = function() {
      CowUserDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CowUserDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CowUserDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CowUserDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CowUserDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`address`)) {
        CowUserDTOObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`first_trade_timestamp`)) {
        CowUserDTOObject[["first_trade_timestamp"]] <-
          self$`first_trade_timestamp`
      }
      if (!is.null(self$`is_solver`)) {
        CowUserDTOObject[["is_solver"]] <-
          self$`is_solver`
      }
      if (!is.null(self$`vid`)) {
        CowUserDTOObject[["vid"]] <-
          self$`vid`
      }
      CowUserDTOObject
    },
    #' Deserialize JSON string into an instance of CowUserDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowUserDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowUserDTO
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
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`first_trade_timestamp`)) {
        self$`first_trade_timestamp` <- this_object$`first_trade_timestamp`
      }
      if (!is.null(this_object$`is_solver`)) {
        self$`is_solver` <- this_object$`is_solver`
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
    #' @return CowUserDTO in JSON format
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
        if (!is.null(self$`address`)) {
          sprintf(
          '"address":
            "%s"
                    ',
          self$`address`
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
        if (!is.null(self$`is_solver`)) {
          sprintf(
          '"is_solver":
            %s
                    ',
          tolower(self$`is_solver`)
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
    #' Deserialize JSON string into an instance of CowUserDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowUserDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowUserDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`address` <- this_object$`address`
      self$`first_trade_timestamp` <- this_object$`first_trade_timestamp`
      self$`is_solver` <- this_object$`is_solver`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CowUserDTO
    #'
    #' @description
    #' Validate JSON input with respect to CowUserDTO and throw an exception if invalid
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
    #' @return String representation of CowUserDTO
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
# CowUserDTO$unlock()
#
## Below is an example to define the print function
# CowUserDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CowUserDTO$lock()

