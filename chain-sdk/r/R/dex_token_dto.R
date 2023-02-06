#' Create a new DexTokenDTO
#'
#' @description
#' Registered token.
#'
#' @docType class
#' @title DexTokenDTO
#' @description DexTokenDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field address  character [optional]
#' @field from_batch_id  character [optional]
#' @field symbol  character [optional]
#' @field decimals  character [optional]
#' @field name  character [optional]
#' @field sell_volume Cumulative sell volume. character [optional]
#' @field create_epoch  character [optional]
#' @field tx_hash  character [optional]
#' @field vid  integer [optional]
#' @field token_symbol  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DexTokenDTO <- R6::R6Class(
  "DexTokenDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `address` = NULL,
    `from_batch_id` = NULL,
    `symbol` = NULL,
    `decimals` = NULL,
    `name` = NULL,
    `sell_volume` = NULL,
    `create_epoch` = NULL,
    `tx_hash` = NULL,
    `vid` = NULL,
    `token_symbol` = NULL,
    #' Initialize a new DexTokenDTO class.
    #'
    #' @description
    #' Initialize a new DexTokenDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param address 
    #' @param from_batch_id 
    #' @param symbol 
    #' @param decimals 
    #' @param name 
    #' @param sell_volume Cumulative sell volume.
    #' @param create_epoch 
    #' @param tx_hash 
    #' @param vid 
    #' @param token_symbol token_symbol
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `address` = NULL, `from_batch_id` = NULL, `symbol` = NULL, `decimals` = NULL, `name` = NULL, `sell_volume` = NULL, `create_epoch` = NULL, `tx_hash` = NULL, `vid` = NULL, `token_symbol` = NULL, ...) {
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
      if (!is.null(`from_batch_id`)) {
        if (!(is.character(`from_batch_id`) && length(`from_batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `from_batch_id`. Must be a string:", `from_batch_id`))
        }
        self$`from_batch_id` <- `from_batch_id`
      }
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`decimals`)) {
        if (!(is.character(`decimals`) && length(`decimals`) == 1)) {
          stop(paste("Error! Invalid data for `decimals`. Must be a string:", `decimals`))
        }
        self$`decimals` <- `decimals`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`sell_volume`)) {
        if (!(is.character(`sell_volume`) && length(`sell_volume`) == 1)) {
          stop(paste("Error! Invalid data for `sell_volume`. Must be a string:", `sell_volume`))
        }
        self$`sell_volume` <- `sell_volume`
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
      if (!is.null(`token_symbol`)) {
        if (!(is.character(`token_symbol`) && length(`token_symbol`) == 1)) {
          stop(paste("Error! Invalid data for `token_symbol`. Must be a string:", `token_symbol`))
        }
        self$`token_symbol` <- `token_symbol`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DexTokenDTO in JSON format
    #' @export
    toJSON = function() {
      DexTokenDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        DexTokenDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        DexTokenDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        DexTokenDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        DexTokenDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`address`)) {
        DexTokenDTOObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`from_batch_id`)) {
        DexTokenDTOObject[["from_batch_id"]] <-
          self$`from_batch_id`
      }
      if (!is.null(self$`symbol`)) {
        DexTokenDTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`decimals`)) {
        DexTokenDTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`name`)) {
        DexTokenDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`sell_volume`)) {
        DexTokenDTOObject[["sell_volume"]] <-
          self$`sell_volume`
      }
      if (!is.null(self$`create_epoch`)) {
        DexTokenDTOObject[["create_epoch"]] <-
          self$`create_epoch`
      }
      if (!is.null(self$`tx_hash`)) {
        DexTokenDTOObject[["tx_hash"]] <-
          self$`tx_hash`
      }
      if (!is.null(self$`vid`)) {
        DexTokenDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`token_symbol`)) {
        DexTokenDTOObject[["token_symbol"]] <-
          self$`token_symbol`
      }
      DexTokenDTOObject
    },
    #' Deserialize JSON string into an instance of DexTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexTokenDTO
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
      if (!is.null(this_object$`from_batch_id`)) {
        self$`from_batch_id` <- this_object$`from_batch_id`
      }
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`decimals`)) {
        self$`decimals` <- this_object$`decimals`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`sell_volume`)) {
        self$`sell_volume` <- this_object$`sell_volume`
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
      if (!is.null(this_object$`token_symbol`)) {
        self$`token_symbol` <- this_object$`token_symbol`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DexTokenDTO in JSON format
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
        if (!is.null(self$`from_batch_id`)) {
          sprintf(
          '"from_batch_id":
            "%s"
                    ',
          self$`from_batch_id`
          )
        },
        if (!is.null(self$`symbol`)) {
          sprintf(
          '"symbol":
            "%s"
                    ',
          self$`symbol`
          )
        },
        if (!is.null(self$`decimals`)) {
          sprintf(
          '"decimals":
            "%s"
                    ',
          self$`decimals`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`sell_volume`)) {
          sprintf(
          '"sell_volume":
            "%s"
                    ',
          self$`sell_volume`
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
        },
        if (!is.null(self$`token_symbol`)) {
          sprintf(
          '"token_symbol":
            "%s"
                    ',
          self$`token_symbol`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DexTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexTokenDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`address` <- this_object$`address`
      self$`from_batch_id` <- this_object$`from_batch_id`
      self$`symbol` <- this_object$`symbol`
      self$`decimals` <- this_object$`decimals`
      self$`name` <- this_object$`name`
      self$`sell_volume` <- this_object$`sell_volume`
      self$`create_epoch` <- this_object$`create_epoch`
      self$`tx_hash` <- this_object$`tx_hash`
      self$`vid` <- this_object$`vid`
      self$`token_symbol` <- this_object$`token_symbol`
      self
    },
    #' Validate JSON input with respect to DexTokenDTO
    #'
    #' @description
    #' Validate JSON input with respect to DexTokenDTO and throw an exception if invalid
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
    #' @return String representation of DexTokenDTO
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
# DexTokenDTO$unlock()
#
## Below is an example to define the print function
# DexTokenDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DexTokenDTO$lock()

