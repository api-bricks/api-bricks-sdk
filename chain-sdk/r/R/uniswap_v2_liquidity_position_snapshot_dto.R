#' Create a new UniswapV2LiquidityPositionSnapshotDTO
#'
#' @description
#' This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
#'
#' @docType class
#' @title UniswapV2LiquidityPositionSnapshotDTO
#' @description UniswapV2LiquidityPositionSnapshotDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, format: (pair address)-(user address) character [optional]
#' @field liquidity_position Reference to LP identifier. character [optional]
#' @field timestamp Creation time. integer [optional]
#' @field block Number of block in which LP snapshot was recorded. integer [optional]
#' @field user Reference to user. character [optional]
#' @field pair Reference to the pair liquidity is being provided on. character [optional]
#' @field token_0_price_usd Snapshot of token0 price. character [optional]
#' @field token_1_price_usd Snapshot of token0 price. character [optional]
#' @field reserve_0 Snapshot of pair token0 reserves. character [optional]
#' @field reserve_1 Snapshot of pair token1 reserves. character [optional]
#' @field reserve_usd Snapshot of pair reserves in USD. character [optional]
#' @field liquidity_token_total_supply Snapshot of pool token supply. character [optional]
#' @field liquidity_token_balance Snapshot of users pool token balance. character [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV2LiquidityPositionSnapshotDTO <- R6::R6Class(
  "UniswapV2LiquidityPositionSnapshotDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `liquidity_position` = NULL,
    `timestamp` = NULL,
    `block` = NULL,
    `user` = NULL,
    `pair` = NULL,
    `token_0_price_usd` = NULL,
    `token_1_price_usd` = NULL,
    `reserve_0` = NULL,
    `reserve_1` = NULL,
    `reserve_usd` = NULL,
    `liquidity_token_total_supply` = NULL,
    `liquidity_token_balance` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    #' Initialize a new UniswapV2LiquidityPositionSnapshotDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV2LiquidityPositionSnapshotDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, format: (pair address)-(user address)
    #' @param liquidity_position Reference to LP identifier.
    #' @param timestamp Creation time.
    #' @param block Number of block in which LP snapshot was recorded.
    #' @param user Reference to user.
    #' @param pair Reference to the pair liquidity is being provided on.
    #' @param token_0_price_usd Snapshot of token0 price.
    #' @param token_1_price_usd Snapshot of token0 price.
    #' @param reserve_0 Snapshot of pair token0 reserves.
    #' @param reserve_1 Snapshot of pair token1 reserves.
    #' @param reserve_usd Snapshot of pair reserves in USD.
    #' @param liquidity_token_total_supply Snapshot of pool token supply.
    #' @param liquidity_token_balance Snapshot of users pool token balance.
    #' @param vid 
    #' @param block_range 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `liquidity_position` = NULL, `timestamp` = NULL, `block` = NULL, `user` = NULL, `pair` = NULL, `token_0_price_usd` = NULL, `token_1_price_usd` = NULL, `reserve_0` = NULL, `reserve_1` = NULL, `reserve_usd` = NULL, `liquidity_token_total_supply` = NULL, `liquidity_token_balance` = NULL, `vid` = NULL, `block_range` = NULL, ...) {
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
      if (!is.null(`liquidity_position`)) {
        if (!(is.character(`liquidity_position`) && length(`liquidity_position`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_position`. Must be a string:", `liquidity_position`))
        }
        self$`liquidity_position` <- `liquidity_position`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.numeric(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be an integer:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`block`)) {
        if (!(is.numeric(`block`) && length(`block`) == 1)) {
          stop(paste("Error! Invalid data for `block`. Must be an integer:", `block`))
        }
        self$`block` <- `block`
      }
      if (!is.null(`user`)) {
        if (!(is.character(`user`) && length(`user`) == 1)) {
          stop(paste("Error! Invalid data for `user`. Must be a string:", `user`))
        }
        self$`user` <- `user`
      }
      if (!is.null(`pair`)) {
        if (!(is.character(`pair`) && length(`pair`) == 1)) {
          stop(paste("Error! Invalid data for `pair`. Must be a string:", `pair`))
        }
        self$`pair` <- `pair`
      }
      if (!is.null(`token_0_price_usd`)) {
        if (!(is.character(`token_0_price_usd`) && length(`token_0_price_usd`) == 1)) {
          stop(paste("Error! Invalid data for `token_0_price_usd`. Must be a string:", `token_0_price_usd`))
        }
        self$`token_0_price_usd` <- `token_0_price_usd`
      }
      if (!is.null(`token_1_price_usd`)) {
        if (!(is.character(`token_1_price_usd`) && length(`token_1_price_usd`) == 1)) {
          stop(paste("Error! Invalid data for `token_1_price_usd`. Must be a string:", `token_1_price_usd`))
        }
        self$`token_1_price_usd` <- `token_1_price_usd`
      }
      if (!is.null(`reserve_0`)) {
        if (!(is.character(`reserve_0`) && length(`reserve_0`) == 1)) {
          stop(paste("Error! Invalid data for `reserve_0`. Must be a string:", `reserve_0`))
        }
        self$`reserve_0` <- `reserve_0`
      }
      if (!is.null(`reserve_1`)) {
        if (!(is.character(`reserve_1`) && length(`reserve_1`) == 1)) {
          stop(paste("Error! Invalid data for `reserve_1`. Must be a string:", `reserve_1`))
        }
        self$`reserve_1` <- `reserve_1`
      }
      if (!is.null(`reserve_usd`)) {
        if (!(is.character(`reserve_usd`) && length(`reserve_usd`) == 1)) {
          stop(paste("Error! Invalid data for `reserve_usd`. Must be a string:", `reserve_usd`))
        }
        self$`reserve_usd` <- `reserve_usd`
      }
      if (!is.null(`liquidity_token_total_supply`)) {
        if (!(is.character(`liquidity_token_total_supply`) && length(`liquidity_token_total_supply`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_token_total_supply`. Must be a string:", `liquidity_token_total_supply`))
        }
        self$`liquidity_token_total_supply` <- `liquidity_token_total_supply`
      }
      if (!is.null(`liquidity_token_balance`)) {
        if (!(is.character(`liquidity_token_balance`) && length(`liquidity_token_balance`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_token_balance`. Must be a string:", `liquidity_token_balance`))
        }
        self$`liquidity_token_balance` <- `liquidity_token_balance`
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
    #' @return UniswapV2LiquidityPositionSnapshotDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV2LiquidityPositionSnapshotDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`liquidity_position`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["liquidity_position"]] <-
          self$`liquidity_position`
      }
      if (!is.null(self$`timestamp`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`block`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["block"]] <-
          self$`block`
      }
      if (!is.null(self$`user`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["user"]] <-
          self$`user`
      }
      if (!is.null(self$`pair`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["pair"]] <-
          self$`pair`
      }
      if (!is.null(self$`token_0_price_usd`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["token_0_price_usd"]] <-
          self$`token_0_price_usd`
      }
      if (!is.null(self$`token_1_price_usd`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["token_1_price_usd"]] <-
          self$`token_1_price_usd`
      }
      if (!is.null(self$`reserve_0`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["reserve_0"]] <-
          self$`reserve_0`
      }
      if (!is.null(self$`reserve_1`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["reserve_1"]] <-
          self$`reserve_1`
      }
      if (!is.null(self$`reserve_usd`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["reserve_usd"]] <-
          self$`reserve_usd`
      }
      if (!is.null(self$`liquidity_token_total_supply`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["liquidity_token_total_supply"]] <-
          self$`liquidity_token_total_supply`
      }
      if (!is.null(self$`liquidity_token_balance`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["liquidity_token_balance"]] <-
          self$`liquidity_token_balance`
      }
      if (!is.null(self$`vid`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        UniswapV2LiquidityPositionSnapshotDTOObject[["block_range"]] <-
          self$`block_range`
      }
      UniswapV2LiquidityPositionSnapshotDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV2LiquidityPositionSnapshotDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2LiquidityPositionSnapshotDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2LiquidityPositionSnapshotDTO
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
      if (!is.null(this_object$`liquidity_position`)) {
        self$`liquidity_position` <- this_object$`liquidity_position`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`block`)) {
        self$`block` <- this_object$`block`
      }
      if (!is.null(this_object$`user`)) {
        self$`user` <- this_object$`user`
      }
      if (!is.null(this_object$`pair`)) {
        self$`pair` <- this_object$`pair`
      }
      if (!is.null(this_object$`token_0_price_usd`)) {
        self$`token_0_price_usd` <- this_object$`token_0_price_usd`
      }
      if (!is.null(this_object$`token_1_price_usd`)) {
        self$`token_1_price_usd` <- this_object$`token_1_price_usd`
      }
      if (!is.null(this_object$`reserve_0`)) {
        self$`reserve_0` <- this_object$`reserve_0`
      }
      if (!is.null(this_object$`reserve_1`)) {
        self$`reserve_1` <- this_object$`reserve_1`
      }
      if (!is.null(this_object$`reserve_usd`)) {
        self$`reserve_usd` <- this_object$`reserve_usd`
      }
      if (!is.null(this_object$`liquidity_token_total_supply`)) {
        self$`liquidity_token_total_supply` <- this_object$`liquidity_token_total_supply`
      }
      if (!is.null(this_object$`liquidity_token_balance`)) {
        self$`liquidity_token_balance` <- this_object$`liquidity_token_balance`
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
    #' @return UniswapV2LiquidityPositionSnapshotDTO in JSON format
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
        if (!is.null(self$`liquidity_position`)) {
          sprintf(
          '"liquidity_position":
            "%s"
                    ',
          self$`liquidity_position`
          )
        },
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            %d
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`block`)) {
          sprintf(
          '"block":
            %d
                    ',
          self$`block`
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
        if (!is.null(self$`pair`)) {
          sprintf(
          '"pair":
            "%s"
                    ',
          self$`pair`
          )
        },
        if (!is.null(self$`token_0_price_usd`)) {
          sprintf(
          '"token_0_price_usd":
            "%s"
                    ',
          self$`token_0_price_usd`
          )
        },
        if (!is.null(self$`token_1_price_usd`)) {
          sprintf(
          '"token_1_price_usd":
            "%s"
                    ',
          self$`token_1_price_usd`
          )
        },
        if (!is.null(self$`reserve_0`)) {
          sprintf(
          '"reserve_0":
            "%s"
                    ',
          self$`reserve_0`
          )
        },
        if (!is.null(self$`reserve_1`)) {
          sprintf(
          '"reserve_1":
            "%s"
                    ',
          self$`reserve_1`
          )
        },
        if (!is.null(self$`reserve_usd`)) {
          sprintf(
          '"reserve_usd":
            "%s"
                    ',
          self$`reserve_usd`
          )
        },
        if (!is.null(self$`liquidity_token_total_supply`)) {
          sprintf(
          '"liquidity_token_total_supply":
            "%s"
                    ',
          self$`liquidity_token_total_supply`
          )
        },
        if (!is.null(self$`liquidity_token_balance`)) {
          sprintf(
          '"liquidity_token_balance":
            "%s"
                    ',
          self$`liquidity_token_balance`
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
    #' Deserialize JSON string into an instance of UniswapV2LiquidityPositionSnapshotDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV2LiquidityPositionSnapshotDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV2LiquidityPositionSnapshotDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`liquidity_position` <- this_object$`liquidity_position`
      self$`timestamp` <- this_object$`timestamp`
      self$`block` <- this_object$`block`
      self$`user` <- this_object$`user`
      self$`pair` <- this_object$`pair`
      self$`token_0_price_usd` <- this_object$`token_0_price_usd`
      self$`token_1_price_usd` <- this_object$`token_1_price_usd`
      self$`reserve_0` <- this_object$`reserve_0`
      self$`reserve_1` <- this_object$`reserve_1`
      self$`reserve_usd` <- this_object$`reserve_usd`
      self$`liquidity_token_total_supply` <- this_object$`liquidity_token_total_supply`
      self$`liquidity_token_balance` <- this_object$`liquidity_token_balance`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self
    },
    #' Validate JSON input with respect to UniswapV2LiquidityPositionSnapshotDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV2LiquidityPositionSnapshotDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV2LiquidityPositionSnapshotDTO
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
# UniswapV2LiquidityPositionSnapshotDTO$unlock()
#
## Below is an example to define the print function
# UniswapV2LiquidityPositionSnapshotDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV2LiquidityPositionSnapshotDTO$lock()

