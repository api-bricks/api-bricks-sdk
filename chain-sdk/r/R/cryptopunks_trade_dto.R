#' Create a new CRYPTOPUNKSTradeDTO
#'
#' @description
#' CRYPTOPUNKSTradeDTO Class
#'
#' @docType class
#' @title CRYPTOPUNKSTradeDTO
#' @description CRYPTOPUNKSTradeDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  character [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @field id  character [optional]
#' @field transaction_hash  character [optional]
#' @field log_index  integer [optional]
#' @field timestamp  character [optional]
#' @field is_bundle  character [optional]
#' @field collection  character [optional]
#' @field token_id  character [optional]
#' @field amount  character [optional]
#' @field price_eth  character [optional]
#' @field buyer  character [optional]
#' @field seller  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CRYPTOPUNKSTradeDTO <- R6::R6Class(
  "CRYPTOPUNKSTradeDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    `id` = NULL,
    `transaction_hash` = NULL,
    `log_index` = NULL,
    `timestamp` = NULL,
    `is_bundle` = NULL,
    `collection` = NULL,
    `token_id` = NULL,
    `amount` = NULL,
    `price_eth` = NULL,
    `buyer` = NULL,
    `seller` = NULL,
    #' Initialize a new CRYPTOPUNKSTradeDTO class.
    #'
    #' @description
    #' Initialize a new CRYPTOPUNKSTradeDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param vid 
    #' @param block_range 
    #' @param id 
    #' @param transaction_hash 
    #' @param log_index 
    #' @param timestamp 
    #' @param is_bundle 
    #' @param collection 
    #' @param token_id 
    #' @param amount 
    #' @param price_eth 
    #' @param buyer 
    #' @param seller 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `block_range` = NULL, `id` = NULL, `transaction_hash` = NULL, `log_index` = NULL, `timestamp` = NULL, `is_bundle` = NULL, `collection` = NULL, `token_id` = NULL, `amount` = NULL, `price_eth` = NULL, `buyer` = NULL, `seller` = NULL, ...) {
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
      if (!is.null(`transaction_hash`)) {
        if (!(is.character(`transaction_hash`) && length(`transaction_hash`) == 1)) {
          stop(paste("Error! Invalid data for `transaction_hash`. Must be a string:", `transaction_hash`))
        }
        self$`transaction_hash` <- `transaction_hash`
      }
      if (!is.null(`log_index`)) {
        if (!(is.numeric(`log_index`) && length(`log_index`) == 1)) {
          stop(paste("Error! Invalid data for `log_index`. Must be an integer:", `log_index`))
        }
        self$`log_index` <- `log_index`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`is_bundle`)) {
        if (!(is.logical(`is_bundle`) && length(`is_bundle`) == 1)) {
          stop(paste("Error! Invalid data for `is_bundle`. Must be a boolean:", `is_bundle`))
        }
        self$`is_bundle` <- `is_bundle`
      }
      if (!is.null(`collection`)) {
        if (!(is.character(`collection`) && length(`collection`) == 1)) {
          stop(paste("Error! Invalid data for `collection`. Must be a string:", `collection`))
        }
        self$`collection` <- `collection`
      }
      if (!is.null(`token_id`)) {
        if (!(is.character(`token_id`) && length(`token_id`) == 1)) {
          stop(paste("Error! Invalid data for `token_id`. Must be a string:", `token_id`))
        }
        self$`token_id` <- `token_id`
      }
      if (!is.null(`amount`)) {
        if (!(is.character(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!is.null(`price_eth`)) {
        if (!(is.character(`price_eth`) && length(`price_eth`) == 1)) {
          stop(paste("Error! Invalid data for `price_eth`. Must be a string:", `price_eth`))
        }
        self$`price_eth` <- `price_eth`
      }
      if (!is.null(`buyer`)) {
        if (!(is.character(`buyer`) && length(`buyer`) == 1)) {
          stop(paste("Error! Invalid data for `buyer`. Must be a string:", `buyer`))
        }
        self$`buyer` <- `buyer`
      }
      if (!is.null(`seller`)) {
        if (!(is.character(`seller`) && length(`seller`) == 1)) {
          stop(paste("Error! Invalid data for `seller`. Must be a string:", `seller`))
        }
        self$`seller` <- `seller`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSTradeDTO in JSON format
    #' @export
    toJSON = function() {
      CRYPTOPUNKSTradeDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CRYPTOPUNKSTradeDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CRYPTOPUNKSTradeDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CRYPTOPUNKSTradeDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        CRYPTOPUNKSTradeDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        CRYPTOPUNKSTradeDTOObject[["block_range"]] <-
          self$`block_range`
      }
      if (!is.null(self$`id`)) {
        CRYPTOPUNKSTradeDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`transaction_hash`)) {
        CRYPTOPUNKSTradeDTOObject[["transaction_hash"]] <-
          self$`transaction_hash`
      }
      if (!is.null(self$`log_index`)) {
        CRYPTOPUNKSTradeDTOObject[["log_index"]] <-
          self$`log_index`
      }
      if (!is.null(self$`timestamp`)) {
        CRYPTOPUNKSTradeDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`is_bundle`)) {
        CRYPTOPUNKSTradeDTOObject[["is_bundle"]] <-
          self$`is_bundle`
      }
      if (!is.null(self$`collection`)) {
        CRYPTOPUNKSTradeDTOObject[["collection"]] <-
          self$`collection`
      }
      if (!is.null(self$`token_id`)) {
        CRYPTOPUNKSTradeDTOObject[["token_id"]] <-
          self$`token_id`
      }
      if (!is.null(self$`amount`)) {
        CRYPTOPUNKSTradeDTOObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`price_eth`)) {
        CRYPTOPUNKSTradeDTOObject[["price_eth"]] <-
          self$`price_eth`
      }
      if (!is.null(self$`buyer`)) {
        CRYPTOPUNKSTradeDTOObject[["buyer"]] <-
          self$`buyer`
      }
      if (!is.null(self$`seller`)) {
        CRYPTOPUNKSTradeDTOObject[["seller"]] <-
          self$`seller`
      }
      CRYPTOPUNKSTradeDTOObject
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSTradeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSTradeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSTradeDTO
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
      if (!is.null(this_object$`transaction_hash`)) {
        self$`transaction_hash` <- this_object$`transaction_hash`
      }
      if (!is.null(this_object$`log_index`)) {
        self$`log_index` <- this_object$`log_index`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`is_bundle`)) {
        self$`is_bundle` <- this_object$`is_bundle`
      }
      if (!is.null(this_object$`collection`)) {
        self$`collection` <- this_object$`collection`
      }
      if (!is.null(this_object$`token_id`)) {
        self$`token_id` <- this_object$`token_id`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`price_eth`)) {
        self$`price_eth` <- this_object$`price_eth`
      }
      if (!is.null(this_object$`buyer`)) {
        self$`buyer` <- this_object$`buyer`
      }
      if (!is.null(this_object$`seller`)) {
        self$`seller` <- this_object$`seller`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSTradeDTO in JSON format
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
        if (!is.null(self$`transaction_hash`)) {
          sprintf(
          '"transaction_hash":
            "%s"
                    ',
          self$`transaction_hash`
          )
        },
        if (!is.null(self$`log_index`)) {
          sprintf(
          '"log_index":
            %d
                    ',
          self$`log_index`
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
        if (!is.null(self$`is_bundle`)) {
          sprintf(
          '"is_bundle":
            %s
                    ',
          tolower(self$`is_bundle`)
          )
        },
        if (!is.null(self$`collection`)) {
          sprintf(
          '"collection":
            "%s"
                    ',
          self$`collection`
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
        if (!is.null(self$`amount`)) {
          sprintf(
          '"amount":
            "%s"
                    ',
          self$`amount`
          )
        },
        if (!is.null(self$`price_eth`)) {
          sprintf(
          '"price_eth":
            "%s"
                    ',
          self$`price_eth`
          )
        },
        if (!is.null(self$`buyer`)) {
          sprintf(
          '"buyer":
            "%s"
                    ',
          self$`buyer`
          )
        },
        if (!is.null(self$`seller`)) {
          sprintf(
          '"seller":
            "%s"
                    ',
          self$`seller`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSTradeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSTradeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSTradeDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self$`id` <- this_object$`id`
      self$`transaction_hash` <- this_object$`transaction_hash`
      self$`log_index` <- this_object$`log_index`
      self$`timestamp` <- this_object$`timestamp`
      self$`is_bundle` <- this_object$`is_bundle`
      self$`collection` <- this_object$`collection`
      self$`token_id` <- this_object$`token_id`
      self$`amount` <- this_object$`amount`
      self$`price_eth` <- this_object$`price_eth`
      self$`buyer` <- this_object$`buyer`
      self$`seller` <- this_object$`seller`
      self
    },
    #' Validate JSON input with respect to CRYPTOPUNKSTradeDTO
    #'
    #' @description
    #' Validate JSON input with respect to CRYPTOPUNKSTradeDTO and throw an exception if invalid
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
    #' @return String representation of CRYPTOPUNKSTradeDTO
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
# CRYPTOPUNKSTradeDTO$unlock()
#
## Below is an example to define the print function
# CRYPTOPUNKSTradeDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CRYPTOPUNKSTradeDTO$lock()

