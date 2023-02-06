#' Create a new SushiswapTokenDTO
#'
#' @description
#' Stores aggregated information for a specific token across all pairs that token is included in.
#'
#' @docType class
#' @title SushiswapTokenDTO
#' @description SushiswapTokenDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Token address. character [optional]
#' @field factory Factory address. character [optional]
#' @field symbol Token symbol. character [optional]
#' @field name Token name. character [optional]
#' @field decimals Token decimals. character [optional]
#' @field total_supply Total supply of liquidity token. character [optional]
#' @field volume Amount of token traded all time across all pairs. character [optional]
#' @field volume_usd Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold). character [optional]
#' @field untracked_volume_usd Amount of token in USD traded all time across pairs (no minimum liquidity threshold). character [optional]
#' @field tx_count Amount of transactions all time in pairs including token. character [optional]
#' @field liquidity Total amount of token provided as liquidity across all pairs. character [optional]
#' @field derived_eth ETH per token. character [optional]
#' @field whitelist_pairs Array of whitelisted pairs. list(character) [optional]
#' @field vid  integer [optional]
#' @field token_symbol  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SushiswapTokenDTO <- R6::R6Class(
  "SushiswapTokenDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `factory` = NULL,
    `symbol` = NULL,
    `name` = NULL,
    `decimals` = NULL,
    `total_supply` = NULL,
    `volume` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `tx_count` = NULL,
    `liquidity` = NULL,
    `derived_eth` = NULL,
    `whitelist_pairs` = NULL,
    `vid` = NULL,
    `token_symbol` = NULL,
    #' Initialize a new SushiswapTokenDTO class.
    #'
    #' @description
    #' Initialize a new SushiswapTokenDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Token address.
    #' @param factory Factory address.
    #' @param symbol Token symbol.
    #' @param name Token name.
    #' @param decimals Token decimals.
    #' @param total_supply Total supply of liquidity token.
    #' @param volume Amount of token traded all time across all pairs.
    #' @param volume_usd Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).
    #' @param untracked_volume_usd Amount of token in USD traded all time across pairs (no minimum liquidity threshold).
    #' @param tx_count Amount of transactions all time in pairs including token.
    #' @param liquidity Total amount of token provided as liquidity across all pairs.
    #' @param derived_eth ETH per token.
    #' @param whitelist_pairs Array of whitelisted pairs.
    #' @param vid 
    #' @param token_symbol token_symbol
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `factory` = NULL, `symbol` = NULL, `name` = NULL, `decimals` = NULL, `total_supply` = NULL, `volume` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `tx_count` = NULL, `liquidity` = NULL, `derived_eth` = NULL, `whitelist_pairs` = NULL, `vid` = NULL, `token_symbol` = NULL, ...) {
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
      if (!is.null(`factory`)) {
        if (!(is.character(`factory`) && length(`factory`) == 1)) {
          stop(paste("Error! Invalid data for `factory`. Must be a string:", `factory`))
        }
        self$`factory` <- `factory`
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
        if (!(is.character(`decimals`) && length(`decimals`) == 1)) {
          stop(paste("Error! Invalid data for `decimals`. Must be a string:", `decimals`))
        }
        self$`decimals` <- `decimals`
      }
      if (!is.null(`total_supply`)) {
        if (!(is.character(`total_supply`) && length(`total_supply`) == 1)) {
          stop(paste("Error! Invalid data for `total_supply`. Must be a string:", `total_supply`))
        }
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
      if (!is.null(`tx_count`)) {
        if (!(is.character(`tx_count`) && length(`tx_count`) == 1)) {
          stop(paste("Error! Invalid data for `tx_count`. Must be a string:", `tx_count`))
        }
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`liquidity`)) {
        if (!(is.character(`liquidity`) && length(`liquidity`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity`. Must be a string:", `liquidity`))
        }
        self$`liquidity` <- `liquidity`
      }
      if (!is.null(`derived_eth`)) {
        if (!(is.character(`derived_eth`) && length(`derived_eth`) == 1)) {
          stop(paste("Error! Invalid data for `derived_eth`. Must be a string:", `derived_eth`))
        }
        self$`derived_eth` <- `derived_eth`
      }
      if (!is.null(`whitelist_pairs`)) {
        stopifnot(is.vector(`whitelist_pairs`), length(`whitelist_pairs`) != 0)
        sapply(`whitelist_pairs`, function(x) stopifnot(is.character(x)))
        self$`whitelist_pairs` <- `whitelist_pairs`
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
    #' @return SushiswapTokenDTO in JSON format
    #' @export
    toJSON = function() {
      SushiswapTokenDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SushiswapTokenDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SushiswapTokenDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SushiswapTokenDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SushiswapTokenDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`factory`)) {
        SushiswapTokenDTOObject[["factory"]] <-
          self$`factory`
      }
      if (!is.null(self$`symbol`)) {
        SushiswapTokenDTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`name`)) {
        SushiswapTokenDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`decimals`)) {
        SushiswapTokenDTOObject[["decimals"]] <-
          self$`decimals`
      }
      if (!is.null(self$`total_supply`)) {
        SushiswapTokenDTOObject[["total_supply"]] <-
          self$`total_supply`
      }
      if (!is.null(self$`volume`)) {
        SushiswapTokenDTOObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`volume_usd`)) {
        SushiswapTokenDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        SushiswapTokenDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`tx_count`)) {
        SushiswapTokenDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`liquidity`)) {
        SushiswapTokenDTOObject[["liquidity"]] <-
          self$`liquidity`
      }
      if (!is.null(self$`derived_eth`)) {
        SushiswapTokenDTOObject[["derived_eth"]] <-
          self$`derived_eth`
      }
      if (!is.null(self$`whitelist_pairs`)) {
        SushiswapTokenDTOObject[["whitelist_pairs"]] <-
          self$`whitelist_pairs`
      }
      if (!is.null(self$`vid`)) {
        SushiswapTokenDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`token_symbol`)) {
        SushiswapTokenDTOObject[["token_symbol"]] <-
          self$`token_symbol`
      }
      SushiswapTokenDTOObject
    },
    #' Deserialize JSON string into an instance of SushiswapTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapTokenDTO
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
      if (!is.null(this_object$`factory`)) {
        self$`factory` <- this_object$`factory`
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
        self$`total_supply` <- this_object$`total_supply`
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
      if (!is.null(this_object$`tx_count`)) {
        self$`tx_count` <- this_object$`tx_count`
      }
      if (!is.null(this_object$`liquidity`)) {
        self$`liquidity` <- this_object$`liquidity`
      }
      if (!is.null(this_object$`derived_eth`)) {
        self$`derived_eth` <- this_object$`derived_eth`
      }
      if (!is.null(this_object$`whitelist_pairs`)) {
        self$`whitelist_pairs` <- ApiClient$new()$deserializeObj(this_object$`whitelist_pairs`, "array[character]", loadNamespace("openapi"))
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
    #' @return SushiswapTokenDTO in JSON format
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
        if (!is.null(self$`factory`)) {
          sprintf(
          '"factory":
            "%s"
                    ',
          self$`factory`
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
            "%s"
                    ',
          self$`decimals`
          )
        },
        if (!is.null(self$`total_supply`)) {
          sprintf(
          '"total_supply":
            "%s"
                    ',
          self$`total_supply`
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
        if (!is.null(self$`tx_count`)) {
          sprintf(
          '"tx_count":
            "%s"
                    ',
          self$`tx_count`
          )
        },
        if (!is.null(self$`liquidity`)) {
          sprintf(
          '"liquidity":
            "%s"
                    ',
          self$`liquidity`
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
        if (!is.null(self$`whitelist_pairs`)) {
          sprintf(
          '"whitelist_pairs":
             [%s]
          ',
          paste(unlist(lapply(self$`whitelist_pairs`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of SushiswapTokenDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapTokenDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapTokenDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`factory` <- this_object$`factory`
      self$`symbol` <- this_object$`symbol`
      self$`name` <- this_object$`name`
      self$`decimals` <- this_object$`decimals`
      self$`total_supply` <- this_object$`total_supply`
      self$`volume` <- this_object$`volume`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`tx_count` <- this_object$`tx_count`
      self$`liquidity` <- this_object$`liquidity`
      self$`derived_eth` <- this_object$`derived_eth`
      self$`whitelist_pairs` <- ApiClient$new()$deserializeObj(this_object$`whitelist_pairs`, "array[character]", loadNamespace("openapi"))
      self$`vid` <- this_object$`vid`
      self$`token_symbol` <- this_object$`token_symbol`
      self
    },
    #' Validate JSON input with respect to SushiswapTokenDTO
    #'
    #' @description
    #' Validate JSON input with respect to SushiswapTokenDTO and throw an exception if invalid
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
    #' @return String representation of SushiswapTokenDTO
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
# SushiswapTokenDTO$unlock()
#
## Below is an example to define the print function
# SushiswapTokenDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SushiswapTokenDTO$lock()

