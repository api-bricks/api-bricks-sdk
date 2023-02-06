#' Create a new SushiswapLiquidityPositionDTO
#'
#' @description
#' SushiswapLiquidityPositionDTO Class
#'
#' @docType class
#' @title SushiswapLiquidityPositionDTO
#' @description SushiswapLiquidityPositionDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, format: (pair address)-(user address) character [optional]
#' @field user User address. character [optional]
#' @field pair Pair address. character [optional]
#' @field liquidity_token_balance Amount of LP tokens minted for this position. character [optional]
#' @field block Block number at which position was created. integer [optional]
#' @field timestamp Creation time. integer [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SushiswapLiquidityPositionDTO <- R6::R6Class(
  "SushiswapLiquidityPositionDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `user` = NULL,
    `pair` = NULL,
    `liquidity_token_balance` = NULL,
    `block` = NULL,
    `timestamp` = NULL,
    `vid` = NULL,
    #' Initialize a new SushiswapLiquidityPositionDTO class.
    #'
    #' @description
    #' Initialize a new SushiswapLiquidityPositionDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, format: (pair address)-(user address)
    #' @param user User address.
    #' @param pair Pair address.
    #' @param liquidity_token_balance Amount of LP tokens minted for this position.
    #' @param block Block number at which position was created.
    #' @param timestamp Creation time.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `user` = NULL, `pair` = NULL, `liquidity_token_balance` = NULL, `block` = NULL, `timestamp` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`user`)) {
        if (!(is.character(`user`) && length(`user`) == 1)) {
          stop(paste("Error! Invalid data for `user`. Must be a string:", `user`))
        }
        self$`user` <- `user`
      }
      if (!is.null(`pair`)) {
        if (!(is.character(`pair`) && length(`pair`) == 1)) {
          stop(paste("Error! Invalid data for `pair`. Must be a string:", `pair`))
        }
        self$`pair` <- `pair`
      }
      if (!is.null(`liquidity_token_balance`)) {
        if (!(is.character(`liquidity_token_balance`) && length(`liquidity_token_balance`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_token_balance`. Must be a string:", `liquidity_token_balance`))
        }
        self$`liquidity_token_balance` <- `liquidity_token_balance`
      }
      if (!is.null(`block`)) {
        if (!(is.numeric(`block`) && length(`block`) == 1)) {
          stop(paste("Error! Invalid data for `block`. Must be an integer:", `block`))
        }
        self$`block` <- `block`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.numeric(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be an integer:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
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
    #' @return SushiswapLiquidityPositionDTO in JSON format
    #' @export
    toJSON = function() {
      SushiswapLiquidityPositionDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SushiswapLiquidityPositionDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SushiswapLiquidityPositionDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SushiswapLiquidityPositionDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SushiswapLiquidityPositionDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`user`)) {
        SushiswapLiquidityPositionDTOObject[["user"]] <-
          self$`user`
      }
      if (!is.null(self$`pair`)) {
        SushiswapLiquidityPositionDTOObject[["pair"]] <-
          self$`pair`
      }
      if (!is.null(self$`liquidity_token_balance`)) {
        SushiswapLiquidityPositionDTOObject[["liquidity_token_balance"]] <-
          self$`liquidity_token_balance`
      }
      if (!is.null(self$`block`)) {
        SushiswapLiquidityPositionDTOObject[["block"]] <-
          self$`block`
      }
      if (!is.null(self$`timestamp`)) {
        SushiswapLiquidityPositionDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`vid`)) {
        SushiswapLiquidityPositionDTOObject[["vid"]] <-
          self$`vid`
      }
      SushiswapLiquidityPositionDTOObject
    },
    #' Deserialize JSON string into an instance of SushiswapLiquidityPositionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapLiquidityPositionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapLiquidityPositionDTO
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
      if (!is.null(this_object$`user`)) {
        self$`user` <- this_object$`user`
      }
      if (!is.null(this_object$`pair`)) {
        self$`pair` <- this_object$`pair`
      }
      if (!is.null(this_object$`liquidity_token_balance`)) {
        self$`liquidity_token_balance` <- this_object$`liquidity_token_balance`
      }
      if (!is.null(this_object$`block`)) {
        self$`block` <- this_object$`block`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
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
    #' @return SushiswapLiquidityPositionDTO in JSON format
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
        if (!is.null(self$`user`)) {
          sprintf(
          '"user":
            "%s"
                    ',
          self$`user`
          )
        },
        if (!is.null(self$`pair`)) {
          sprintf(
          '"pair":
            "%s"
                    ',
          self$`pair`
          )
        },
        if (!is.null(self$`liquidity_token_balance`)) {
          sprintf(
          '"liquidity_token_balance":
            "%s"
                    ',
          self$`liquidity_token_balance`
          )
        },
        if (!is.null(self$`block`)) {
          sprintf(
          '"block":
            %d
                    ',
          self$`block`
          )
        },
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            %d
                    ',
          self$`timestamp`
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
    #' Deserialize JSON string into an instance of SushiswapLiquidityPositionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapLiquidityPositionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapLiquidityPositionDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`user` <- this_object$`user`
      self$`pair` <- this_object$`pair`
      self$`liquidity_token_balance` <- this_object$`liquidity_token_balance`
      self$`block` <- this_object$`block`
      self$`timestamp` <- this_object$`timestamp`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to SushiswapLiquidityPositionDTO
    #'
    #' @description
    #' Validate JSON input with respect to SushiswapLiquidityPositionDTO and throw an exception if invalid
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
    #' @return String representation of SushiswapLiquidityPositionDTO
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
# SushiswapLiquidityPositionDTO$unlock()
#
## Below is an example to define the print function
# SushiswapLiquidityPositionDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SushiswapLiquidityPositionDTO$lock()

