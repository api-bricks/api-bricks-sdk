#' Create a new PositionDataInner
#'
#' @description
#' The Position object.
#'
#' @docType class
#' @title PositionDataInner
#' @description PositionDataInner Class
#' @format An \code{R6Class} generator object
#' @field symbol_id_exchange Exchange symbol. character [optional]
#' @field symbol_id_coinapi CoinAPI symbol. character [optional]
#' @field avg_entry_price Calculated average price of all fills on this position. numeric [optional]
#' @field quantity The current position quantity. numeric [optional]
#' @field side  \link{OrdSide} [optional]
#' @field unrealized_pnl Unrealised profit or loss (PNL) of this position. numeric [optional]
#' @field leverage Leverage for this position reported by the exchange. numeric [optional]
#' @field cross_margin Is cross margin mode enable for this position? character [optional]
#' @field liquidation_price Liquidation price. If mark price will reach this value, the position will be liquidated. numeric [optional]
#' @field raw_data  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PositionDataInner <- R6::R6Class(
  "PositionDataInner",
  public = list(
    `symbol_id_exchange` = NULL,
    `symbol_id_coinapi` = NULL,
    `avg_entry_price` = NULL,
    `quantity` = NULL,
    `side` = NULL,
    `unrealized_pnl` = NULL,
    `leverage` = NULL,
    `cross_margin` = NULL,
    `liquidation_price` = NULL,
    `raw_data` = NULL,
    #' Initialize a new PositionDataInner class.
    #'
    #' @description
    #' Initialize a new PositionDataInner class.
    #'
    #' @param symbol_id_exchange Exchange symbol.
    #' @param symbol_id_coinapi CoinAPI symbol.
    #' @param avg_entry_price Calculated average price of all fills on this position.
    #' @param quantity The current position quantity.
    #' @param side side
    #' @param unrealized_pnl Unrealised profit or loss (PNL) of this position.
    #' @param leverage Leverage for this position reported by the exchange.
    #' @param cross_margin Is cross margin mode enable for this position?
    #' @param liquidation_price Liquidation price. If mark price will reach this value, the position will be liquidated.
    #' @param raw_data raw_data
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`symbol_id_exchange` = NULL, `symbol_id_coinapi` = NULL, `avg_entry_price` = NULL, `quantity` = NULL, `side` = NULL, `unrealized_pnl` = NULL, `leverage` = NULL, `cross_margin` = NULL, `liquidation_price` = NULL, `raw_data` = NULL, ...) {
      if (!is.null(`symbol_id_exchange`)) {
        if (!(is.character(`symbol_id_exchange`) && length(`symbol_id_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id_exchange`. Must be a string:", `symbol_id_exchange`))
        }
        self$`symbol_id_exchange` <- `symbol_id_exchange`
      }
      if (!is.null(`symbol_id_coinapi`)) {
        if (!(is.character(`symbol_id_coinapi`) && length(`symbol_id_coinapi`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id_coinapi`. Must be a string:", `symbol_id_coinapi`))
        }
        self$`symbol_id_coinapi` <- `symbol_id_coinapi`
      }
      if (!is.null(`avg_entry_price`)) {
        self$`avg_entry_price` <- `avg_entry_price`
      }
      if (!is.null(`quantity`)) {
        self$`quantity` <- `quantity`
      }
      if (!is.null(`side`)) {
        stopifnot(R6::is.R6(`side`))
        self$`side` <- `side`
      }
      if (!is.null(`unrealized_pnl`)) {
        self$`unrealized_pnl` <- `unrealized_pnl`
      }
      if (!is.null(`leverage`)) {
        self$`leverage` <- `leverage`
      }
      if (!is.null(`cross_margin`)) {
        if (!(is.logical(`cross_margin`) && length(`cross_margin`) == 1)) {
          stop(paste("Error! Invalid data for `cross_margin`. Must be a boolean:", `cross_margin`))
        }
        self$`cross_margin` <- `cross_margin`
      }
      if (!is.null(`liquidation_price`)) {
        self$`liquidation_price` <- `liquidation_price`
      }
      if (!is.null(`raw_data`)) {
        self$`raw_data` <- `raw_data`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PositionDataInner in JSON format
    #' @export
    toJSON = function() {
      PositionDataInnerObject <- list()
      if (!is.null(self$`symbol_id_exchange`)) {
        PositionDataInnerObject[["symbol_id_exchange"]] <-
          self$`symbol_id_exchange`
      }
      if (!is.null(self$`symbol_id_coinapi`)) {
        PositionDataInnerObject[["symbol_id_coinapi"]] <-
          self$`symbol_id_coinapi`
      }
      if (!is.null(self$`avg_entry_price`)) {
        PositionDataInnerObject[["avg_entry_price"]] <-
          self$`avg_entry_price`
      }
      if (!is.null(self$`quantity`)) {
        PositionDataInnerObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`side`)) {
        PositionDataInnerObject[["side"]] <-
          self$`side`$toJSON()
      }
      if (!is.null(self$`unrealized_pnl`)) {
        PositionDataInnerObject[["unrealized_pnl"]] <-
          self$`unrealized_pnl`
      }
      if (!is.null(self$`leverage`)) {
        PositionDataInnerObject[["leverage"]] <-
          self$`leverage`
      }
      if (!is.null(self$`cross_margin`)) {
        PositionDataInnerObject[["cross_margin"]] <-
          self$`cross_margin`
      }
      if (!is.null(self$`liquidation_price`)) {
        PositionDataInnerObject[["liquidation_price"]] <-
          self$`liquidation_price`
      }
      if (!is.null(self$`raw_data`)) {
        PositionDataInnerObject[["raw_data"]] <-
          self$`raw_data`
      }
      PositionDataInnerObject
    },
    #' Deserialize JSON string into an instance of PositionDataInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of PositionDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PositionDataInner
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`symbol_id_exchange`)) {
        self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      }
      if (!is.null(this_object$`symbol_id_coinapi`)) {
        self$`symbol_id_coinapi` <- this_object$`symbol_id_coinapi`
      }
      if (!is.null(this_object$`avg_entry_price`)) {
        self$`avg_entry_price` <- this_object$`avg_entry_price`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`side`)) {
        side_object <- OrdSide$new()
        side_object$fromJSON(jsonlite::toJSON(this_object$side, auto_unbox = TRUE, digits = NA))
        self$`side` <- side_object
      }
      if (!is.null(this_object$`unrealized_pnl`)) {
        self$`unrealized_pnl` <- this_object$`unrealized_pnl`
      }
      if (!is.null(this_object$`leverage`)) {
        self$`leverage` <- this_object$`leverage`
      }
      if (!is.null(this_object$`cross_margin`)) {
        self$`cross_margin` <- this_object$`cross_margin`
      }
      if (!is.null(this_object$`liquidation_price`)) {
        self$`liquidation_price` <- this_object$`liquidation_price`
      }
      if (!is.null(this_object$`raw_data`)) {
        self$`raw_data` <- this_object$`raw_data`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PositionDataInner in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`symbol_id_exchange`)) {
          sprintf(
          '"symbol_id_exchange":
            "%s"
                    ',
          self$`symbol_id_exchange`
          )
        },
        if (!is.null(self$`symbol_id_coinapi`)) {
          sprintf(
          '"symbol_id_coinapi":
            "%s"
                    ',
          self$`symbol_id_coinapi`
          )
        },
        if (!is.null(self$`avg_entry_price`)) {
          sprintf(
          '"avg_entry_price":
            %d
                    ',
          self$`avg_entry_price`
          )
        },
        if (!is.null(self$`quantity`)) {
          sprintf(
          '"quantity":
            %d
                    ',
          self$`quantity`
          )
        },
        if (!is.null(self$`side`)) {
          sprintf(
          '"side":
          %s
          ',
          jsonlite::toJSON(self$`side`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`unrealized_pnl`)) {
          sprintf(
          '"unrealized_pnl":
            %d
                    ',
          self$`unrealized_pnl`
          )
        },
        if (!is.null(self$`leverage`)) {
          sprintf(
          '"leverage":
            %d
                    ',
          self$`leverage`
          )
        },
        if (!is.null(self$`cross_margin`)) {
          sprintf(
          '"cross_margin":
            %s
                    ',
          tolower(self$`cross_margin`)
          )
        },
        if (!is.null(self$`liquidation_price`)) {
          sprintf(
          '"liquidation_price":
            %d
                    ',
          self$`liquidation_price`
          )
        },
        if (!is.null(self$`raw_data`)) {
          sprintf(
          '"raw_data":
            "%s"
                    ',
          self$`raw_data`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PositionDataInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of PositionDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PositionDataInner
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      self$`symbol_id_coinapi` <- this_object$`symbol_id_coinapi`
      self$`avg_entry_price` <- this_object$`avg_entry_price`
      self$`quantity` <- this_object$`quantity`
      self$`side` <- OrdSide$new()$fromJSON(jsonlite::toJSON(this_object$side, auto_unbox = TRUE, digits = NA))
      self$`unrealized_pnl` <- this_object$`unrealized_pnl`
      self$`leverage` <- this_object$`leverage`
      self$`cross_margin` <- this_object$`cross_margin`
      self$`liquidation_price` <- this_object$`liquidation_price`
      self$`raw_data` <- this_object$`raw_data`
      self
    },
    #' Validate JSON input with respect to PositionDataInner
    #'
    #' @description
    #' Validate JSON input with respect to PositionDataInner and throw an exception if invalid
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
    #' @return String representation of PositionDataInner
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
# PositionDataInner$unlock()
#
## Below is an example to define the print fnuction
# PositionDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PositionDataInner$lock()

