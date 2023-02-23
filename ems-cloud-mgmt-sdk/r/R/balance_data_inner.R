#' Create a new BalanceDataInner
#'
#' @description
#' BalanceDataInner Class
#'
#' @docType class
#' @title BalanceDataInner
#' @description BalanceDataInner Class
#' @format An \code{R6Class} generator object
#' @field asset_id_exchange Exchange currency code. character [optional]
#' @field asset_id_coinapi CoinAPI currency code. character [optional]
#' @field balance Value of the current total currency balance on the exchange. numeric [optional]
#' @field available Value of the current available currency balance on the exchange that can be used as collateral. numeric [optional]
#' @field locked Value of the current locked currency balance by the exchange. numeric [optional]
#' @field last_updated_by Source of the last modification. character [optional]
#' @field rate_usd Current exchange rate to the USD for the single unit of the currency. numeric [optional]
#' @field traded Value of the current total traded. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BalanceDataInner <- R6::R6Class(
  "BalanceDataInner",
  public = list(
    `asset_id_exchange` = NULL,
    `asset_id_coinapi` = NULL,
    `balance` = NULL,
    `available` = NULL,
    `locked` = NULL,
    `last_updated_by` = NULL,
    `rate_usd` = NULL,
    `traded` = NULL,
    #' Initialize a new BalanceDataInner class.
    #'
    #' @description
    #' Initialize a new BalanceDataInner class.
    #'
    #' @param asset_id_exchange Exchange currency code.
    #' @param asset_id_coinapi CoinAPI currency code.
    #' @param balance Value of the current total currency balance on the exchange.
    #' @param available Value of the current available currency balance on the exchange that can be used as collateral.
    #' @param locked Value of the current locked currency balance by the exchange.
    #' @param last_updated_by Source of the last modification.
    #' @param rate_usd Current exchange rate to the USD for the single unit of the currency.
    #' @param traded Value of the current total traded.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`asset_id_exchange` = NULL, `asset_id_coinapi` = NULL, `balance` = NULL, `available` = NULL, `locked` = NULL, `last_updated_by` = NULL, `rate_usd` = NULL, `traded` = NULL, ...) {
      if (!is.null(`asset_id_exchange`)) {
        if (!(is.character(`asset_id_exchange`) && length(`asset_id_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_exchange`. Must be a string:", `asset_id_exchange`))
        }
        self$`asset_id_exchange` <- `asset_id_exchange`
      }
      if (!is.null(`asset_id_coinapi`)) {
        if (!(is.character(`asset_id_coinapi`) && length(`asset_id_coinapi`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_coinapi`. Must be a string:", `asset_id_coinapi`))
        }
        self$`asset_id_coinapi` <- `asset_id_coinapi`
      }
      if (!is.null(`balance`)) {
        if (!(is.numeric(`balance`) && length(`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a number:", `balance`))
        }
        self$`balance` <- `balance`
      }
      if (!is.null(`available`)) {
        if (!(is.numeric(`available`) && length(`available`) == 1)) {
          stop(paste("Error! Invalid data for `available`. Must be a number:", `available`))
        }
        self$`available` <- `available`
      }
      if (!is.null(`locked`)) {
        if (!(is.numeric(`locked`) && length(`locked`) == 1)) {
          stop(paste("Error! Invalid data for `locked`. Must be a number:", `locked`))
        }
        self$`locked` <- `locked`
      }
      if (!is.null(`last_updated_by`)) {
        if (!(`last_updated_by` %in% c("INITIALIZATION", "BALANCE_MANAGER", "EXCHANGE"))) {
          stop(paste("Error! \"", `last_updated_by`, "\" cannot be assigned to `last_updated_by`. Must be \"INITIALIZATION\", \"BALANCE_MANAGER\", \"EXCHANGE\".", sep = ""))
        }
        if (!(is.character(`last_updated_by`) && length(`last_updated_by`) == 1)) {
          stop(paste("Error! Invalid data for `last_updated_by`. Must be a string:", `last_updated_by`))
        }
        self$`last_updated_by` <- `last_updated_by`
      }
      if (!is.null(`rate_usd`)) {
        if (!(is.numeric(`rate_usd`) && length(`rate_usd`) == 1)) {
          stop(paste("Error! Invalid data for `rate_usd`. Must be a number:", `rate_usd`))
        }
        self$`rate_usd` <- `rate_usd`
      }
      if (!is.null(`traded`)) {
        if (!(is.numeric(`traded`) && length(`traded`) == 1)) {
          stop(paste("Error! Invalid data for `traded`. Must be a number:", `traded`))
        }
        self$`traded` <- `traded`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BalanceDataInner in JSON format
    #' @export
    toJSON = function() {
      BalanceDataInnerObject <- list()
      if (!is.null(self$`asset_id_exchange`)) {
        BalanceDataInnerObject[["asset_id_exchange"]] <-
          self$`asset_id_exchange`
      }
      if (!is.null(self$`asset_id_coinapi`)) {
        BalanceDataInnerObject[["asset_id_coinapi"]] <-
          self$`asset_id_coinapi`
      }
      if (!is.null(self$`balance`)) {
        BalanceDataInnerObject[["balance"]] <-
          self$`balance`
      }
      if (!is.null(self$`available`)) {
        BalanceDataInnerObject[["available"]] <-
          self$`available`
      }
      if (!is.null(self$`locked`)) {
        BalanceDataInnerObject[["locked"]] <-
          self$`locked`
      }
      if (!is.null(self$`last_updated_by`)) {
        BalanceDataInnerObject[["last_updated_by"]] <-
          self$`last_updated_by`
      }
      if (!is.null(self$`rate_usd`)) {
        BalanceDataInnerObject[["rate_usd"]] <-
          self$`rate_usd`
      }
      if (!is.null(self$`traded`)) {
        BalanceDataInnerObject[["traded"]] <-
          self$`traded`
      }
      BalanceDataInnerObject
    },
    #' Deserialize JSON string into an instance of BalanceDataInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of BalanceDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of BalanceDataInner
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`asset_id_exchange`)) {
        self$`asset_id_exchange` <- this_object$`asset_id_exchange`
      }
      if (!is.null(this_object$`asset_id_coinapi`)) {
        self$`asset_id_coinapi` <- this_object$`asset_id_coinapi`
      }
      if (!is.null(this_object$`balance`)) {
        self$`balance` <- this_object$`balance`
      }
      if (!is.null(this_object$`available`)) {
        self$`available` <- this_object$`available`
      }
      if (!is.null(this_object$`locked`)) {
        self$`locked` <- this_object$`locked`
      }
      if (!is.null(this_object$`last_updated_by`)) {
        if (!is.null(this_object$`last_updated_by`) && !(this_object$`last_updated_by` %in% c("INITIALIZATION", "BALANCE_MANAGER", "EXCHANGE"))) {
          stop(paste("Error! \"", this_object$`last_updated_by`, "\" cannot be assigned to `last_updated_by`. Must be \"INITIALIZATION\", \"BALANCE_MANAGER\", \"EXCHANGE\".", sep = ""))
        }
        self$`last_updated_by` <- this_object$`last_updated_by`
      }
      if (!is.null(this_object$`rate_usd`)) {
        self$`rate_usd` <- this_object$`rate_usd`
      }
      if (!is.null(this_object$`traded`)) {
        self$`traded` <- this_object$`traded`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BalanceDataInner in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`asset_id_exchange`)) {
          sprintf(
          '"asset_id_exchange":
            "%s"
                    ',
          self$`asset_id_exchange`
          )
        },
        if (!is.null(self$`asset_id_coinapi`)) {
          sprintf(
          '"asset_id_coinapi":
            "%s"
                    ',
          self$`asset_id_coinapi`
          )
        },
        if (!is.null(self$`balance`)) {
          sprintf(
          '"balance":
            %d
                    ',
          self$`balance`
          )
        },
        if (!is.null(self$`available`)) {
          sprintf(
          '"available":
            %d
                    ',
          self$`available`
          )
        },
        if (!is.null(self$`locked`)) {
          sprintf(
          '"locked":
            %d
                    ',
          self$`locked`
          )
        },
        if (!is.null(self$`last_updated_by`)) {
          sprintf(
          '"last_updated_by":
            "%s"
                    ',
          self$`last_updated_by`
          )
        },
        if (!is.null(self$`rate_usd`)) {
          sprintf(
          '"rate_usd":
            %d
                    ',
          self$`rate_usd`
          )
        },
        if (!is.null(self$`traded`)) {
          sprintf(
          '"traded":
            %d
                    ',
          self$`traded`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of BalanceDataInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of BalanceDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of BalanceDataInner
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`asset_id_exchange` <- this_object$`asset_id_exchange`
      self$`asset_id_coinapi` <- this_object$`asset_id_coinapi`
      self$`balance` <- this_object$`balance`
      self$`available` <- this_object$`available`
      self$`locked` <- this_object$`locked`
      if (!is.null(this_object$`last_updated_by`) && !(this_object$`last_updated_by` %in% c("INITIALIZATION", "BALANCE_MANAGER", "EXCHANGE"))) {
        stop(paste("Error! \"", this_object$`last_updated_by`, "\" cannot be assigned to `last_updated_by`. Must be \"INITIALIZATION\", \"BALANCE_MANAGER\", \"EXCHANGE\".", sep = ""))
      }
      self$`last_updated_by` <- this_object$`last_updated_by`
      self$`rate_usd` <- this_object$`rate_usd`
      self$`traded` <- this_object$`traded`
      self
    },
    #' Validate JSON input with respect to BalanceDataInner
    #'
    #' @description
    #' Validate JSON input with respect to BalanceDataInner and throw an exception if invalid
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
    #' @return String representation of BalanceDataInner
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
# BalanceDataInner$unlock()
#
## Below is an example to define the print fnuction
# BalanceDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BalanceDataInner$lock()

