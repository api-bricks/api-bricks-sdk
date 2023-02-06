#' Create a new CurveTokenDTO
#'
#' @description
#' CurveTokenDTO Class
#'
#' @docType class
#' @title CurveTokenDTO
#' @description CurveTokenDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field address  character [optional]
#' @field decimals  character [optional]
#' @field name  character [optional]
#' @field symbol  character [optional]
#' @field pools  list(character) [optional]
#' @field vid  integer [optional]
#' @field token_symbol  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveTokenDTO <- R6::R6Class(
  "CurveTokenDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `address` = NULL,
    `decimals` = NULL,
    `name` = NULL,
    `symbol` = NULL,
    `pools` = NULL,
    `vid` = NULL,
    `token_symbol` = NULL,
    #' Initialize a new CurveTokenDTO class.
    #'
    #' @description
    #' Initialize a new CurveTokenDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param address 
    #' @param decimals 
    #' @param name 
    #' @param symbol 
    #' @param pools 
    #' @param vid 
    #' @param token_symbol token_symbol
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `address` = NULL, `decimals` = NULL, `name` = NULL, `symbol` = NULL, `pools` = NULL, `vid` = NULL, `token_symbol` = NULL, ...) {
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
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`pools`)) {
        stopifnot(is.vector(`pools`), length(`pools`) != 0)
        sapply(`pools`, function(x) stopifnot(is.character(x)))
        self$`pools` <- `pools`
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
    #' @return CurveTokenDTO in JSON format
    #' @export
    toJSON = function() {
      CurveTokenDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveTokenDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveTokenDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveTokenDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveTokenDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`address`)) {
        CurveTokenDTOObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`decimals`)) {
        CurveTokenDTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`name`)) {
        CurveTokenDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`symbol`)) {
        CurveTokenDTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`pools`)) {
        CurveTokenDTOObject[["pools"]] <-
          self$`pools`
      }
      if (!is.null(self$`vid`)) {
        CurveTokenDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`token_symbol`)) {
        CurveTokenDTOObject[["token_symbol"]] <-
          self$`token_symbol`
      }
      CurveTokenDTOObject
    },
    #' Deserialize JSON string into an instance of CurveTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveTokenDTO
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
      if (!is.null(this_object$`decimals`)) {
        self$`decimals` <- this_object$`decimals`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`pools`)) {
        self$`pools` <- ApiClient$new()$deserializeObj(this_object$`pools`, "array[character]", loadNamespace("openapi"))
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
    #' @return CurveTokenDTO in JSON format
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
        if (!is.null(self$`symbol`)) {
          sprintf(
          '"symbol":
            "%s"
                    ',
          self$`symbol`
          )
        },
        if (!is.null(self$`pools`)) {
          sprintf(
          '"pools":
             [%s]
          ',
          paste(unlist(lapply(self$`pools`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of CurveTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveTokenDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`address` <- this_object$`address`
      self$`decimals` <- this_object$`decimals`
      self$`name` <- this_object$`name`
      self$`symbol` <- this_object$`symbol`
      self$`pools` <- ApiClient$new()$deserializeObj(this_object$`pools`, "array[character]", loadNamespace("openapi"))
      self$`vid` <- this_object$`vid`
      self$`token_symbol` <- this_object$`token_symbol`
      self
    },
    #' Validate JSON input with respect to CurveTokenDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveTokenDTO and throw an exception if invalid
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
    #' @return String representation of CurveTokenDTO
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
# CurveTokenDTO$unlock()
#
## Below is an example to define the print function
# CurveTokenDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveTokenDTO$lock()

