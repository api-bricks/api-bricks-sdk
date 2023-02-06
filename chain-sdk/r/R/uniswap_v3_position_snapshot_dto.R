#' Create a new UniswapV3PositionSnapshotDTO
#'
#' @description
#' UniswapV3PositionSnapshotDTO Class
#'
#' @docType class
#' @title UniswapV3PositionSnapshotDTO
#' @description UniswapV3PositionSnapshotDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id NFT token identifier, format: (NFT token id)#(block number). character [optional]
#' @field owner Owner of the NFT. character [optional]
#' @field pool Pool the position is within. character [optional]
#' @field position Position of which the snap was taken of. character [optional]
#' @field timestamp Timestamp of block in which the snap was created. character [optional]
#' @field liquidity Total position liquidity. character [optional]
#' @field deposited_token_0 Amount of token 0 ever deposited to position. character [optional]
#' @field deposited_token_1 Amount of token 1 ever deposited to position. character [optional]
#' @field withdrawn_token_0 Amount of token 0 ever withdrawn from position (without fees). character [optional]
#' @field withdrawn_token_1 Amount of token 1 ever withdrawn from position (without fees). character [optional]
#' @field collected_fees_token_0 All time collected fees in token0. character [optional]
#' @field collected_fees_token_1 All time collected fees in token1. character [optional]
#' @field transaction Transaction in which the snapshot was initialized. character [optional]
#' @field fee_growth_inside_0_last_x128 Variable needed for fee computation. character [optional]
#' @field fee_growth_inside_1_last_x128 Variable needed for fee computation. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UniswapV3PositionSnapshotDTO <- R6::R6Class(
  "UniswapV3PositionSnapshotDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `owner` = NULL,
    `pool` = NULL,
    `position` = NULL,
    `timestamp` = NULL,
    `liquidity` = NULL,
    `deposited_token_0` = NULL,
    `deposited_token_1` = NULL,
    `withdrawn_token_0` = NULL,
    `withdrawn_token_1` = NULL,
    `collected_fees_token_0` = NULL,
    `collected_fees_token_1` = NULL,
    `transaction` = NULL,
    `fee_growth_inside_0_last_x128` = NULL,
    `fee_growth_inside_1_last_x128` = NULL,
    `vid` = NULL,
    #' Initialize a new UniswapV3PositionSnapshotDTO class.
    #'
    #' @description
    #' Initialize a new UniswapV3PositionSnapshotDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id NFT token identifier, format: (NFT token id)#(block number).
    #' @param owner Owner of the NFT.
    #' @param pool Pool the position is within.
    #' @param position Position of which the snap was taken of.
    #' @param timestamp Timestamp of block in which the snap was created.
    #' @param liquidity Total position liquidity.
    #' @param deposited_token_0 Amount of token 0 ever deposited to position.
    #' @param deposited_token_1 Amount of token 1 ever deposited to position.
    #' @param withdrawn_token_0 Amount of token 0 ever withdrawn from position (without fees).
    #' @param withdrawn_token_1 Amount of token 1 ever withdrawn from position (without fees).
    #' @param collected_fees_token_0 All time collected fees in token0.
    #' @param collected_fees_token_1 All time collected fees in token1.
    #' @param transaction Transaction in which the snapshot was initialized.
    #' @param fee_growth_inside_0_last_x128 Variable needed for fee computation.
    #' @param fee_growth_inside_1_last_x128 Variable needed for fee computation.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `owner` = NULL, `pool` = NULL, `position` = NULL, `timestamp` = NULL, `liquidity` = NULL, `deposited_token_0` = NULL, `deposited_token_1` = NULL, `withdrawn_token_0` = NULL, `withdrawn_token_1` = NULL, `collected_fees_token_0` = NULL, `collected_fees_token_1` = NULL, `transaction` = NULL, `fee_growth_inside_0_last_x128` = NULL, `fee_growth_inside_1_last_x128` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`owner`)) {
        if (!(is.character(`owner`) && length(`owner`) == 1)) {
          stop(paste("Error! Invalid data for `owner`. Must be a string:", `owner`))
        }
        self$`owner` <- `owner`
      }
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
      }
      if (!is.null(`position`)) {
        if (!(is.character(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be a string:", `position`))
        }
        self$`position` <- `position`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`liquidity`)) {
        if (!(is.character(`liquidity`) && length(`liquidity`) == 1)) {
          stop(paste("Error! Invalid data for `liquidity`. Must be a string:", `liquidity`))
        }
        self$`liquidity` <- `liquidity`
      }
      if (!is.null(`deposited_token_0`)) {
        if (!(is.character(`deposited_token_0`) && length(`deposited_token_0`) == 1)) {
          stop(paste("Error! Invalid data for `deposited_token_0`. Must be a string:", `deposited_token_0`))
        }
        self$`deposited_token_0` <- `deposited_token_0`
      }
      if (!is.null(`deposited_token_1`)) {
        if (!(is.character(`deposited_token_1`) && length(`deposited_token_1`) == 1)) {
          stop(paste("Error! Invalid data for `deposited_token_1`. Must be a string:", `deposited_token_1`))
        }
        self$`deposited_token_1` <- `deposited_token_1`
      }
      if (!is.null(`withdrawn_token_0`)) {
        if (!(is.character(`withdrawn_token_0`) && length(`withdrawn_token_0`) == 1)) {
          stop(paste("Error! Invalid data for `withdrawn_token_0`. Must be a string:", `withdrawn_token_0`))
        }
        self$`withdrawn_token_0` <- `withdrawn_token_0`
      }
      if (!is.null(`withdrawn_token_1`)) {
        if (!(is.character(`withdrawn_token_1`) && length(`withdrawn_token_1`) == 1)) {
          stop(paste("Error! Invalid data for `withdrawn_token_1`. Must be a string:", `withdrawn_token_1`))
        }
        self$`withdrawn_token_1` <- `withdrawn_token_1`
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
      if (!is.null(`transaction`)) {
        if (!(is.character(`transaction`) && length(`transaction`) == 1)) {
          stop(paste("Error! Invalid data for `transaction`. Must be a string:", `transaction`))
        }
        self$`transaction` <- `transaction`
      }
      if (!is.null(`fee_growth_inside_0_last_x128`)) {
        if (!(is.character(`fee_growth_inside_0_last_x128`) && length(`fee_growth_inside_0_last_x128`) == 1)) {
          stop(paste("Error! Invalid data for `fee_growth_inside_0_last_x128`. Must be a string:", `fee_growth_inside_0_last_x128`))
        }
        self$`fee_growth_inside_0_last_x128` <- `fee_growth_inside_0_last_x128`
      }
      if (!is.null(`fee_growth_inside_1_last_x128`)) {
        if (!(is.character(`fee_growth_inside_1_last_x128`) && length(`fee_growth_inside_1_last_x128`) == 1)) {
          stop(paste("Error! Invalid data for `fee_growth_inside_1_last_x128`. Must be a string:", `fee_growth_inside_1_last_x128`))
        }
        self$`fee_growth_inside_1_last_x128` <- `fee_growth_inside_1_last_x128`
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
    #' @return UniswapV3PositionSnapshotDTO in JSON format
    #' @export
    toJSON = function() {
      UniswapV3PositionSnapshotDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        UniswapV3PositionSnapshotDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        UniswapV3PositionSnapshotDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        UniswapV3PositionSnapshotDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        UniswapV3PositionSnapshotDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`owner`)) {
        UniswapV3PositionSnapshotDTOObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`pool`)) {
        UniswapV3PositionSnapshotDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`position`)) {
        UniswapV3PositionSnapshotDTOObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`timestamp`)) {
        UniswapV3PositionSnapshotDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`liquidity`)) {
        UniswapV3PositionSnapshotDTOObject[["liquidity"]] <-
          self$`liquidity`
      }
      if (!is.null(self$`deposited_token_0`)) {
        UniswapV3PositionSnapshotDTOObject[["deposited_token_0"]] <-
          self$`deposited_token_0`
      }
      if (!is.null(self$`deposited_token_1`)) {
        UniswapV3PositionSnapshotDTOObject[["deposited_token_1"]] <-
          self$`deposited_token_1`
      }
      if (!is.null(self$`withdrawn_token_0`)) {
        UniswapV3PositionSnapshotDTOObject[["withdrawn_token_0"]] <-
          self$`withdrawn_token_0`
      }
      if (!is.null(self$`withdrawn_token_1`)) {
        UniswapV3PositionSnapshotDTOObject[["withdrawn_token_1"]] <-
          self$`withdrawn_token_1`
      }
      if (!is.null(self$`collected_fees_token_0`)) {
        UniswapV3PositionSnapshotDTOObject[["collected_fees_token_0"]] <-
          self$`collected_fees_token_0`
      }
      if (!is.null(self$`collected_fees_token_1`)) {
        UniswapV3PositionSnapshotDTOObject[["collected_fees_token_1"]] <-
          self$`collected_fees_token_1`
      }
      if (!is.null(self$`transaction`)) {
        UniswapV3PositionSnapshotDTOObject[["transaction"]] <-
          self$`transaction`
      }
      if (!is.null(self$`fee_growth_inside_0_last_x128`)) {
        UniswapV3PositionSnapshotDTOObject[["fee_growth_inside_0_last_x128"]] <-
          self$`fee_growth_inside_0_last_x128`
      }
      if (!is.null(self$`fee_growth_inside_1_last_x128`)) {
        UniswapV3PositionSnapshotDTOObject[["fee_growth_inside_1_last_x128"]] <-
          self$`fee_growth_inside_1_last_x128`
      }
      if (!is.null(self$`vid`)) {
        UniswapV3PositionSnapshotDTOObject[["vid"]] <-
          self$`vid`
      }
      UniswapV3PositionSnapshotDTOObject
    },
    #' Deserialize JSON string into an instance of UniswapV3PositionSnapshotDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3PositionSnapshotDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3PositionSnapshotDTO
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
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
      }
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`liquidity`)) {
        self$`liquidity` <- this_object$`liquidity`
      }
      if (!is.null(this_object$`deposited_token_0`)) {
        self$`deposited_token_0` <- this_object$`deposited_token_0`
      }
      if (!is.null(this_object$`deposited_token_1`)) {
        self$`deposited_token_1` <- this_object$`deposited_token_1`
      }
      if (!is.null(this_object$`withdrawn_token_0`)) {
        self$`withdrawn_token_0` <- this_object$`withdrawn_token_0`
      }
      if (!is.null(this_object$`withdrawn_token_1`)) {
        self$`withdrawn_token_1` <- this_object$`withdrawn_token_1`
      }
      if (!is.null(this_object$`collected_fees_token_0`)) {
        self$`collected_fees_token_0` <- this_object$`collected_fees_token_0`
      }
      if (!is.null(this_object$`collected_fees_token_1`)) {
        self$`collected_fees_token_1` <- this_object$`collected_fees_token_1`
      }
      if (!is.null(this_object$`transaction`)) {
        self$`transaction` <- this_object$`transaction`
      }
      if (!is.null(this_object$`fee_growth_inside_0_last_x128`)) {
        self$`fee_growth_inside_0_last_x128` <- this_object$`fee_growth_inside_0_last_x128`
      }
      if (!is.null(this_object$`fee_growth_inside_1_last_x128`)) {
        self$`fee_growth_inside_1_last_x128` <- this_object$`fee_growth_inside_1_last_x128`
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
    #' @return UniswapV3PositionSnapshotDTO in JSON format
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
        if (!is.null(self$`owner`)) {
          sprintf(
          '"owner":
            "%s"
                    ',
          self$`owner`
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
        if (!is.null(self$`position`)) {
          sprintf(
          '"position":
            "%s"
                    ',
          self$`position`
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
        if (!is.null(self$`liquidity`)) {
          sprintf(
          '"liquidity":
            "%s"
                    ',
          self$`liquidity`
          )
        },
        if (!is.null(self$`deposited_token_0`)) {
          sprintf(
          '"deposited_token_0":
            "%s"
                    ',
          self$`deposited_token_0`
          )
        },
        if (!is.null(self$`deposited_token_1`)) {
          sprintf(
          '"deposited_token_1":
            "%s"
                    ',
          self$`deposited_token_1`
          )
        },
        if (!is.null(self$`withdrawn_token_0`)) {
          sprintf(
          '"withdrawn_token_0":
            "%s"
                    ',
          self$`withdrawn_token_0`
          )
        },
        if (!is.null(self$`withdrawn_token_1`)) {
          sprintf(
          '"withdrawn_token_1":
            "%s"
                    ',
          self$`withdrawn_token_1`
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
        if (!is.null(self$`transaction`)) {
          sprintf(
          '"transaction":
            "%s"
                    ',
          self$`transaction`
          )
        },
        if (!is.null(self$`fee_growth_inside_0_last_x128`)) {
          sprintf(
          '"fee_growth_inside_0_last_x128":
            "%s"
                    ',
          self$`fee_growth_inside_0_last_x128`
          )
        },
        if (!is.null(self$`fee_growth_inside_1_last_x128`)) {
          sprintf(
          '"fee_growth_inside_1_last_x128":
            "%s"
                    ',
          self$`fee_growth_inside_1_last_x128`
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
    #' Deserialize JSON string into an instance of UniswapV3PositionSnapshotDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of UniswapV3PositionSnapshotDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of UniswapV3PositionSnapshotDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`owner` <- this_object$`owner`
      self$`pool` <- this_object$`pool`
      self$`position` <- this_object$`position`
      self$`timestamp` <- this_object$`timestamp`
      self$`liquidity` <- this_object$`liquidity`
      self$`deposited_token_0` <- this_object$`deposited_token_0`
      self$`deposited_token_1` <- this_object$`deposited_token_1`
      self$`withdrawn_token_0` <- this_object$`withdrawn_token_0`
      self$`withdrawn_token_1` <- this_object$`withdrawn_token_1`
      self$`collected_fees_token_0` <- this_object$`collected_fees_token_0`
      self$`collected_fees_token_1` <- this_object$`collected_fees_token_1`
      self$`transaction` <- this_object$`transaction`
      self$`fee_growth_inside_0_last_x128` <- this_object$`fee_growth_inside_0_last_x128`
      self$`fee_growth_inside_1_last_x128` <- this_object$`fee_growth_inside_1_last_x128`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to UniswapV3PositionSnapshotDTO
    #'
    #' @description
    #' Validate JSON input with respect to UniswapV3PositionSnapshotDTO and throw an exception if invalid
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
    #' @return String representation of UniswapV3PositionSnapshotDTO
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
# UniswapV3PositionSnapshotDTO$unlock()
#
## Below is an example to define the print function
# UniswapV3PositionSnapshotDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UniswapV3PositionSnapshotDTO$lock()

