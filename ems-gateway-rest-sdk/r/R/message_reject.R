#' Create a new MessageReject
#'
#' @description
#' MessageReject Class
#'
#' @docType class
#' @title MessageReject
#' @description MessageReject Class
#' @format An \code{R6Class} generator object
#' @field type Message type, constant. character [optional]
#' @field reject_reason  \link{RejectReason} [optional]
#' @field exchange_id If the message related to exchange, then the identifier of the exchange will be provided. character [optional]
#' @field message Message text. character [optional]
#' @field rejected_message Value of rejected request, if available. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessageReject <- R6::R6Class(
  "MessageReject",
  public = list(
    `type` = NULL,
    `reject_reason` = NULL,
    `exchange_id` = NULL,
    `message` = NULL,
    `rejected_message` = NULL,
    #' Initialize a new MessageReject class.
    #'
    #' @description
    #' Initialize a new MessageReject class.
    #'
    #' @param type Message type, constant.
    #' @param reject_reason reject_reason
    #' @param exchange_id If the message related to exchange, then the identifier of the exchange will be provided.
    #' @param message Message text.
    #' @param rejected_message Value of rejected request, if available.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type` = NULL, `reject_reason` = NULL, `exchange_id` = NULL, `message` = NULL, `rejected_message` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`reject_reason`)) {
        stopifnot(R6::is.R6(`reject_reason`))
        self$`reject_reason` <- `reject_reason`
      }
      if (!is.null(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`rejected_message`)) {
        if (!(is.character(`rejected_message`) && length(`rejected_message`) == 1)) {
          stop(paste("Error! Invalid data for `rejected_message`. Must be a string:", `rejected_message`))
        }
        self$`rejected_message` <- `rejected_message`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MessageReject in JSON format
    #' @export
    toJSON = function() {
      MessageRejectObject <- list()
      if (!is.null(self$`type`)) {
        MessageRejectObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`reject_reason`)) {
        MessageRejectObject[["reject_reason"]] <-
          self$`reject_reason`$toJSON()
      }
      if (!is.null(self$`exchange_id`)) {
        MessageRejectObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`message`)) {
        MessageRejectObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`rejected_message`)) {
        MessageRejectObject[["rejected_message"]] <-
          self$`rejected_message`
      }
      MessageRejectObject
    },
    #' Deserialize JSON string into an instance of MessageReject
    #'
    #' @description
    #' Deserialize JSON string into an instance of MessageReject
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageReject
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`reject_reason`)) {
        reject_reason_object <- RejectReason$new()
        reject_reason_object$fromJSON(jsonlite::toJSON(this_object$reject_reason, auto_unbox = TRUE, digits = NA))
        self$`reject_reason` <- reject_reason_object
      }
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`rejected_message`)) {
        self$`rejected_message` <- this_object$`rejected_message`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MessageReject in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`reject_reason`)) {
          sprintf(
          '"reject_reason":
          %s
          ',
          jsonlite::toJSON(self$`reject_reason`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`exchange_id`)) {
          sprintf(
          '"exchange_id":
            "%s"
                    ',
          self$`exchange_id`
          )
        },
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        },
        if (!is.null(self$`rejected_message`)) {
          sprintf(
          '"rejected_message":
            "%s"
                    ',
          self$`rejected_message`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of MessageReject
    #'
    #' @description
    #' Deserialize JSON string into an instance of MessageReject
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageReject
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`reject_reason` <- RejectReason$new()$fromJSON(jsonlite::toJSON(this_object$reject_reason, auto_unbox = TRUE, digits = NA))
      self$`exchange_id` <- this_object$`exchange_id`
      self$`message` <- this_object$`message`
      self$`rejected_message` <- this_object$`rejected_message`
      self
    },
    #' Validate JSON input with respect to MessageReject
    #'
    #' @description
    #' Validate JSON input with respect to MessageReject and throw an exception if invalid
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
    #' @return String representation of MessageReject
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
# MessageReject$unlock()
#
## Below is an example to define the print fnuction
# MessageReject$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MessageReject$lock()

