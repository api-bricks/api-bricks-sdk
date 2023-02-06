#' Create a new UniswapV3PoolDayDataDTO
#'
#' @description
#' Data accumulated and condensed into day stats for each pool.
#'
#' @docType class
#' @title UniswapV3PoolDayDataDTO
#' @description UniswapV3PoolDayDataDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Identifier, format: (pool address)-(day id). character [optional]
#' @field date Timestamp rounded to current day by dividing by 86400 integer [optional]
#' @field pool Pointer to pool. character [optional]
#' @field liquidity In range liquidity at end of period. character [optional]
#' @field sqrt_price Current price tracker at end of period. character [optional]
#' @field token_0_price Price of token0 - derived from sqrtPrice. character [optional]
#' @field token_1_price Price of token1 - derived from sqrtPrice. character [optional]
#' @field tick Current tick at end of period. character [optional]
#' @field fee_growth_global_0x128 Tracker for global fee growth. character [optional]
#' @field fee_growth_global_1x128 Tracker for global fee growth. character [optional]
#' @field tvl_usd Total value locked derived in USD at end of period. character [optional]
#' @field volume_token_0 Volume in token0. character [optional]
#' @field volume_token_1 Volume in token1. character [optional]
#' @field volume_usd Volume in USD. character [optional]
#' @field fees_usd Fees in USD. character [optional]
#' @field tx_count Number of transactions during period. character [optional]
#' @field open Opening price of token0. character [optional]
#' @field high High price of token0. character [optional]
#' @field low Low price of token0. character [optional]
#' @field close Close price of token0. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3PoolDayDataDTO <- R6::R6Class(
  "UniswapV3PoolDayDataDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `date` = NULL,
    `pool` = NULL,
    `liquidity` = NULL,
    `sqrt_price` = NULL,
    `token_0_price` = NULL,
    `token_1_price` = NULL,
    `tick` = NULL,
    `fee_growth_global_0x128` = NULL,
    `fee_growth_global_1x128` = NULL,
    `tvl_usd` = NULL,
    `volume_token_0` = NULL,
    `volume_token_1` = NULL,
    `volume_usd` = NULL,
    `fees_usd` = NULL,
    `tx_count` = NULL,
    `open` = NULL,
    `high` = NULL,
    `low` = NULL,
    `close` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV3PoolDayDataDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3PoolDayDataDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Identifier, format: (pool address)-(day id).
    #' @param date Timestamp rounded to current day by dividing by 86400
    #' @param pool Pointer to pool.
    #' @param liquidity In range liquidity at end of period.
    #' @param sqrt_price Current price tracker at end of period.
    #' @param token_0_price Price of token0 - derived from sqrtPrice.
    #' @param token_1_price Price of token1 - derived from sqrtPrice.
    #' @param tick Current tick at end of period.
    #' @param fee_growth_global_0x128 Tracker for global fee growth.
    #' @param fee_growth_global_1x128 Tracker for global fee growth.
    #' @param tvl_usd Total value locked derived in USD at end of period.
    #' @param volume_token_0 Volume in token0.
    #' @param volume_token_1 Volume in token1.
    #' @param volume_usd Volume in USD.
    #' @param fees_usd Fees in USD.
    #' @param tx_count Number of transactions during period.
    #' @param open Opening price of token0.
    #' @param high High price of token0.
    #' @param low Low price of token0.
    #' @param close Close price of token0.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `date` = NULL, `pool` = NULL, `liquidity` = NULL, `sqrt_price` = NULL, `token_0_price` = NULL, `token_1_price` = NULL, `tick` = NULL, `fee_growth_global_0x128` = NULL, `fee_growth_global_1x128` = NULL, `tvl_usd` = NULL, `volume_token_0` = NULL, `volume_token_1` = NULL, `volume_usd` = NULL, `fees_usd` = NULL, `tx_count` = NULL, `open` = NULL, `high` = NULL, `low` = NULL, `close` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`date`)) {
        if (!(is.numeric(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be an integer:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
      }
      if (!is.null(`liquidity`)) {
        if (!(is.character(`liquidity`) && length(`liquidity`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity`. Must be a string:", `liquidity`))
        }
        self$`liquidity` <- `liquidity`
      }
      if (!is.null(`sqrt_price`)) {
        if (!(is.character(`sqrt_price`) && length(`sqrt_price`) == 1)) {
          stop(paste("Error! Invalid data for `sqrt_price`. Must be a string:", `sqrt_price`))
        }
        self$`sqrt_price` <- `sqrt_price`
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
        if (!(is.character(`tick`) && length(`tick`) == 1)) {
          stop(paste("Error! Invalid data for `tick`. Must be a string:", `tick`))
        }
        self$`tick` <- `tick`
      }
      if (!is.null(`fee_growth_global_0x128`)) {
        if (!(is.character(`fee_growth_global_0x128`) && length(`fee_growth_global_0x128`) == 1)) {
          stop(paste("Error! Invalid data for `fee_growth_global_0x128`. Must be a string:", `fee_growth_global_0x128`))
        }
        self$`fee_growth_global_0x128` <- `fee_growth_global_0x128`
      }
      if (!is.null(`fee_growth_global_1x128`)) {
        if (!(is.character(`fee_growth_global_1x128`) && length(`fee_growth_global_1x128`) == 1)) {
          stop(paste("Error! Invalid data for `fee_growth_global_1x128`. Must be a string:", `fee_growth_global_1x128`))
        }
        self$`fee_growth_global_1x128` <- `fee_growth_global_1x128`
      }
      if (!is.null(`tvl_usd`)) {
        if (!(is.character(`tvl_usd`) && length(`tvl_usd`) == 1)) {
          stop(paste("Error! Invalid data for `tvl_usd`. Must be a string:", `tvl_usd`))
        }
        self$`tvl_usd` <- `tvl_usd`
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
      if (!is.null(`fees_usd`)) {
        if (!(is.character(`fees_usd`) && length(`fees_usd`) == 1)) {
          stop(paste("Error! Invalid data for `fees_usd`. Must be a string:", `fees_usd`))
        }
        self$`fees_usd` <- `fees_usd`
      }
      if (!is.null(`tx_count`)) {
        if (!(is.character(`tx_count`) && length(`tx_count`) == 1)) {
          stop(paste("Error! Invalid data for `tx_count`. Must be a string:", `tx_count`))
        }
        self$`tx_count` <- `tx_count`
      }
      if (!is.null(`open`)) {
        if (!(is.character(`open`) && length(`open`) == 1)) {
          stop(paste("Error! Invalid data for `open`. Must be a string:", `open`))
        }
        self$`open` <- `open`
      }
      if (!is.null(`high`)) {
        if (!(is.character(`high`) && length(`high`) == 1)) {
          stop(paste("Error! Invalid data for `high`. Must be a string:", `high`))
        }
        self$`high` <- `high`
      }
      if (!is.null(`low`)) {
        if (!(is.character(`low`) && length(`low`) == 1)) {
          stop(paste("Error! Invalid data for `low`. Must be a string:", `low`))
        }
        self$`low` <- `low`
      }
      if (!is.null(`close`)) {
        if (!(is.character(`close`) && length(`close`) == 1)) {
          stop(paste("Error! Invalid data for `close`. Must be a string:", `close`))
        }
        self$`close` <- `close`
      }
      if (!is.null(`vid`)) {
        if (!(is.numeric(`vid`) && length(`vid`) == 1)) {
          stop(paste("Error! Invalid data for `vid`. Must be an integer:", `vid`))
        }
        self$`vid` <- `vid`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3PoolDayDataDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3PoolDayDataDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3PoolDayDataDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3PoolDayDataDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3PoolDayDataDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV3PoolDayDataDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`date`)) {
        UniswapV3PoolDayDataDTOObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`pool`)) {
        UniswapV3PoolDayDataDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`liquidity`)) {
        UniswapV3PoolDayDataDTOObject[["liquidity"]] <-
          self$`liquidity`
      }
      if (!is.null(self$`sqrt_price`)) {
        UniswapV3PoolDayDataDTOObject[["sqrt_price"]] <-
          self$`sqrt_price`
      }
      if (!is.null(self$`token_0_price`)) {
        UniswapV3PoolDayDataDTOObject[["token_0_price"]] <-
          self$`token_0_price`
      }
      if (!is.null(self$`token_1_price`)) {
        UniswapV3PoolDayDataDTOObject[["token_1_price"]] <-
          self$`token_1_price`
      }
      if (!is.null(self$`tick`)) {
        UniswapV3PoolDayDataDTOObject[["tick"]] <-
          self$`tick`
      }
      if (!is.null(self$`fee_growth_global_0x128`)) {
        UniswapV3PoolDayDataDTOObject[["fee_growth_global_0x128"]] <-
          self$`fee_growth_global_0x128`
      }
      if (!is.null(self$`fee_growth_global_1x128`)) {
        UniswapV3PoolDayDataDTOObject[["fee_growth_global_1x128"]] <-
          self$`fee_growth_global_1x128`
      }
      if (!is.null(self$`tvl_usd`)) {
        UniswapV3PoolDayDataDTOObject[["tvl_usd"]] <-
          self$`tvl_usd`
      }
      if (!is.null(self$`volume_token_0`)) {
        UniswapV3PoolDayDataDTOObject[["volume_token_0"]] <-
          self$`volume_token_0`
      }
      if (!is.null(self$`volume_token_1`)) {
        UniswapV3PoolDayDataDTOObject[["volume_token_1"]] <-
          self$`volume_token_1`
      }
      if (!is.null(self$`volume_usd`)) {
        UniswapV3PoolDayDataDTOObject[["volume_usd"]] <-
          self$`volume_usd`
      }
      if (!is.null(self$`fees_usd`)) {
        UniswapV3PoolDayDataDTOObject[["fees_usd"]] <-
          self$`fees_usd`
      }
      if (!is.null(self$`tx_count`)) {
        UniswapV3PoolDayDataDTOObject[["tx_count"]] <-
          self$`tx_count`
      }
      if (!is.null(self$`open`)) {
        UniswapV3PoolDayDataDTOObject[["open"]] <-
          self$`open`
      }
      if (!is.null(self$`high`)) {
        UniswapV3PoolDayDataDTOObject[["high"]] <-
          self$`high`
      }
      if (!is.null(self$`low`)) {
        UniswapV3PoolDayDataDTOObject[["low"]] <-
          self$`low`
      }
      if (!is.null(self$`close`)) {
        UniswapV3PoolDayDataDTOObject[["close"]] <-
          self$`close`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3PoolDayDataDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV3PoolDayDataDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3PoolDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3PoolDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3PoolDayDataDTO
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
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`liquidity`)) {
        self$`liquidity` <- this_object$`liquidity`
      }
      if (!is.null(this_object$`sqrt_price`)) {
        self$`sqrt_price` <- this_object$`sqrt_price`
      }
      if (!is.null(this_object$`token_0_price`)) {
        self$`token_0_price` <- this_object$`token_0_price`
      }
      if (!is.null(this_object$`token_1_price`)) {
        self$`token_1_price` <- this_object$`token_1_price`
      }
      if (!is.null(this_object$`tick`)) {
        self$`tick` <- this_object$`tick`
      }
      if (!is.null(this_object$`fee_growth_global_0x128`)) {
        self$`fee_growth_global_0x128` <- this_object$`fee_growth_global_0x128`
      }
      if (!is.null(this_object$`fee_growth_global_1x128`)) {
        self$`fee_growth_global_1x128` <- this_object$`fee_growth_global_1x128`
      }
      if (!is.null(this_object$`tvl_usd`)) {
        self$`tvl_usd` <- this_object$`tvl_usd`
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
      if (!is.null(this_object$`fees_usd`)) {
        self$`fees_usd` <- this_object$`fees_usd`
      }
      if (!is.null(this_object$`tx_count`)) {
        self$`tx_count` <- this_object$`tx_count`
      }
      if (!is.null(this_object$`open`)) {
        self$`open` <- this_object$`open`
      }
      if (!is.null(this_object$`high`)) {
        self$`high` <- this_object$`high`
      }
      if (!is.null(this_object$`low`)) {
        self$`low` <- this_object$`low`
      }
      if (!is.null(this_object$`close`)) {
        self$`close` <- this_object$`close`
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UniswapV3PoolDayDataDTO in JSON format
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
        if (!is.null(self$`date`)) {
          sprintf(
          '"date":
            %d
                    ',
          self$`date`
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
        if (!is.null(self$`liquidity`)) {
          sprintf(
          '"liquidity":
            "%s"
                    ',
          self$`liquidity`
          )
        },
        if (!is.null(self$`sqrt_price`)) {
          sprintf(
          '"sqrt_price":
            "%s"
                    ',
          self$`sqrt_price`
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
            "%s"
                    ',
          self$`tick`
          )
        },
        if (!is.null(self$`fee_growth_global_0x128`)) {
          sprintf(
          '"fee_growth_global_0x128":
            "%s"
                    ',
          self$`fee_growth_global_0x128`
          )
        },
        if (!is.null(self$`fee_growth_global_1x128`)) {
          sprintf(
          '"fee_growth_global_1x128":
            "%s"
                    ',
          self$`fee_growth_global_1x128`
          )
        },
        if (!is.null(self$`tvl_usd`)) {
          sprintf(
          '"tvl_usd":
            "%s"
                    ',
          self$`tvl_usd`
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
            "%s"
                    ',
          self$`tx_count`
          )
        },
        if (!is.null(self$`open`)) {
          sprintf(
          '"open":
            "%s"
                    ',
          self$`open`
          )
        },
        if (!is.null(self$`high`)) {
          sprintf(
          '"high":
            "%s"
                    ',
          self$`high`
          )
        },
        if (!is.null(self$`low`)) {
          sprintf(
          '"low":
            "%s"
                    ',
          self$`low`
          )
        },
        if (!is.null(self$`close`)) {
          sprintf(
          '"close":
            "%s"
                    ',
          self$`close`
          )
        },
        if (!is.null(self$`vid`)) {
          sprintf(
          '"vid":
            %d
                    ',
          self$`vid`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UniswapV3PoolDayDataDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3PoolDayDataDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3PoolDayDataDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`date` <- this_object$`date`
      self$`pool` <- this_object$`pool`
      self$`liquidity` <- this_object$`liquidity`
      self$`sqrt_price` <- this_object$`sqrt_price`
      self$`token_0_price` <- this_object$`token_0_price`
      self$`token_1_price` <- this_object$`token_1_price`
      self$`tick` <- this_object$`tick`
      self$`fee_growth_global_0x128` <- this_object$`fee_growth_global_0x128`
      self$`fee_growth_global_1x128` <- this_object$`fee_growth_global_1x128`
      self$`tvl_usd` <- this_object$`tvl_usd`
      self$`volume_token_0` <- this_object$`volume_token_0`
      self$`volume_token_1` <- this_object$`volume_token_1`
      self$`volume_usd` <- this_object$`volume_usd`
      self$`fees_usd` <- this_object$`fees_usd`
      self$`tx_count` <- this_object$`tx_count`
      self$`open` <- this_object$`open`
      self$`high` <- this_object$`high`
      self$`low` <- this_object$`low`
      self$`close` <- this_object$`close`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV3PoolDayDataDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3PoolDayDataDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3PoolDayDataDTO
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
# UniswapV3PoolDayDataDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3PoolDayDataDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3PoolDayDataDTO$lock()

