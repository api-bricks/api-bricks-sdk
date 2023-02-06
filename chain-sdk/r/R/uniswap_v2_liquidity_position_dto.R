#' Create a new UniswapV2LiquidityPositionDTO
#'
#' @description
#' This entity is used to store data about a user's liquidity position. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more.
#'
#' @docType class
#' @title UniswapV2LiquidityPositionDTO
#' @description UniswapV2LiquidityPositionDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id User address and pair address concatenated with a dash. character [optional]
#' @field user Reference to user. character [optional]
#' @field pair Reference to the pair liquidity is being provided on. character [optional]
#' @field liquidity_token_balance Amount of LP tokens minted for this position. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2LiquidityPositionDTO <- R6::R6Class(
  "UniswapV2LiquidityPositionDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `user` = NULL,
    `pair` = NULL,
    `liquidity_token_balance` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV2LiquidityPositionDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2LiquidityPositionDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id User address and pair address concatenated with a dash.
    #' @param user Reference to user.
    #' @param pair Reference to the pair liquidity is being provided on.
    #' @param liquidity_token_balance Amount of LP tokens minted for this position.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `user` = NULL, `pair` = NULL, `liquidity_token_balance` = NULL, `vid` = NULL, ...) {
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
    #' @return UniswapV2LiquidityPositionDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2LiquidityPositionDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2LiquidityPositionDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2LiquidityPositionDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2LiquidityPositionDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV2LiquidityPositionDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`user`)) {
        UniswapV2LiquidityPositionDTOObject[["user"]] <-
          self$`user`
      }
      if (!is.null(self$`pair`)) {
        UniswapV2LiquidityPositionDTOObject[["pair"]] <-
          self$`pair`
      }
      if (!is.null(self$`liquidity_token_balance`)) {
        UniswapV2LiquidityPositionDTOObject[["liquidity_token_balance"]] <-
          self$`liquidity_token_balance`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2LiquidityPositionDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV2LiquidityPositionDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2LiquidityPositionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2LiquidityPositionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2LiquidityPositionDTO
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
    #' @return UniswapV2LiquidityPositionDTO in JSON format
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
    #' Deserialize JSON string into an instance of UniswapV2LiquidityPositionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2LiquidityPositionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2LiquidityPositionDTO
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
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV2LiquidityPositionDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2LiquidityPositionDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2LiquidityPositionDTO
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
# UniswapV2LiquidityPositionDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2LiquidityPositionDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2LiquidityPositionDTO$lock()

