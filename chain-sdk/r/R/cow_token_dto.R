#' Create a new CowTokenDTO
#'
#' @description
#' Stores information for a specific token across all pairs that token is included in.
#'
#' @docType class
#' @title CowTokenDTO
#' @description CowTokenDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Token's address. character [optional]
#' @field address Token's address. character [optional]
#' @field first_trade_timestamp First token trade block timestamp. character [optional]
#' @field name Token name fetched by ERC20 contract call. character [optional]
#' @field symbol Token symbol fetched by contract call. character [optional]
#' @field decimals Token decimals fetched by contract call. integer [optional]
#' @field total_volume Sum of total amount traded for this token. character [optional]
#' @field vid  integer [optional]
#' @field token_symbol  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CowTokenDTO <- R6::R6Class(
  "CowTokenDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `address` = NULL,
    `first_trade_timestamp` = NULL,
    `name` = NULL,
    `symbol` = NULL,
    `decimals` = NULL,
    `total_volume` = NULL,
    `vid` = NULL,
    `token_symbol` = NULL,
    #' Initialize a new CowTokenDTO class.
    #'
    #' @description
    #' Initialize a new CowTokenDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Token's address.
    #' @param address Token's address.
    #' @param first_trade_timestamp First token trade block timestamp.
    #' @param name Token name fetched by ERC20 contract call.
    #' @param symbol Token symbol fetched by contract call.
    #' @param decimals Token decimals fetched by contract call.
    #' @param total_volume Sum of total amount traded for this token.
    #' @param vid 
    #' @param token_symbol token_symbol
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `address` = NULL, `first_trade_timestamp` = NULL, `name` = NULL, `symbol` = NULL, `decimals` = NULL, `total_volume` = NULL, `vid` = NULL, `token_symbol` = NULL, ...) {
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`decimals`)) {
        if (!(is.numeric(`decimals`) && length(`decimals`) == 1)) {
          stop(paste("Error! Invalid data for `decimals`. Must be an integer:", `decimals`))
        }
        self$`decimals` <- `decimals`
      }
      if (!is.null(`total_volume`)) {
        if (!(is.character(`total_volume`) && length(`total_volume`) == 1)) {
          stop(paste("Error! Invalid data for `total_volume`. Must be a string:", `total_volume`))
        }
        self$`total_volume` <- `total_volume`
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
    #' @return CowTokenDTO in JSON format
    #' @export
    toJSON = function() {
      CowTokenDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CowTokenDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CowTokenDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CowTokenDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CowTokenDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`address`)) {
        CowTokenDTOObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`first_trade_timestamp`)) {
        CowTokenDTOObject[["first_trade_timestamp"]] <-
          self$`first_trade_timestamp`
      }
      if (!is.null(self$`name`)) {
        CowTokenDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`symbol`)) {
        CowTokenDTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`decimals`)) {
        CowTokenDTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`total_volume`)) {
        CowTokenDTOObject[["total_volume"]] <-
          self$`total_volume`
      }
      if (!is.null(self$`vid`)) {
        CowTokenDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`token_symbol`)) {
        CowTokenDTOObject[["token_symbol"]] <-
          self$`token_symbol`
      }
      CowTokenDTOObject
    },
    #' Deserialize JSON string into an instance of CowTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowTokenDTO
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`decimals`)) {
        self$`decimals` <- this_object$`decimals`
      }
      if (!is.null(this_object$`total_volume`)) {
        self$`total_volume` <- this_object$`total_volume`
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
    #' @return CowTokenDTO in JSON format
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
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
            %d
                    ',
          self$`decimals`
          )
        },
        if (!is.null(self$`total_volume`)) {
          sprintf(
          '"total_volume":
            "%s"
                    ',
          self$`total_volume`
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
    #' Deserialize JSON string into an instance of CowTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CowTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CowTokenDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`address` <- this_object$`address`
      self$`first_trade_timestamp` <- this_object$`first_trade_timestamp`
      self$`name` <- this_object$`name`
      self$`symbol` <- this_object$`symbol`
      self$`decimals` <- this_object$`decimals`
      self$`total_volume` <- this_object$`total_volume`
      self$`vid` <- this_object$`vid`
      self$`token_symbol` <- this_object$`token_symbol`
      self
    },
    #' Validate JSON input with respect to CowTokenDTO
    #'
    #' @description
    #' Validate JSON input with respect to CowTokenDTO and throw an exception if invalid
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
    #' @return String representation of CowTokenDTO
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
# CowTokenDTO$unlock()
#
## Below is an example to define the print function
# CowTokenDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CowTokenDTO$lock()

