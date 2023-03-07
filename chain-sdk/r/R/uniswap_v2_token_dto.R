#' Create a new UniswapV2TokenDTO
#'
#' @description
#' Stores aggregated information for a specific token across all pairs that token is included in.
#'
#' @docType class
#' @title UniswapV2TokenDTO
#' @description UniswapV2TokenDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field vid  integer [optional]
#' @field id Token address. character [optional]
#' @field symbol Token symbol. character [optional]
#' @field name Token name. character [optional]
#' @field decimals Token decimals. integer [optional]
#' @field total_supply  \link{NumericsBigInteger} [optional]
#' @field trade_volume Amount of token traded all time across all pairs. character [optional]
#' @field trade_volume_usd Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold). character [optional]
#' @field untracked_volume_usd Amount of token in USD traded all time across pairs (no minimum liquidity threshold). character [optional]
#' @field tx_count  \link{NumericsBigInteger} [optional]
#' @field total_liquidity Total amount of token provided as liquidity across all pairs. character [optional]
#' @field derived_eth ETH per token. character [optional]
#' @field token_symbol  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2TokenDTO <- R6::R6Class(
  "UniswapV2TokenDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `id` = NULL,
    `symbol` = NULL,
    `name` = NULL,
    `decimals` = NULL,
    `total_supply` = NULL,
    `trade_volume` = NULL,
    `trade_volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `tx_count` = NULL,
    `total_liquidity` = NULL,
    `derived_eth` = NULL,
    `token_symbol` = NULL,
    #' Initialize a new UniswapV2TokenDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2TokenDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param vid 
    #' @param id Token address.
    #' @param symbol Token symbol.
    #' @param name Token name.
    #' @param decimals Token decimals.
    #' @param total_supply total_supply
    #' @param trade_volume Amount of token traded all time across all pairs.
    #' @param trade_volume_usd Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).
    #' @param untracked_volume_usd Amount of token in USD traded all time across pairs (no minimum liquidity threshold).
    #' @param tx_count tx_count
    #' @param total_liquidity Total amount of token provided as liquidity across all pairs.
    #' @param derived_eth ETH per token.
    #' @param token_symbol token_symbol
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `symbol` = NULL, `name` = NULL, `decimals` = NULL, `total_supply` = NULL, `trade_volume` = NULL, `trade_volume_usd` = NULL, `untracked_volume_usd` = NULL, `tx_count` = NULL, `total_liquidity` = NULL, `derived_eth` = NULL, `token_symbol` = NULL, ...) {
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
      if (!is.null(`vid`)) {
        if (!(is.numeric(`vid`) && length(`vid`) == 1)) {
          stop(paste("Error! Invalid data for `vid`. Must be an integer:", `vid`))
        }
        self$`vid` <- `vid`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`decimals`)) {
        if (!(is.numeric(`decimals`) && length(`decimals`) == 1)) {
          stop(paste("Error! Invalid data for `decimals`. Must be an integer:", `decimals`))
        }
        self$`decimals` <- `decimals`
      }
      if (!is.null(`total_supply`)) {
        stopifnot(R6::is.R6(`total_supply`))
        self$`total_supply` <- `total_supply`
      }
      if (!is.null(`trade_volume`)) {
        if (!(is.character(`trade_volume`) && length(`trade_volume`) == 1)) {
          stop(paste("Error! Invalid data for `trade_volume`. Must be a string:", `trade_volume`))
        }
        self$`trade_volume` <- `trade_volume`
      }
      if (!is.null(`trade_volume_usd`)) {
        if (!(is.character(`trade_volume_usd`) && length(`trade_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `trade_volume_usd`. Must be a string:", `trade_volume_usd`))
        }
        self$`trade_volume_usd` <- `trade_volume_usd`
      }
      if (!is.null(`untracked_volume_usd`)) {
        if (!(is.character(`untracked_volume_usd`) && length(`untracked_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `untracked_volume_usd`. Must be a string:", `untracked_volume_usd`))
        }
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`tx_count`)) {
        stopifnot(R6::is.R6(`tx_count`))
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`total_liquidity`)) {
        if (!(is.character(`total_liquidity`) && length(`total_liquidity`) == 1)) {
          stop(paste("Error! Invalid data for `total_liquidity`. Must be a string:", `total_liquidity`))
        }
        self$`total_liquidity` <- `total_liquidity`
      }
      if (!is.null(`derived_eth`)) {
        if (!(is.character(`derived_eth`) && length(`derived_eth`) == 1)) {
          stop(paste("Error! Invalid data for `derived_eth`. Must be a string:", `derived_eth`))
        }
        self$`derived_eth` <- `derived_eth`
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
    #' @return UniswapV2TokenDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2TokenDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2TokenDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2TokenDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2TokenDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2TokenDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        UniswapV2TokenDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`symbol`)) {
        UniswapV2TokenDTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`name`)) {
        UniswapV2TokenDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`decimals`)) {
        UniswapV2TokenDTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`total_supply`)) {
        UniswapV2TokenDTOObject[["total_supply"]] <-
          self$`total_supply`$toJSON()
      }
      if (!is.null(self$`trade_volume`)) {
        UniswapV2TokenDTOObject[["trade_volume"]] <-
          self$`trade_volume`
      }
      if (!is.null(self$`trade_volume_usd`)) {
        UniswapV2TokenDTOObject[["trade_volume_usd"]] <-
          self$`trade_volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        UniswapV2TokenDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`tx_count`)) {
        UniswapV2TokenDTOObject[["tx_count"]] <-
          self$`tx_count`$toJSON()
      }
      if (!is.null(self$`total_liquidity`)) {
        UniswapV2TokenDTOObject[["total_liquidity"]] <-
          self$`total_liquidity`
      }
      if (!is.null(self$`derived_eth`)) {
        UniswapV2TokenDTOObject[["derived_eth"]] <-
          self$`derived_eth`
      }
      if (!is.null(self$`token_symbol`)) {
        UniswapV2TokenDTOObject[["token_symbol"]] <-
          self$`token_symbol`
      }
      UniswapV2TokenDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2TokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2TokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2TokenDTO
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
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`decimals`)) {
        self$`decimals` <- this_object$`decimals`
      }
      if (!is.null(this_object$`total_supply`)) {
        `total_supply_object` <- NumericsBigInteger$new()
        `total_supply_object`$fromJSON(jsonlite::toJSON(this_object$`total_supply`, auto_unbox = TRUE, digits = NA))
        self$`total_supply` <- `total_supply_object`
      }
      if (!is.null(this_object$`trade_volume`)) {
        self$`trade_volume` <- this_object$`trade_volume`
      }
      if (!is.null(this_object$`trade_volume_usd`)) {
        self$`trade_volume_usd` <- this_object$`trade_volume_usd`
      }
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        `tx_count_object` <- NumericsBigInteger$new()
        `tx_count_object`$fromJSON(jsonlite::toJSON(this_object$`tx_count`, auto_unbox = TRUE, digits = NA))
        self$`tx_count` <- `tx_count_object`
      }
      if (!is.null(this_object$`total_liquidity`)) {
        self$`total_liquidity` <- this_object$`total_liquidity`
      }
      if (!is.null(this_object$`derived_eth`)) {
        self$`derived_eth` <- this_object$`derived_eth`
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
    #' @return UniswapV2TokenDTO in JSON format
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
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
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
        if (!is.null(self$`symbol`)) {
          sprintf(
          '"symbol":
            "%s"
                    ',
          self$`symbol`
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
        if (!is.null(self$`decimals`)) {
          sprintf(
          '"decimals":
            %d
                    ',
          self$`decimals`
          )
        },
        if (!is.null(self$`total_supply`)) {
          sprintf(
          '"total_supply":
          %s
          ',
          jsonlite::toJSON(self$`total_supply`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`trade_volume`)) {
          sprintf(
          '"trade_volume":
            "%s"
                    ',
          self$`trade_volume`
          )
        },
        if (!is.null(self$`trade_volume_usd`)) {
          sprintf(
          '"trade_volume_usd":
            "%s"
                    ',
          self$`trade_volume_usd`
          )
        },
        if (!is.null(self$`untracked_volume_usd`)) {
          sprintf(
          '"untracked_volume_usd":
            "%s"
                    ',
          self$`untracked_volume_usd`
          )
        },
        if (!is.null(self$`tx_count`)) {
          sprintf(
          '"tx_count":
          %s
          ',
          jsonlite::toJSON(self$`tx_count`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`total_liquidity`)) {
          sprintf(
          '"total_liquidity":
            "%s"
                    ',
          self$`total_liquidity`
          )
        },
        if (!is.null(self$`derived_eth`)) {
          sprintf(
          '"derived_eth":
            "%s"
                    ',
          self$`derived_eth`
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
    #' Deserialize JSON string into an instance of UniswapV2TokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2TokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2TokenDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`id` <- this_object$`id`
      self$`symbol` <- this_object$`symbol`
      self$`name` <- this_object$`name`
      self$`decimals` <- this_object$`decimals`
      self$`total_supply` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`total_supply`, auto_unbox = TRUE, digits = NA))
      self$`trade_volume` <- this_object$`trade_volume`
      self$`trade_volume_usd` <- this_object$`trade_volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`tx_count` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`tx_count`, auto_unbox = TRUE, digits = NA))
      self$`total_liquidity` <- this_object$`total_liquidity`
      self$`derived_eth` <- this_object$`derived_eth`
      self$`token_symbol` <- this_object$`token_symbol`
      self
    },
    #' Validate JSON input with respect to UniswapV2TokenDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2TokenDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2TokenDTO
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
# UniswapV2TokenDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2TokenDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2TokenDTO$lock()

