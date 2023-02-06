#' Create a new CurveGaugeLiquidityDTO
#'
#' @description
#' CurveGaugeLiquidityDTO Class
#'
#' @docType class
#' @title CurveGaugeLiquidityDTO
#' @description CurveGaugeLiquidityDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field user  character [optional]
#' @field gauge  character [optional]
#' @field original_balance  character [optional]
#' @field original_supply  character [optional]
#' @field working_balance  character [optional]
#' @field working_supply  character [optional]
#' @field timestamp  character [optional]
#' @field block  character [optional]
#' @field transaction  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveGaugeLiquidityDTO <- R6::R6Class(
  "CurveGaugeLiquidityDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `user` = NULL,
    `gauge` = NULL,
    `original_balance` = NULL,
    `original_supply` = NULL,
    `working_balance` = NULL,
    `working_supply` = NULL,
    `timestamp` = NULL,
    `block` = NULL,
    `transaction` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveGaugeLiquidityDTO class.
    #'
    #' @description
    #' Initialize a new CurveGaugeLiquidityDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param user 
    #' @param gauge 
    #' @param original_balance 
    #' @param original_supply 
    #' @param working_balance 
    #' @param working_supply 
    #' @param timestamp 
    #' @param block 
    #' @param transaction 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `user` = NULL, `gauge` = NULL, `original_balance` = NULL, `original_supply` = NULL, `working_balance` = NULL, `working_supply` = NULL, `timestamp` = NULL, `block` = NULL, `transaction` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`gauge`)) {
        if (!(is.character(`gauge`) && length(`gauge`) == 1)) {
          stop(paste("Error! Invalid data for `gauge`. Must be a string:", `gauge`))
        }
        self$`gauge` <- `gauge`
      }
      if (!is.null(`original_balance`)) {
        if (!(is.character(`original_balance`) && length(`original_balance`) == 1)) {
          stop(paste("Error! Invalid data for `original_balance`. Must be a string:", `original_balance`))
        }
        self$`original_balance` <- `original_balance`
      }
      if (!is.null(`original_supply`)) {
        if (!(is.character(`original_supply`) && length(`original_supply`) == 1)) {
          stop(paste("Error! Invalid data for `original_supply`. Must be a string:", `original_supply`))
        }
        self$`original_supply` <- `original_supply`
      }
      if (!is.null(`working_balance`)) {
        if (!(is.character(`working_balance`) && length(`working_balance`) == 1)) {
          stop(paste("Error! Invalid data for `working_balance`. Must be a string:", `working_balance`))
        }
        self$`working_balance` <- `working_balance`
      }
      if (!is.null(`working_supply`)) {
        if (!(is.character(`working_supply`) && length(`working_supply`) == 1)) {
          stop(paste("Error! Invalid data for `working_supply`. Must be a string:", `working_supply`))
        }
        self$`working_supply` <- `working_supply`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`block`)) {
        if (!(is.character(`block`) && length(`block`) == 1)) {
          stop(paste("Error! Invalid data for `block`. Must be a string:", `block`))
        }
        self$`block` <- `block`
      }
      if (!is.null(`transaction`)) {
        if (!(is.character(`transaction`) && length(`transaction`) == 1)) {
          stop(paste("Error! Invalid data for `transaction`. Must be a string:", `transaction`))
        }
        self$`transaction` <- `transaction`
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
    #' @return CurveGaugeLiquidityDTO in JSON format
    #' @export
    toJSON = function() {
      CurveGaugeLiquidityDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveGaugeLiquidityDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveGaugeLiquidityDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveGaugeLiquidityDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveGaugeLiquidityDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`user`)) {
        CurveGaugeLiquidityDTOObject[["user"]] <-
          self$`user`
      }
      if (!is.null(self$`gauge`)) {
        CurveGaugeLiquidityDTOObject[["gauge"]] <-
          self$`gauge`
      }
      if (!is.null(self$`original_balance`)) {
        CurveGaugeLiquidityDTOObject[["original_balance"]] <-
          self$`original_balance`
      }
      if (!is.null(self$`original_supply`)) {
        CurveGaugeLiquidityDTOObject[["original_supply"]] <-
          self$`original_supply`
      }
      if (!is.null(self$`working_balance`)) {
        CurveGaugeLiquidityDTOObject[["working_balance"]] <-
          self$`working_balance`
      }
      if (!is.null(self$`working_supply`)) {
        CurveGaugeLiquidityDTOObject[["working_supply"]] <-
          self$`working_supply`
      }
      if (!is.null(self$`timestamp`)) {
        CurveGaugeLiquidityDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`block`)) {
        CurveGaugeLiquidityDTOObject[["block"]] <-
          self$`block`
      }
      if (!is.null(self$`transaction`)) {
        CurveGaugeLiquidityDTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveGaugeLiquidityDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveGaugeLiquidityDTOObject
    },
    #' Deserialize JSON string into an instance of CurveGaugeLiquidityDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveGaugeLiquidityDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveGaugeLiquidityDTO
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
      if (!is.null(this_object$`gauge`)) {
        self$`gauge` <- this_object$`gauge`
      }
      if (!is.null(this_object$`original_balance`)) {
        self$`original_balance` <- this_object$`original_balance`
      }
      if (!is.null(this_object$`original_supply`)) {
        self$`original_supply` <- this_object$`original_supply`
      }
      if (!is.null(this_object$`working_balance`)) {
        self$`working_balance` <- this_object$`working_balance`
      }
      if (!is.null(this_object$`working_supply`)) {
        self$`working_supply` <- this_object$`working_supply`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`block`)) {
        self$`block` <- this_object$`block`
      }
      if (!is.null(this_object$`transaction`)) {
        self$`transaction` <- this_object$`transaction`
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
    #' @return CurveGaugeLiquidityDTO in JSON format
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
        if (!is.null(self$`gauge`)) {
          sprintf(
          '"gauge":
            "%s"
                    ',
          self$`gauge`
          )
        },
        if (!is.null(self$`original_balance`)) {
          sprintf(
          '"original_balance":
            "%s"
                    ',
          self$`original_balance`
          )
        },
        if (!is.null(self$`original_supply`)) {
          sprintf(
          '"original_supply":
            "%s"
                    ',
          self$`original_supply`
          )
        },
        if (!is.null(self$`working_balance`)) {
          sprintf(
          '"working_balance":
            "%s"
                    ',
          self$`working_balance`
          )
        },
        if (!is.null(self$`working_supply`)) {
          sprintf(
          '"working_supply":
            "%s"
                    ',
          self$`working_supply`
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
        if (!is.null(self$`block`)) {
          sprintf(
          '"block":
            "%s"
                    ',
          self$`block`
          )
        },
        if (!is.null(self$`transaction`)) {
          sprintf(
          '"transaction":
            "%s"
                    ',
          self$`transaction`
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
    #' Deserialize JSON string into an instance of CurveGaugeLiquidityDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveGaugeLiquidityDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveGaugeLiquidityDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`user` <- this_object$`user`
      self$`gauge` <- this_object$`gauge`
      self$`original_balance` <- this_object$`original_balance`
      self$`original_supply` <- this_object$`original_supply`
      self$`working_balance` <- this_object$`working_balance`
      self$`working_supply` <- this_object$`working_supply`
      self$`timestamp` <- this_object$`timestamp`
      self$`block` <- this_object$`block`
      self$`transaction` <- this_object$`transaction`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveGaugeLiquidityDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveGaugeLiquidityDTO and throw an exception if invalid
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
    #' @return String representation of CurveGaugeLiquidityDTO
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
# CurveGaugeLiquidityDTO$unlock()
#
## Below is an example to define the print function
# CurveGaugeLiquidityDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveGaugeLiquidityDTO$lock()

