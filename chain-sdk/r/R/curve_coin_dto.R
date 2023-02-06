#' Create a new CurveCoinDTO
#'
#' @description
#' CurveCoinDTO Class
#'
#' @docType class
#' @title CurveCoinDTO
#' @description CurveCoinDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, format: (pool_id)-(coin_index). character [optional]
#' @field index Coin index. integer [optional]
#' @field pool  character [optional]
#' @field token  character [optional]
#' @field underlying  character [optional]
#' @field balance  character [optional]
#' @field rate Exchange rate between this coin and the associated underlying coin within the pool. character [optional]
#' @field updated  character [optional]
#' @field updated_at_block  character [optional]
#' @field updated_at_transaction  character [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveCoinDTO <- R6::R6Class(
  "CurveCoinDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `index` = NULL,
    `pool` = NULL,
    `token` = NULL,
    `underlying` = NULL,
    `balance` = NULL,
    `rate` = NULL,
    `updated` = NULL,
    `updated_at_block` = NULL,
    `updated_at_transaction` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    #' Initialize a new CurveCoinDTO class.
    #'
    #' @description
    #' Initialize a new CurveCoinDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, format: (pool_id)-(coin_index).
    #' @param index Coin index.
    #' @param pool 
    #' @param token 
    #' @param underlying 
    #' @param balance 
    #' @param rate Exchange rate between this coin and the associated underlying coin within the pool.
    #' @param updated 
    #' @param updated_at_block 
    #' @param updated_at_transaction 
    #' @param vid 
    #' @param block_range 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `index` = NULL, `pool` = NULL, `token` = NULL, `underlying` = NULL, `balance` = NULL, `rate` = NULL, `updated` = NULL, `updated_at_block` = NULL, `updated_at_transaction` = NULL, `vid` = NULL, `block_range` = NULL, ...) {
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
      if (!is.null(`index`)) {
        if (!(is.numeric(`index`) && length(`index`) == 1)) {
          stop(paste("Error! Invalid data for `index`. Must be an integer:", `index`))
        }
        self$`index` <- `index`
      }
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
      }
      if (!is.null(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
      if (!is.null(`underlying`)) {
        if (!(is.character(`underlying`) && length(`underlying`) == 1)) {
          stop(paste("Error! Invalid data for `underlying`. Must be a string:", `underlying`))
        }
        self$`underlying` <- `underlying`
      }
      if (!is.null(`balance`)) {
        if (!(is.character(`balance`) && length(`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a string:", `balance`))
        }
        self$`balance` <- `balance`
      }
      if (!is.null(`rate`)) {
        if (!(is.character(`rate`) && length(`rate`) == 1)) {
          stop(paste("Error! Invalid data for `rate`. Must be a string:", `rate`))
        }
        self$`rate` <- `rate`
      }
      if (!is.null(`updated`)) {
        if (!(is.character(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be a string:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`updated_at_block`)) {
        if (!(is.character(`updated_at_block`) && length(`updated_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at_block`. Must be a string:", `updated_at_block`))
        }
        self$`updated_at_block` <- `updated_at_block`
      }
      if (!is.null(`updated_at_transaction`)) {
        if (!(is.character(`updated_at_transaction`) && length(`updated_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at_transaction`. Must be a string:", `updated_at_transaction`))
        }
        self$`updated_at_transaction` <- `updated_at_transaction`
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
    #' @return CurveCoinDTO in JSON format
    #' @export
    toJSON = function() {
      CurveCoinDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveCoinDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveCoinDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveCoinDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveCoinDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`index`)) {
        CurveCoinDTOObject[["index"]] <-
          self$`index`
      }
      if (!is.null(self$`pool`)) {
        CurveCoinDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`token`)) {
        CurveCoinDTOObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`underlying`)) {
        CurveCoinDTOObject[["underlying"]] <-
          self$`underlying`
      }
      if (!is.null(self$`balance`)) {
        CurveCoinDTOObject[["balance"]] <-
          self$`balance`
      }
      if (!is.null(self$`rate`)) {
        CurveCoinDTOObject[["rate"]] <-
          self$`rate`
      }
      if (!is.null(self$`updated`)) {
        CurveCoinDTOObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`updated_at_block`)) {
        CurveCoinDTOObject[["updated_at_block"]] <-
          self$`updated_at_block`
      }
      if (!is.null(self$`updated_at_transaction`)) {
        CurveCoinDTOObject[["updated_at_transaction"]] <-
          self$`updated_at_transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveCoinDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        CurveCoinDTOObject[["block_range"]] <-
          self$`block_range`
      }
      CurveCoinDTOObject
    },
    #' Deserialize JSON string into an instance of CurveCoinDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveCoinDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveCoinDTO
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
      if (!is.null(this_object$`index`)) {
        self$`index` <- this_object$`index`
      }
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`underlying`)) {
        self$`underlying` <- this_object$`underlying`
      }
      if (!is.null(this_object$`balance`)) {
        self$`balance` <- this_object$`balance`
      }
      if (!is.null(this_object$`rate`)) {
        self$`rate` <- this_object$`rate`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`updated_at_block`)) {
        self$`updated_at_block` <- this_object$`updated_at_block`
      }
      if (!is.null(this_object$`updated_at_transaction`)) {
        self$`updated_at_transaction` <- this_object$`updated_at_transaction`
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
    #' @return CurveCoinDTO in JSON format
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
        if (!is.null(self$`index`)) {
          sprintf(
          '"index":
            %d
                    ',
          self$`index`
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
        if (!is.null(self$`token`)) {
          sprintf(
          '"token":
            "%s"
                    ',
          self$`token`
          )
        },
        if (!is.null(self$`underlying`)) {
          sprintf(
          '"underlying":
            "%s"
                    ',
          self$`underlying`
          )
        },
        if (!is.null(self$`balance`)) {
          sprintf(
          '"balance":
            "%s"
                    ',
          self$`balance`
          )
        },
        if (!is.null(self$`rate`)) {
          sprintf(
          '"rate":
            "%s"
                    ',
          self$`rate`
          )
        },
        if (!is.null(self$`updated`)) {
          sprintf(
          '"updated":
            "%s"
                    ',
          self$`updated`
          )
        },
        if (!is.null(self$`updated_at_block`)) {
          sprintf(
          '"updated_at_block":
            "%s"
                    ',
          self$`updated_at_block`
          )
        },
        if (!is.null(self$`updated_at_transaction`)) {
          sprintf(
          '"updated_at_transaction":
            "%s"
                    ',
          self$`updated_at_transaction`
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
    #' Deserialize JSON string into an instance of CurveCoinDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveCoinDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveCoinDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`index` <- this_object$`index`
      self$`pool` <- this_object$`pool`
      self$`token` <- this_object$`token`
      self$`underlying` <- this_object$`underlying`
      self$`balance` <- this_object$`balance`
      self$`rate` <- this_object$`rate`
      self$`updated` <- this_object$`updated`
      self$`updated_at_block` <- this_object$`updated_at_block`
      self$`updated_at_transaction` <- this_object$`updated_at_transaction`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self
    },
    #' Validate JSON input with respect to CurveCoinDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveCoinDTO and throw an exception if invalid
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
    #' @return String representation of CurveCoinDTO
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
# CurveCoinDTO$unlock()
#
## Below is an example to define the print function
# CurveCoinDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveCoinDTO$lock()

