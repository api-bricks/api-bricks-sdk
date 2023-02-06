#' Create a new CurveGaugeTotalWeightDTO
#'
#' @description
#' CurveGaugeTotalWeightDTO Class
#'
#' @docType class
#' @title CurveGaugeTotalWeightDTO
#' @description CurveGaugeTotalWeightDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field time  character [optional]
#' @field weight  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveGaugeTotalWeightDTO <- R6::R6Class(
  "CurveGaugeTotalWeightDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `time` = NULL,
    `weight` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveGaugeTotalWeightDTO class.
    #'
    #' @description
    #' Initialize a new CurveGaugeTotalWeightDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param time 
    #' @param weight 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `time` = NULL, `weight` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`time`)) {
        if (!(is.character(`time`) && length(`time`) == 1)) {
          stop(paste("Error! Invalid data for `time`. Must be a string:", `time`))
        }
        self$`time` <- `time`
      }
      if (!is.null(`weight`)) {
        if (!(is.character(`weight`) && length(`weight`) == 1)) {
          stop(paste("Error! Invalid data for `weight`. Must be a string:", `weight`))
        }
        self$`weight` <- `weight`
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
    #' @return CurveGaugeTotalWeightDTO in JSON format
    #' @export
    toJSON = function() {
      CurveGaugeTotalWeightDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveGaugeTotalWeightDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveGaugeTotalWeightDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveGaugeTotalWeightDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveGaugeTotalWeightDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`time`)) {
        CurveGaugeTotalWeightDTOObject[["time"]] <-
          self$`time`
      }
      if (!is.null(self$`weight`)) {
        CurveGaugeTotalWeightDTOObject[["weight"]] <-
          self$`weight`
      }
      if (!is.null(self$`vid`)) {
        CurveGaugeTotalWeightDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveGaugeTotalWeightDTOObject
    },
    #' Deserialize JSON string into an instance of CurveGaugeTotalWeightDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveGaugeTotalWeightDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveGaugeTotalWeightDTO
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
      if (!is.null(this_object$`time`)) {
        self$`time` <- this_object$`time`
      }
      if (!is.null(this_object$`weight`)) {
        self$`weight` <- this_object$`weight`
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
    #' @return CurveGaugeTotalWeightDTO in JSON format
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
        if (!is.null(self$`time`)) {
          sprintf(
          '"time":
            "%s"
                    ',
          self$`time`
          )
        },
        if (!is.null(self$`weight`)) {
          sprintf(
          '"weight":
            "%s"
                    ',
          self$`weight`
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
    #' Deserialize JSON string into an instance of CurveGaugeTotalWeightDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveGaugeTotalWeightDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveGaugeTotalWeightDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`time` <- this_object$`time`
      self$`weight` <- this_object$`weight`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveGaugeTotalWeightDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveGaugeTotalWeightDTO and throw an exception if invalid
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
    #' @return String representation of CurveGaugeTotalWeightDTO
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
# CurveGaugeTotalWeightDTO$unlock()
#
## Below is an example to define the print function
# CurveGaugeTotalWeightDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveGaugeTotalWeightDTO$lock()

