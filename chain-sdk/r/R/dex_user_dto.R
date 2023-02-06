#' Create a new DexUserDTO
#'
#' @description
#' User of the protocol. Any ethereum account that deposited tokens or traded.
#'
#' @docType class
#' @title DexUserDTO
#' @description DexUserDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field from_batch_id  character [optional]
#' @field create_epoch  character [optional]
#' @field tx_hash  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DexUserDTO <- R6::R6Class(
  "DexUserDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `from_batch_id` = NULL,
    `create_epoch` = NULL,
    `tx_hash` = NULL,
    `vid` = NULL,
    #' Initialize a new DexUserDTO class.
    #'
    #' @description
    #' Initialize a new DexUserDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param from_batch_id 
    #' @param create_epoch 
    #' @param tx_hash 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `from_batch_id` = NULL, `create_epoch` = NULL, `tx_hash` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`from_batch_id`)) {
        if (!(is.character(`from_batch_id`) && length(`from_batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `from_batch_id`. Must be a string:", `from_batch_id`))
        }
        self$`from_batch_id` <- `from_batch_id`
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
    #' @return DexUserDTO in JSON format
    #' @export
    toJSON = function() {
      DexUserDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        DexUserDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        DexUserDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        DexUserDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        DexUserDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`from_batch_id`)) {
        DexUserDTOObject[["from_batch_id"]] <-
          self$`from_batch_id`
      }
      if (!is.null(self$`create_epoch`)) {
        DexUserDTOObject[["create_epoch"]] <-
          self$`create_epoch`
      }
      if (!is.null(self$`tx_hash`)) {
        DexUserDTOObject[["tx_hash"]] <-
          self$`tx_hash`
      }
      if (!is.null(self$`vid`)) {
        DexUserDTOObject[["vid"]] <-
          self$`vid`
      }
      DexUserDTOObject
    },
    #' Deserialize JSON string into an instance of DexUserDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexUserDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexUserDTO
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
      if (!is.null(this_object$`from_batch_id`)) {
        self$`from_batch_id` <- this_object$`from_batch_id`
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
    #' @return DexUserDTO in JSON format
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
        if (!is.null(self$`from_batch_id`)) {
          sprintf(
          '"from_batch_id":
            "%s"
                    ',
          self$`from_batch_id`
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
    #' Deserialize JSON string into an instance of DexUserDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexUserDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexUserDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`from_batch_id` <- this_object$`from_batch_id`
      self$`create_epoch` <- this_object$`create_epoch`
      self$`tx_hash` <- this_object$`tx_hash`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to DexUserDTO
    #'
    #' @description
    #' Validate JSON input with respect to DexUserDTO and throw an exception if invalid
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
    #' @return String representation of DexUserDTO
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
# DexUserDTO$unlock()
#
## Below is an example to define the print function
# DexUserDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DexUserDTO$lock()

