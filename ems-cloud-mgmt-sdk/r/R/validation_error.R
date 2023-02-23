#' Create a new ValidationError
#'
#' @description
#' ValidationError Class
#'
#' @docType class
#' @title ValidationError
#' @description ValidationError Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field title  character [optional]
#' @field status  numeric [optional]
#' @field traceId  character [optional]
#' @field errors  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ValidationError <- R6::R6Class(
  "ValidationError",
  public = list(
    `type` = NULL,
    `title` = NULL,
    `status` = NULL,
    `traceId` = NULL,
    `errors` = NULL,
    #' Initialize a new ValidationError class.
    #'
    #' @description
    #' Initialize a new ValidationError class.
    #'
    #' @param type type
    #' @param title title
    #' @param status status
    #' @param traceId traceId
    #' @param errors errors
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type` = NULL, `title` = NULL, `status` = NULL, `traceId` = NULL, `errors` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`status`)) {
        self$`status` <- `status`
      }
      if (!is.null(`traceId`)) {
        if (!(is.character(`traceId`) && length(`traceId`) == 1)) {
          stop(paste("Error! Invalid data for `traceId`. Must be a string:", `traceId`))
        }
        self$`traceId` <- `traceId`
      }
      if (!is.null(`errors`)) {
        if (!(is.character(`errors`) && length(`errors`) == 1)) {
          stop(paste("Error! Invalid data for `errors`. Must be a string:", `errors`))
        }
        self$`errors` <- `errors`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ValidationError in JSON format
    #' @export
    toJSON = function() {
      ValidationErrorObject <- list()
      if (!is.null(self$`type`)) {
        ValidationErrorObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`title`)) {
        ValidationErrorObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`status`)) {
        ValidationErrorObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`traceId`)) {
        ValidationErrorObject[["traceId"]] <-
          self$`traceId`
      }
      if (!is.null(self$`errors`)) {
        ValidationErrorObject[["errors"]] <-
          self$`errors`
      }
      ValidationErrorObject
    },
    #' Deserialize JSON string into an instance of ValidationError
    #'
    #' @description
    #' Deserialize JSON string into an instance of ValidationError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ValidationError
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`traceId`)) {
        self$`traceId` <- this_object$`traceId`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- this_object$`errors`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ValidationError in JSON format
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
        if (!is.null(self$`title`)) {
          sprintf(
          '"title":
            "%s"
                    ',
          self$`title`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            %d
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`traceId`)) {
          sprintf(
          '"traceId":
            "%s"
                    ',
          self$`traceId`
          )
        },
        if (!is.null(self$`errors`)) {
          sprintf(
          '"errors":
            "%s"
                    ',
          self$`errors`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ValidationError
    #'
    #' @description
    #' Deserialize JSON string into an instance of ValidationError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ValidationError
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`title` <- this_object$`title`
      self$`status` <- this_object$`status`
      self$`traceId` <- this_object$`traceId`
      self$`errors` <- this_object$`errors`
      self
    },
    #' Validate JSON input with respect to ValidationError
    #'
    #' @description
    #' Validate JSON input with respect to ValidationError and throw an exception if invalid
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
    #' @return String representation of ValidationError
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
# ValidationError$unlock()
#
## Below is an example to define the print fnuction
# ValidationError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ValidationError$lock()

