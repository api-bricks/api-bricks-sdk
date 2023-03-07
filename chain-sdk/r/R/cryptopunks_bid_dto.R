#' Create a new CRYPTOPUNKSBidDTO
#'
#' @description
#' CRYPTOPUNKSBidDTO Class
#'
#' @docType class
#' @title CRYPTOPUNKSBidDTO
#' @description CRYPTOPUNKSBidDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  character [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @field id  character [optional]
#' @field tokens_bid  character [optional]
#' @field token_id  character [optional]
#' @field timestamp  character [optional]
#' @field bidder  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CRYPTOPUNKSBidDTO <- R6::R6Class(
  "CRYPTOPUNKSBidDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    `id` = NULL,
    `tokens_bid` = NULL,
    `token_id` = NULL,
    `timestamp` = NULL,
    `bidder` = NULL,
    #' Initialize a new CRYPTOPUNKSBidDTO class.
    #'
    #' @description
    #' Initialize a new CRYPTOPUNKSBidDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param vid 
    #' @param block_range 
    #' @param id 
    #' @param tokens_bid 
    #' @param token_id 
    #' @param timestamp 
    #' @param bidder 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `block_range` = NULL, `id` = NULL, `tokens_bid` = NULL, `token_id` = NULL, `timestamp` = NULL, `bidder` = NULL, ...) {
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
        if (!(is.character(`block_number`) && length(`block_number`) == 1)) {
          stop(paste("Error! Invalid data for `block_number`. Must be a string:", `block_number`))
        }
        self$`block_number` <- `block_number`
      }
      if (!is.null(`vid`)) {
        if (!(is.numeric(`vid`) && length(`vid`) == 1)) {
          stop(paste("Error! Invalid data for `vid`. Must be an integer:", `vid`))
        }
        self$`vid` <- `vid`
      }
      if (!is.null(`block_range`)) {
        if (!(is.character(`block_range`) && length(`block_range`) == 1)) {
          stop(paste("Error! Invalid data for `block_range`. Must be a string:", `block_range`))
        }
        self$`block_range` <- `block_range`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`tokens_bid`)) {
        if (!(is.character(`tokens_bid`) && length(`tokens_bid`) == 1)) {
          stop(paste("Error! Invalid data for `tokens_bid`. Must be a string:", `tokens_bid`))
        }
        self$`tokens_bid` <- `tokens_bid`
      }
      if (!is.null(`token_id`)) {
        if (!(is.character(`token_id`) && length(`token_id`) == 1)) {
          stop(paste("Error! Invalid data for `token_id`. Must be a string:", `token_id`))
        }
        self$`token_id` <- `token_id`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`bidder`)) {
        if (!(is.character(`bidder`) && length(`bidder`) == 1)) {
          stop(paste("Error! Invalid data for `bidder`. Must be a string:", `bidder`))
        }
        self$`bidder` <- `bidder`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSBidDTO in JSON format
    #' @export
    toJSON = function() {
      CRYPTOPUNKSBidDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CRYPTOPUNKSBidDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CRYPTOPUNKSBidDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CRYPTOPUNKSBidDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        CRYPTOPUNKSBidDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        CRYPTOPUNKSBidDTOObject[["block_range"]] <-
          self$`block_range`
      }
      if (!is.null(self$`id`)) {
        CRYPTOPUNKSBidDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`tokens_bid`)) {
        CRYPTOPUNKSBidDTOObject[["tokens_bid"]] <-
          self$`tokens_bid`
      }
      if (!is.null(self$`token_id`)) {
        CRYPTOPUNKSBidDTOObject[["token_id"]] <-
          self$`token_id`
      }
      if (!is.null(self$`timestamp`)) {
        CRYPTOPUNKSBidDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`bidder`)) {
        CRYPTOPUNKSBidDTOObject[["bidder"]] <-
          self$`bidder`
      }
      CRYPTOPUNKSBidDTOObject
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSBidDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSBidDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSBidDTO
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
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`block_range`)) {
        self$`block_range` <- this_object$`block_range`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`tokens_bid`)) {
        self$`tokens_bid` <- this_object$`tokens_bid`
      }
      if (!is.null(this_object$`token_id`)) {
        self$`token_id` <- this_object$`token_id`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`bidder`)) {
        self$`bidder` <- this_object$`bidder`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSBidDTO in JSON format
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
            "%s"
                    ',
          self$`block_number`
          )
        },
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
          )
        },
        if (!is.null(self$`block_range`)) {
          sprintf(
          '"block_range":
            "%s"
                    ',
          self$`block_range`
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
        if (!is.null(self$`tokens_bid`)) {
          sprintf(
          '"tokens_bid":
            "%s"
                    ',
          self$`tokens_bid`
          )
        },
        if (!is.null(self$`token_id`)) {
          sprintf(
          '"token_id":
            "%s"
                    ',
          self$`token_id`
          )
        },
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`bidder`)) {
          sprintf(
          '"bidder":
            "%s"
                    ',
          self$`bidder`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSBidDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSBidDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSBidDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self$`id` <- this_object$`id`
      self$`tokens_bid` <- this_object$`tokens_bid`
      self$`token_id` <- this_object$`token_id`
      self$`timestamp` <- this_object$`timestamp`
      self$`bidder` <- this_object$`bidder`
      self
    },
    #' Validate JSON input with respect to CRYPTOPUNKSBidDTO
    #'
    #' @description
    #' Validate JSON input with respect to CRYPTOPUNKSBidDTO and throw an exception if invalid
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
    #' @return String representation of CRYPTOPUNKSBidDTO
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
# CRYPTOPUNKSBidDTO$unlock()
#
## Below is an example to define the print function
# CRYPTOPUNKSBidDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CRYPTOPUNKSBidDTO$lock()

