#' Create a new CurveGaugeDTO
#'
#' @description
#' CurveGaugeDTO Class
#'
#' @docType class
#' @title CurveGaugeDTO
#' @description CurveGaugeDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field address  character [optional]
#' @field type  character [optional]
#' @field pool  character [optional]
#' @field created  character [optional]
#' @field created_at_block  character [optional]
#' @field created_at_transaction  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveGaugeDTO <- R6::R6Class(
  "CurveGaugeDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `address` = NULL,
    `type` = NULL,
    `pool` = NULL,
    `created` = NULL,
    `created_at_block` = NULL,
    `created_at_transaction` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveGaugeDTO class.
    #'
    #' @description
    #' Initialize a new CurveGaugeDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param address 
    #' @param type 
    #' @param pool 
    #' @param created 
    #' @param created_at_block 
    #' @param created_at_transaction 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `address` = NULL, `type` = NULL, `pool` = NULL, `created` = NULL, `created_at_block` = NULL, `created_at_transaction` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
      }
      if (!is.null(`created`)) {
        if (!(is.character(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be a string:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`created_at_block`)) {
        if (!(is.character(`created_at_block`) && length(`created_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `created_at_block`. Must be a string:", `created_at_block`))
        }
        self$`created_at_block` <- `created_at_block`
      }
      if (!is.null(`created_at_transaction`)) {
        if (!(is.character(`created_at_transaction`) && length(`created_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `created_at_transaction`. Must be a string:", `created_at_transaction`))
        }
        self$`created_at_transaction` <- `created_at_transaction`
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
    #' @return CurveGaugeDTO in JSON format
    #' @export
    toJSON = function() {
      CurveGaugeDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveGaugeDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveGaugeDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveGaugeDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveGaugeDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`address`)) {
        CurveGaugeDTOObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`type`)) {
        CurveGaugeDTOObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`pool`)) {
        CurveGaugeDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`created`)) {
        CurveGaugeDTOObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`created_at_block`)) {
        CurveGaugeDTOObject[["created_at_block"]] <-
          self$`created_at_block`
      }
      if (!is.null(self$`created_at_transaction`)) {
        CurveGaugeDTOObject[["created_at_transaction"]] <-
          self$`created_at_transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveGaugeDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveGaugeDTOObject
    },
    #' Deserialize JSON string into an instance of CurveGaugeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveGaugeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveGaugeDTO
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
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`created_at_block`)) {
        self$`created_at_block` <- this_object$`created_at_block`
      }
      if (!is.null(this_object$`created_at_transaction`)) {
        self$`created_at_transaction` <- this_object$`created_at_transaction`
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
    #' @return CurveGaugeDTO in JSON format
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
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`pool`)) {
          sprintf(
          '"pool":
            "%s"
                    ',
          self$`pool`
          )
        },
        if (!is.null(self$`created`)) {
          sprintf(
          '"created":
            "%s"
                    ',
          self$`created`
          )
        },
        if (!is.null(self$`created_at_block`)) {
          sprintf(
          '"created_at_block":
            "%s"
                    ',
          self$`created_at_block`
          )
        },
        if (!is.null(self$`created_at_transaction`)) {
          sprintf(
          '"created_at_transaction":
            "%s"
                    ',
          self$`created_at_transaction`
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
    #' Deserialize JSON string into an instance of CurveGaugeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveGaugeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveGaugeDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`address` <- this_object$`address`
      self$`type` <- this_object$`type`
      self$`pool` <- this_object$`pool`
      self$`created` <- this_object$`created`
      self$`created_at_block` <- this_object$`created_at_block`
      self$`created_at_transaction` <- this_object$`created_at_transaction`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveGaugeDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveGaugeDTO and throw an exception if invalid
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
    #' @return String representation of CurveGaugeDTO
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
# CurveGaugeDTO$unlock()
#
## Below is an example to define the print function
# CurveGaugeDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveGaugeDTO$lock()

