#' Create a new CRYPTOPUNKSMarketplaceDailySnapshotDTO
#'
#' @description
#' CRYPTOPUNKSMarketplaceDailySnapshotDTO Class
#'
#' @docType class
#' @title CRYPTOPUNKSMarketplaceDailySnapshotDTO
#' @description CRYPTOPUNKSMarketplaceDailySnapshotDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number  character [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @field id  character [optional]
#' @field marketplace  character [optional]
#' @field timestamp  character [optional]
#' @field collection_count  integer [optional]
#' @field cumulative_trade_volume_eth  character [optional]
#' @field marketplace_revenue_eth  character [optional]
#' @field creator_revenue_eth  character [optional]
#' @field total_revenue_eth  character [optional]
#' @field trade_count  integer [optional]
#' @field cumulative_unique_traders  integer [optional]
#' @field daily_active_traders  integer [optional]
#' @field daily_traded_collection_count  integer [optional]
#' @field daily_traded_item_count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CRYPTOPUNKSMarketplaceDailySnapshotDTO <- R6::R6Class(
  "CRYPTOPUNKSMarketplaceDailySnapshotDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    `id` = NULL,
    `marketplace` = NULL,
    `timestamp` = NULL,
    `collection_count` = NULL,
    `cumulative_trade_volume_eth` = NULL,
    `marketplace_revenue_eth` = NULL,
    `creator_revenue_eth` = NULL,
    `total_revenue_eth` = NULL,
    `trade_count` = NULL,
    `cumulative_unique_traders` = NULL,
    `daily_active_traders` = NULL,
    `daily_traded_collection_count` = NULL,
    `daily_traded_item_count` = NULL,
    #' Initialize a new CRYPTOPUNKSMarketplaceDailySnapshotDTO class.
    #'
    #' @description
    #' Initialize a new CRYPTOPUNKSMarketplaceDailySnapshotDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number 
    #' @param vid 
    #' @param block_range 
    #' @param id 
    #' @param marketplace 
    #' @param timestamp 
    #' @param collection_count 
    #' @param cumulative_trade_volume_eth 
    #' @param marketplace_revenue_eth 
    #' @param creator_revenue_eth 
    #' @param total_revenue_eth 
    #' @param trade_count 
    #' @param cumulative_unique_traders 
    #' @param daily_active_traders 
    #' @param daily_traded_collection_count 
    #' @param daily_traded_item_count 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `block_range` = NULL, `id` = NULL, `marketplace` = NULL, `timestamp` = NULL, `collection_count` = NULL, `cumulative_trade_volume_eth` = NULL, `marketplace_revenue_eth` = NULL, `creator_revenue_eth` = NULL, `total_revenue_eth` = NULL, `trade_count` = NULL, `cumulative_unique_traders` = NULL, `daily_active_traders` = NULL, `daily_traded_collection_count` = NULL, `daily_traded_item_count` = NULL, ...) {
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
      if (!is.null(`marketplace`)) {
        if (!(is.character(`marketplace`) && length(`marketplace`) == 1)) {
          stop(paste("Error! Invalid data for `marketplace`. Must be a string:", `marketplace`))
        }
        self$`marketplace` <- `marketplace`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`collection_count`)) {
        if (!(is.numeric(`collection_count`) && length(`collection_count`) == 1)) {
          stop(paste("Error! Invalid data for `collection_count`. Must be an integer:", `collection_count`))
        }
        self$`collection_count` <- `collection_count`
      }
      if (!is.null(`cumulative_trade_volume_eth`)) {
        if (!(is.character(`cumulative_trade_volume_eth`) && length(`cumulative_trade_volume_eth`) == 1)) {
          stop(paste("Error! Invalid data for `cumulative_trade_volume_eth`. Must be a string:", `cumulative_trade_volume_eth`))
        }
        self$`cumulative_trade_volume_eth` <- `cumulative_trade_volume_eth`
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
      if (!is.null(`cumulative_unique_traders`)) {
        if (!(is.numeric(`cumulative_unique_traders`) && length(`cumulative_unique_traders`) == 1)) {
          stop(paste("Error! Invalid data for `cumulative_unique_traders`. Must be an integer:", `cumulative_unique_traders`))
        }
        self$`cumulative_unique_traders` <- `cumulative_unique_traders`
      }
      if (!is.null(`daily_active_traders`)) {
        if (!(is.numeric(`daily_active_traders`) && length(`daily_active_traders`) == 1)) {
          stop(paste("Error! Invalid data for `daily_active_traders`. Must be an integer:", `daily_active_traders`))
        }
        self$`daily_active_traders` <- `daily_active_traders`
      }
      if (!is.null(`daily_traded_collection_count`)) {
        if (!(is.numeric(`daily_traded_collection_count`) && length(`daily_traded_collection_count`) == 1)) {
          stop(paste("Error! Invalid data for `daily_traded_collection_count`. Must be an integer:", `daily_traded_collection_count`))
        }
        self$`daily_traded_collection_count` <- `daily_traded_collection_count`
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
    #' @return CRYPTOPUNKSMarketplaceDailySnapshotDTO in JSON format
    #' @export
    toJSON = function() {
      CRYPTOPUNKSMarketplaceDailySnapshotDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["block_range"]] <-
          self$`block_range`
      }
      if (!is.null(self$`id`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`marketplace`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["marketplace"]] <-
          self$`marketplace`
      }
      if (!is.null(self$`timestamp`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`collection_count`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["collection_count"]] <-
          self$`collection_count`
      }
      if (!is.null(self$`cumulative_trade_volume_eth`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["cumulative_trade_volume_eth"]] <-
          self$`cumulative_trade_volume_eth`
      }
      if (!is.null(self$`marketplace_revenue_eth`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["marketplace_revenue_eth"]] <-
          self$`marketplace_revenue_eth`
      }
      if (!is.null(self$`creator_revenue_eth`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["creator_revenue_eth"]] <-
          self$`creator_revenue_eth`
      }
      if (!is.null(self$`total_revenue_eth`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["total_revenue_eth"]] <-
          self$`total_revenue_eth`
      }
      if (!is.null(self$`trade_count`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["trade_count"]] <-
          self$`trade_count`
      }
      if (!is.null(self$`cumulative_unique_traders`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["cumulative_unique_traders"]] <-
          self$`cumulative_unique_traders`
      }
      if (!is.null(self$`daily_active_traders`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["daily_active_traders"]] <-
          self$`daily_active_traders`
      }
      if (!is.null(self$`daily_traded_collection_count`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["daily_traded_collection_count"]] <-
          self$`daily_traded_collection_count`
      }
      if (!is.null(self$`daily_traded_item_count`)) {
        CRYPTOPUNKSMarketplaceDailySnapshotDTOObject[["daily_traded_item_count"]] <-
          self$`daily_traded_item_count`
      }
      CRYPTOPUNKSMarketplaceDailySnapshotDTOObject
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSMarketplaceDailySnapshotDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSMarketplaceDailySnapshotDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSMarketplaceDailySnapshotDTO
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
      if (!is.null(this_object$`marketplace`)) {
        self$`marketplace` <- this_object$`marketplace`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`collection_count`)) {
        self$`collection_count` <- this_object$`collection_count`
      }
      if (!is.null(this_object$`cumulative_trade_volume_eth`)) {
        self$`cumulative_trade_volume_eth` <- this_object$`cumulative_trade_volume_eth`
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
      if (!is.null(this_object$`cumulative_unique_traders`)) {
        self$`cumulative_unique_traders` <- this_object$`cumulative_unique_traders`
      }
      if (!is.null(this_object$`daily_active_traders`)) {
        self$`daily_active_traders` <- this_object$`daily_active_traders`
      }
      if (!is.null(this_object$`daily_traded_collection_count`)) {
        self$`daily_traded_collection_count` <- this_object$`daily_traded_collection_count`
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
    #' @return CRYPTOPUNKSMarketplaceDailySnapshotDTO in JSON format
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
        if (!is.null(self$`marketplace`)) {
          sprintf(
          '"marketplace":
            "%s"
                    ',
          self$`marketplace`
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
        if (!is.null(self$`collection_count`)) {
          sprintf(
          '"collection_count":
            %d
                    ',
          self$`collection_count`
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
        if (!is.null(self$`cumulative_unique_traders`)) {
          sprintf(
          '"cumulative_unique_traders":
            %d
                    ',
          self$`cumulative_unique_traders`
          )
        },
        if (!is.null(self$`daily_active_traders`)) {
          sprintf(
          '"daily_active_traders":
            %d
                    ',
          self$`daily_active_traders`
          )
        },
        if (!is.null(self$`daily_traded_collection_count`)) {
          sprintf(
          '"daily_traded_collection_count":
            %d
                    ',
          self$`daily_traded_collection_count`
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
    #' Deserialize JSON string into an instance of CRYPTOPUNKSMarketplaceDailySnapshotDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSMarketplaceDailySnapshotDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSMarketplaceDailySnapshotDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self$`id` <- this_object$`id`
      self$`marketplace` <- this_object$`marketplace`
      self$`timestamp` <- this_object$`timestamp`
      self$`collection_count` <- this_object$`collection_count`
      self$`cumulative_trade_volume_eth` <- this_object$`cumulative_trade_volume_eth`
      self$`marketplace_revenue_eth` <- this_object$`marketplace_revenue_eth`
      self$`creator_revenue_eth` <- this_object$`creator_revenue_eth`
      self$`total_revenue_eth` <- this_object$`total_revenue_eth`
      self$`trade_count` <- this_object$`trade_count`
      self$`cumulative_unique_traders` <- this_object$`cumulative_unique_traders`
      self$`daily_active_traders` <- this_object$`daily_active_traders`
      self$`daily_traded_collection_count` <- this_object$`daily_traded_collection_count`
      self$`daily_traded_item_count` <- this_object$`daily_traded_item_count`
      self
    },
    #' Validate JSON input with respect to CRYPTOPUNKSMarketplaceDailySnapshotDTO
    #'
    #' @description
    #' Validate JSON input with respect to CRYPTOPUNKSMarketplaceDailySnapshotDTO and throw an exception if invalid
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
    #' @return String representation of CRYPTOPUNKSMarketplaceDailySnapshotDTO
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
# CRYPTOPUNKSMarketplaceDailySnapshotDTO$unlock()
#
## Below is an example to define the print function
# CRYPTOPUNKSMarketplaceDailySnapshotDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CRYPTOPUNKSMarketplaceDailySnapshotDTO$lock()

