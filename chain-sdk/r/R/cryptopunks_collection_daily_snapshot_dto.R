#' Create a new CRYPTOPUNKSCollectionDailySnapshotDTO
#'
#' @description
#' CRYPTOPUNKSCollectionDailySnapshotDTO Class
#'
#' @docType class
#' @title CRYPTOPUNKSCollectionDailySnapshotDTO
#' @description CRYPTOPUNKSCollectionDailySnapshotDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  character [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @field id  character [optional]
#' @field collection  character [optional]
#' @field timestamp  character [optional]
#' @field royalty_fee  character [optional]
#' @field daily_min_sale_price  character [optional]
#' @field daily_max_sale_price  character [optional]
#' @field cumulative_trade_volume_eth  character [optional]
#' @field daily_trade_volume_eth  character [optional]
#' @field marketplace_revenue_eth  character [optional]
#' @field creator_revenue_eth  character [optional]
#' @field total_revenue_eth  character [optional]
#' @field trade_count  integer [optional]
#' @field daily_traded_item_count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CRYPTOPUNKSCollectionDailySnapshotDTO <- R6::R6Class(
  "CRYPTOPUNKSCollectionDailySnapshotDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    `id` = NULL,
    `collection` = NULL,
    `timestamp` = NULL,
    `royalty_fee` = NULL,
    `daily_min_sale_price` = NULL,
    `daily_max_sale_price` = NULL,
    `cumulative_trade_volume_eth` = NULL,
    `daily_trade_volume_eth` = NULL,
    `marketplace_revenue_eth` = NULL,
    `creator_revenue_eth` = NULL,
    `total_revenue_eth` = NULL,
    `trade_count` = NULL,
    `daily_traded_item_count` = NULL,
    #' Initialize a new CRYPTOPUNKSCollectionDailySnapshotDTO class.
    #'
    #' @description
    #' Initialize a new CRYPTOPUNKSCollectionDailySnapshotDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param vid 
    #' @param block_range 
    #' @param id 
    #' @param collection 
    #' @param timestamp 
    #' @param royalty_fee 
    #' @param daily_min_sale_price 
    #' @param daily_max_sale_price 
    #' @param cumulative_trade_volume_eth 
    #' @param daily_trade_volume_eth 
    #' @param marketplace_revenue_eth 
    #' @param creator_revenue_eth 
    #' @param total_revenue_eth 
    #' @param trade_count 
    #' @param daily_traded_item_count 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `block_range` = NULL, `id` = NULL, `collection` = NULL, `timestamp` = NULL, `royalty_fee` = NULL, `daily_min_sale_price` = NULL, `daily_max_sale_price` = NULL, `cumulative_trade_volume_eth` = NULL, `daily_trade_volume_eth` = NULL, `marketplace_revenue_eth` = NULL, `creator_revenue_eth` = NULL, `total_revenue_eth` = NULL, `trade_count` = NULL, `daily_traded_item_count` = NULL, ...) {
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
        if (!(is.character(`block_number`) && length(`block_number`) == 1)) {
          stop(paste("Error! Invalid data for `block_number`. Must be a string:", `block_number`))
        }
        self$`block_number` <- `block_number`
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
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`collection`)) {
        if (!(is.character(`collection`) && length(`collection`) == 1)) {
          stop(paste("Error! Invalid data for `collection`. Must be a string:", `collection`))
        }
        self$`collection` <- `collection`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`royalty_fee`)) {
        if (!(is.character(`royalty_fee`) && length(`royalty_fee`) == 1)) {
          stop(paste("Error! Invalid data for `royalty_fee`. Must be a string:", `royalty_fee`))
        }
        self$`royalty_fee` <- `royalty_fee`
      }
      if (!is.null(`daily_min_sale_price`)) {
        if (!(is.character(`daily_min_sale_price`) && length(`daily_min_sale_price`) == 1)) {
          stop(paste("Error! Invalid data for `daily_min_sale_price`. Must be a string:", `daily_min_sale_price`))
        }
        self$`daily_min_sale_price` <- `daily_min_sale_price`
      }
      if (!is.null(`daily_max_sale_price`)) {
        if (!(is.character(`daily_max_sale_price`) && length(`daily_max_sale_price`) == 1)) {
          stop(paste("Error! Invalid data for `daily_max_sale_price`. Must be a string:", `daily_max_sale_price`))
        }
        self$`daily_max_sale_price` <- `daily_max_sale_price`
      }
      if (!is.null(`cumulative_trade_volume_eth`)) {
        if (!(is.character(`cumulative_trade_volume_eth`) && length(`cumulative_trade_volume_eth`) == 1)) {
          stop(paste("Error! Invalid data for `cumulative_trade_volume_eth`. Must be a string:", `cumulative_trade_volume_eth`))
        }
        self$`cumulative_trade_volume_eth` <- `cumulative_trade_volume_eth`
      }
      if (!is.null(`daily_trade_volume_eth`)) {
        if (!(is.character(`daily_trade_volume_eth`) && length(`daily_trade_volume_eth`) == 1)) {
          stop(paste("Error! Invalid data for `daily_trade_volume_eth`. Must be a string:", `daily_trade_volume_eth`))
        }
        self$`daily_trade_volume_eth` <- `daily_trade_volume_eth`
      }
      if (!is.null(`marketplace_revenue_eth`)) {
        if (!(is.character(`marketplace_revenue_eth`) && length(`marketplace_revenue_eth`) == 1)) {
          stop(paste("Error! Invalid data for `marketplace_revenue_eth`. Must be a string:", `marketplace_revenue_eth`))
        }
        self$`marketplace_revenue_eth` <- `marketplace_revenue_eth`
      }
      if (!is.null(`creator_revenue_eth`)) {
        if (!(is.character(`creator_revenue_eth`) && length(`creator_revenue_eth`) == 1)) {
          stop(paste("Error! Invalid data for `creator_revenue_eth`. Must be a string:", `creator_revenue_eth`))
        }
        self$`creator_revenue_eth` <- `creator_revenue_eth`
      }
      if (!is.null(`total_revenue_eth`)) {
        if (!(is.character(`total_revenue_eth`) && length(`total_revenue_eth`) == 1)) {
          stop(paste("Error! Invalid data for `total_revenue_eth`. Must be a string:", `total_revenue_eth`))
        }
        self$`total_revenue_eth` <- `total_revenue_eth`
      }
      if (!is.null(`trade_count`)) {
        if (!(is.numeric(`trade_count`) && length(`trade_count`) == 1)) {
          stop(paste("Error! Invalid data for `trade_count`. Must be an integer:", `trade_count`))
        }
        self$`trade_count` <- `trade_count`
      }
      if (!is.null(`daily_traded_item_count`)) {
        if (!(is.numeric(`daily_traded_item_count`) && length(`daily_traded_item_count`) == 1)) {
          stop(paste("Error! Invalid data for `daily_traded_item_count`. Must be an integer:", `daily_traded_item_count`))
        }
        self$`daily_traded_item_count` <- `daily_traded_item_count`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSCollectionDailySnapshotDTO in JSON format
    #' @export
    toJSON = function() {
      CRYPTOPUNKSCollectionDailySnapshotDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["block_range"]] <-
          self$`block_range`
      }
      if (!is.null(self$`id`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`collection`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["collection"]] <-
          self$`collection`
      }
      if (!is.null(self$`timestamp`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`royalty_fee`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["royalty_fee"]] <-
          self$`royalty_fee`
      }
      if (!is.null(self$`daily_min_sale_price`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["daily_min_sale_price"]] <-
          self$`daily_min_sale_price`
      }
      if (!is.null(self$`daily_max_sale_price`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["daily_max_sale_price"]] <-
          self$`daily_max_sale_price`
      }
      if (!is.null(self$`cumulative_trade_volume_eth`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["cumulative_trade_volume_eth"]] <-
          self$`cumulative_trade_volume_eth`
      }
      if (!is.null(self$`daily_trade_volume_eth`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["daily_trade_volume_eth"]] <-
          self$`daily_trade_volume_eth`
      }
      if (!is.null(self$`marketplace_revenue_eth`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["marketplace_revenue_eth"]] <-
          self$`marketplace_revenue_eth`
      }
      if (!is.null(self$`creator_revenue_eth`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["creator_revenue_eth"]] <-
          self$`creator_revenue_eth`
      }
      if (!is.null(self$`total_revenue_eth`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["total_revenue_eth"]] <-
          self$`total_revenue_eth`
      }
      if (!is.null(self$`trade_count`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["trade_count"]] <-
          self$`trade_count`
      }
      if (!is.null(self$`daily_traded_item_count`)) {
        CRYPTOPUNKSCollectionDailySnapshotDTOObject[["daily_traded_item_count"]] <-
          self$`daily_traded_item_count`
      }
      CRYPTOPUNKSCollectionDailySnapshotDTOObject
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSCollectionDailySnapshotDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSCollectionDailySnapshotDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSCollectionDailySnapshotDTO
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
      if (!is.null(this_object$`block_range`)) {
        self$`block_range` <- this_object$`block_range`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`collection`)) {
        self$`collection` <- this_object$`collection`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`royalty_fee`)) {
        self$`royalty_fee` <- this_object$`royalty_fee`
      }
      if (!is.null(this_object$`daily_min_sale_price`)) {
        self$`daily_min_sale_price` <- this_object$`daily_min_sale_price`
      }
      if (!is.null(this_object$`daily_max_sale_price`)) {
        self$`daily_max_sale_price` <- this_object$`daily_max_sale_price`
      }
      if (!is.null(this_object$`cumulative_trade_volume_eth`)) {
        self$`cumulative_trade_volume_eth` <- this_object$`cumulative_trade_volume_eth`
      }
      if (!is.null(this_object$`daily_trade_volume_eth`)) {
        self$`daily_trade_volume_eth` <- this_object$`daily_trade_volume_eth`
      }
      if (!is.null(this_object$`marketplace_revenue_eth`)) {
        self$`marketplace_revenue_eth` <- this_object$`marketplace_revenue_eth`
      }
      if (!is.null(this_object$`creator_revenue_eth`)) {
        self$`creator_revenue_eth` <- this_object$`creator_revenue_eth`
      }
      if (!is.null(this_object$`total_revenue_eth`)) {
        self$`total_revenue_eth` <- this_object$`total_revenue_eth`
      }
      if (!is.null(this_object$`trade_count`)) {
        self$`trade_count` <- this_object$`trade_count`
      }
      if (!is.null(this_object$`daily_traded_item_count`)) {
        self$`daily_traded_item_count` <- this_object$`daily_traded_item_count`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSCollectionDailySnapshotDTO in JSON format
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
            "%s"
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
        if (!is.null(self$`block_range`)) {
          sprintf(
          '"block_range":
            "%s"
                    ',
          self$`block_range`
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
        if (!is.null(self$`collection`)) {
          sprintf(
          '"collection":
            "%s"
                    ',
          self$`collection`
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
        if (!is.null(self$`royalty_fee`)) {
          sprintf(
          '"royalty_fee":
            "%s"
                    ',
          self$`royalty_fee`
          )
        },
        if (!is.null(self$`daily_min_sale_price`)) {
          sprintf(
          '"daily_min_sale_price":
            "%s"
                    ',
          self$`daily_min_sale_price`
          )
        },
        if (!is.null(self$`daily_max_sale_price`)) {
          sprintf(
          '"daily_max_sale_price":
            "%s"
                    ',
          self$`daily_max_sale_price`
          )
        },
        if (!is.null(self$`cumulative_trade_volume_eth`)) {
          sprintf(
          '"cumulative_trade_volume_eth":
            "%s"
                    ',
          self$`cumulative_trade_volume_eth`
          )
        },
        if (!is.null(self$`daily_trade_volume_eth`)) {
          sprintf(
          '"daily_trade_volume_eth":
            "%s"
                    ',
          self$`daily_trade_volume_eth`
          )
        },
        if (!is.null(self$`marketplace_revenue_eth`)) {
          sprintf(
          '"marketplace_revenue_eth":
            "%s"
                    ',
          self$`marketplace_revenue_eth`
          )
        },
        if (!is.null(self$`creator_revenue_eth`)) {
          sprintf(
          '"creator_revenue_eth":
            "%s"
                    ',
          self$`creator_revenue_eth`
          )
        },
        if (!is.null(self$`total_revenue_eth`)) {
          sprintf(
          '"total_revenue_eth":
            "%s"
                    ',
          self$`total_revenue_eth`
          )
        },
        if (!is.null(self$`trade_count`)) {
          sprintf(
          '"trade_count":
            %d
                    ',
          self$`trade_count`
          )
        },
        if (!is.null(self$`daily_traded_item_count`)) {
          sprintf(
          '"daily_traded_item_count":
            %d
                    ',
          self$`daily_traded_item_count`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSCollectionDailySnapshotDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSCollectionDailySnapshotDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSCollectionDailySnapshotDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self$`id` <- this_object$`id`
      self$`collection` <- this_object$`collection`
      self$`timestamp` <- this_object$`timestamp`
      self$`royalty_fee` <- this_object$`royalty_fee`
      self$`daily_min_sale_price` <- this_object$`daily_min_sale_price`
      self$`daily_max_sale_price` <- this_object$`daily_max_sale_price`
      self$`cumulative_trade_volume_eth` <- this_object$`cumulative_trade_volume_eth`
      self$`daily_trade_volume_eth` <- this_object$`daily_trade_volume_eth`
      self$`marketplace_revenue_eth` <- this_object$`marketplace_revenue_eth`
      self$`creator_revenue_eth` <- this_object$`creator_revenue_eth`
      self$`total_revenue_eth` <- this_object$`total_revenue_eth`
      self$`trade_count` <- this_object$`trade_count`
      self$`daily_traded_item_count` <- this_object$`daily_traded_item_count`
      self
    },
    #' Validate JSON input with respect to CRYPTOPUNKSCollectionDailySnapshotDTO
    #'
    #' @description
    #' Validate JSON input with respect to CRYPTOPUNKSCollectionDailySnapshotDTO and throw an exception if invalid
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
    #' @return String representation of CRYPTOPUNKSCollectionDailySnapshotDTO
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
# CRYPTOPUNKSCollectionDailySnapshotDTO$unlock()
#
## Below is an example to define the print function
# CRYPTOPUNKSCollectionDailySnapshotDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CRYPTOPUNKSCollectionDailySnapshotDTO$lock()

