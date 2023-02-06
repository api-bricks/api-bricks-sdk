#' Create a new UniswapV2BundleDTO
#'
#' @description
#' The Bundle is used as a global store of derived ETH price in USD. Because there is no guaranteed common base token across pairs, a global reference of USD price is useful for deriving other USD values. The Bundle entity stores an updated weighted average of ETH<->Stablecoin pair prices. This provides a strong estimate for the USD price of ETH.
#'
#' @docType class
#' @title UniswapV2BundleDTO
#' @description UniswapV2BundleDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Constant 1. character [optional]
#' @field eth_price Derived price of ETH in USD based on stablecoin pairs. character [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2BundleDTO <- R6::R6Class(
  "UniswapV2BundleDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `eth_price` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    #' Initialize a new UniswapV2BundleDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2BundleDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Constant 1.
    #' @param eth_price Derived price of ETH in USD based on stablecoin pairs.
    #' @param vid 
    #' @param block_range 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `eth_price` = NULL, `vid` = NULL, `block_range` = NULL, ...) {
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
      if (!is.null(`eth_price`)) {
        if (!(is.character(`eth_price`) && length(`eth_price`) == 1)) {
          stop(paste("Error! Invalid data for `eth_price`. Must be a string:", `eth_price`))
        }
        self$`eth_price` <- `eth_price`
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV2BundleDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2BundleDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2BundleDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2BundleDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2BundleDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV2BundleDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`eth_price`)) {
        UniswapV2BundleDTOObject[["eth_price"]] <-
          self$`eth_price`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2BundleDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        UniswapV2BundleDTOObject[["block_range"]] <-
          self$`block_range`
      }
      UniswapV2BundleDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2BundleDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2BundleDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2BundleDTO
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
      if (!is.null(this_object$`eth_price`)) {
        self$`eth_price` <- this_object$`eth_price`
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`block_range`)) {
        self$`block_range` <- this_object$`block_range`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV2BundleDTO in JSON format
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
        if (!is.null(self$`eth_price`)) {
          sprintf(
          '"eth_price":
            "%s"
                    ',
          self$`eth_price`
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UniswapV2BundleDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2BundleDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2BundleDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`eth_price` <- this_object$`eth_price`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self
    },
    #' Validate JSON input with respect to UniswapV2BundleDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2BundleDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2BundleDTO
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
# UniswapV2BundleDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2BundleDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2BundleDTO$lock()

