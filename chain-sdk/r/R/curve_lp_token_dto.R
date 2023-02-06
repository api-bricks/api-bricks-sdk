#' Create a new CurveLpTokenDTO
#'
#' @description
#' CurveLpTokenDTO Class
#'
#' @docType class
#' @title CurveLpTokenDTO
#' @description CurveLpTokenDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field address  character [optional]
#' @field decimals  character [optional]
#' @field name  character [optional]
#' @field symbol  character [optional]
#' @field gauge  character [optional]
#' @field pool  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveLpTokenDTO <- R6::R6Class(
  "CurveLpTokenDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `address` = NULL,
    `decimals` = NULL,
    `name` = NULL,
    `symbol` = NULL,
    `gauge` = NULL,
    `pool` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveLpTokenDTO class.
    #'
    #' @description
    #' Initialize a new CurveLpTokenDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param address 
    #' @param decimals 
    #' @param name 
    #' @param symbol 
    #' @param gauge 
    #' @param pool 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `address` = NULL, `decimals` = NULL, `name` = NULL, `symbol` = NULL, `gauge` = NULL, `pool` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`gauge`)) {
        if (!(is.character(`gauge`) && length(`gauge`) == 1)) {
          stop(paste("Error! Invalid data for `gauge`. Must be a string:", `gauge`))
        }
        self$`gauge` <- `gauge`
      }
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
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
    #' @return CurveLpTokenDTO in JSON format
    #' @export
    toJSON = function() {
      CurveLpTokenDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveLpTokenDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveLpTokenDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveLpTokenDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveLpTokenDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`address`)) {
        CurveLpTokenDTOObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`decimals`)) {
        CurveLpTokenDTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`name`)) {
        CurveLpTokenDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`symbol`)) {
        CurveLpTokenDTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`gauge`)) {
        CurveLpTokenDTOObject[["gauge"]] <-
          self$`gauge`
      }
      if (!is.null(self$`pool`)) {
        CurveLpTokenDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`vid`)) {
        CurveLpTokenDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveLpTokenDTOObject
    },
    #' Deserialize JSON string into an instance of CurveLpTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveLpTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveLpTokenDTO
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
      if (!is.null(this_object$`gauge`)) {
        self$`gauge` <- this_object$`gauge`
      }
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
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
    #' @return CurveLpTokenDTO in JSON format
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
        if (!is.null(self$`gauge`)) {
          sprintf(
          '"gauge":
            "%s"
                    ',
          self$`gauge`
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
    #' Deserialize JSON string into an instance of CurveLpTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveLpTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveLpTokenDTO
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
      self$`gauge` <- this_object$`gauge`
      self$`pool` <- this_object$`pool`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveLpTokenDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveLpTokenDTO and throw an exception if invalid
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
    #' @return String representation of CurveLpTokenDTO
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
# CurveLpTokenDTO$unlock()
#
## Below is an example to define the print function
# CurveLpTokenDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveLpTokenDTO$lock()

