#' Create a new CurveExchangeDTO
#'
#' @description
#' CurveExchangeDTO Class
#'
#' @docType class
#' @title CurveExchangeDTO
#' @description CurveExchangeDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field pool  character [optional]
#' @field buyer  character [optional]
#' @field receiver  character [optional]
#' @field token_sold  character [optional]
#' @field token_bought  character [optional]
#' @field amount_sold  character [optional]
#' @field amount_bought  character [optional]
#' @field block  character [optional]
#' @field timestamp  character [optional]
#' @field transaction  character [optional]
#' @field vid  integer [optional]
#' @field evaluated_price  numeric [optional]
#' @field evaluated_amount  numeric [optional]
#' @field evaluated_aggressor  \link{TransactionsETradeAggressiveSide} [optional]
#' @field pool_id  character [optional]
#' @field transaction_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveExchangeDTO <- R6::R6Class(
  "CurveExchangeDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `pool` = NULL,
    `buyer` = NULL,
    `receiver` = NULL,
    `token_sold` = NULL,
    `token_bought` = NULL,
    `amount_sold` = NULL,
    `amount_bought` = NULL,
    `block` = NULL,
    `timestamp` = NULL,
    `transaction` = NULL,
    `vid` = NULL,
    `evaluated_price` = NULL,
    `evaluated_amount` = NULL,
    `evaluated_aggressor` = NULL,
    `pool_id` = NULL,
    `transaction_id` = NULL,
    #' Initialize a new CurveExchangeDTO class.
    #'
    #' @description
    #' Initialize a new CurveExchangeDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param pool 
    #' @param buyer 
    #' @param receiver 
    #' @param token_sold 
    #' @param token_bought 
    #' @param amount_sold 
    #' @param amount_bought 
    #' @param block 
    #' @param timestamp 
    #' @param transaction 
    #' @param vid 
    #' @param evaluated_price evaluated_price
    #' @param evaluated_amount evaluated_amount
    #' @param evaluated_aggressor evaluated_aggressor
    #' @param pool_id pool_id
    #' @param transaction_id transaction_id
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `pool` = NULL, `buyer` = NULL, `receiver` = NULL, `token_sold` = NULL, `token_bought` = NULL, `amount_sold` = NULL, `amount_bought` = NULL, `block` = NULL, `timestamp` = NULL, `transaction` = NULL, `vid` = NULL, `evaluated_price` = NULL, `evaluated_amount` = NULL, `evaluated_aggressor` = NULL, `pool_id` = NULL, `transaction_id` = NULL, ...) {
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
      if (!is.null(`buyer`)) {
        if (!(is.character(`buyer`) && length(`buyer`) == 1)) {
          stop(paste("Error! Invalid data for `buyer`. Must be a string:", `buyer`))
        }
        self$`buyer` <- `buyer`
      }
      if (!is.null(`receiver`)) {
        if (!(is.character(`receiver`) && length(`receiver`) == 1)) {
          stop(paste("Error! Invalid data for `receiver`. Must be a string:", `receiver`))
        }
        self$`receiver` <- `receiver`
      }
      if (!is.null(`token_sold`)) {
        if (!(is.character(`token_sold`) && length(`token_sold`) == 1)) {
          stop(paste("Error! Invalid data for `token_sold`. Must be a string:", `token_sold`))
        }
        self$`token_sold` <- `token_sold`
      }
      if (!is.null(`token_bought`)) {
        if (!(is.character(`token_bought`) && length(`token_bought`) == 1)) {
          stop(paste("Error! Invalid data for `token_bought`. Must be a string:", `token_bought`))
        }
        self$`token_bought` <- `token_bought`
      }
      if (!is.null(`amount_sold`)) {
        if (!(is.character(`amount_sold`) && length(`amount_sold`) == 1)) {
          stop(paste("Error! Invalid data for `amount_sold`. Must be a string:", `amount_sold`))
        }
        self$`amount_sold` <- `amount_sold`
      }
      if (!is.null(`amount_bought`)) {
        if (!(is.character(`amount_bought`) && length(`amount_bought`) == 1)) {
          stop(paste("Error! Invalid data for `amount_bought`. Must be a string:", `amount_bought`))
        }
        self$`amount_bought` <- `amount_bought`
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
      if (!is.null(`evaluated_price`)) {
        if (!(is.numeric(`evaluated_price`) && length(`evaluated_price`) == 1)) {
          stop(paste("Error! Invalid data for `evaluated_price`. Must be a number:", `evaluated_price`))
        }
        self$`evaluated_price` <- `evaluated_price`
      }
      if (!is.null(`evaluated_amount`)) {
        if (!(is.numeric(`evaluated_amount`) && length(`evaluated_amount`) == 1)) {
          stop(paste("Error! Invalid data for `evaluated_amount`. Must be a number:", `evaluated_amount`))
        }
        self$`evaluated_amount` <- `evaluated_amount`
      }
      if (!is.null(`evaluated_aggressor`)) {
        if (!(`evaluated_aggressor` %in% c())) {
          stop(paste("Error! \"", `evaluated_aggressor`, "\" cannot be assigned to `evaluated_aggressor`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`evaluated_aggressor`))
        self$`evaluated_aggressor` <- `evaluated_aggressor`
      }
      if (!is.null(`pool_id`)) {
        if (!(is.character(`pool_id`) && length(`pool_id`) == 1)) {
          stop(paste("Error! Invalid data for `pool_id`. Must be a string:", `pool_id`))
        }
        self$`pool_id` <- `pool_id`
      }
      if (!is.null(`transaction_id`)) {
        if (!(is.character(`transaction_id`) && length(`transaction_id`) == 1)) {
          stop(paste("Error! Invalid data for `transaction_id`. Must be a string:", `transaction_id`))
        }
        self$`transaction_id` <- `transaction_id`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CurveExchangeDTO in JSON format
    #' @export
    toJSON = function() {
      CurveExchangeDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveExchangeDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveExchangeDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveExchangeDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveExchangeDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`pool`)) {
        CurveExchangeDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`buyer`)) {
        CurveExchangeDTOObject[["buyer"]] <-
          self$`buyer`
      }
      if (!is.null(self$`receiver`)) {
        CurveExchangeDTOObject[["receiver"]] <-
          self$`receiver`
      }
      if (!is.null(self$`token_sold`)) {
        CurveExchangeDTOObject[["token_sold"]] <-
          self$`token_sold`
      }
      if (!is.null(self$`token_bought`)) {
        CurveExchangeDTOObject[["token_bought"]] <-
          self$`token_bought`
      }
      if (!is.null(self$`amount_sold`)) {
        CurveExchangeDTOObject[["amount_sold"]] <-
          self$`amount_sold`
      }
      if (!is.null(self$`amount_bought`)) {
        CurveExchangeDTOObject[["amount_bought"]] <-
          self$`amount_bought`
      }
      if (!is.null(self$`block`)) {
        CurveExchangeDTOObject[["block"]] <-
          self$`block`
      }
      if (!is.null(self$`timestamp`)) {
        CurveExchangeDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`transaction`)) {
        CurveExchangeDTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveExchangeDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`evaluated_price`)) {
        CurveExchangeDTOObject[["evaluated_price"]] <-
          self$`evaluated_price`
      }
      if (!is.null(self$`evaluated_amount`)) {
        CurveExchangeDTOObject[["evaluated_amount"]] <-
          self$`evaluated_amount`
      }
      if (!is.null(self$`evaluated_aggressor`)) {
        CurveExchangeDTOObject[["evaluated_aggressor"]] <-
          self$`evaluated_aggressor`$toJSON()
      }
      if (!is.null(self$`pool_id`)) {
        CurveExchangeDTOObject[["pool_id"]] <-
          self$`pool_id`
      }
      if (!is.null(self$`transaction_id`)) {
        CurveExchangeDTOObject[["transaction_id"]] <-
          self$`transaction_id`
      }
      CurveExchangeDTOObject
    },
    #' Deserialize JSON string into an instance of CurveExchangeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveExchangeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveExchangeDTO
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
      if (!is.null(this_object$`buyer`)) {
        self$`buyer` <- this_object$`buyer`
      }
      if (!is.null(this_object$`receiver`)) {
        self$`receiver` <- this_object$`receiver`
      }
      if (!is.null(this_object$`token_sold`)) {
        self$`token_sold` <- this_object$`token_sold`
      }
      if (!is.null(this_object$`token_bought`)) {
        self$`token_bought` <- this_object$`token_bought`
      }
      if (!is.null(this_object$`amount_sold`)) {
        self$`amount_sold` <- this_object$`amount_sold`
      }
      if (!is.null(this_object$`amount_bought`)) {
        self$`amount_bought` <- this_object$`amount_bought`
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
      if (!is.null(this_object$`evaluated_price`)) {
        self$`evaluated_price` <- this_object$`evaluated_price`
      }
      if (!is.null(this_object$`evaluated_amount`)) {
        self$`evaluated_amount` <- this_object$`evaluated_amount`
      }
      if (!is.null(this_object$`evaluated_aggressor`)) {
        `evaluated_aggressor_object` <- TransactionsETradeAggressiveSide$new()
        `evaluated_aggressor_object`$fromJSON(jsonlite::toJSON(this_object$`evaluated_aggressor`, auto_unbox = TRUE, digits = NA))
        self$`evaluated_aggressor` <- `evaluated_aggressor_object`
      }
      if (!is.null(this_object$`pool_id`)) {
        self$`pool_id` <- this_object$`pool_id`
      }
      if (!is.null(this_object$`transaction_id`)) {
        self$`transaction_id` <- this_object$`transaction_id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CurveExchangeDTO in JSON format
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
        if (!is.null(self$`buyer`)) {
          sprintf(
          '"buyer":
            "%s"
                    ',
          self$`buyer`
          )
        },
        if (!is.null(self$`receiver`)) {
          sprintf(
          '"receiver":
            "%s"
                    ',
          self$`receiver`
          )
        },
        if (!is.null(self$`token_sold`)) {
          sprintf(
          '"token_sold":
            "%s"
                    ',
          self$`token_sold`
          )
        },
        if (!is.null(self$`token_bought`)) {
          sprintf(
          '"token_bought":
            "%s"
                    ',
          self$`token_bought`
          )
        },
        if (!is.null(self$`amount_sold`)) {
          sprintf(
          '"amount_sold":
            "%s"
                    ',
          self$`amount_sold`
          )
        },
        if (!is.null(self$`amount_bought`)) {
          sprintf(
          '"amount_bought":
            "%s"
                    ',
          self$`amount_bought`
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
        },
        if (!is.null(self$`evaluated_price`)) {
          sprintf(
          '"evaluated_price":
            %d
                    ',
          self$`evaluated_price`
          )
        },
        if (!is.null(self$`evaluated_amount`)) {
          sprintf(
          '"evaluated_amount":
            %d
                    ',
          self$`evaluated_amount`
          )
        },
        if (!is.null(self$`evaluated_aggressor`)) {
          sprintf(
          '"evaluated_aggressor":
          %s
          ',
          jsonlite::toJSON(self$`evaluated_aggressor`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`pool_id`)) {
          sprintf(
          '"pool_id":
            "%s"
                    ',
          self$`pool_id`
          )
        },
        if (!is.null(self$`transaction_id`)) {
          sprintf(
          '"transaction_id":
            "%s"
                    ',
          self$`transaction_id`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CurveExchangeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveExchangeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveExchangeDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`pool` <- this_object$`pool`
      self$`buyer` <- this_object$`buyer`
      self$`receiver` <- this_object$`receiver`
      self$`token_sold` <- this_object$`token_sold`
      self$`token_bought` <- this_object$`token_bought`
      self$`amount_sold` <- this_object$`amount_sold`
      self$`amount_bought` <- this_object$`amount_bought`
      self$`block` <- this_object$`block`
      self$`timestamp` <- this_object$`timestamp`
      self$`transaction` <- this_object$`transaction`
      self$`vid` <- this_object$`vid`
      self$`evaluated_price` <- this_object$`evaluated_price`
      self$`evaluated_amount` <- this_object$`evaluated_amount`
      self$`evaluated_aggressor` <- TransactionsETradeAggressiveSide$new()$fromJSON(jsonlite::toJSON(this_object$`evaluated_aggressor`, auto_unbox = TRUE, digits = NA))
      self$`pool_id` <- this_object$`pool_id`
      self$`transaction_id` <- this_object$`transaction_id`
      self
    },
    #' Validate JSON input with respect to CurveExchangeDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveExchangeDTO and throw an exception if invalid
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
    #' @return String representation of CurveExchangeDTO
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
# CurveExchangeDTO$unlock()
#
## Below is an example to define the print function
# CurveExchangeDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveExchangeDTO$lock()

