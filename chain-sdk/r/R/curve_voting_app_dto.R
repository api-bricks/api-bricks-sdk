#' Create a new CurveVotingAppDTO
#'
#' @description
#' CurveVotingAppDTO Class
#'
#' @docType class
#' @title CurveVotingAppDTO
#' @description CurveVotingAppDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id App address. character [optional]
#' @field address  character [optional]
#' @field codename  character [optional]
#' @field minimum_balance Minimum balance needed to create a proposal. character [optional]
#' @field minimum_quorum Percentage of positive votes in total possible votes for a proposal to be accepted. character [optional]
#' @field minimum_time Minimum time needed to pass between user's previous proposal and a user creating a new proposal. character [optional]
#' @field required_support Percentage of positive votes needed for a proposal to be accepted. character [optional]
#' @field vote_time Seconds that a proposal will be open for vote (unless enough votes have been cast to make an early decision). character [optional]
#' @field proposal_count Number of proposals created with this app. character [optional]
#' @field vote_count Number of votes received by all the proposals created with this app. character [optional]
#' @field token Address of the token used for voting. character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveVotingAppDTO <- R6::R6Class(
  "CurveVotingAppDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `address` = NULL,
    `codename` = NULL,
    `minimum_balance` = NULL,
    `minimum_quorum` = NULL,
    `minimum_time` = NULL,
    `required_support` = NULL,
    `vote_time` = NULL,
    `proposal_count` = NULL,
    `vote_count` = NULL,
    `token` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveVotingAppDTO class.
    #'
    #' @description
    #' Initialize a new CurveVotingAppDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id App address.
    #' @param address 
    #' @param codename 
    #' @param minimum_balance Minimum balance needed to create a proposal.
    #' @param minimum_quorum Percentage of positive votes in total possible votes for a proposal to be accepted.
    #' @param minimum_time Minimum time needed to pass between user's previous proposal and a user creating a new proposal.
    #' @param required_support Percentage of positive votes needed for a proposal to be accepted.
    #' @param vote_time Seconds that a proposal will be open for vote (unless enough votes have been cast to make an early decision).
    #' @param proposal_count Number of proposals created with this app.
    #' @param vote_count Number of votes received by all the proposals created with this app.
    #' @param token Address of the token used for voting.
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `address` = NULL, `codename` = NULL, `minimum_balance` = NULL, `minimum_quorum` = NULL, `minimum_time` = NULL, `required_support` = NULL, `vote_time` = NULL, `proposal_count` = NULL, `vote_count` = NULL, `token` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`codename`)) {
        if (!(is.character(`codename`) && length(`codename`) == 1)) {
          stop(paste("Error! Invalid data for `codename`. Must be a string:", `codename`))
        }
        self$`codename` <- `codename`
      }
      if (!is.null(`minimum_balance`)) {
        if (!(is.character(`minimum_balance`) && length(`minimum_balance`) == 1)) {
          stop(paste("Error! Invalid data for `minimum_balance`. Must be a string:", `minimum_balance`))
        }
        self$`minimum_balance` <- `minimum_balance`
      }
      if (!is.null(`minimum_quorum`)) {
        if (!(is.character(`minimum_quorum`) && length(`minimum_quorum`) == 1)) {
          stop(paste("Error! Invalid data for `minimum_quorum`. Must be a string:", `minimum_quorum`))
        }
        self$`minimum_quorum` <- `minimum_quorum`
      }
      if (!is.null(`minimum_time`)) {
        if (!(is.character(`minimum_time`) && length(`minimum_time`) == 1)) {
          stop(paste("Error! Invalid data for `minimum_time`. Must be a string:", `minimum_time`))
        }
        self$`minimum_time` <- `minimum_time`
      }
      if (!is.null(`required_support`)) {
        if (!(is.character(`required_support`) && length(`required_support`) == 1)) {
          stop(paste("Error! Invalid data for `required_support`. Must be a string:", `required_support`))
        }
        self$`required_support` <- `required_support`
      }
      if (!is.null(`vote_time`)) {
        if (!(is.character(`vote_time`) && length(`vote_time`) == 1)) {
          stop(paste("Error! Invalid data for `vote_time`. Must be a string:", `vote_time`))
        }
        self$`vote_time` <- `vote_time`
      }
      if (!is.null(`proposal_count`)) {
        if (!(is.character(`proposal_count`) && length(`proposal_count`) == 1)) {
          stop(paste("Error! Invalid data for `proposal_count`. Must be a string:", `proposal_count`))
        }
        self$`proposal_count` <- `proposal_count`
      }
      if (!is.null(`vote_count`)) {
        if (!(is.character(`vote_count`) && length(`vote_count`) == 1)) {
          stop(paste("Error! Invalid data for `vote_count`. Must be a string:", `vote_count`))
        }
        self$`vote_count` <- `vote_count`
      }
      if (!is.null(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
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
    #' @return CurveVotingAppDTO in JSON format
    #' @export
    toJSON = function() {
      CurveVotingAppDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveVotingAppDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveVotingAppDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveVotingAppDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveVotingAppDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`address`)) {
        CurveVotingAppDTOObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`codename`)) {
        CurveVotingAppDTOObject[["codename"]] <-
          self$`codename`
      }
      if (!is.null(self$`minimum_balance`)) {
        CurveVotingAppDTOObject[["minimum_balance"]] <-
          self$`minimum_balance`
      }
      if (!is.null(self$`minimum_quorum`)) {
        CurveVotingAppDTOObject[["minimum_quorum"]] <-
          self$`minimum_quorum`
      }
      if (!is.null(self$`minimum_time`)) {
        CurveVotingAppDTOObject[["minimum_time"]] <-
          self$`minimum_time`
      }
      if (!is.null(self$`required_support`)) {
        CurveVotingAppDTOObject[["required_support"]] <-
          self$`required_support`
      }
      if (!is.null(self$`vote_time`)) {
        CurveVotingAppDTOObject[["vote_time"]] <-
          self$`vote_time`
      }
      if (!is.null(self$`proposal_count`)) {
        CurveVotingAppDTOObject[["proposal_count"]] <-
          self$`proposal_count`
      }
      if (!is.null(self$`vote_count`)) {
        CurveVotingAppDTOObject[["vote_count"]] <-
          self$`vote_count`
      }
      if (!is.null(self$`token`)) {
        CurveVotingAppDTOObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`vid`)) {
        CurveVotingAppDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveVotingAppDTOObject
    },
    #' Deserialize JSON string into an instance of CurveVotingAppDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveVotingAppDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveVotingAppDTO
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
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`codename`)) {
        self$`codename` <- this_object$`codename`
      }
      if (!is.null(this_object$`minimum_balance`)) {
        self$`minimum_balance` <- this_object$`minimum_balance`
      }
      if (!is.null(this_object$`minimum_quorum`)) {
        self$`minimum_quorum` <- this_object$`minimum_quorum`
      }
      if (!is.null(this_object$`minimum_time`)) {
        self$`minimum_time` <- this_object$`minimum_time`
      }
      if (!is.null(this_object$`required_support`)) {
        self$`required_support` <- this_object$`required_support`
      }
      if (!is.null(this_object$`vote_time`)) {
        self$`vote_time` <- this_object$`vote_time`
      }
      if (!is.null(this_object$`proposal_count`)) {
        self$`proposal_count` <- this_object$`proposal_count`
      }
      if (!is.null(this_object$`vote_count`)) {
        self$`vote_count` <- this_object$`vote_count`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
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
    #' @return CurveVotingAppDTO in JSON format
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
        if (!is.null(self$`address`)) {
          sprintf(
          '"address":
            "%s"
                    ',
          self$`address`
          )
        },
        if (!is.null(self$`codename`)) {
          sprintf(
          '"codename":
            "%s"
                    ',
          self$`codename`
          )
        },
        if (!is.null(self$`minimum_balance`)) {
          sprintf(
          '"minimum_balance":
            "%s"
                    ',
          self$`minimum_balance`
          )
        },
        if (!is.null(self$`minimum_quorum`)) {
          sprintf(
          '"minimum_quorum":
            "%s"
                    ',
          self$`minimum_quorum`
          )
        },
        if (!is.null(self$`minimum_time`)) {
          sprintf(
          '"minimum_time":
            "%s"
                    ',
          self$`minimum_time`
          )
        },
        if (!is.null(self$`required_support`)) {
          sprintf(
          '"required_support":
            "%s"
                    ',
          self$`required_support`
          )
        },
        if (!is.null(self$`vote_time`)) {
          sprintf(
          '"vote_time":
            "%s"
                    ',
          self$`vote_time`
          )
        },
        if (!is.null(self$`proposal_count`)) {
          sprintf(
          '"proposal_count":
            "%s"
                    ',
          self$`proposal_count`
          )
        },
        if (!is.null(self$`vote_count`)) {
          sprintf(
          '"vote_count":
            "%s"
                    ',
          self$`vote_count`
          )
        },
        if (!is.null(self$`token`)) {
          sprintf(
          '"token":
            "%s"
                    ',
          self$`token`
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
    #' Deserialize JSON string into an instance of CurveVotingAppDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveVotingAppDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveVotingAppDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`address` <- this_object$`address`
      self$`codename` <- this_object$`codename`
      self$`minimum_balance` <- this_object$`minimum_balance`
      self$`minimum_quorum` <- this_object$`minimum_quorum`
      self$`minimum_time` <- this_object$`minimum_time`
      self$`required_support` <- this_object$`required_support`
      self$`vote_time` <- this_object$`vote_time`
      self$`proposal_count` <- this_object$`proposal_count`
      self$`vote_count` <- this_object$`vote_count`
      self$`token` <- this_object$`token`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveVotingAppDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveVotingAppDTO and throw an exception if invalid
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
    #' @return String representation of CurveVotingAppDTO
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
# CurveVotingAppDTO$unlock()
#
## Below is an example to define the print function
# CurveVotingAppDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveVotingAppDTO$lock()

