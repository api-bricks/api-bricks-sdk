#' Create a new SushiswapTransactionDTO
#'
#' @description
#' Transaction entities are created for each Ethereum transaction that contains an interaction within Sushiswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.
#'
#' @docType class
#' @title SushiswapTransactionDTO
#' @description SushiswapTransactionDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Ethereum transaction hash. character [optional]
#' @field timestamp Timestamp. character [optional]
#' @field mints Array of Mint events within the transaction, 0 or greater. list(character) [optional]
#' @field burns Array of Burn events within transaction, 0 or greater. list(character) [optional]
#' @field swaps Array of Swap events within transaction, 0 or greater. list(character) [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SushiswapTransactionDTO <- R6::R6Class(
  "SushiswapTransactionDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `timestamp` = NULL,
    `mints` = NULL,
    `burns` = NULL,
    `swaps` = NULL,
    `vid` = NULL,
    #' Initialize a new SushiswapTransactionDTO class.
    #'
    #' @description
    #' Initialize a new SushiswapTransactionDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Ethereum transaction hash.
    #' @param timestamp Timestamp.
    #' @param mints Array of Mint events within the transaction, 0 or greater.
    #' @param burns Array of Burn events within transaction, 0 or greater.
    #' @param swaps Array of Swap events within transaction, 0 or greater.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `timestamp` = NULL, `mints` = NULL, `burns` = NULL, `swaps` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`mints`)) {
        stopifnot(is.vector(`mints`), length(`mints`) != 0)
        sapply(`mints`, function(x) stopifnot(is.character(x)))
        self$`mints` <- `mints`
      }
      if (!is.null(`burns`)) {
        stopifnot(is.vector(`burns`), length(`burns`) != 0)
        sapply(`burns`, function(x) stopifnot(is.character(x)))
        self$`burns` <- `burns`
      }
      if (!is.null(`swaps`)) {
        stopifnot(is.vector(`swaps`), length(`swaps`) != 0)
        sapply(`swaps`, function(x) stopifnot(is.character(x)))
        self$`swaps` <- `swaps`
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
    #' @return SushiswapTransactionDTO in JSON format
    #' @export
    toJSON = function() {
      SushiswapTransactionDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SushiswapTransactionDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SushiswapTransactionDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SushiswapTransactionDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SushiswapTransactionDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`timestamp`)) {
        SushiswapTransactionDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`mints`)) {
        SushiswapTransactionDTOObject[["mints"]] <-
          self$`mints`
      }
      if (!is.null(self$`burns`)) {
        SushiswapTransactionDTOObject[["burns"]] <-
          self$`burns`
      }
      if (!is.null(self$`swaps`)) {
        SushiswapTransactionDTOObject[["swaps"]] <-
          self$`swaps`
      }
      if (!is.null(self$`vid`)) {
        SushiswapTransactionDTOObject[["vid"]] <-
          self$`vid`
      }
      SushiswapTransactionDTOObject
    },
    #' Deserialize JSON string into an instance of SushiswapTransactionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapTransactionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapTransactionDTO
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
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`mints`)) {
        self$`mints` <- ApiClient$new()$deserializeObj(this_object$`mints`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`burns`)) {
        self$`burns` <- ApiClient$new()$deserializeObj(this_object$`burns`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`swaps`)) {
        self$`swaps` <- ApiClient$new()$deserializeObj(this_object$`swaps`, "array[character]", loadNamespace("openapi"))
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
    #' @return SushiswapTransactionDTO in JSON format
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
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`mints`)) {
          sprintf(
          '"mints":
             [%s]
          ',
          paste(unlist(lapply(self$`mints`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`burns`)) {
          sprintf(
          '"burns":
             [%s]
          ',
          paste(unlist(lapply(self$`burns`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`swaps`)) {
          sprintf(
          '"swaps":
             [%s]
          ',
          paste(unlist(lapply(self$`swaps`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of SushiswapTransactionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapTransactionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapTransactionDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`timestamp` <- this_object$`timestamp`
      self$`mints` <- ApiClient$new()$deserializeObj(this_object$`mints`, "array[character]", loadNamespace("openapi"))
      self$`burns` <- ApiClient$new()$deserializeObj(this_object$`burns`, "array[character]", loadNamespace("openapi"))
      self$`swaps` <- ApiClient$new()$deserializeObj(this_object$`swaps`, "array[character]", loadNamespace("openapi"))
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to SushiswapTransactionDTO
    #'
    #' @description
    #' Validate JSON input with respect to SushiswapTransactionDTO and throw an exception if invalid
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
    #' @return String representation of SushiswapTransactionDTO
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
# SushiswapTransactionDTO$unlock()
#
## Below is an example to define the print function
# SushiswapTransactionDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SushiswapTransactionDTO$lock()

