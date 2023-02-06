#' Create a new CurveSystemStateDTO
#'
#' @description
#' CurveSystemStateDTO Class
#'
#' @docType class
#' @title CurveSystemStateDTO
#' @description CurveSystemStateDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id Singleton ID, equals to 'current'. character [optional]
#' @field registry_contract Current pool registry address. character [optional]
#' @field contract_count Number of contracts in the AddressProvider registry. character [optional]
#' @field gauge_count Number of gauges registered. character [optional]
#' @field gauge_type_count Number of gauge types registered. character [optional]
#' @field pool_count Number of active pools. character [optional]
#' @field token_count Number of tokens registered. character [optional]
#' @field total_pool_count Total number of pools (including removed ones). character [optional]
#' @field updated  character [optional]
#' @field updated_at_block  character [optional]
#' @field updated_at_transaction  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveSystemStateDTO <- R6::R6Class(
  "CurveSystemStateDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `registry_contract` = NULL,
    `contract_count` = NULL,
    `gauge_count` = NULL,
    `gauge_type_count` = NULL,
    `pool_count` = NULL,
    `token_count` = NULL,
    `total_pool_count` = NULL,
    `updated` = NULL,
    `updated_at_block` = NULL,
    `updated_at_transaction` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveSystemStateDTO class.
    #'
    #' @description
    #' Initialize a new CurveSystemStateDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id Singleton ID, equals to 'current'.
    #' @param registry_contract Current pool registry address.
    #' @param contract_count Number of contracts in the AddressProvider registry.
    #' @param gauge_count Number of gauges registered.
    #' @param gauge_type_count Number of gauge types registered.
    #' @param pool_count Number of active pools.
    #' @param token_count Number of tokens registered.
    #' @param total_pool_count Total number of pools (including removed ones).
    #' @param updated 
    #' @param updated_at_block 
    #' @param updated_at_transaction 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `registry_contract` = NULL, `contract_count` = NULL, `gauge_count` = NULL, `gauge_type_count` = NULL, `pool_count` = NULL, `token_count` = NULL, `total_pool_count` = NULL, `updated` = NULL, `updated_at_block` = NULL, `updated_at_transaction` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`registry_contract`)) {
        if (!(is.character(`registry_contract`) && length(`registry_contract`) == 1)) {
          stop(paste("Error! Invalid data for `registry_contract`. Must be a string:", `registry_contract`))
        }
        self$`registry_contract` <- `registry_contract`
      }
      if (!is.null(`contract_count`)) {
        if (!(is.character(`contract_count`) && length(`contract_count`) == 1)) {
          stop(paste("Error! Invalid data for `contract_count`. Must be a string:", `contract_count`))
        }
        self$`contract_count` <- `contract_count`
      }
      if (!is.null(`gauge_count`)) {
        if (!(is.character(`gauge_count`) && length(`gauge_count`) == 1)) {
          stop(paste("Error! Invalid data for `gauge_count`. Must be a string:", `gauge_count`))
        }
        self$`gauge_count` <- `gauge_count`
      }
      if (!is.null(`gauge_type_count`)) {
        if (!(is.character(`gauge_type_count`) && length(`gauge_type_count`) == 1)) {
          stop(paste("Error! Invalid data for `gauge_type_count`. Must be a string:", `gauge_type_count`))
        }
        self$`gauge_type_count` <- `gauge_type_count`
      }
      if (!is.null(`pool_count`)) {
        if (!(is.character(`pool_count`) && length(`pool_count`) == 1)) {
          stop(paste("Error! Invalid data for `pool_count`. Must be a string:", `pool_count`))
        }
        self$`pool_count` <- `pool_count`
      }
      if (!is.null(`token_count`)) {
        if (!(is.character(`token_count`) && length(`token_count`) == 1)) {
          stop(paste("Error! Invalid data for `token_count`. Must be a string:", `token_count`))
        }
        self$`token_count` <- `token_count`
      }
      if (!is.null(`total_pool_count`)) {
        if (!(is.character(`total_pool_count`) && length(`total_pool_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_pool_count`. Must be a string:", `total_pool_count`))
        }
        self$`total_pool_count` <- `total_pool_count`
      }
      if (!is.null(`updated`)) {
        if (!(is.character(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be a string:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`updated_at_block`)) {
        if (!(is.character(`updated_at_block`) && length(`updated_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at_block`. Must be a string:", `updated_at_block`))
        }
        self$`updated_at_block` <- `updated_at_block`
      }
      if (!is.null(`updated_at_transaction`)) {
        if (!(is.character(`updated_at_transaction`) && length(`updated_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at_transaction`. Must be a string:", `updated_at_transaction`))
        }
        self$`updated_at_transaction` <- `updated_at_transaction`
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
    #' @return CurveSystemStateDTO in JSON format
    #' @export
    toJSON = function() {
      CurveSystemStateDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveSystemStateDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveSystemStateDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveSystemStateDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveSystemStateDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`registry_contract`)) {
        CurveSystemStateDTOObject[["registry_contract"]] <-
          self$`registry_contract`
      }
      if (!is.null(self$`contract_count`)) {
        CurveSystemStateDTOObject[["contract_count"]] <-
          self$`contract_count`
      }
      if (!is.null(self$`gauge_count`)) {
        CurveSystemStateDTOObject[["gauge_count"]] <-
          self$`gauge_count`
      }
      if (!is.null(self$`gauge_type_count`)) {
        CurveSystemStateDTOObject[["gauge_type_count"]] <-
          self$`gauge_type_count`
      }
      if (!is.null(self$`pool_count`)) {
        CurveSystemStateDTOObject[["pool_count"]] <-
          self$`pool_count`
      }
      if (!is.null(self$`token_count`)) {
        CurveSystemStateDTOObject[["token_count"]] <-
          self$`token_count`
      }
      if (!is.null(self$`total_pool_count`)) {
        CurveSystemStateDTOObject[["total_pool_count"]] <-
          self$`total_pool_count`
      }
      if (!is.null(self$`updated`)) {
        CurveSystemStateDTOObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`updated_at_block`)) {
        CurveSystemStateDTOObject[["updated_at_block"]] <-
          self$`updated_at_block`
      }
      if (!is.null(self$`updated_at_transaction`)) {
        CurveSystemStateDTOObject[["updated_at_transaction"]] <-
          self$`updated_at_transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveSystemStateDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveSystemStateDTOObject
    },
    #' Deserialize JSON string into an instance of CurveSystemStateDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveSystemStateDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveSystemStateDTO
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
      if (!is.null(this_object$`registry_contract`)) {
        self$`registry_contract` <- this_object$`registry_contract`
      }
      if (!is.null(this_object$`contract_count`)) {
        self$`contract_count` <- this_object$`contract_count`
      }
      if (!is.null(this_object$`gauge_count`)) {
        self$`gauge_count` <- this_object$`gauge_count`
      }
      if (!is.null(this_object$`gauge_type_count`)) {
        self$`gauge_type_count` <- this_object$`gauge_type_count`
      }
      if (!is.null(this_object$`pool_count`)) {
        self$`pool_count` <- this_object$`pool_count`
      }
      if (!is.null(this_object$`token_count`)) {
        self$`token_count` <- this_object$`token_count`
      }
      if (!is.null(this_object$`total_pool_count`)) {
        self$`total_pool_count` <- this_object$`total_pool_count`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`updated_at_block`)) {
        self$`updated_at_block` <- this_object$`updated_at_block`
      }
      if (!is.null(this_object$`updated_at_transaction`)) {
        self$`updated_at_transaction` <- this_object$`updated_at_transaction`
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
    #' @return CurveSystemStateDTO in JSON format
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
        if (!is.null(self$`registry_contract`)) {
          sprintf(
          '"registry_contract":
            "%s"
                    ',
          self$`registry_contract`
          )
        },
        if (!is.null(self$`contract_count`)) {
          sprintf(
          '"contract_count":
            "%s"
                    ',
          self$`contract_count`
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
        if (!is.null(self$`gauge_type_count`)) {
          sprintf(
          '"gauge_type_count":
            "%s"
                    ',
          self$`gauge_type_count`
          )
        },
        if (!is.null(self$`pool_count`)) {
          sprintf(
          '"pool_count":
            "%s"
                    ',
          self$`pool_count`
          )
        },
        if (!is.null(self$`token_count`)) {
          sprintf(
          '"token_count":
            "%s"
                    ',
          self$`token_count`
          )
        },
        if (!is.null(self$`total_pool_count`)) {
          sprintf(
          '"total_pool_count":
            "%s"
                    ',
          self$`total_pool_count`
          )
        },
        if (!is.null(self$`updated`)) {
          sprintf(
          '"updated":
            "%s"
                    ',
          self$`updated`
          )
        },
        if (!is.null(self$`updated_at_block`)) {
          sprintf(
          '"updated_at_block":
            "%s"
                    ',
          self$`updated_at_block`
          )
        },
        if (!is.null(self$`updated_at_transaction`)) {
          sprintf(
          '"updated_at_transaction":
            "%s"
                    ',
          self$`updated_at_transaction`
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
    #' Deserialize JSON string into an instance of CurveSystemStateDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveSystemStateDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveSystemStateDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`registry_contract` <- this_object$`registry_contract`
      self$`contract_count` <- this_object$`contract_count`
      self$`gauge_count` <- this_object$`gauge_count`
      self$`gauge_type_count` <- this_object$`gauge_type_count`
      self$`pool_count` <- this_object$`pool_count`
      self$`token_count` <- this_object$`token_count`
      self$`total_pool_count` <- this_object$`total_pool_count`
      self$`updated` <- this_object$`updated`
      self$`updated_at_block` <- this_object$`updated_at_block`
      self$`updated_at_transaction` <- this_object$`updated_at_transaction`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveSystemStateDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveSystemStateDTO and throw an exception if invalid
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
    #' @return String representation of CurveSystemStateDTO
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
# CurveSystemStateDTO$unlock()
#
## Below is an example to define the print function
# CurveSystemStateDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveSystemStateDTO$lock()

