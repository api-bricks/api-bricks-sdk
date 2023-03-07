#' Create a new UniswapV3TickDTO
#'
#' @description
#' Ticks are the boundaries between discrete areas in price space.
#'
#' @docType class
#' @title UniswapV3TickDTO
#' @description UniswapV3TickDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field vid  integer [optional]
#' @field id Identifier, format: (pool address)#(tick index) character [optional]
#' @field pool_address Pool address. character [optional]
#' @field tick_idx  \link{NumericsBigInteger} [optional]
#' @field pool Pool address. character [optional]
#' @field liquidity_gross  \link{NumericsBigInteger} [optional]
#' @field liquidity_net  \link{NumericsBigInteger} [optional]
#' @field price_0 Calculated price of token0 of tick within this pool - constant. character [optional]
#' @field price_1 Calculated price of token1 of tick within this pool - constant. character [optional]
#' @field volume_token_0 Lifetime volume of token0 with this tick in range. character [optional]
#' @field volume_token_1 Lifetime volume of token1 with this tick in range. character [optional]
#' @field volume_usd Lifetime volume in derived USD with this tick in range. character [optional]
#' @field untracked_volume_usd Lifetime volume in untracked USD with this tick in range. character [optional]
#' @field fees_usd Fees in USD. character [optional]
#' @field collected_fees_token_0 All time collected fees in token0. character [optional]
#' @field collected_fees_token_1 All time collected fees in token1. character [optional]
#' @field collected_fees_usd All time collected fees in USD. character [optional]
#' @field created_at_timestamp Created time. character [optional]
#' @field liquidity_provider_count  \link{NumericsBigInteger} [optional]
#' @field fee_growth_outside_0x128  \link{NumericsBigInteger} [optional]
#' @field fee_growth_outside_1x128  \link{NumericsBigInteger} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3TickDTO <- R6::R6Class(
  "UniswapV3TickDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `id` = NULL,
    `pool_address` = NULL,
    `tick_idx` = NULL,
    `pool` = NULL,
    `liquidity_gross` = NULL,
    `liquidity_net` = NULL,
    `price_0` = NULL,
    `price_1` = NULL,
    `volume_token_0` = NULL,
    `volume_token_1` = NULL,
    `volume_usd` = NULL,
    `untracked_volume_usd` = NULL,
    `fees_usd` = NULL,
    `collected_fees_token_0` = NULL,
    `collected_fees_token_1` = NULL,
    `collected_fees_usd` = NULL,
    `created_at_timestamp` = NULL,
    `liquidity_provider_count` = NULL,
    `fee_growth_outside_0x128` = NULL,
    `fee_growth_outside_1x128` = NULL,
    #' Initialize a new UniswapV3TickDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3TickDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param vid 
    #' @param id Identifier, format: (pool address)#(tick index)
    #' @param pool_address Pool address.
    #' @param tick_idx tick_idx
    #' @param pool Pool address.
    #' @param liquidity_gross liquidity_gross
    #' @param liquidity_net liquidity_net
    #' @param price_0 Calculated price of token0 of tick within this pool - constant.
    #' @param price_1 Calculated price of token1 of tick within this pool - constant.
    #' @param volume_token_0 Lifetime volume of token0 with this tick in range.
    #' @param volume_token_1 Lifetime volume of token1 with this tick in range.
    #' @param volume_usd Lifetime volume in derived USD with this tick in range.
    #' @param untracked_volume_usd Lifetime volume in untracked USD with this tick in range.
    #' @param fees_usd Fees in USD.
    #' @param collected_fees_token_0 All time collected fees in token0.
    #' @param collected_fees_token_1 All time collected fees in token1.
    #' @param collected_fees_usd All time collected fees in USD.
    #' @param created_at_timestamp Created time.
    #' @param liquidity_provider_count liquidity_provider_count
    #' @param fee_growth_outside_0x128 fee_growth_outside_0x128
    #' @param fee_growth_outside_1x128 fee_growth_outside_1x128
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `id` = NULL, `pool_address` = NULL, `tick_idx` = NULL, `pool` = NULL, `liquidity_gross` = NULL, `liquidity_net` = NULL, `price_0` = NULL, `price_1` = NULL, `volume_token_0` = NULL, `volume_token_1` = NULL, `volume_usd` = NULL, `untracked_volume_usd` = NULL, `fees_usd` = NULL, `collected_fees_token_0` = NULL, `collected_fees_token_1` = NULL, `collected_fees_usd` = NULL, `created_at_timestamp` = NULL, `liquidity_provider_count` = NULL, `fee_growth_outside_0x128` = NULL, `fee_growth_outside_1x128` = NULL, ...) {
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
      if (!is.null(`pool_address`)) {
        if (!(is.character(`pool_address`) && length(`pool_address`) == 1)) {
          stop(paste("Error! Invalid data for `pool_address`. Must be a string:", `pool_address`))
        }
        self$`pool_address` <- `pool_address`
      }
      if (!is.null(`tick_idx`)) {
        stopifnot(R6::is.R6(`tick_idx`))
        self$`tick_idx` <- `tick_idx`
      }
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
      }
      if (!is.null(`liquidity_gross`)) {
        stopifnot(R6::is.R6(`liquidity_gross`))
        self$`liquidity_gross` <- `liquidity_gross`
      }
      if (!is.null(`liquidity_net`)) {
        stopifnot(R6::is.R6(`liquidity_net`))
        self$`liquidity_net` <- `liquidity_net`
      }
      if (!is.null(`price_0`)) {
        if (!(is.character(`price_0`) && length(`price_0`) == 1)) {
          stop(paste("Error! Invalid data for `price_0`. Must be a string:", `price_0`))
        }
        self$`price_0` <- `price_0`
      }
      if (!is.null(`price_1`)) {
        if (!(is.character(`price_1`) && length(`price_1`) == 1)) {
          stop(paste("Error! Invalid data for `price_1`. Must be a string:", `price_1`))
        }
        self$`price_1` <- `price_1`
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
      if (!is.null(`created_at_timestamp`)) {
        if (!is.character(`created_at_timestamp`)) {
          stop(paste("Error! Invalid data for `created_at_timestamp`. Must be a string:", `created_at_timestamp`))
        }
        self$`created_at_timestamp` <- `created_at_timestamp`
      }
      if (!is.null(`liquidity_provider_count`)) {
        stopifnot(R6::is.R6(`liquidity_provider_count`))
        self$`liquidity_provider_count` <- `liquidity_provider_count`
      }
      if (!is.null(`fee_growth_outside_0x128`)) {
        stopifnot(R6::is.R6(`fee_growth_outside_0x128`))
        self$`fee_growth_outside_0x128` <- `fee_growth_outside_0x128`
      }
      if (!is.null(`fee_growth_outside_1x128`)) {
        stopifnot(R6::is.R6(`fee_growth_outside_1x128`))
        self$`fee_growth_outside_1x128` <- `fee_growth_outside_1x128`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3TickDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3TickDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3TickDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3TickDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3TickDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3TickDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`id`)) {
        UniswapV3TickDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`pool_address`)) {
        UniswapV3TickDTOObject[["pool_address"]] <-
          self$`pool_address`
      }
      if (!is.null(self$`tick_idx`)) {
        UniswapV3TickDTOObject[["tick_idx"]] <-
          self$`tick_idx`$toJSON()
      }
      if (!is.null(self$`pool`)) {
        UniswapV3TickDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`liquidity_gross`)) {
        UniswapV3TickDTOObject[["liquidity_gross"]] <-
          self$`liquidity_gross`$toJSON()
      }
      if (!is.null(self$`liquidity_net`)) {
        UniswapV3TickDTOObject[["liquidity_net"]] <-
          self$`liquidity_net`$toJSON()
      }
      if (!is.null(self$`price_0`)) {
        UniswapV3TickDTOObject[["price_0"]] <-
          self$`price_0`
      }
      if (!is.null(self$`price_1`)) {
        UniswapV3TickDTOObject[["price_1"]] <-
          self$`price_1`
      }
      if (!is.null(self$`volume_token_0`)) {
        UniswapV3TickDTOObject[["volume_token_0"]] <-
          self$`volume_token_0`
      }
      if (!is.null(self$`volume_token_1`)) {
        UniswapV3TickDTOObject[["volume_token_1"]] <-
          self$`volume_token_1`
      }
      if (!is.null(self$`volume_usd`)) {
        UniswapV3TickDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`untracked_volume_usd`)) {
        UniswapV3TickDTOObject[["untracked_volume_usd"]] <-
          self$`untracked_volume_usd`
      }
      if (!is.null(self$`fees_usd`)) {
        UniswapV3TickDTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`collected_fees_token_0`)) {
        UniswapV3TickDTOObject[["collected_fees_token_0"]] <-
          self$`collected_fees_token_0`
      }
      if (!is.null(self$`collected_fees_token_1`)) {
        UniswapV3TickDTOObject[["collected_fees_token_1"]] <-
          self$`collected_fees_token_1`
      }
      if (!is.null(self$`collected_fees_usd`)) {
        UniswapV3TickDTOObject[["collected_fees_usd"]] <-
          self$`collected_fees_usd`
      }
      if (!is.null(self$`created_at_timestamp`)) {
        UniswapV3TickDTOObject[["created_at_timestamp"]] <-
          self$`created_at_timestamp`
      }
      if (!is.null(self$`liquidity_provider_count`)) {
        UniswapV3TickDTOObject[["liquidity_provider_count"]] <-
          self$`liquidity_provider_count`$toJSON()
      }
      if (!is.null(self$`fee_growth_outside_0x128`)) {
        UniswapV3TickDTOObject[["fee_growth_outside_0x128"]] <-
          self$`fee_growth_outside_0x128`$toJSON()
      }
      if (!is.null(self$`fee_growth_outside_1x128`)) {
        UniswapV3TickDTOObject[["fee_growth_outside_1x128"]] <-
          self$`fee_growth_outside_1x128`$toJSON()
      }
      UniswapV3TickDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3TickDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TickDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TickDTO
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
      if (!is.null(this_object$`pool_address`)) {
        self$`pool_address` <- this_object$`pool_address`
      }
      if (!is.null(this_object$`tick_idx`)) {
        `tick_idx_object` <- NumericsBigInteger$new()
        `tick_idx_object`$fromJSON(jsonlite::toJSON(this_object$`tick_idx`, auto_unbox = TRUE, digits = NA))
        self$`tick_idx` <- `tick_idx_object`
      }
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`liquidity_gross`)) {
        `liquidity_gross_object` <- NumericsBigInteger$new()
        `liquidity_gross_object`$fromJSON(jsonlite::toJSON(this_object$`liquidity_gross`, auto_unbox = TRUE, digits = NA))
        self$`liquidity_gross` <- `liquidity_gross_object`
      }
      if (!is.null(this_object$`liquidity_net`)) {
        `liquidity_net_object` <- NumericsBigInteger$new()
        `liquidity_net_object`$fromJSON(jsonlite::toJSON(this_object$`liquidity_net`, auto_unbox = TRUE, digits = NA))
        self$`liquidity_net` <- `liquidity_net_object`
      }
      if (!is.null(this_object$`price_0`)) {
        self$`price_0` <- this_object$`price_0`
      }
      if (!is.null(this_object$`price_1`)) {
        self$`price_1` <- this_object$`price_1`
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
      if (!is.null(this_object$`collected_fees_token_0`)) {
        self$`collected_fees_token_0` <- this_object$`collected_fees_token_0`
      }
      if (!is.null(this_object$`collected_fees_token_1`)) {
        self$`collected_fees_token_1` <- this_object$`collected_fees_token_1`
      }
      if (!is.null(this_object$`collected_fees_usd`)) {
        self$`collected_fees_usd` <- this_object$`collected_fees_usd`
      }
      if (!is.null(this_object$`created_at_timestamp`)) {
        self$`created_at_timestamp` <- this_object$`created_at_timestamp`
      }
      if (!is.null(this_object$`liquidity_provider_count`)) {
        `liquidity_provider_count_object` <- NumericsBigInteger$new()
        `liquidity_provider_count_object`$fromJSON(jsonlite::toJSON(this_object$`liquidity_provider_count`, auto_unbox = TRUE, digits = NA))
        self$`liquidity_provider_count` <- `liquidity_provider_count_object`
      }
      if (!is.null(this_object$`fee_growth_outside_0x128`)) {
        `fee_growth_outside_0x128_object` <- NumericsBigInteger$new()
        `fee_growth_outside_0x128_object`$fromJSON(jsonlite::toJSON(this_object$`fee_growth_outside_0x128`, auto_unbox = TRUE, digits = NA))
        self$`fee_growth_outside_0x128` <- `fee_growth_outside_0x128_object`
      }
      if (!is.null(this_object$`fee_growth_outside_1x128`)) {
        `fee_growth_outside_1x128_object` <- NumericsBigInteger$new()
        `fee_growth_outside_1x128_object`$fromJSON(jsonlite::toJSON(this_object$`fee_growth_outside_1x128`, auto_unbox = TRUE, digits = NA))
        self$`fee_growth_outside_1x128` <- `fee_growth_outside_1x128_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3TickDTO in JSON format
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
        if (!is.null(self$`pool_address`)) {
          sprintf(
          '"pool_address":
            "%s"
                    ',
          self$`pool_address`
          )
        },
        if (!is.null(self$`tick_idx`)) {
          sprintf(
          '"tick_idx":
          %s
          ',
          jsonlite::toJSON(self$`tick_idx`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`liquidity_gross`)) {
          sprintf(
          '"liquidity_gross":
          %s
          ',
          jsonlite::toJSON(self$`liquidity_gross`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`liquidity_net`)) {
          sprintf(
          '"liquidity_net":
          %s
          ',
          jsonlite::toJSON(self$`liquidity_net`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`price_0`)) {
          sprintf(
          '"price_0":
            "%s"
                    ',
          self$`price_0`
          )
        },
        if (!is.null(self$`price_1`)) {
          sprintf(
          '"price_1":
            "%s"
                    ',
          self$`price_1`
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
        if (!is.null(self$`created_at_timestamp`)) {
          sprintf(
          '"created_at_timestamp":
            "%s"
                    ',
          self$`created_at_timestamp`
          )
        },
        if (!is.null(self$`liquidity_provider_count`)) {
          sprintf(
          '"liquidity_provider_count":
          %s
          ',
          jsonlite::toJSON(self$`liquidity_provider_count`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fee_growth_outside_0x128`)) {
          sprintf(
          '"fee_growth_outside_0x128":
          %s
          ',
          jsonlite::toJSON(self$`fee_growth_outside_0x128`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fee_growth_outside_1x128`)) {
          sprintf(
          '"fee_growth_outside_1x128":
          %s
          ',
          jsonlite::toJSON(self$`fee_growth_outside_1x128`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UniswapV3TickDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3TickDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3TickDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`id` <- this_object$`id`
      self$`pool_address` <- this_object$`pool_address`
      self$`tick_idx` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`tick_idx`, auto_unbox = TRUE, digits = NA))
      self$`pool` <- this_object$`pool`
      self$`liquidity_gross` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`liquidity_gross`, auto_unbox = TRUE, digits = NA))
      self$`liquidity_net` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`liquidity_net`, auto_unbox = TRUE, digits = NA))
      self$`price_0` <- this_object$`price_0`
      self$`price_1` <- this_object$`price_1`
      self$`volume_token_0` <- this_object$`volume_token_0`
      self$`volume_token_1` <- this_object$`volume_token_1`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`untracked_volume_usd` <- this_object$`untracked_volume_usd`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`collected_fees_token_0` <- this_object$`collected_fees_token_0`
      self$`collected_fees_token_1` <- this_object$`collected_fees_token_1`
      self$`collected_fees_usd` <- this_object$`collected_fees_usd`
      self$`created_at_timestamp` <- this_object$`created_at_timestamp`
      self$`liquidity_provider_count` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`liquidity_provider_count`, auto_unbox = TRUE, digits = NA))
      self$`fee_growth_outside_0x128` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`fee_growth_outside_0x128`, auto_unbox = TRUE, digits = NA))
      self$`fee_growth_outside_1x128` <- NumericsBigInteger$new()$fromJSON(jsonlite::toJSON(this_object$`fee_growth_outside_1x128`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to UniswapV3TickDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3TickDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3TickDTO
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
# UniswapV3TickDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3TickDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3TickDTO$lock()

