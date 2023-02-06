#' Create a new CurveAddLiquidityEventDTO
#'
#' @description
#' CurveAddLiquidityEventDTO Class
#'
#' @docType class
#' @title CurveAddLiquidityEventDTO
#' @description CurveAddLiquidityEventDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field pool  character [optional]
#' @field provider  character [optional]
#' @field token_amounts  list(character) [optional]
#' @field fees  list(character) [optional]
#' @field invariant  character [optional]
#' @field token_supply  character [optional]
#' @field block  character [optional]
#' @field timestamp  character [optional]
#' @field transaction  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveAddLiquidityEventDTO <- R6::R6Class(
  "CurveAddLiquidityEventDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `pool` = NULL,
    `provider` = NULL,
    `token_amounts` = NULL,
    `fees` = NULL,
    `invariant` = NULL,
    `token_supply` = NULL,
    `block` = NULL,
    `timestamp` = NULL,
    `transaction` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveAddLiquidityEventDTO class.
    #'
    #' @description
    #' Initialize a new CurveAddLiquidityEventDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param pool 
    #' @param provider 
    #' @param token_amounts 
    #' @param fees 
    #' @param invariant 
    #' @param token_supply 
    #' @param block 
    #' @param timestamp 
    #' @param transaction 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `pool` = NULL, `provider` = NULL, `token_amounts` = NULL, `fees` = NULL, `invariant` = NULL, `token_supply` = NULL, `block` = NULL, `timestamp` = NULL, `transaction` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
      }
      if (!is.null(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
      }
      if (!is.null(`token_amounts`)) {
        stopifnot(is.vector(`token_amounts`), length(`token_amounts`) != 0)
        sapply(`token_amounts`, function(x) stopifnot(is.character(x)))
        self$`token_amounts` <- `token_amounts`
      }
      if (!is.null(`fees`)) {
        stopifnot(is.vector(`fees`), length(`fees`) != 0)
        sapply(`fees`, function(x) stopifnot(is.character(x)))
        self$`fees` <- `fees`
      }
      if (!is.null(`invariant`)) {
        if (!(is.character(`invariant`) && length(`invariant`) == 1)) {
          stop(paste("Error! Invalid data for `invariant`. Must be a string:", `invariant`))
        }
        self$`invariant` <- `invariant`
      }
      if (!is.null(`token_supply`)) {
        if (!(is.character(`token_supply`) && length(`token_supply`) == 1)) {
          stop(paste("Error! Invalid data for `token_supply`. Must be a string:", `token_supply`))
        }
        self$`token_supply` <- `token_supply`
      }
      if (!is.null(`block`)) {
        if (!(is.character(`block`) && length(`block`) == 1)) {
          stop(paste("Error! Invalid data for `block`. Must be a string:", `block`))
        }
        self$`block` <- `block`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
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
    #' @return CurveAddLiquidityEventDTO in JSON format
    #' @export
    toJSON = function() {
      CurveAddLiquidityEventDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveAddLiquidityEventDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveAddLiquidityEventDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveAddLiquidityEventDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveAddLiquidityEventDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`pool`)) {
        CurveAddLiquidityEventDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`provider`)) {
        CurveAddLiquidityEventDTOObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`token_amounts`)) {
        CurveAddLiquidityEventDTOObject[["token_amounts"]] <-
          self$`token_amounts`
      }
      if (!is.null(self$`fees`)) {
        CurveAddLiquidityEventDTOObject[["fees"]] <-
          self$`fees`
      }
      if (!is.null(self$`invariant`)) {
        CurveAddLiquidityEventDTOObject[["invariant"]] <-
          self$`invariant`
      }
      if (!is.null(self$`token_supply`)) {
        CurveAddLiquidityEventDTOObject[["token_supply"]] <-
          self$`token_supply`
      }
      if (!is.null(self$`block`)) {
        CurveAddLiquidityEventDTOObject[["block"]] <-
          self$`block`
      }
      if (!is.null(self$`timestamp`)) {
        CurveAddLiquidityEventDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`transaction`)) {
        CurveAddLiquidityEventDTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveAddLiquidityEventDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveAddLiquidityEventDTOObject
    },
    #' Deserialize JSON string into an instance of CurveAddLiquidityEventDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveAddLiquidityEventDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveAddLiquidityEventDTO
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
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`token_amounts`)) {
        self$`token_amounts` <- ApiClient$new()$deserializeObj(this_object$`token_amounts`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`fees`)) {
        self$`fees` <- ApiClient$new()$deserializeObj(this_object$`fees`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`invariant`)) {
        self$`invariant` <- this_object$`invariant`
      }
      if (!is.null(this_object$`token_supply`)) {
        self$`token_supply` <- this_object$`token_supply`
      }
      if (!is.null(this_object$`block`)) {
        self$`block` <- this_object$`block`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
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
    #' @return CurveAddLiquidityEventDTO in JSON format
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
        if (!is.null(self$`pool`)) {
          sprintf(
          '"pool":
            "%s"
                    ',
          self$`pool`
          )
        },
        if (!is.null(self$`provider`)) {
          sprintf(
          '"provider":
            "%s"
                    ',
          self$`provider`
          )
        },
        if (!is.null(self$`token_amounts`)) {
          sprintf(
          '"token_amounts":
             [%s]
          ',
          paste(unlist(lapply(self$`token_amounts`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`fees`)) {
          sprintf(
          '"fees":
             [%s]
          ',
          paste(unlist(lapply(self$`fees`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`invariant`)) {
          sprintf(
          '"invariant":
            "%s"
                    ',
          self$`invariant`
          )
        },
        if (!is.null(self$`token_supply`)) {
          sprintf(
          '"token_supply":
            "%s"
                    ',
          self$`token_supply`
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
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
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
    #' Deserialize JSON string into an instance of CurveAddLiquidityEventDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveAddLiquidityEventDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveAddLiquidityEventDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`pool` <- this_object$`pool`
      self$`provider` <- this_object$`provider`
      self$`token_amounts` <- ApiClient$new()$deserializeObj(this_object$`token_amounts`, "array[character]", loadNamespace("openapi"))
      self$`fees` <- ApiClient$new()$deserializeObj(this_object$`fees`, "array[character]", loadNamespace("openapi"))
      self$`invariant` <- this_object$`invariant`
      self$`token_supply` <- this_object$`token_supply`
      self$`block` <- this_object$`block`
      self$`timestamp` <- this_object$`timestamp`
      self$`transaction` <- this_object$`transaction`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveAddLiquidityEventDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveAddLiquidityEventDTO and throw an exception if invalid
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
    #' @return String representation of CurveAddLiquidityEventDTO
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
# CurveAddLiquidityEventDTO$unlock()
#
## Below is an example to define the print function
# CurveAddLiquidityEventDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveAddLiquidityEventDTO$lock()

