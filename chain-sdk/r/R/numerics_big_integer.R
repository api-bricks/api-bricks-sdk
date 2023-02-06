#' Create a new NumericsBigInteger
#'
#' @description
#' NumericsBigInteger Class
#'
#' @docType class
#' @title NumericsBigInteger
#' @description NumericsBigInteger Class
#' @format An \code{R6Class} generator object
#' @field is_power_of_two  character [optional]
#' @field is_zero  character [optional]
#' @field is_one  character [optional]
#' @field is_even  character [optional]
#' @field sign  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NumericsBigInteger <- R6::R6Class(
  "NumericsBigInteger",
  public = list(
    `is_power_of_two` = NULL,
    `is_zero` = NULL,
    `is_one` = NULL,
    `is_even` = NULL,
    `sign` = NULL,
    #' Initialize a new NumericsBigInteger class.
    #'
    #' @description
    #' Initialize a new NumericsBigInteger class.
    #'
    #' @param is_power_of_two is_power_of_two
    #' @param is_zero is_zero
    #' @param is_one is_one
    #' @param is_even is_even
    #' @param sign sign
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`is_power_of_two` = NULL, `is_zero` = NULL, `is_one` = NULL, `is_even` = NULL, `sign` = NULL, ...) {
      if (!is.null(`is_power_of_two`)) {
        if (!(is.logical(`is_power_of_two`) && length(`is_power_of_two`) == 1)) {
          stop(paste("Error! Invalid data for `is_power_of_two`. Must be a boolean:", `is_power_of_two`))
        }
        self$`is_power_of_two` <- `is_power_of_two`
      }
      if (!is.null(`is_zero`)) {
        if (!(is.logical(`is_zero`) && length(`is_zero`) == 1)) {
          stop(paste("Error! Invalid data for `is_zero`. Must be a boolean:", `is_zero`))
        }
        self$`is_zero` <- `is_zero`
      }
      if (!is.null(`is_one`)) {
        if (!(is.logical(`is_one`) && length(`is_one`) == 1)) {
          stop(paste("Error! Invalid data for `is_one`. Must be a boolean:", `is_one`))
        }
        self$`is_one` <- `is_one`
      }
      if (!is.null(`is_even`)) {
        if (!(is.logical(`is_even`) && length(`is_even`) == 1)) {
          stop(paste("Error! Invalid data for `is_even`. Must be a boolean:", `is_even`))
        }
        self$`is_even` <- `is_even`
      }
      if (!is.null(`sign`)) {
        if (!(is.numeric(`sign`) && length(`sign`) == 1)) {
          stop(paste("Error! Invalid data for `sign`. Must be an integer:", `sign`))
        }
        self$`sign` <- `sign`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return NumericsBigInteger in JSON format
    #' @export
    toJSON = function() {
      NumericsBigIntegerObject <- list()
      if (!is.null(self$`is_power_of_two`)) {
        NumericsBigIntegerObject[["is_power_of_two"]] <-
          self$`is_power_of_two`
      }
      if (!is.null(self$`is_zero`)) {
        NumericsBigIntegerObject[["is_zero"]] <-
          self$`is_zero`
      }
      if (!is.null(self$`is_one`)) {
        NumericsBigIntegerObject[["is_one"]] <-
          self$`is_one`
      }
      if (!is.null(self$`is_even`)) {
        NumericsBigIntegerObject[["is_even"]] <-
          self$`is_even`
      }
      if (!is.null(self$`sign`)) {
        NumericsBigIntegerObject[["sign"]] <-
          self$`sign`
      }
      NumericsBigIntegerObject
    },
    #' Deserialize JSON string into an instance of NumericsBigInteger
    #'
    #' @description
    #' Deserialize JSON string into an instance of NumericsBigInteger
    #'
    #' @param input_json the JSON input
    #' @return the instance of NumericsBigInteger
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`is_power_of_two`)) {
        self$`is_power_of_two` <- this_object$`is_power_of_two`
      }
      if (!is.null(this_object$`is_zero`)) {
        self$`is_zero` <- this_object$`is_zero`
      }
      if (!is.null(this_object$`is_one`)) {
        self$`is_one` <- this_object$`is_one`
      }
      if (!is.null(this_object$`is_even`)) {
        self$`is_even` <- this_object$`is_even`
      }
      if (!is.null(this_object$`sign`)) {
        self$`sign` <- this_object$`sign`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return NumericsBigInteger in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`is_power_of_two`)) {
          sprintf(
          '"is_power_of_two":
            %s
                    ',
          tolower(self$`is_power_of_two`)
          )
        },
        if (!is.null(self$`is_zero`)) {
          sprintf(
          '"is_zero":
            %s
                    ',
          tolower(self$`is_zero`)
          )
        },
        if (!is.null(self$`is_one`)) {
          sprintf(
          '"is_one":
            %s
                    ',
          tolower(self$`is_one`)
          )
        },
        if (!is.null(self$`is_even`)) {
          sprintf(
          '"is_even":
            %s
                    ',
          tolower(self$`is_even`)
          )
        },
        if (!is.null(self$`sign`)) {
          sprintf(
          '"sign":
            %d
                    ',
          self$`sign`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of NumericsBigInteger
    #'
    #' @description
    #' Deserialize JSON string into an instance of NumericsBigInteger
    #'
    #' @param input_json the JSON input
    #' @return the instance of NumericsBigInteger
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`is_power_of_two` <- this_object$`is_power_of_two`
      self$`is_zero` <- this_object$`is_zero`
      self$`is_one` <- this_object$`is_one`
      self$`is_even` <- this_object$`is_even`
      self$`sign` <- this_object$`sign`
      self
    },
    #' Validate JSON input with respect to NumericsBigInteger
    #'
    #' @description
    #' Validate JSON input with respect to NumericsBigInteger and throw an exception if invalid
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
    #' @return String representation of NumericsBigInteger
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
# NumericsBigInteger$unlock()
#
## Below is an example to define the print function
# NumericsBigInteger$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NumericsBigInteger$lock()

