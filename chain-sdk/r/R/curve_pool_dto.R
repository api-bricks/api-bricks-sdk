#' Create a new CurvePoolDTO
#'
#' @description
#' CurvePoolDTO Class
#'
#' @docType class
#' @title CurvePoolDTO
#' @description CurvePoolDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Pool address. character [optional]
#' @field name Pool's human-readable name. character [optional]
#' @field is_meta Identify whether pool is a metapool. character [optional]
#' @field registry_address Registry contract address from where this pool was registered. character [optional]
#' @field swap_address Swap contract address. character [optional]
#' @field lp_token Address of the token representing LP share. character [optional]
#' @field coin_count Number of coins composing the pool. character [optional]
#' @field underlying_count Number of underlying coins composing the pool. character [optional]
#' @field a Amplification coefficient multiplied by n * (n - 1). character [optional]
#' @field fee Fee to charge for exchanges. character [optional]
#' @field admin_fee Admin fee is represented as a percentage of the total fee collected on a swap. character [optional]
#' @field owner Admin address. character [optional]
#' @field virtual_price Average dollar value of pool token. character [optional]
#' @field locked  character [optional]
#' @field added_at  character [optional]
#' @field added_at_block  character [optional]
#' @field added_at_transaction  character [optional]
#' @field removed_at  character [optional]
#' @field removed_at_block  character [optional]
#' @field removed_at_transaction  character [optional]
#' @field exchange_count  character [optional]
#' @field gauge_count  character [optional]
#' @field vid  integer [optional]
#' @field evaluated_ask  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurvePoolDTO <- R6::R6Class(
  "CurvePoolDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `name` = NULL,
    `is_meta` = NULL,
    `registry_address` = NULL,
    `swap_address` = NULL,
    `lp_token` = NULL,
    `coin_count` = NULL,
    `underlying_count` = NULL,
    `a` = NULL,
    `fee` = NULL,
    `admin_fee` = NULL,
    `owner` = NULL,
    `virtual_price` = NULL,
    `locked` = NULL,
    `added_at` = NULL,
    `added_at_block` = NULL,
    `added_at_transaction` = NULL,
    `removed_at` = NULL,
    `removed_at_block` = NULL,
    `removed_at_transaction` = NULL,
    `exchange_count` = NULL,
    `gauge_count` = NULL,
    `vid` = NULL,
    `evaluated_ask` = NULL,
    #' Initialize a new CurvePoolDTO class.
    #'
    #' @description
    #' Initialize a new CurvePoolDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Pool address.
    #' @param name Pool's human-readable name.
    #' @param is_meta Identify whether pool is a metapool.
    #' @param registry_address Registry contract address from where this pool was registered.
    #' @param swap_address Swap contract address.
    #' @param lp_token Address of the token representing LP share.
    #' @param coin_count Number of coins composing the pool.
    #' @param underlying_count Number of underlying coins composing the pool.
    #' @param a Amplification coefficient multiplied by n * (n - 1).
    #' @param fee Fee to charge for exchanges.
    #' @param admin_fee Admin fee is represented as a percentage of the total fee collected on a swap.
    #' @param owner Admin address.
    #' @param virtual_price Average dollar value of pool token.
    #' @param locked 
    #' @param added_at 
    #' @param added_at_block 
    #' @param added_at_transaction 
    #' @param removed_at 
    #' @param removed_at_block 
    #' @param removed_at_transaction 
    #' @param exchange_count 
    #' @param gauge_count 
    #' @param vid 
    #' @param evaluated_ask evaluated_ask
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `name` = NULL, `is_meta` = NULL, `registry_address` = NULL, `swap_address` = NULL, `lp_token` = NULL, `coin_count` = NULL, `underlying_count` = NULL, `a` = NULL, `fee` = NULL, `admin_fee` = NULL, `owner` = NULL, `virtual_price` = NULL, `locked` = NULL, `added_at` = NULL, `added_at_block` = NULL, `added_at_transaction` = NULL, `removed_at` = NULL, `removed_at_block` = NULL, `removed_at_transaction` = NULL, `exchange_count` = NULL, `gauge_count` = NULL, `vid` = NULL, `evaluated_ask` = NULL, ...) {
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`is_meta`)) {
        if (!(is.logical(`is_meta`) && length(`is_meta`) == 1)) {
          stop(paste("Error! Invalid data for `is_meta`. Must be a boolean:", `is_meta`))
        }
        self$`is_meta` <- `is_meta`
      }
      if (!is.null(`registry_address`)) {
        if (!(is.character(`registry_address`) && length(`registry_address`) == 1)) {
          stop(paste("Error! Invalid data for `registry_address`. Must be a string:", `registry_address`))
        }
        self$`registry_address` <- `registry_address`
      }
      if (!is.null(`swap_address`)) {
        if (!(is.character(`swap_address`) && length(`swap_address`) == 1)) {
          stop(paste("Error! Invalid data for `swap_address`. Must be a string:", `swap_address`))
        }
        self$`swap_address` <- `swap_address`
      }
      if (!is.null(`lp_token`)) {
        if (!(is.character(`lp_token`) && length(`lp_token`) == 1)) {
          stop(paste("Error! Invalid data for `lp_token`. Must be a string:", `lp_token`))
        }
        self$`lp_token` <- `lp_token`
      }
      if (!is.null(`coin_count`)) {
        if (!(is.character(`coin_count`) && length(`coin_count`) == 1)) {
          stop(paste("Error! Invalid data for `coin_count`. Must be a string:", `coin_count`))
        }
        self$`coin_count` <- `coin_count`
      }
      if (!is.null(`underlying_count`)) {
        if (!(is.character(`underlying_count`) && length(`underlying_count`) == 1)) {
          stop(paste("Error! Invalid data for `underlying_count`. Must be a string:", `underlying_count`))
        }
        self$`underlying_count` <- `underlying_count`
      }
      if (!is.null(`a`)) {
        if (!(is.character(`a`) && length(`a`) == 1)) {
          stop(paste("Error! Invalid data for `a`. Must be a string:", `a`))
        }
        self$`a` <- `a`
      }
      if (!is.null(`fee`)) {
        if (!(is.character(`fee`) && length(`fee`) == 1)) {
          stop(paste("Error! Invalid data for `fee`. Must be a string:", `fee`))
        }
        self$`fee` <- `fee`
      }
      if (!is.null(`admin_fee`)) {
        if (!(is.character(`admin_fee`) && length(`admin_fee`) == 1)) {
          stop(paste("Error! Invalid data for `admin_fee`. Must be a string:", `admin_fee`))
        }
        self$`admin_fee` <- `admin_fee`
      }
      if (!is.null(`owner`)) {
        if (!(is.character(`owner`) && length(`owner`) == 1)) {
          stop(paste("Error! Invalid data for `owner`. Must be a string:", `owner`))
        }
        self$`owner` <- `owner`
      }
      if (!is.null(`virtual_price`)) {
        if (!(is.character(`virtual_price`) && length(`virtual_price`) == 1)) {
          stop(paste("Error! Invalid data for `virtual_price`. Must be a string:", `virtual_price`))
        }
        self$`virtual_price` <- `virtual_price`
      }
      if (!is.null(`locked`)) {
        if (!(is.character(`locked`) && length(`locked`) == 1)) {
          stop(paste("Error! Invalid data for `locked`. Must be a string:", `locked`))
        }
        self$`locked` <- `locked`
      }
      if (!is.null(`added_at`)) {
        if (!is.character(`added_at`)) {
          stop(paste("Error! Invalid data for `added_at`. Must be a string:", `added_at`))
        }
        self$`added_at` <- `added_at`
      }
      if (!is.null(`added_at_block`)) {
        if (!(is.character(`added_at_block`) && length(`added_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `added_at_block`. Must be a string:", `added_at_block`))
        }
        self$`added_at_block` <- `added_at_block`
      }
      if (!is.null(`added_at_transaction`)) {
        if (!(is.character(`added_at_transaction`) && length(`added_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `added_at_transaction`. Must be a string:", `added_at_transaction`))
        }
        self$`added_at_transaction` <- `added_at_transaction`
      }
      if (!is.null(`removed_at`)) {
        if (!(is.character(`removed_at`) && length(`removed_at`) == 1)) {
          stop(paste("Error! Invalid data for `removed_at`. Must be a string:", `removed_at`))
        }
        self$`removed_at` <- `removed_at`
      }
      if (!is.null(`removed_at_block`)) {
        if (!(is.character(`removed_at_block`) && length(`removed_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `removed_at_block`. Must be a string:", `removed_at_block`))
        }
        self$`removed_at_block` <- `removed_at_block`
      }
      if (!is.null(`removed_at_transaction`)) {
        if (!(is.character(`removed_at_transaction`) && length(`removed_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `removed_at_transaction`. Must be a string:", `removed_at_transaction`))
        }
        self$`removed_at_transaction` <- `removed_at_transaction`
      }
      if (!is.null(`exchange_count`)) {
        if (!(is.character(`exchange_count`) && length(`exchange_count`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_count`. Must be a string:", `exchange_count`))
        }
        self$`exchange_count` <- `exchange_count`
      }
      if (!is.null(`gauge_count`)) {
        if (!(is.character(`gauge_count`) && length(`gauge_count`) == 1)) {
          stop(paste("Error! Invalid data for `gauge_count`. Must be a string:", `gauge_count`))
        }
        self$`gauge_count` <- `gauge_count`
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
    #' @return CurvePoolDTO in JSON format
    #' @export
    toJSON = function() {
      CurvePoolDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurvePoolDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurvePoolDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurvePoolDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurvePoolDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CurvePoolDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`is_meta`)) {
        CurvePoolDTOObject[["is_meta"]] <-
          self$`is_meta`
      }
      if (!is.null(self$`registry_address`)) {
        CurvePoolDTOObject[["registry_address"]] <-
          self$`registry_address`
      }
      if (!is.null(self$`swap_address`)) {
        CurvePoolDTOObject[["swap_address"]] <-
          self$`swap_address`
      }
      if (!is.null(self$`lp_token`)) {
        CurvePoolDTOObject[["lp_token"]] <-
          self$`lp_token`
      }
      if (!is.null(self$`coin_count`)) {
        CurvePoolDTOObject[["coin_count"]] <-
          self$`coin_count`
      }
      if (!is.null(self$`underlying_count`)) {
        CurvePoolDTOObject[["underlying_count"]] <-
          self$`underlying_count`
      }
      if (!is.null(self$`a`)) {
        CurvePoolDTOObject[["a"]] <-
          self$`a`
      }
      if (!is.null(self$`fee`)) {
        CurvePoolDTOObject[["fee"]] <-
          self$`fee`
      }
      if (!is.null(self$`admin_fee`)) {
        CurvePoolDTOObject[["admin_fee"]] <-
          self$`admin_fee`
      }
      if (!is.null(self$`owner`)) {
        CurvePoolDTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`virtual_price`)) {
        CurvePoolDTOObject[["virtual_price"]] <-
          self$`virtual_price`
      }
      if (!is.null(self$`locked`)) {
        CurvePoolDTOObject[["locked"]] <-
          self$`locked`
      }
      if (!is.null(self$`added_at`)) {
        CurvePoolDTOObject[["added_at"]] <-
          self$`added_at`
      }
      if (!is.null(self$`added_at_block`)) {
        CurvePoolDTOObject[["added_at_block"]] <-
          self$`added_at_block`
      }
      if (!is.null(self$`added_at_transaction`)) {
        CurvePoolDTOObject[["added_at_transaction"]] <-
          self$`added_at_transaction`
      }
      if (!is.null(self$`removed_at`)) {
        CurvePoolDTOObject[["removed_at"]] <-
          self$`removed_at`
      }
      if (!is.null(self$`removed_at_block`)) {
        CurvePoolDTOObject[["removed_at_block"]] <-
          self$`removed_at_block`
      }
      if (!is.null(self$`removed_at_transaction`)) {
        CurvePoolDTOObject[["removed_at_transaction"]] <-
          self$`removed_at_transaction`
      }
      if (!is.null(self$`exchange_count`)) {
        CurvePoolDTOObject[["exchange_count"]] <-
          self$`exchange_count`
      }
      if (!is.null(self$`gauge_count`)) {
        CurvePoolDTOObject[["gauge_count"]] <-
          self$`gauge_count`
      }
      if (!is.null(self$`vid`)) {
        CurvePoolDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`evaluated_ask`)) {
        CurvePoolDTOObject[["evaluated_ask"]] <-
          self$`evaluated_ask`
      }
      CurvePoolDTOObject
    },
    #' Deserialize JSON string into an instance of CurvePoolDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurvePoolDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurvePoolDTO
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`is_meta`)) {
        self$`is_meta` <- this_object$`is_meta`
      }
      if (!is.null(this_object$`registry_address`)) {
        self$`registry_address` <- this_object$`registry_address`
      }
      if (!is.null(this_object$`swap_address`)) {
        self$`swap_address` <- this_object$`swap_address`
      }
      if (!is.null(this_object$`lp_token`)) {
        self$`lp_token` <- this_object$`lp_token`
      }
      if (!is.null(this_object$`coin_count`)) {
        self$`coin_count` <- this_object$`coin_count`
      }
      if (!is.null(this_object$`underlying_count`)) {
        self$`underlying_count` <- this_object$`underlying_count`
      }
      if (!is.null(this_object$`a`)) {
        self$`a` <- this_object$`a`
      }
      if (!is.null(this_object$`fee`)) {
        self$`fee` <- this_object$`fee`
      }
      if (!is.null(this_object$`admin_fee`)) {
        self$`admin_fee` <- this_object$`admin_fee`
      }
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
      }
      if (!is.null(this_object$`virtual_price`)) {
        self$`virtual_price` <- this_object$`virtual_price`
      }
      if (!is.null(this_object$`locked`)) {
        self$`locked` <- this_object$`locked`
      }
      if (!is.null(this_object$`added_at`)) {
        self$`added_at` <- this_object$`added_at`
      }
      if (!is.null(this_object$`added_at_block`)) {
        self$`added_at_block` <- this_object$`added_at_block`
      }
      if (!is.null(this_object$`added_at_transaction`)) {
        self$`added_at_transaction` <- this_object$`added_at_transaction`
      }
      if (!is.null(this_object$`removed_at`)) {
        self$`removed_at` <- this_object$`removed_at`
      }
      if (!is.null(this_object$`removed_at_block`)) {
        self$`removed_at_block` <- this_object$`removed_at_block`
      }
      if (!is.null(this_object$`removed_at_transaction`)) {
        self$`removed_at_transaction` <- this_object$`removed_at_transaction`
      }
      if (!is.null(this_object$`exchange_count`)) {
        self$`exchange_count` <- this_object$`exchange_count`
      }
      if (!is.null(this_object$`gauge_count`)) {
        self$`gauge_count` <- this_object$`gauge_count`
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
    #' @return CurvePoolDTO in JSON format
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`is_meta`)) {
          sprintf(
          '"is_meta":
            %s
                    ',
          tolower(self$`is_meta`)
          )
        },
        if (!is.null(self$`registry_address`)) {
          sprintf(
          '"registry_address":
            "%s"
                    ',
          self$`registry_address`
          )
        },
        if (!is.null(self$`swap_address`)) {
          sprintf(
          '"swap_address":
            "%s"
                    ',
          self$`swap_address`
          )
        },
        if (!is.null(self$`lp_token`)) {
          sprintf(
          '"lp_token":
            "%s"
                    ',
          self$`lp_token`
          )
        },
        if (!is.null(self$`coin_count`)) {
          sprintf(
          '"coin_count":
            "%s"
                    ',
          self$`coin_count`
          )
        },
        if (!is.null(self$`underlying_count`)) {
          sprintf(
          '"underlying_count":
            "%s"
                    ',
          self$`underlying_count`
          )
        },
        if (!is.null(self$`a`)) {
          sprintf(
          '"a":
            "%s"
                    ',
          self$`a`
          )
        },
        if (!is.null(self$`fee`)) {
          sprintf(
          '"fee":
            "%s"
                    ',
          self$`fee`
          )
        },
        if (!is.null(self$`admin_fee`)) {
          sprintf(
          '"admin_fee":
            "%s"
                    ',
          self$`admin_fee`
          )
        },
        if (!is.null(self$`owner`)) {
          sprintf(
          '"owner":
            "%s"
                    ',
          self$`owner`
          )
        },
        if (!is.null(self$`virtual_price`)) {
          sprintf(
          '"virtual_price":
            "%s"
                    ',
          self$`virtual_price`
          )
        },
        if (!is.null(self$`locked`)) {
          sprintf(
          '"locked":
            "%s"
                    ',
          self$`locked`
          )
        },
        if (!is.null(self$`added_at`)) {
          sprintf(
          '"added_at":
            "%s"
                    ',
          self$`added_at`
          )
        },
        if (!is.null(self$`added_at_block`)) {
          sprintf(
          '"added_at_block":
            "%s"
                    ',
          self$`added_at_block`
          )
        },
        if (!is.null(self$`added_at_transaction`)) {
          sprintf(
          '"added_at_transaction":
            "%s"
                    ',
          self$`added_at_transaction`
          )
        },
        if (!is.null(self$`removed_at`)) {
          sprintf(
          '"removed_at":
            "%s"
                    ',
          self$`removed_at`
          )
        },
        if (!is.null(self$`removed_at_block`)) {
          sprintf(
          '"removed_at_block":
            "%s"
                    ',
          self$`removed_at_block`
          )
        },
        if (!is.null(self$`removed_at_transaction`)) {
          sprintf(
          '"removed_at_transaction":
            "%s"
                    ',
          self$`removed_at_transaction`
          )
        },
        if (!is.null(self$`exchange_count`)) {
          sprintf(
          '"exchange_count":
            "%s"
                    ',
          self$`exchange_count`
          )
        },
        if (!is.null(self$`gauge_count`)) {
          sprintf(
          '"gauge_count":
            "%s"
                    ',
          self$`gauge_count`
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
    #' Deserialize JSON string into an instance of CurvePoolDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurvePoolDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurvePoolDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`is_meta` <- this_object$`is_meta`
      self$`registry_address` <- this_object$`registry_address`
      self$`swap_address` <- this_object$`swap_address`
      self$`lp_token` <- this_object$`lp_token`
      self$`coin_count` <- this_object$`coin_count`
      self$`underlying_count` <- this_object$`underlying_count`
      self$`a` <- this_object$`a`
      self$`fee` <- this_object$`fee`
      self$`admin_fee` <- this_object$`admin_fee`
      self$`owner` <- this_object$`owner`
      self$`virtual_price` <- this_object$`virtual_price`
      self$`locked` <- this_object$`locked`
      self$`added_at` <- this_object$`added_at`
      self$`added_at_block` <- this_object$`added_at_block`
      self$`added_at_transaction` <- this_object$`added_at_transaction`
      self$`removed_at` <- this_object$`removed_at`
      self$`removed_at_block` <- this_object$`removed_at_block`
      self$`removed_at_transaction` <- this_object$`removed_at_transaction`
      self$`exchange_count` <- this_object$`exchange_count`
      self$`gauge_count` <- this_object$`gauge_count`
      self$`vid` <- this_object$`vid`
      self$`evaluated_ask` <- this_object$`evaluated_ask`
      self
    },
    #' Validate JSON input with respect to CurvePoolDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurvePoolDTO and throw an exception if invalid
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
    #' @return String representation of CurvePoolDTO
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
# CurvePoolDTO$unlock()
#
## Below is an example to define the print function
# CurvePoolDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurvePoolDTO$lock()

