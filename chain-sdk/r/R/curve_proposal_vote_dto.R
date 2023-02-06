#' Create a new CurveProposalVoteDTO
#'
#' @description
#' CurveProposalVoteDTO Class
#'
#' @docType class
#' @title CurveProposalVoteDTO
#' @description CurveProposalVoteDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field proposal  character [optional]
#' @field supports  character [optional]
#' @field stake  character [optional]
#' @field voter  character [optional]
#' @field created  character [optional]
#' @field created_at_block  character [optional]
#' @field created_at_transaction  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveProposalVoteDTO <- R6::R6Class(
  "CurveProposalVoteDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `proposal` = NULL,
    `supports` = NULL,
    `stake` = NULL,
    `voter` = NULL,
    `created` = NULL,
    `created_at_block` = NULL,
    `created_at_transaction` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveProposalVoteDTO class.
    #'
    #' @description
    #' Initialize a new CurveProposalVoteDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param proposal 
    #' @param supports 
    #' @param stake 
    #' @param voter 
    #' @param created 
    #' @param created_at_block 
    #' @param created_at_transaction 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `proposal` = NULL, `supports` = NULL, `stake` = NULL, `voter` = NULL, `created` = NULL, `created_at_block` = NULL, `created_at_transaction` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`proposal`)) {
        if (!(is.character(`proposal`) && length(`proposal`) == 1)) {
          stop(paste("Error! Invalid data for `proposal`. Must be a string:", `proposal`))
        }
        self$`proposal` <- `proposal`
      }
      if (!is.null(`supports`)) {
        if (!(is.logical(`supports`) && length(`supports`) == 1)) {
          stop(paste("Error! Invalid data for `supports`. Must be a boolean:", `supports`))
        }
        self$`supports` <- `supports`
      }
      if (!is.null(`stake`)) {
        if (!(is.character(`stake`) && length(`stake`) == 1)) {
          stop(paste("Error! Invalid data for `stake`. Must be a string:", `stake`))
        }
        self$`stake` <- `stake`
      }
      if (!is.null(`voter`)) {
        if (!(is.character(`voter`) && length(`voter`) == 1)) {
          stop(paste("Error! Invalid data for `voter`. Must be a string:", `voter`))
        }
        self$`voter` <- `voter`
      }
      if (!is.null(`created`)) {
        if (!(is.character(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be a string:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`created_at_block`)) {
        if (!(is.character(`created_at_block`) && length(`created_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `created_at_block`. Must be a string:", `created_at_block`))
        }
        self$`created_at_block` <- `created_at_block`
      }
      if (!is.null(`created_at_transaction`)) {
        if (!(is.character(`created_at_transaction`) && length(`created_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `created_at_transaction`. Must be a string:", `created_at_transaction`))
        }
        self$`created_at_transaction` <- `created_at_transaction`
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
    #' @return CurveProposalVoteDTO in JSON format
    #' @export
    toJSON = function() {
      CurveProposalVoteDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveProposalVoteDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveProposalVoteDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveProposalVoteDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveProposalVoteDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`proposal`)) {
        CurveProposalVoteDTOObject[["proposal"]] <-
          self$`proposal`
      }
      if (!is.null(self$`supports`)) {
        CurveProposalVoteDTOObject[["supports"]] <-
          self$`supports`
      }
      if (!is.null(self$`stake`)) {
        CurveProposalVoteDTOObject[["stake"]] <-
          self$`stake`
      }
      if (!is.null(self$`voter`)) {
        CurveProposalVoteDTOObject[["voter"]] <-
          self$`voter`
      }
      if (!is.null(self$`created`)) {
        CurveProposalVoteDTOObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`created_at_block`)) {
        CurveProposalVoteDTOObject[["created_at_block"]] <-
          self$`created_at_block`
      }
      if (!is.null(self$`created_at_transaction`)) {
        CurveProposalVoteDTOObject[["created_at_transaction"]] <-
          self$`created_at_transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveProposalVoteDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveProposalVoteDTOObject
    },
    #' Deserialize JSON string into an instance of CurveProposalVoteDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveProposalVoteDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveProposalVoteDTO
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
      if (!is.null(this_object$`proposal`)) {
        self$`proposal` <- this_object$`proposal`
      }
      if (!is.null(this_object$`supports`)) {
        self$`supports` <- this_object$`supports`
      }
      if (!is.null(this_object$`stake`)) {
        self$`stake` <- this_object$`stake`
      }
      if (!is.null(this_object$`voter`)) {
        self$`voter` <- this_object$`voter`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`created_at_block`)) {
        self$`created_at_block` <- this_object$`created_at_block`
      }
      if (!is.null(this_object$`created_at_transaction`)) {
        self$`created_at_transaction` <- this_object$`created_at_transaction`
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
    #' @return CurveProposalVoteDTO in JSON format
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
        if (!is.null(self$`proposal`)) {
          sprintf(
          '"proposal":
            "%s"
                    ',
          self$`proposal`
          )
        },
        if (!is.null(self$`supports`)) {
          sprintf(
          '"supports":
            %s
                    ',
          tolower(self$`supports`)
          )
        },
        if (!is.null(self$`stake`)) {
          sprintf(
          '"stake":
            "%s"
                    ',
          self$`stake`
          )
        },
        if (!is.null(self$`voter`)) {
          sprintf(
          '"voter":
            "%s"
                    ',
          self$`voter`
          )
        },
        if (!is.null(self$`created`)) {
          sprintf(
          '"created":
            "%s"
                    ',
          self$`created`
          )
        },
        if (!is.null(self$`created_at_block`)) {
          sprintf(
          '"created_at_block":
            "%s"
                    ',
          self$`created_at_block`
          )
        },
        if (!is.null(self$`created_at_transaction`)) {
          sprintf(
          '"created_at_transaction":
            "%s"
                    ',
          self$`created_at_transaction`
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
    #' Deserialize JSON string into an instance of CurveProposalVoteDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveProposalVoteDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveProposalVoteDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`proposal` <- this_object$`proposal`
      self$`supports` <- this_object$`supports`
      self$`stake` <- this_object$`stake`
      self$`voter` <- this_object$`voter`
      self$`created` <- this_object$`created`
      self$`created_at_block` <- this_object$`created_at_block`
      self$`created_at_transaction` <- this_object$`created_at_transaction`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveProposalVoteDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveProposalVoteDTO and throw an exception if invalid
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
    #' @return String representation of CurveProposalVoteDTO
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
# CurveProposalVoteDTO$unlock()
#
## Below is an example to define the print function
# CurveProposalVoteDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveProposalVoteDTO$lock()

