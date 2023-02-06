#' Create a new DexSolutionDTO
#'
#' @description
#' DexSolutionDTO Class
#'
#' @docType class
#' @title DexSolutionDTO
#' @description DexSolutionDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field batch  character [optional]
#' @field solver  character [optional]
#' @field fee_reward  character [optional]
#' @field objective_value  character [optional]
#' @field utility  character [optional]
#' @field trades  list(character) [optional]
#' @field create_epoch  character [optional]
#' @field revert_epoch  character [optional]
#' @field tx_hash  character [optional]
#' @field tx_log_index  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DexSolutionDTO <- R6::R6Class(
  "DexSolutionDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `batch` = NULL,
    `solver` = NULL,
    `fee_reward` = NULL,
    `objective_value` = NULL,
    `utility` = NULL,
    `trades` = NULL,
    `create_epoch` = NULL,
    `revert_epoch` = NULL,
    `tx_hash` = NULL,
    `tx_log_index` = NULL,
    `vid` = NULL,
    #' Initialize a new DexSolutionDTO class.
    #'
    #' @description
    #' Initialize a new DexSolutionDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param batch 
    #' @param solver 
    #' @param fee_reward 
    #' @param objective_value 
    #' @param utility 
    #' @param trades 
    #' @param create_epoch 
    #' @param revert_epoch 
    #' @param tx_hash 
    #' @param tx_log_index 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `batch` = NULL, `solver` = NULL, `fee_reward` = NULL, `objective_value` = NULL, `utility` = NULL, `trades` = NULL, `create_epoch` = NULL, `revert_epoch` = NULL, `tx_hash` = NULL, `tx_log_index` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`batch`)) {
        if (!(is.character(`batch`) && length(`batch`) == 1)) {
          stop(paste("Error! Invalid data for `batch`. Must be a string:", `batch`))
        }
        self$`batch` <- `batch`
      }
      if (!is.null(`solver`)) {
        if (!(is.character(`solver`) && length(`solver`) == 1)) {
          stop(paste("Error! Invalid data for `solver`. Must be a string:", `solver`))
        }
        self$`solver` <- `solver`
      }
      if (!is.null(`fee_reward`)) {
        if (!(is.character(`fee_reward`) && length(`fee_reward`) == 1)) {
          stop(paste("Error! Invalid data for `fee_reward`. Must be a string:", `fee_reward`))
        }
        self$`fee_reward` <- `fee_reward`
      }
      if (!is.null(`objective_value`)) {
        if (!(is.character(`objective_value`) && length(`objective_value`) == 1)) {
          stop(paste("Error! Invalid data for `objective_value`. Must be a string:", `objective_value`))
        }
        self$`objective_value` <- `objective_value`
      }
      if (!is.null(`utility`)) {
        if (!(is.character(`utility`) && length(`utility`) == 1)) {
          stop(paste("Error! Invalid data for `utility`. Must be a string:", `utility`))
        }
        self$`utility` <- `utility`
      }
      if (!is.null(`trades`)) {
        stopifnot(is.vector(`trades`), length(`trades`) != 0)
        sapply(`trades`, function(x) stopifnot(is.character(x)))
        self$`trades` <- `trades`
      }
      if (!is.null(`create_epoch`)) {
        if (!(is.character(`create_epoch`) && length(`create_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `create_epoch`. Must be a string:", `create_epoch`))
        }
        self$`create_epoch` <- `create_epoch`
      }
      if (!is.null(`revert_epoch`)) {
        if (!(is.character(`revert_epoch`) && length(`revert_epoch`) == 1)) {
          stop(paste("Error! Invalid data for `revert_epoch`. Must be a string:", `revert_epoch`))
        }
        self$`revert_epoch` <- `revert_epoch`
      }
      if (!is.null(`tx_hash`)) {
        if (!(is.character(`tx_hash`) && length(`tx_hash`) == 1)) {
          stop(paste("Error! Invalid data for `tx_hash`. Must be a string:", `tx_hash`))
        }
        self$`tx_hash` <- `tx_hash`
      }
      if (!is.null(`tx_log_index`)) {
        if (!(is.character(`tx_log_index`) && length(`tx_log_index`) == 1)) {
          stop(paste("Error! Invalid data for `tx_log_index`. Must be a string:", `tx_log_index`))
        }
        self$`tx_log_index` <- `tx_log_index`
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
    #' @return DexSolutionDTO in JSON format
    #' @export
    toJSON = function() {
      DexSolutionDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        DexSolutionDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        DexSolutionDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        DexSolutionDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        DexSolutionDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`batch`)) {
        DexSolutionDTOObject[["batch"]] <-
          self$`batch`
      }
      if (!is.null(self$`solver`)) {
        DexSolutionDTOObject[["solver"]] <-
          self$`solver`
      }
      if (!is.null(self$`fee_reward`)) {
        DexSolutionDTOObject[["fee_reward"]] <-
          self$`fee_reward`
      }
      if (!is.null(self$`objective_value`)) {
        DexSolutionDTOObject[["objective_value"]] <-
          self$`objective_value`
      }
      if (!is.null(self$`utility`)) {
        DexSolutionDTOObject[["utility"]] <-
          self$`utility`
      }
      if (!is.null(self$`trades`)) {
        DexSolutionDTOObject[["trades"]] <-
          self$`trades`
      }
      if (!is.null(self$`create_epoch`)) {
        DexSolutionDTOObject[["create_epoch"]] <-
          self$`create_epoch`
      }
      if (!is.null(self$`revert_epoch`)) {
        DexSolutionDTOObject[["revert_epoch"]] <-
          self$`revert_epoch`
      }
      if (!is.null(self$`tx_hash`)) {
        DexSolutionDTOObject[["tx_hash"]] <-
          self$`tx_hash`
      }
      if (!is.null(self$`tx_log_index`)) {
        DexSolutionDTOObject[["tx_log_index"]] <-
          self$`tx_log_index`
      }
      if (!is.null(self$`vid`)) {
        DexSolutionDTOObject[["vid"]] <-
          self$`vid`
      }
      DexSolutionDTOObject
    },
    #' Deserialize JSON string into an instance of DexSolutionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexSolutionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexSolutionDTO
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
      if (!is.null(this_object$`batch`)) {
        self$`batch` <- this_object$`batch`
      }
      if (!is.null(this_object$`solver`)) {
        self$`solver` <- this_object$`solver`
      }
      if (!is.null(this_object$`fee_reward`)) {
        self$`fee_reward` <- this_object$`fee_reward`
      }
      if (!is.null(this_object$`objective_value`)) {
        self$`objective_value` <- this_object$`objective_value`
      }
      if (!is.null(this_object$`utility`)) {
        self$`utility` <- this_object$`utility`
      }
      if (!is.null(this_object$`trades`)) {
        self$`trades` <- ApiClient$new()$deserializeObj(this_object$`trades`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`create_epoch`)) {
        self$`create_epoch` <- this_object$`create_epoch`
      }
      if (!is.null(this_object$`revert_epoch`)) {
        self$`revert_epoch` <- this_object$`revert_epoch`
      }
      if (!is.null(this_object$`tx_hash`)) {
        self$`tx_hash` <- this_object$`tx_hash`
      }
      if (!is.null(this_object$`tx_log_index`)) {
        self$`tx_log_index` <- this_object$`tx_log_index`
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
    #' @return DexSolutionDTO in JSON format
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
        if (!is.null(self$`batch`)) {
          sprintf(
          '"batch":
            "%s"
                    ',
          self$`batch`
          )
        },
        if (!is.null(self$`solver`)) {
          sprintf(
          '"solver":
            "%s"
                    ',
          self$`solver`
          )
        },
        if (!is.null(self$`fee_reward`)) {
          sprintf(
          '"fee_reward":
            "%s"
                    ',
          self$`fee_reward`
          )
        },
        if (!is.null(self$`objective_value`)) {
          sprintf(
          '"objective_value":
            "%s"
                    ',
          self$`objective_value`
          )
        },
        if (!is.null(self$`utility`)) {
          sprintf(
          '"utility":
            "%s"
                    ',
          self$`utility`
          )
        },
        if (!is.null(self$`trades`)) {
          sprintf(
          '"trades":
             [%s]
          ',
          paste(unlist(lapply(self$`trades`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`create_epoch`)) {
          sprintf(
          '"create_epoch":
            "%s"
                    ',
          self$`create_epoch`
          )
        },
        if (!is.null(self$`revert_epoch`)) {
          sprintf(
          '"revert_epoch":
            "%s"
                    ',
          self$`revert_epoch`
          )
        },
        if (!is.null(self$`tx_hash`)) {
          sprintf(
          '"tx_hash":
            "%s"
                    ',
          self$`tx_hash`
          )
        },
        if (!is.null(self$`tx_log_index`)) {
          sprintf(
          '"tx_log_index":
            "%s"
                    ',
          self$`tx_log_index`
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
    #' Deserialize JSON string into an instance of DexSolutionDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexSolutionDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexSolutionDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`batch` <- this_object$`batch`
      self$`solver` <- this_object$`solver`
      self$`fee_reward` <- this_object$`fee_reward`
      self$`objective_value` <- this_object$`objective_value`
      self$`utility` <- this_object$`utility`
      self$`trades` <- ApiClient$new()$deserializeObj(this_object$`trades`, "array[character]", loadNamespace("openapi"))
      self$`create_epoch` <- this_object$`create_epoch`
      self$`revert_epoch` <- this_object$`revert_epoch`
      self$`tx_hash` <- this_object$`tx_hash`
      self$`tx_log_index` <- this_object$`tx_log_index`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to DexSolutionDTO
    #'
    #' @description
    #' Validate JSON input with respect to DexSolutionDTO and throw an exception if invalid
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
    #' @return String representation of DexSolutionDTO
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
# DexSolutionDTO$unlock()
#
## Below is an example to define the print function
# DexSolutionDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DexSolutionDTO$lock()

