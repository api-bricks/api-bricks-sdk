#' Create a new DexStatsDTO
#'
#' @description
#' A type collecting global stats about this instance of Gnosis Protocol.
#'
#' @docType class
#' @title DexStatsDTO
#' @description DexStatsDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field volume_in_owl The total volume denominated in OWL (all sell amounts combined). character [optional]
#' @field utility_in_owl The total trader surplus in OWL. character [optional]
#' @field owl_burnt The total amount of OWL burnt (equivalent to fees rewarded to solvers). character [optional]
#' @field settled_batch_count The total number of settled batches. integer [optional]
#' @field settled_trade_count The total number of settled trades. integer [optional]
#' @field listed_tokens The number of listed tokens. integer [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DexStatsDTO <- R6::R6Class(
  "DexStatsDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `volume_in_owl` = NULL,
    `utility_in_owl` = NULL,
    `owl_burnt` = NULL,
    `settled_batch_count` = NULL,
    `settled_trade_count` = NULL,
    `listed_tokens` = NULL,
    `vid` = NULL,
    #' Initialize a new DexStatsDTO class.
    #'
    #' @description
    #' Initialize a new DexStatsDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param volume_in_owl The total volume denominated in OWL (all sell amounts combined).
    #' @param utility_in_owl The total trader surplus in OWL.
    #' @param owl_burnt The total amount of OWL burnt (equivalent to fees rewarded to solvers).
    #' @param settled_batch_count The total number of settled batches.
    #' @param settled_trade_count The total number of settled trades.
    #' @param listed_tokens The number of listed tokens.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `volume_in_owl` = NULL, `utility_in_owl` = NULL, `owl_burnt` = NULL, `settled_batch_count` = NULL, `settled_trade_count` = NULL, `listed_tokens` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`volume_in_owl`)) {
        if (!(is.character(`volume_in_owl`) && length(`volume_in_owl`) == 1)) {
          stop(paste("Error! Invalid data for `volume_in_owl`. Must be a string:", `volume_in_owl`))
        }
        self$`volume_in_owl` <- `volume_in_owl`
      }
      if (!is.null(`utility_in_owl`)) {
        if (!(is.character(`utility_in_owl`) && length(`utility_in_owl`) == 1)) {
          stop(paste("Error! Invalid data for `utility_in_owl`. Must be a string:", `utility_in_owl`))
        }
        self$`utility_in_owl` <- `utility_in_owl`
      }
      if (!is.null(`owl_burnt`)) {
        if (!(is.character(`owl_burnt`) && length(`owl_burnt`) == 1)) {
          stop(paste("Error! Invalid data for `owl_burnt`. Must be a string:", `owl_burnt`))
        }
        self$`owl_burnt` <- `owl_burnt`
      }
      if (!is.null(`settled_batch_count`)) {
        if (!(is.numeric(`settled_batch_count`) && length(`settled_batch_count`) == 1)) {
          stop(paste("Error! Invalid data for `settled_batch_count`. Must be an integer:", `settled_batch_count`))
        }
        self$`settled_batch_count` <- `settled_batch_count`
      }
      if (!is.null(`settled_trade_count`)) {
        if (!(is.numeric(`settled_trade_count`) && length(`settled_trade_count`) == 1)) {
          stop(paste("Error! Invalid data for `settled_trade_count`. Must be an integer:", `settled_trade_count`))
        }
        self$`settled_trade_count` <- `settled_trade_count`
      }
      if (!is.null(`listed_tokens`)) {
        if (!(is.numeric(`listed_tokens`) && length(`listed_tokens`) == 1)) {
          stop(paste("Error! Invalid data for `listed_tokens`. Must be an integer:", `listed_tokens`))
        }
        self$`listed_tokens` <- `listed_tokens`
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
    #' @return DexStatsDTO in JSON format
    #' @export
    toJSON = function() {
      DexStatsDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        DexStatsDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        DexStatsDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        DexStatsDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        DexStatsDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`volume_in_owl`)) {
        DexStatsDTOObject[["volume_in_owl"]] <-
          self$`volume_in_owl`
      }
      if (!is.null(self$`utility_in_owl`)) {
        DexStatsDTOObject[["utility_in_owl"]] <-
          self$`utility_in_owl`
      }
      if (!is.null(self$`owl_burnt`)) {
        DexStatsDTOObject[["owl_burnt"]] <-
          self$`owl_burnt`
      }
      if (!is.null(self$`settled_batch_count`)) {
        DexStatsDTOObject[["settled_batch_count"]] <-
          self$`settled_batch_count`
      }
      if (!is.null(self$`settled_trade_count`)) {
        DexStatsDTOObject[["settled_trade_count"]] <-
          self$`settled_trade_count`
      }
      if (!is.null(self$`listed_tokens`)) {
        DexStatsDTOObject[["listed_tokens"]] <-
          self$`listed_tokens`
      }
      if (!is.null(self$`vid`)) {
        DexStatsDTOObject[["vid"]] <-
          self$`vid`
      }
      DexStatsDTOObject
    },
    #' Deserialize JSON string into an instance of DexStatsDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexStatsDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexStatsDTO
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
      if (!is.null(this_object$`volume_in_owl`)) {
        self$`volume_in_owl` <- this_object$`volume_in_owl`
      }
      if (!is.null(this_object$`utility_in_owl`)) {
        self$`utility_in_owl` <- this_object$`utility_in_owl`
      }
      if (!is.null(this_object$`owl_burnt`)) {
        self$`owl_burnt` <- this_object$`owl_burnt`
      }
      if (!is.null(this_object$`settled_batch_count`)) {
        self$`settled_batch_count` <- this_object$`settled_batch_count`
      }
      if (!is.null(this_object$`settled_trade_count`)) {
        self$`settled_trade_count` <- this_object$`settled_trade_count`
      }
      if (!is.null(this_object$`listed_tokens`)) {
        self$`listed_tokens` <- this_object$`listed_tokens`
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
    #' @return DexStatsDTO in JSON format
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
        if (!is.null(self$`volume_in_owl`)) {
          sprintf(
          '"volume_in_owl":
            "%s"
                    ',
          self$`volume_in_owl`
          )
        },
        if (!is.null(self$`utility_in_owl`)) {
          sprintf(
          '"utility_in_owl":
            "%s"
                    ',
          self$`utility_in_owl`
          )
        },
        if (!is.null(self$`owl_burnt`)) {
          sprintf(
          '"owl_burnt":
            "%s"
                    ',
          self$`owl_burnt`
          )
        },
        if (!is.null(self$`settled_batch_count`)) {
          sprintf(
          '"settled_batch_count":
            %d
                    ',
          self$`settled_batch_count`
          )
        },
        if (!is.null(self$`settled_trade_count`)) {
          sprintf(
          '"settled_trade_count":
            %d
                    ',
          self$`settled_trade_count`
          )
        },
        if (!is.null(self$`listed_tokens`)) {
          sprintf(
          '"listed_tokens":
            %d
                    ',
          self$`listed_tokens`
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
    #' Deserialize JSON string into an instance of DexStatsDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of DexStatsDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of DexStatsDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`volume_in_owl` <- this_object$`volume_in_owl`
      self$`utility_in_owl` <- this_object$`utility_in_owl`
      self$`owl_burnt` <- this_object$`owl_burnt`
      self$`settled_batch_count` <- this_object$`settled_batch_count`
      self$`settled_trade_count` <- this_object$`settled_trade_count`
      self$`listed_tokens` <- this_object$`listed_tokens`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to DexStatsDTO
    #'
    #' @description
    #' Validate JSON input with respect to DexStatsDTO and throw an exception if invalid
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
    #' @return String representation of DexStatsDTO
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
# DexStatsDTO$unlock()
#
## Below is an example to define the print function
# DexStatsDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DexStatsDTO$lock()

