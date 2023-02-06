#' Create a new SushiswapPairDTO
#'
#' @description
#' Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
#'
#' @docType class
#' @title SushiswapPairDTO
#' @description SushiswapPairDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Pair contract address. character [optional]
#' @field factory Factory contract address. character [optional]
#' @field name Friendly name, format: (token0 name)-(token1 name) character [optional]
#' @field token_0 Reference to token0 as stored in pair contract. character [optional]
#' @field token_1 Reference to token0 as stored in pair contract. character [optional]
#' @field reserve_0 Reserve of token0. character [optional]
#' @field reserve_1 Reserve of token1. character [optional]
#' @field total_supply Total supply of liquidity token distributed to LPs. character [optional]
#' @field reserve_eth Total liquidity in pair stored as an amount of ETH. character [optional]
#' @field reserve_usd Total liquidity amount in pair stored as an amount of USD. character [optional]
#' @field tracked_reserve_eth Total liquidity with only tracked amount. character [optional]
#' @field token_0_price Token0 per token1. character [optional]
#' @field token_1_price Token1 per token0. character [optional]
#' @field volume_token_0 Amount of token0 swapped on this pair. character [optional]
#' @field volume_token_1 Amount of token1 swapped on this pair. character [optional]
#' @field volume_usd Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). character [optional]
#' @field untracked_volume_usd Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. character [optional]
#' @field tx_count All time amount of transactions on this pair. character [optional]
#' @field liquidity_provider_count Total number of LPs. character [optional]
#' @field timestamp Timestamp. character [optional]
#' @field block Block number in which pair information was created in. character [optional]
#' @field vid  integer [optional]
#' @field evaluated_ask  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SushiswapPairDTO <- R6::R6Class(
  "SushiswapPairDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `factory` = NULL,
    `name` = NULL,
    `token_0` = NULL,
    `token_1` = NULL,
    `reserve_0` = NULL,
    `reserve_1` = NULL,
    `total_supply` = NULL,
    `reserve_eth` = NULL,
    `reserve_usd` = NULL,
    `tracked_reserve_eth` = NULL,
    `token_0_price` = NULL,
    `token_1_price` = NULL,
    `volume_token_0` = NULL,
    `volume_token_1` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `tx_count` = NULL,
    `liquidity_provider_count` = NULL,
    `timestamp` = NULL,
    `block` = NULL,
    `vid` = NULL,
    `evaluated_ask` = NULL,
    #' Initialize a new SushiswapPairDTO class.
    #'
    #' @description
    #' Initialize a new SushiswapPairDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Pair contract address.
    #' @param factory Factory contract address.
    #' @param name Friendly name, format: (token0 name)-(token1 name)
    #' @param token_0 Reference to token0 as stored in pair contract.
    #' @param token_1 Reference to token0 as stored in pair contract.
    #' @param reserve_0 Reserve of token0.
    #' @param reserve_1 Reserve of token1.
    #' @param total_supply Total supply of liquidity token distributed to LPs.
    #' @param reserve_eth Total liquidity in pair stored as an amount of ETH.
    #' @param reserve_usd Total liquidity amount in pair stored as an amount of USD.
    #' @param tracked_reserve_eth Total liquidity with only tracked amount.
    #' @param token_0_price Token0 per token1.
    #' @param token_1_price Token1 per token0.
    #' @param volume_token_0 Amount of token0 swapped on this pair.
    #' @param volume_token_1 Amount of token1 swapped on this pair.
    #' @param volume_usd Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
    #' @param untracked_volume_usd Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
    #' @param tx_count All time amount of transactions on this pair.
    #' @param liquidity_provider_count Total number of LPs.
    #' @param timestamp Timestamp.
    #' @param block Block number in which pair information was created in.
    #' @param vid 
    #' @param evaluated_ask evaluated_ask
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `factory` = NULL, `name` = NULL, `token_0` = NULL, `token_1` = NULL, `reserve_0` = NULL, `reserve_1` = NULL, `total_supply` = NULL, `reserve_eth` = NULL, `reserve_usd` = NULL, `tracked_reserve_eth` = NULL, `token_0_price` = NULL, `token_1_price` = NULL, `volume_token_0` = NULL, `volume_token_1` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `tx_count` = NULL, `liquidity_provider_count` = NULL, `timestamp` = NULL, `block` = NULL, `vid` = NULL, `evaluated_ask` = NULL, ...) {
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`token_0`)) {
        if (!(is.character(`token_0`) && length(`token_0`) == 1)) {
          stop(paste("Error! Invalid data for `token_0`. Must be a string:", `token_0`))
        }
        self$`token_0` <- `token_0`
      }
      if (!is.null(`token_1`)) {
        if (!(is.character(`token_1`) && length(`token_1`) == 1)) {
          stop(paste("Error! Invalid data for `token_1`. Must be a string:", `token_1`))
        }
        self$`token_1` <- `token_1`
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
      if (!is.null(`total_supply`)) {
        if (!(is.character(`total_supply`) && length(`total_supply`) == 1)) {
          stop(paste("Error! Invalid data for `total_supply`. Must be a string:", `total_supply`))
        }
        self$`total_supply` <- `total_supply`
      }
      if (!is.null(`reserve_eth`)) {
        if (!(is.character(`reserve_eth`) && length(`reserve_eth`) == 1)) {
          stop(paste("Error! Invalid data for `reserve_eth`. Must be a string:", `reserve_eth`))
        }
        self$`reserve_eth` <- `reserve_eth`
      }
      if (!is.null(`reserve_usd`)) {
        if (!(is.character(`reserve_usd`) && length(`reserve_usd`) == 1)) {
          stop(paste("Error! Invalid data for `reserve_usd`. Must be a string:", `reserve_usd`))
        }
        self$`reserve_usd` <- `reserve_usd`
      }
      if (!is.null(`tracked_reserve_eth`)) {
        if (!(is.character(`tracked_reserve_eth`) && length(`tracked_reserve_eth`) == 1)) {
          stop(paste("Error! Invalid data for `tracked_reserve_eth`. Must be a string:", `tracked_reserve_eth`))
        }
        self$`tracked_reserve_eth` <- `tracked_reserve_eth`
      }
      if (!is.null(`token_0_price`)) {
        if (!(is.character(`token_0_price`) && length(`token_0_price`) == 1)) {
          stop(paste("Error! Invalid data for `token_0_price`. Must be a string:", `token_0_price`))
        }
        self$`token_0_price` <- `token_0_price`
      }
      if (!is.null(`token_1_price`)) {
        if (!(is.character(`token_1_price`) && length(`token_1_price`) == 1)) {
          stop(paste("Error! Invalid data for `token_1_price`. Must be a string:", `token_1_price`))
        }
        self$`token_1_price` <- `token_1_price`
      }
      if (!is.null(`volume_token_0`)) {
        if (!(is.character(`volume_token_0`) && length(`volume_token_0`) == 1)) {
          stop(paste("Error! Invalid data for `volume_token_0`. Must be a string:", `volume_token_0`))
        }
        self$`volume_token_0` <- `volume_token_0`
      }
      if (!is.null(`volume_token_1`)) {
        if (!(is.character(`volume_token_1`) && length(`volume_token_1`) == 1)) {
          stop(paste("Error! Invalid data for `volume_token_1`. Must be a string:", `volume_token_1`))
        }
        self$`volume_token_1` <- `volume_token_1`
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
      if (!is.null(`liquidity_provider_count`)) {
        if (!(is.character(`liquidity_provider_count`) && length(`liquidity_provider_count`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_provider_count`. Must be a string:", `liquidity_provider_count`))
        }
        self$`liquidity_provider_count` <- `liquidity_provider_count`
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
      if (!is.null(`vid`)) {
        if (!(is.numeric(`vid`) && length(`vid`) == 1)) {
          stop(paste("Error! Invalid data for `vid`. Must be an integer:", `vid`))
        }
        self$`vid` <- `vid`
      }
      if (!is.null(`evaluated_ask`)) {
        if (!(is.numeric(`evaluated_ask`) && length(`evaluated_ask`) == 1)) {
          stop(paste("Error! Invalid data for `evaluated_ask`. Must be a number:", `evaluated_ask`))
        }
        self$`evaluated_ask` <- `evaluated_ask`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SushiswapPairDTO in JSON format
    #' @export
    toJSON = function() {
      SushiswapPairDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        SushiswapPairDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        SushiswapPairDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        SushiswapPairDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        SushiswapPairDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`factory`)) {
        SushiswapPairDTOObject[["factory"]] <-
          self$`factory`
      }
      if (!is.null(self$`name`)) {
        SushiswapPairDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`token_0`)) {
        SushiswapPairDTOObject[["token_0"]] <-
          self$`token_0`
      }
      if (!is.null(self$`token_1`)) {
        SushiswapPairDTOObject[["token_1"]] <-
          self$`token_1`
      }
      if (!is.null(self$`reserve_0`)) {
        SushiswapPairDTOObject[["reserve_0"]] <-
          self$`reserve_0`
      }
      if (!is.null(self$`reserve_1`)) {
        SushiswapPairDTOObject[["reserve_1"]] <-
          self$`reserve_1`
      }
      if (!is.null(self$`total_supply`)) {
        SushiswapPairDTOObject[["total_supply"]] <-
          self$`total_supply`
      }
      if (!is.null(self$`reserve_eth`)) {
        SushiswapPairDTOObject[["reserve_eth"]] <-
          self$`reserve_eth`
      }
      if (!is.null(self$`reserve_usd`)) {
        SushiswapPairDTOObject[["reserve_usd"]] <-
          self$`reserve_usd`
      }
      if (!is.null(self$`tracked_reserve_eth`)) {
        SushiswapPairDTOObject[["tracked_reserve_eth"]] <-
          self$`tracked_reserve_eth`
      }
      if (!is.null(self$`token_0_price`)) {
        SushiswapPairDTOObject[["token_0_price"]] <-
          self$`token_0_price`
      }
      if (!is.null(self$`token_1_price`)) {
        SushiswapPairDTOObject[["token_1_price"]] <-
          self$`token_1_price`
      }
      if (!is.null(self$`volume_token_0`)) {
        SushiswapPairDTOObject[["volume_token_0"]] <-
          self$`volume_token_0`
      }
      if (!is.null(self$`volume_token_1`)) {
        SushiswapPairDTOObject[["volume_token_1"]] <-
          self$`volume_token_1`
      }
      if (!is.null(self$`volume_usd`)) {
        SushiswapPairDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        SushiswapPairDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`tx_count`)) {
        SushiswapPairDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`liquidity_provider_count`)) {
        SushiswapPairDTOObject[["liquidity_provider_count"]] <-
          self$`liquidity_provider_count`
      }
      if (!is.null(self$`timestamp`)) {
        SushiswapPairDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`block`)) {
        SushiswapPairDTOObject[["block"]] <-
          self$`block`
      }
      if (!is.null(self$`vid`)) {
        SushiswapPairDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`evaluated_ask`)) {
        SushiswapPairDTOObject[["evaluated_ask"]] <-
          self$`evaluated_ask`
      }
      SushiswapPairDTOObject
    },
    #' Deserialize JSON string into an instance of SushiswapPairDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapPairDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapPairDTO
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`token_0`)) {
        self$`token_0` <- this_object$`token_0`
      }
      if (!is.null(this_object$`token_1`)) {
        self$`token_1` <- this_object$`token_1`
      }
      if (!is.null(this_object$`reserve_0`)) {
        self$`reserve_0` <- this_object$`reserve_0`
      }
      if (!is.null(this_object$`reserve_1`)) {
        self$`reserve_1` <- this_object$`reserve_1`
      }
      if (!is.null(this_object$`total_supply`)) {
        self$`total_supply` <- this_object$`total_supply`
      }
      if (!is.null(this_object$`reserve_eth`)) {
        self$`reserve_eth` <- this_object$`reserve_eth`
      }
      if (!is.null(this_object$`reserve_usd`)) {
        self$`reserve_usd` <- this_object$`reserve_usd`
      }
      if (!is.null(this_object$`tracked_reserve_eth`)) {
        self$`tracked_reserve_eth` <- this_object$`tracked_reserve_eth`
      }
      if (!is.null(this_object$`token_0_price`)) {
        self$`token_0_price` <- this_object$`token_0_price`
      }
      if (!is.null(this_object$`token_1_price`)) {
        self$`token_1_price` <- this_object$`token_1_price`
      }
      if (!is.null(this_object$`volume_token_0`)) {
        self$`volume_token_0` <- this_object$`volume_token_0`
      }
      if (!is.null(this_object$`volume_token_1`)) {
        self$`volume_token_1` <- this_object$`volume_token_1`
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
      if (!is.null(this_object$`liquidity_provider_count`)) {
        self$`liquidity_provider_count` <- this_object$`liquidity_provider_count`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`block`)) {
        self$`block` <- this_object$`block`
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`evaluated_ask`)) {
        self$`evaluated_ask` <- this_object$`evaluated_ask`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SushiswapPairDTO in JSON format
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`token_0`)) {
          sprintf(
          '"token_0":
            "%s"
                    ',
          self$`token_0`
          )
        },
        if (!is.null(self$`token_1`)) {
          sprintf(
          '"token_1":
            "%s"
                    ',
          self$`token_1`
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
        if (!is.null(self$`total_supply`)) {
          sprintf(
          '"total_supply":
            "%s"
                    ',
          self$`total_supply`
          )
        },
        if (!is.null(self$`reserve_eth`)) {
          sprintf(
          '"reserve_eth":
            "%s"
                    ',
          self$`reserve_eth`
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
        if (!is.null(self$`tracked_reserve_eth`)) {
          sprintf(
          '"tracked_reserve_eth":
            "%s"
                    ',
          self$`tracked_reserve_eth`
          )
        },
        if (!is.null(self$`token_0_price`)) {
          sprintf(
          '"token_0_price":
            "%s"
                    ',
          self$`token_0_price`
          )
        },
        if (!is.null(self$`token_1_price`)) {
          sprintf(
          '"token_1_price":
            "%s"
                    ',
          self$`token_1_price`
          )
        },
        if (!is.null(self$`volume_token_0`)) {
          sprintf(
          '"volume_token_0":
            "%s"
                    ',
          self$`volume_token_0`
          )
        },
        if (!is.null(self$`volume_token_1`)) {
          sprintf(
          '"volume_token_1":
            "%s"
                    ',
          self$`volume_token_1`
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
        if (!is.null(self$`liquidity_provider_count`)) {
          sprintf(
          '"liquidity_provider_count":
            "%s"
                    ',
          self$`liquidity_provider_count`
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
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
          )
        },
        if (!is.null(self$`evaluated_ask`)) {
          sprintf(
          '"evaluated_ask":
            %d
                    ',
          self$`evaluated_ask`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SushiswapPairDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of SushiswapPairDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of SushiswapPairDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`factory` <- this_object$`factory`
      self$`name` <- this_object$`name`
      self$`token_0` <- this_object$`token_0`
      self$`token_1` <- this_object$`token_1`
      self$`reserve_0` <- this_object$`reserve_0`
      self$`reserve_1` <- this_object$`reserve_1`
      self$`total_supply` <- this_object$`total_supply`
      self$`reserve_eth` <- this_object$`reserve_eth`
      self$`reserve_usd` <- this_object$`reserve_usd`
      self$`tracked_reserve_eth` <- this_object$`tracked_reserve_eth`
      self$`token_0_price` <- this_object$`token_0_price`
      self$`token_1_price` <- this_object$`token_1_price`
      self$`volume_token_0` <- this_object$`volume_token_0`
      self$`volume_token_1` <- this_object$`volume_token_1`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`tx_count` <- this_object$`tx_count`
      self$`liquidity_provider_count` <- this_object$`liquidity_provider_count`
      self$`timestamp` <- this_object$`timestamp`
      self$`block` <- this_object$`block`
      self$`vid` <- this_object$`vid`
      self$`evaluated_ask` <- this_object$`evaluated_ask`
      self
    },
    #' Validate JSON input with respect to SushiswapPairDTO
    #'
    #' @description
    #' Validate JSON input with respect to SushiswapPairDTO and throw an exception if invalid
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
    #' @return String representation of SushiswapPairDTO
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
# SushiswapPairDTO$unlock()
#
## Below is an example to define the print function
# SushiswapPairDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SushiswapPairDTO$lock()

