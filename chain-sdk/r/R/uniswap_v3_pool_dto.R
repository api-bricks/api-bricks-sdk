#' Create a new UniswapV3PoolDTO
#'
#' @description
#' Information about a pool. Includes references to each token within the pool, volume information, liquidity information, and more. The pool entity mirrors the pool smart contract, and also contains aggregated information about use.
#'
#' @docType class
#' @title UniswapV3PoolDTO
#' @description UniswapV3PoolDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field vid  integer [optional]
#' @field id Pool address. character [optional]
#' @field created_at_timestamp Creation time. character [optional]
#' @field token_0 Reference to token0 as stored in pool contract. character [optional]
#' @field token_1 Reference to token1 as stored in pool contract. character [optional]
#' @field fee_tier  \link{NumericsBigInteger} [optional]
#' @field liquidity  \link{NumericsBigInteger} [optional]
#' @field sqrt_price  \link{NumericsBigInteger} [optional]
#' @field fee_growth_global_0x128  \link{NumericsBigInteger} [optional]
#' @field fee_growth_global_1x128  \link{NumericsBigInteger} [optional]
#' @field token_0_price Token0 per token1. character [optional]
#' @field token_1_price Token1 per token0. character [optional]
#' @field tick  \link{NumericsBigInteger} [optional]
#' @field observation_index  \link{NumericsBigInteger} [optional]
#' @field volume_token_0 All time token0 swapped. character [optional]
#' @field volume_token_1 All time token1 swapped. character [optional]
#' @field volume_usd All time USD swapped. character [optional]
#' @field untracked_volume_usd All time USD swapped, unfiltered for unreliable USD pools. character [optional]
#' @field fees_usd Fees in USD. character [optional]
#' @field tx_count  \link{NumericsBigInteger} [optional]
#' @field collected_fees_token_0 All time fees collected token0. character [optional]
#' @field collected_fees_token_1 All time fees collected token1. character [optional]
#' @field collected_fees_usd All time fees collected derived USD. character [optional]
#' @field total_value_locked_token_0 Total token 0 across all ticks. character [optional]
#' @field total_value_locked_token_1  character [optional]
#' @field total_value_locked_eth Total token 1 across all ticks. character [optional]
#' @field total_value_locked_usd Total value locked USD. character [optional]
#' @field total_value_locked_usd_untracked Total value locked derived ETH. character [optional]
#' @field liquidity_provider_count Liquidity providers count, used to detect new exchanges. character [optional]
#' @field evaluated_ask  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3PoolDTO <- R6::R6Class(
  "UniswapV3PoolDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `id` = NULL,
    `created_at_timestamp` = NULL,
    `token_0` = NULL,
    `token_1` = NULL,
    `fee_tier` = NULL,
    `liquidity` = NULL,
    `sqrt_price` = NULL,
    `fee_growth_global_0x128` = NULL,
    `fee_growth_global_1x128` = NULL,
    `token_0_price` = NULL,
    `token_1_price` = NULL,
    `tick` = NULL,
    `observation_index` = NULL,
    `volume_token_0` = NULL,
    `volume_token_1` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `fees_usd` = NULL,
    `tx_count` = NULL,
    `collected_fees_token_0` = NULL,
    `collected_fees_token_1` = NULL,
    `collected_fees_usd` = NULL,
    `total_value_locked_token_0` = NULL,
    `total_value_locked_token_1` = NULL,
    `total_value_locked_eth` = NULL,
    `total_value_locked_usd` = NULL,
    `total_value_locked_usd_untracked` = NULL,
    `liquidity_provider_count` = NULL,
    `evaluated_ask` = NULL,
    #' Initialize a new UniswapV3PoolDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3PoolDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param vid 
    #' @param id Pool address.
    #' @param created_at_timestamp Creation time.
    #' @param token_0 Reference to token0 as stored in pool contract.
    #' @param token_1 Reference to token1 as stored in pool contract.
    #' @param fee_tier fee_tier
    #' @param liquidity liquidity
    #' @param sqrt_price sqrt_price
    #' @param fee_growth_global_0x128 fee_growth_global_0x128
    #' @param fee_growth_global_1x128 fee_growth_global_1x128
    #' @param token_0_price Token0 per token1.
    #' @param token_1_price Token1 per token0.
    #' @param tick tick
    #' @param observation_index observation_index
    #' @param volume_token_0 All time token0 swapped.
    #' @param volume_token_1 All time token1 swapped.
    #' @param volume_usd All time USD swapped.
    #' @param untracked_volume_usd All time USD swapped, unfiltered for unreliable USD pools.
    #' @param fees_usd Fees in USD.
    #' @param tx_count tx_count
    #' @param collected_fees_token_0 All time fees collected token0.
    #' @param collected_fees_token_1 All time fees collected token1.
    #' @param collected_fees_usd All time fees collected derived USD.
    #' @param total_value_locked_token_0 Total token 0 across all ticks.
    #' @param total_value_locked_token_1 
    #' @param total_value_locked_eth Total token 1 across all ticks.
    #' @param total_value_locked_usd Total value locked USD.
    #' @param total_value_locked_usd_untracked Total value locked derived ETH.
    #' @param liquidity_provider_count Liquidity providers count, used to detect new exchanges.
    #' @param evaluated_ask evaluated_ask
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `created_at_timestamp` = NULL, `token_0` = NULL, `token_1` = NULL, `fee_tier` = NULL, `liquidity` = NULL, `sqrt_price` = NULL, `fee_growth_global_0x128` = NULL, `fee_growth_global_1x128` = NULL, `token_0_price` = NULL, `token_1_price` = NULL, `tick` = NULL, `observation_index` = NULL, `volume_token_0` = NULL, `volume_token_1` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `fees_usd` = NULL, `tx_count` = NULL, `collected_fees_token_0` = NULL, `collected_fees_token_1` = NULL, `collected_fees_usd` = NULL, `total_value_locked_token_0` = NULL, `total_value_locked_token_1` = NULL, `total_value_locked_eth` = NULL, `total_value_locked_usd` = NULL, `total_value_locked_usd_untracked` = NULL, `liquidity_provider_count` = NULL, `evaluated_ask` = NULL, ...) {
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
      if (!is.null(`created_at_timestamp`)) {
        if (!is.character(`created_at_timestamp`)) {
          stop(paste("Error! Invalid data for `created_at_timestamp`. Must be a string:", `created_at_timestamp`))
        }
        self$`created_at_timestamp` <- `created_at_timestamp`
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
      if (!is.null(`fee_tier`)) {
        stopifnot(R6::is.R6(`fee_tier`))
        self$`fee_tier` <- `fee_tier`
      }
      if (!is.null(`liquidity`)) {
        stopifnot(R6::is.R6(`liquidity`))
        self$`liquidity` <- `liquidity`
      }
      if (!is.null(`sqrt_price`)) {
        stopifnot(R6::is.R6(`sqrt_price`))
        self$`sqrt_price` <- `sqrt_price`
      }
      if (!is.null(`fee_growth_global_0x128`)) {
        stopifnot(R6::is.R6(`fee_growth_global_0x128`))
        self$`fee_growth_global_0x128` <- `fee_growth_global_0x128`
      }
      if (!is.null(`fee_growth_global_1x128`)) {
        stopifnot(R6::is.R6(`fee_growth_global_1x128`))
        self$`fee_growth_global_1x128` <- `fee_growth_global_1x128`
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
      if (!is.null(`tick`)) {
        stopifnot(R6::is.R6(`tick`))
        self$`tick` <- `tick`
      }
      if (!is.null(`observation_index`)) {
        stopifnot(R6::is.R6(`observation_index`))
        self$`observation_index` <- `observation_index`
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
      if (!is.null(`collected_fees_token_0`)) {
        if (!(is.character(`collected_fees_token_0`) && length(`collected_fees_token_0`) == 1)) {
          stop(paste("Error! Invalid data for `collected_fees_token_0`. Must be a string:", `collected_fees_token_0`))
        }
        self$`collected_fees_token_0` <- `collected_fees_token_0`
      }
      if (!is.null(`collected_fees_token_1`)) {
        if (!(is.character(`collected_fees_token_1`) && length(`collected_fees_token_1`) == 1)) {
          stop(paste("Error! Invalid data for `collected_fees_token_1`. Must be a string:", `collected_fees_token_1`))
        }
        self$`collected_fees_token_1` <- `collected_fees_token_1`
      }
      if (!is.null(`collected_fees_usd`)) {
        if (!(is.character(`collected_fees_usd`) && length(`collected_fees_usd`) == 1)) {
          stop(paste("Error! Invalid data for `collected_fees_usd`. Must be a string:", `collected_fees_usd`))
        }
        self$`collected_fees_usd` <- `collected_fees_usd`
      }
      if (!is.null(`total_value_locked_token_0`)) {
        if (!(is.character(`total_value_locked_token_0`) && length(`total_value_locked_token_0`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_token_0`. Must be a string:", `total_value_locked_token_0`))
        }
        self$`total_value_locked_token_0` <- `total_value_locked_token_0`
      }
      if (!is.null(`total_value_locked_token_1`)) {
        if (!(is.character(`total_value_locked_token_1`) && length(`total_value_locked_token_1`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_token_1`. Must be a string:", `total_value_locked_token_1`))
        }
        self$`total_value_locked_token_1` <- `total_value_locked_token_1`
      }
      if (!is.null(`total_value_locked_eth`)) {
        if (!(is.character(`total_value_locked_eth`) && length(`total_value_locked_eth`) == 1)) {
          stop(paste("Error! Invalid data for `total_value_locked_eth`. Must be a string:", `total_value_locked_eth`))
        }
        self$`total_value_locked_eth` <- `total_value_locked_eth`
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
      if (!is.null(`liquidity_provider_count`)) {
        if (!(is.character(`liquidity_provider_count`) && length(`liquidity_provider_count`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity_provider_count`. Must be a string:", `liquidity_provider_count`))
        }
        self$`liquidity_provider_count` <- `liquidity_provider_count`
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
    #' @return UniswapV3PoolDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3PoolDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3PoolDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3PoolDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3PoolDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3PoolDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        UniswapV3PoolDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`created_at_timestamp`)) {
        UniswapV3PoolDTOObject[["created_at_timestamp"]] <-
          self$`created_at_timestamp`
      }
      if (!is.null(self$`token_0`)) {
        UniswapV3PoolDTOObject[["token_0"]] <-
          self$`token_0`
      }
      if (!is.null(self$`token_1`)) {
        UniswapV3PoolDTOObject[["token_1"]] <-
          self$`token_1`
      }
      if (!is.null(self$`fee_tier`)) {
        UniswapV3PoolDTOObject[["fee_tier"]] <-
          self$`fee_tier`$toJSON()
      }
      if (!is.null(self$`liquidity`)) {
        UniswapV3PoolDTOObject[["liquidity"]] <-
          self$`liquidity`$toJSON()
      }
      if (!is.null(self$`sqrt_price`)) {
        UniswapV3PoolDTOObject[["sqrt_price"]] <-
          self$`sqrt_price`$toJSON()
      }
      if (!is.null(self$`fee_growth_global_0x128`)) {
        UniswapV3PoolDTOObject[["fee_growth_global_0x128"]] <-
          self$`fee_growth_global_0x128`$toJSON()
      }
      if (!is.null(self$`fee_growth_global_1x128`)) {
        UniswapV3PoolDTOObject[["fee_growth_global_1x128"]] <-
          self$`fee_growth_global_1x128`$toJSON()
      }
      if (!is.null(self$`token_0_price`)) {
        UniswapV3PoolDTOObject[["token_0_price"]] <-
          self$`token_0_price`
      }
      if (!is.null(self$`token_1_price`)) {
        UniswapV3PoolDTOObject[["token_1_price"]] <-
          self$`token_1_price`
      }
      if (!is.null(self$`tick`)) {
        UniswapV3PoolDTOObject[["tick"]] <-
          self$`tick`$toJSON()
      }
      if (!is.null(self$`observation_index`)) {
        UniswapV3PoolDTOObject[["observation_index"]] <-
          self$`observation_index`$toJSON()
      }
      if (!is.null(self$`volume_token_0`)) {
        UniswapV3PoolDTOObject[["volume_token_0"]] <-
          self$`volume_token_0`
      }
      if (!is.null(self$`volume_token_1`)) {
        UniswapV3PoolDTOObject[["volume_token_1"]] <-
          self$`volume_token_1`
      }
      if (!is.null(self$`volume_usd`)) {
        UniswapV3PoolDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        UniswapV3PoolDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`fees_usd`)) {
        UniswapV3PoolDTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`tx_count`)) {
        UniswapV3PoolDTOObject[["tx_count"]] <-
          self$`tx_count`$toJSON()
      }
      if (!is.null(self$`collected_fees_token_0`)) {
        UniswapV3PoolDTOObject[["collected_fees_token_0"]] <-
          self$`collected_fees_token_0`
      }
      if (!is.null(self$`collected_fees_token_1`)) {
        UniswapV3PoolDTOObject[["collected_fees_token_1"]] <-
          self$`collected_fees_token_1`
      }
      if (!is.null(self$`collected_fees_usd`)) {
        UniswapV3PoolDTOObject[["collected_fees_usd"]] <-
          self$`collected_fees_usd`
      }
      if (!is.null(self$`total_value_locked_token_0`)) {
        UniswapV3PoolDTOObject[["total_value_locked_token_0"]] <-
          self$`total_value_locked_token_0`
      }
      if (!is.null(self$`total_value_locked_token_1`)) {
        UniswapV3PoolDTOObject[["total_value_locked_token_1"]] <-
          self$`total_value_locked_token_1`
      }
      if (!is.null(self$`total_value_locked_eth`)) {
        UniswapV3PoolDTOObject[["total_value_locked_eth"]] <-
          self$`total_value_locked_eth`
      }
      if (!is.null(self$`total_value_locked_usd`)) {
        UniswapV3PoolDTOObject[["total_value_locked_usd"]] <-
          self$`total_value_locked_usd`
      }
      if (!is.null(self$`total_value_locked_usd_untracked`)) {
        UniswapV3PoolDTOObject[["total_value_locked_usd_untracked"]] <-
          self$`total_value_locked_usd_untracked`
      }
      if (!is.null(self$`liquidity_provider_count`)) {
        UniswapV3PoolDTOObject[["liquidity_provider_count"]] <-
          self$`liquidity_provider_count`
      }
      if (!is.null(self$`evaluated_ask`)) {
        UniswapV3PoolDTOObject[["evaluated_ask"]] <-
          self$`evaluated_ask`
      }
      UniswapV3PoolDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3PoolDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3PoolDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3PoolDTO
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
      if (!is.null(this_object$`created_at_timestamp`)) {
        self$`created_at_timestamp` <- this_object$`created_at_timestamp`
      }
      if (!is.null(this_object$`token_0`)) {
        self$`token_0` <- this_object$`token_0`
      }
      if (!is.null(this_object$`token_1`)) {
        self$`token_1` <- this_object$`token_1`
      }
      if (!is.null(this_object$`fee_tier`)) {
        `fee_tier_object` <- NumericsBigInteger$new()
        `fee_tier_object`$fromJSON(jsonlite::toJSON(this_object$`fee_tier`, auto_unbox = TRUE, digits = NA))
        self$`fee_tier` <- `fee_tier_object`
      }
      if (!is.null(this_object$`liquidity`)) {
        `liquidity_object` <- NumericsBigInteger$new()
        `liquidity_object`$fromJSON(jsonlite::toJSON(this_object$`liquidity`, auto_unbox = TRUE, digits = NA))
        self$`liquidity` <- `liquidity_object`
      }
      if (!is.null(this_object$`sqrt_price`)) {
        `sqrt_price_object` <- NumericsBigInteger$new()
        `sqrt_price_object`$fromJSON(jsonlite::toJSON(this_object$`sqrt_price`, auto_unbox = TRUE, digits = NA))
        self$`sqrt_price` <- `sqrt_price_object`
      }
      if (!is.null(this_object$`fee_growth_global_0x128`)) {
        `fee_growth_global_0x128_object` <- NumericsBigInteger$new()
        `fee_growth_global_0x128_object`$fromJSON(jsonlite::toJSON(this_object$`fee_growth_global_0x128`, auto_unbox = TRUE, digits = NA))
        self$`fee_growth_global_0x128` <- `fee_growth_global_0x128_object`
      }
      if (!is.null(this_object$`fee_growth_global_1x128`)) {
        `fee_growth_global_1x128_object` <- NumericsBigInteger$new()
        `fee_growth_global_1x128_object`$fromJSON(jsonlite::toJSON(this_object$`fee_growth_global_1x128`, auto_unbox = TRUE, digits = NA))
        self$`fee_growth_global_1x128` <- `fee_growth_global_1x128_object`
      }
      if (!is.null(this_object$`token_0_price`)) {
        self$`token_0_price` <- this_object$`token_0_price`
      }
      if (!is.null(this_object$`token_1_price`)) {
        self$`token_1_price` <- this_object$`token_1_price`
      }
      if (!is.null(this_object$`tick`)) {
        `tick_object` <- NumericsBigInteger$new()
        `tick_object`$fromJSON(jsonlite::toJSON(this_object$`tick`, auto_unbox = TRUE, digits = NA))
        self$`tick` <- `tick_object`
      }
      if (!is.null(this_object$`observation_index`)) {
        `observation_index_object` <- NumericsBigInteger$new()
        `observation_index_object`$fromJSON(jsonlite::toJSON(this_object$`observation_index`, auto_unbox = TRUE, digits = NA))
        self$`observation_index` <- `observation_index_object`
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
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        `tx_count_object` <- NumericsBigInteger$new()
        `tx_count_object`$fromJSON(jsonlite::toJSON(this_object$`tx_count`, auto_unbox = TRUE, digits = NA))
        self$`tx_count` <- `tx_count_object`
      }
      if (!is.null(this_object$`collected_fees_token_0`)) {
        self$`collected_fees_token_0` <- this_object$`collected_fees_token_0`
      }
      if (!is.null(this_object$`collected_fees_token_1`)) {
        self$`collected_fees_token_1` <- this_object$`collected_fees_token_1`
      }
      if (!is.null(this_object$`collected_fees_usd`)) {
        self$`collected_fees_usd` <- this_object$`collected_fees_usd`
      }
      if (!is.null(this_object$`total_value_locked_token_0`)) {
        self$`total_value_locked_token_0` <- this_object$`total_value_locked_token_0`
      }
      if (!is.null(this_object$`total_value_locked_token_1`)) {
        self$`total_value_locked_token_1` <- this_object$`total_value_locked_token_1`
      }
      if (!is.null(this_object$`total_value_locked_eth`)) {
        self$`total_value_locked_eth` <- this_object$`total_value_locked_eth`
      }
      if (!is.null(this_object$`total_value_locked_usd`)) {
        self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      }
      if (!is.null(this_object$`total_value_locked_usd_untracked`)) {
        self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      }
      if (!is.null(this_object$`liquidity_provider_count`)) {
        self$`liquidity_provider_count` <- this_object$`liquidity_provider_count`
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
    #' @return UniswapV3PoolDTO in JSON format
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
        if (!is.null(self$`created_at_timestamp`)) {
          sprintf(
          '"created_at_timestamp":
            "%s"
                    ',
          self$`created_at_timestamp`
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
        if (!is.null(self$`fee_tier`)) {
          sprintf(
          '"fee_tier":
          %s
          ',
          jsonlite::toJSON(self$`fee_tier`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`liquidity`)) {
          sprintf(
          '"liquidity":
          %s
          ',
          jsonlite::toJSON(self$`liquidity`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`sqrt_price`)) {
          sprintf(
          '"sqrt_price":
          %s
          ',
          jsonlite::toJSON(self$`sqrt_price`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fee_growth_global_0x128`)) {
          sprintf(
          '"fee_growth_global_0x128":
          %s
          ',
          jsonlite::toJSON(self$`fee_growth_global_0x128`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fee_growth_global_1x128`)) {
          sprintf(
          '"fee_growth_global_1x128":
          %s
          ',
          jsonlite::toJSON(self$`fee_growth_global_1x128`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`tick`)) {
          sprintf(
          '"tick":
          %s
          ',
          jsonlite::toJSON(self$`tick`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`observation_index`)) {
          sprintf(
          '"observation_index":
          %s
          ',
          jsonlite::toJSON(self$`observation_index`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`collected_fees_token_0`)) {
          sprintf(
          '"collected_fees_token_0":
            "%s"
                    ',
          self$`collected_fees_token_0`
          )
        },
        if (!is.null(self$`collected_fees_token_1`)) {
          sprintf(
          '"collected_fees_token_1":
            "%s"
                    ',
          self$`collected_fees_token_1`
          )
        },
        if (!is.null(self$`collected_fees_usd`)) {
          sprintf(
          '"collected_fees_usd":
            "%s"
                    ',
          self$`collected_fees_usd`
          )
        },
        if (!is.null(self$`total_value_locked_token_0`)) {
          sprintf(
          '"total_value_locked_token_0":
            "%s"
                    ',
          self$`total_value_locked_token_0`
          )
        },
        if (!is.null(self$`total_value_locked_token_1`)) {
          sprintf(
          '"total_value_locked_token_1":
            "%s"
                    ',
          self$`total_value_locked_token_1`
          )
        },
        if (!is.null(self$`total_value_locked_eth`)) {
          sprintf(
          '"total_value_locked_eth":
            "%s"
                    ',
          self$`total_value_locked_eth`
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
        if (!is.null(self$`liquidity_provider_count`)) {
          sprintf(
          '"liquidity_provider_count":
            "%s"
                    ',
          self$`liquidity_provider_count`
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
    #' Deserialize JSON string into an instance of UniswapV3PoolDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3PoolDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3PoolDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`id` <- this_object$`id`
      self$`created_at_timestamp` <- this_object$`created_at_timestamp`
      self$`token_0` <- this_object$`token_0`
      self$`token_1` <- this_object$`token_1`
      self$`fee_tier` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`fee_tier`, auto_unbox = TRUE, digits = NA))
      self$`liquidity` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`liquidity`, auto_unbox = TRUE, digits = NA))
      self$`sqrt_price` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`sqrt_price`, auto_unbox = TRUE, digits = NA))
      self$`fee_growth_global_0x128` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`fee_growth_global_0x128`, auto_unbox = TRUE, digits = NA))
      self$`fee_growth_global_1x128` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`fee_growth_global_1x128`, auto_unbox = TRUE, digits = NA))
      self$`token_0_price` <- this_object$`token_0_price`
      self$`token_1_price` <- this_object$`token_1_price`
      self$`tick` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`tick`, auto_unbox = TRUE, digits = NA))
      self$`observation_index` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`observation_index`, auto_unbox = TRUE, digits = NA))
      self$`volume_token_0` <- this_object$`volume_token_0`
      self$`volume_token_1` <- this_object$`volume_token_1`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`tx_count` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`tx_count`, auto_unbox = TRUE, digits = NA))
      self$`collected_fees_token_0` <- this_object$`collected_fees_token_0`
      self$`collected_fees_token_1` <- this_object$`collected_fees_token_1`
      self$`collected_fees_usd` <- this_object$`collected_fees_usd`
      self$`total_value_locked_token_0` <- this_object$`total_value_locked_token_0`
      self$`total_value_locked_token_1` <- this_object$`total_value_locked_token_1`
      self$`total_value_locked_eth` <- this_object$`total_value_locked_eth`
      self$`total_value_locked_usd` <- this_object$`total_value_locked_usd`
      self$`total_value_locked_usd_untracked` <- this_object$`total_value_locked_usd_untracked`
      self$`liquidity_provider_count` <- this_object$`liquidity_provider_count`
      self$`evaluated_ask` <- this_object$`evaluated_ask`
      self
    },
    #' Validate JSON input with respect to UniswapV3PoolDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3PoolDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3PoolDTO
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
# UniswapV3PoolDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3PoolDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3PoolDTO$lock()

