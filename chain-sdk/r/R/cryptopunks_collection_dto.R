#' Create a new CRYPTOPUNKSCollectionDTO
#'
#' @description
#' CRYPTOPUNKSCollectionDTO Class
#'
#' @docType class
#' @title CRYPTOPUNKSCollectionDTO
#' @description CRYPTOPUNKSCollectionDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @field id  character [optional]
#' @field name  character [optional]
#' @field symbol  character [optional]
#' @field total_supply  character [optional]
#' @field royalty_fee  character [optional]
#' @field cumulative_trade_volume_eth  character [optional]
#' @field marketplace_revenue_eth  character [optional]
#' @field creator_revenue_eth  character [optional]
#' @field total_revenue_eth  character [optional]
#' @field trade_count  integer [optional]
#' @field buyer_count  integer [optional]
#' @field seller_count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CRYPTOPUNKSCollectionDTO <- R6::R6Class(
  "CRYPTOPUNKSCollectionDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    `id` = NULL,
    `name` = NULL,
    `symbol` = NULL,
    `total_supply` = NULL,
    `royalty_fee` = NULL,
    `cumulative_trade_volume_eth` = NULL,
    `marketplace_revenue_eth` = NULL,
    `creator_revenue_eth` = NULL,
    `total_revenue_eth` = NULL,
    `trade_count` = NULL,
    `buyer_count` = NULL,
    `seller_count` = NULL,
    #' Initialize a new CRYPTOPUNKSCollectionDTO class.
    #'
    #' @description
    #' Initialize a new CRYPTOPUNKSCollectionDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param vid 
    #' @param block_range 
    #' @param id 
    #' @param name 
    #' @param symbol 
    #' @param total_supply 
    #' @param royalty_fee 
    #' @param cumulative_trade_volume_eth 
    #' @param marketplace_revenue_eth 
    #' @param creator_revenue_eth 
    #' @param total_revenue_eth 
    #' @param trade_count 
    #' @param buyer_count 
    #' @param seller_count 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `block_range` = NULL, `id` = NULL, `name` = NULL, `symbol` = NULL, `total_supply` = NULL, `royalty_fee` = NULL, `cumulative_trade_volume_eth` = NULL, `marketplace_revenue_eth` = NULL, `creator_revenue_eth` = NULL, `total_revenue_eth` = NULL, `trade_count` = NULL, `buyer_count` = NULL, `seller_count` = NULL, ...) {
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`total_supply`)) {
        if (!(is.character(`total_supply`) && length(`total_supply`) == 1)) {
          stop(paste("Error! Invalid data for `total_supply`. Must be a string:", `total_supply`))
        }
        self$`total_supply` <- `total_supply`
      }
      if (!is.null(`royalty_fee`)) {
        if (!(is.character(`royalty_fee`) && length(`royalty_fee`) == 1)) {
          stop(paste("Error! Invalid data for `royalty_fee`. Must be a string:", `royalty_fee`))
        }
        self$`royalty_fee` <- `royalty_fee`
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
      if (!is.null(`buyer_count`)) {
        if (!(is.numeric(`buyer_count`) && length(`buyer_count`) == 1)) {
          stop(paste("Error! Invalid data for `buyer_count`. Must be an integer:", `buyer_count`))
        }
        self$`buyer_count` <- `buyer_count`
      }
      if (!is.null(`seller_count`)) {
        if (!(is.numeric(`seller_count`) && length(`seller_count`) == 1)) {
          stop(paste("Error! Invalid data for `seller_count`. Must be an integer:", `seller_count`))
        }
        self$`seller_count` <- `seller_count`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSCollectionDTO in JSON format
    #' @export
    toJSON = function() {
      CRYPTOPUNKSCollectionDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CRYPTOPUNKSCollectionDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CRYPTOPUNKSCollectionDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CRYPTOPUNKSCollectionDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        CRYPTOPUNKSCollectionDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        CRYPTOPUNKSCollectionDTOObject[["block_range"]] <-
          self$`block_range`
      }
      if (!is.null(self$`id`)) {
        CRYPTOPUNKSCollectionDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CRYPTOPUNKSCollectionDTOObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`symbol`)) {
        CRYPTOPUNKSCollectionDTOObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`total_supply`)) {
        CRYPTOPUNKSCollectionDTOObject[["total_supply"]] <-
          self$`total_supply`
      }
      if (!is.null(self$`royalty_fee`)) {
        CRYPTOPUNKSCollectionDTOObject[["royalty_fee"]] <-
          self$`royalty_fee`
      }
      if (!is.null(self$`cumulative_trade_volume_eth`)) {
        CRYPTOPUNKSCollectionDTOObject[["cumulative_trade_volume_eth"]] <-
          self$`cumulative_trade_volume_eth`
      }
      if (!is.null(self$`marketplace_revenue_eth`)) {
        CRYPTOPUNKSCollectionDTOObject[["marketplace_revenue_eth"]] <-
          self$`marketplace_revenue_eth`
      }
      if (!is.null(self$`creator_revenue_eth`)) {
        CRYPTOPUNKSCollectionDTOObject[["creator_revenue_eth"]] <-
          self$`creator_revenue_eth`
      }
      if (!is.null(self$`total_revenue_eth`)) {
        CRYPTOPUNKSCollectionDTOObject[["total_revenue_eth"]] <-
          self$`total_revenue_eth`
      }
      if (!is.null(self$`trade_count`)) {
        CRYPTOPUNKSCollectionDTOObject[["trade_count"]] <-
          self$`trade_count`
      }
      if (!is.null(self$`buyer_count`)) {
        CRYPTOPUNKSCollectionDTOObject[["buyer_count"]] <-
          self$`buyer_count`
      }
      if (!is.null(self$`seller_count`)) {
        CRYPTOPUNKSCollectionDTOObject[["seller_count"]] <-
          self$`seller_count`
      }
      CRYPTOPUNKSCollectionDTOObject
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSCollectionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSCollectionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSCollectionDTO
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`total_supply`)) {
        self$`total_supply` <- this_object$`total_supply`
      }
      if (!is.null(this_object$`royalty_fee`)) {
        self$`royalty_fee` <- this_object$`royalty_fee`
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
      if (!is.null(this_object$`buyer_count`)) {
        self$`buyer_count` <- this_object$`buyer_count`
      }
      if (!is.null(this_object$`seller_count`)) {
        self$`seller_count` <- this_object$`seller_count`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSCollectionDTO in JSON format
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
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
        if (!is.null(self$`total_supply`)) {
          sprintf(
          '"total_supply":
            "%s"
                    ',
          self$`total_supply`
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
        if (!is.null(self$`buyer_count`)) {
          sprintf(
          '"buyer_count":
            %d
                    ',
          self$`buyer_count`
          )
        },
        if (!is.null(self$`seller_count`)) {
          sprintf(
          '"seller_count":
            %d
                    ',
          self$`seller_count`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSCollectionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSCollectionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSCollectionDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`symbol` <- this_object$`symbol`
      self$`total_supply` <- this_object$`total_supply`
      self$`royalty_fee` <- this_object$`royalty_fee`
      self$`cumulative_trade_volume_eth` <- this_object$`cumulative_trade_volume_eth`
      self$`marketplace_revenue_eth` <- this_object$`marketplace_revenue_eth`
      self$`creator_revenue_eth` <- this_object$`creator_revenue_eth`
      self$`total_revenue_eth` <- this_object$`total_revenue_eth`
      self$`trade_count` <- this_object$`trade_count`
      self$`buyer_count` <- this_object$`buyer_count`
      self$`seller_count` <- this_object$`seller_count`
      self
    },
    #' Validate JSON input with respect to CRYPTOPUNKSCollectionDTO
    #'
    #' @description
    #' Validate JSON input with respect to CRYPTOPUNKSCollectionDTO and throw an exception if invalid
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
    #' @return String representation of CRYPTOPUNKSCollectionDTO
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
# CRYPTOPUNKSCollectionDTO$unlock()
#
## Below is an example to define the print function
# CRYPTOPUNKSCollectionDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CRYPTOPUNKSCollectionDTO$lock()

