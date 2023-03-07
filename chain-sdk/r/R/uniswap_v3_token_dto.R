#' Create a new UniswapV3TokenDTO
#'
#' @description
#' Stores aggregated information for a specific token across all pairs that token is included in.
#'
#' @docType class
#' @title UniswapV3TokenDTO
#' @description UniswapV3TokenDTO Class
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
#' @field volume Volume in token units. character [optional]
#' @field volume_usd Volume in derived USD. character [optional]
#' @field untracked_volume_usd Volume in USD even on pools with less reliable USD values. character [optional]
#' @field fees_usd Fees in USD. character [optional]
#' @field tx_count  \link{NumericsBigInteger} [optional]
#' @field pool_count  \link{NumericsBigInteger} [optional]
#' @field total_value_locked Liquidity across all pools in token units. character [optional]
#' @field total_value_locked_usd Liquidity across all pools in derived USD. character [optional]
#' @field total_value_locked_usd_untracked TVL derived in USD untracked. character [optional]
#' @field derived_eth Derived price in ETH. character [optional]
#' @field whitelist_pools Pools token is in that are white listed for USD pricing. list(character) [optional]
#' @field token_symbol  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3TokenDTO <- R6::R6Class(
  "UniswapV3TokenDTO",
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
    `volume` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `fees_usd` = NULL,
    `tx_count` = NULL,
    `pool_count` = NULL,
    `total_value_locked` = NULL,
    `total_value_locked_usd` = NULL,
    `total_value_locked_usd_untracked` = NULL,
    `derived_eth` = NULL,
    `whitelist_pools` = NULL,
    `token_symbol` = NULL,
    #' Initialize a new UniswapV3TokenDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3TokenDTO class.
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
    #' @param volume Volume in token units.
    #' @param volume_usd Volume in derived USD.
    #' @param untracked_volume_usd Volume in USD even on pools with less reliable USD values.
    #' @param fees_usd Fees in USD.
    #' @param tx_count tx_count
    #' @param pool_count pool_count
    #' @param total_value_locked Liquidity across all pools in token units.
    #' @param total_value_locked_usd Liquidity across all pools in derived USD.
    #' @param total_value_locked_usd_untracked TVL derived in USD untracked.
    #' @param derived_eth Derived price in ETH.
    #' @param whitelist_pools Pools token is in that are white listed for USD pricing.
    #' @param token_symbol token_symbol
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `symbol` = NULL, `name` = NULL, `decimals` = NULL, `total_supply` = NULL, `volume` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `fees_usd` = NULL, `tx_count` = NULL, `pool_count` = NULL, `total_value_locked` = NULL, `total_value_locked_usd` = NULL, `total_value_locked_usd_untracked` = NULL, `derived_eth` = NULL, `whitelist_pools` = NULL, `token_symbol` = NULL, ...) {
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
      if (!is.null(`volume`)) {
        if (!(is.character(`volume`) && length(`volume`) == 1)) {
          stop(paste("Error! Invalid data for `volume`. Must be a string:", `volume`))
        }
        self$`volume` <- `volume`
      }
      if (!is.null(`volume_usd`)) {
        if (!(is.character(`volume_usd`) && length(`volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_usd`. Must be a string:", `volume_usd`))
        }
        self$`volume_usd` <- `volume_usd`
      }
      if (!is.null(`untracked_volume_usd`)) {
        if (!(is.character(`untracked_volume_usd`) && length(`untracked_volume_usd`) == 1)) {
          stop(paste("Error! Invalid data for `untracked_volume_usd`. Must be a string:", `untracked_volume_usd`))
        }
        self$`untracked_volume_usd` <- `untracked_volume_usd`
      }
      if (!is.null(`fees_usd`)) {
        if (!(is.character(`fees_usd`) && length(`fees_usd`) == 1)) {
          stop(paste("Error! Invalid data for `fees_usd`. Must be a string:", `fees_usd`))
        }
        self$`fees_usd` <- `fees_usd`
      }
      if (!is.null(`tx_count`)) {
        stopifnot(R6::is.R6(`tx_count`))
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`pool_count`)) {
        stopifnot(R6::is.R6(`pool_count`))
        self$`pool_count` <- `pool_count`
      }
      if (!is.null(`total_value_locked`)) {
        if (!(is.character(`total_value_locked`) && length(`total_value_locked`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked`. Must be a string:", `total_value_locked`))
        }
        self$`total_value_locked` <- `total_value_locked`
      }
      if (!is.null(`total_value_locked_usd`)) {
        if (!(is.character(`total_value_locked_usd`) && length(`total_value_locked_usd`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_usd`. Must be a string:", `total_value_locked_usd`))
        }
        self$`total_value_locked_usd` <- `total_value_locked_usd`
      }
      if (!is.null(`total_value_locked_usd_untracked`)) {
        if (!(is.character(`total_value_locked_usd_untracked`) && length(`total_value_locked_usd_untracked`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_usd_untracked`. Must be a string:", `total_value_locked_usd_untracked`))
        }
        self$`total_value_locked_usd_untracked` <- `total_value_locked_usd_untracked`
      }
      if (!is.null(`derived_eth`)) {
        if (!(is.character(`derived_eth`) && length(`derived_eth`) == 1)) {
          stop(paste("Error! Invalid data for `derived_eth`. Must be a string:", `derived_eth`))
        }
        self$`derived_eth` <- `derived_eth`
      }
      if (!is.null(`whitelist_pools`)) {
        stopifnot(is.vector(`whitelist_pools`), length(`whitelist_pools`) != 0)
        sapply(`whitelist_pools`, function(x) stopifnot(is.character(x)))
        self$`whitelist_pools` <- `whitelist_pools`
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
    #' @return UniswapV3TokenDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3TokenDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3TokenDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3TokenDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3TokenDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3TokenDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        UniswapV3TokenDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`symbol`)) {
        UniswapV3TokenDTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`name`)) {
        UniswapV3TokenDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`decimals`)) {
        UniswapV3TokenDTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`total_supply`)) {
        UniswapV3TokenDTOObject[["total_supply"]] <-
          self$`total_supply`$toJSON()
      }
      if (!is.null(self$`volume`)) {
        UniswapV3TokenDTOObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`volume_usd`)) {
        UniswapV3TokenDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        UniswapV3TokenDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`fees_usd`)) {
        UniswapV3TokenDTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`tx_count`)) {
        UniswapV3TokenDTOObject[["tx_count"]] <-
          self$`tx_count`$toJSON()
      }
      if (!is.null(self$`pool_count`)) {
        UniswapV3TokenDTOObject[["pool_count"]] <-
          self$`pool_count`$toJSON()
      }
      if (!is.null(self$`total_value_locked`)) {
        UniswapV3TokenDTOObject[["total_value_locked"]] <-
          self$`total_value_locked`
      }
      if (!is.null(self$`total_value_locked_usd`)) {
        UniswapV3TokenDTOObject[["total_value_locked_usd"]] <-
          self$`total_value_locked_usd`
      }
      if (!is.null(self$`total_value_locked_usd_untracked`)) {
        UniswapV3TokenDTOObject[["total_value_locked_usd_untracked"]] <-
          self$`total_value_locked_usd_untracked`
      }
      if (!is.null(self$`derived_eth`)) {
        UniswapV3TokenDTOObject[["derived_eth"]] <-
          self$`derived_eth`
      }
      if (!is.null(self$`whitelist_pools`)) {
        UniswapV3TokenDTOObject[["whitelist_pools"]] <-
          self$`whitelist_pools`
      }
      if (!is.null(self$`token_symbol`)) {
        UniswapV3TokenDTOObject[["token_symbol"]] <-
          self$`token_symbol`
      }
      UniswapV3TokenDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3TokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TokenDTO
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
      if (!is.null(this_object$`volume`)) {
        self$`volume` <- this_object$`volume`
      }
      if (!is.null(this_object$`volume_usd`)) {
        self$`volume_usd` <- this_object$`volume_usd`
      }
      if (!is.null(this_object$`untracked_volume_usd`)) {
        self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      }
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        `tx_count_object` <- NumericsBigInteger$new()
        `tx_count_object`$fromJSON(jsonlite::toJSON(this_object$`tx_count`, auto_unbox = TRUE, digits = NA))
        self$`tx_count` <- `tx_count_object`
      }
      if (!is.null(this_object$`pool_count`)) {
        `pool_count_object` <- NumericsBigInteger$new()
        `pool_count_object`$fromJSON(jsonlite::toJSON(this_object$`pool_count`, auto_unbox = TRUE, digits = NA))
        self$`pool_count` <- `pool_count_object`
      }
      if (!is.null(this_object$`total_value_locked`)) {
        self$`total_value_locked` <- this_object$`total_value_locked`
      }
      if (!is.null(this_object$`total_value_locked_usd`)) {
        self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      }
      if (!is.null(this_object$`total_value_locked_usd_untracked`)) {
        self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      }
      if (!is.null(this_object$`derived_eth`)) {
        self$`derived_eth` <- this_object$`derived_eth`
      }
      if (!is.null(this_object$`whitelist_pools`)) {
        self$`whitelist_pools` <- ApiClient$new()$deserializeObj(this_object$`whitelist_pools`, "array[character]", loadNamespace("openapi"))
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
    #' @return UniswapV3TokenDTO in JSON format
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
        if (!is.null(self$`volume`)) {
          sprintf(
          '"volume":
            "%s"
                    ',
          self$`volume`
          )
        },
        if (!is.null(self$`volume_usd`)) {
          sprintf(
          '"volume_usd":
            "%s"
                    ',
          self$`volume_usd`
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
        if (!is.null(self$`fees_usd`)) {
          sprintf(
          '"fees_usd":
            "%s"
                    ',
          self$`fees_usd`
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
        if (!is.null(self$`pool_count`)) {
          sprintf(
          '"pool_count":
          %s
          ',
          jsonlite::toJSON(self$`pool_count`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`total_value_locked`)) {
          sprintf(
          '"total_value_locked":
            "%s"
                    ',
          self$`total_value_locked`
          )
        },
        if (!is.null(self$`total_value_locked_usd`)) {
          sprintf(
          '"total_value_locked_usd":
            "%s"
                    ',
          self$`total_value_locked_usd`
          )
        },
        if (!is.null(self$`total_value_locked_usd_untracked`)) {
          sprintf(
          '"total_value_locked_usd_untracked":
            "%s"
                    ',
          self$`total_value_locked_usd_untracked`
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
        if (!is.null(self$`whitelist_pools`)) {
          sprintf(
          '"whitelist_pools":
             [%s]
          ',
          paste(unlist(lapply(self$`whitelist_pools`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of UniswapV3TokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TokenDTO
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
      self$`volume` <- this_object$`volume`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`tx_count` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`tx_count`, auto_unbox = TRUE, digits = NA))
      self$`pool_count` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`pool_count`, auto_unbox = TRUE, digits = NA))
      self$`total_value_locked` <- this_object$`total_value_locked`
      self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      self$`derived_eth` <- this_object$`derived_eth`
      self$`whitelist_pools` <- ApiClient$new()$deserializeObj(this_object$`whitelist_pools`, "array[character]", loadNamespace("openapi"))
      self$`token_symbol` <- this_object$`token_symbol`
      self
    },
    #' Validate JSON input with respect to UniswapV3TokenDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3TokenDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3TokenDTO
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
# UniswapV3TokenDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3TokenDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3TokenDTO$lock()

