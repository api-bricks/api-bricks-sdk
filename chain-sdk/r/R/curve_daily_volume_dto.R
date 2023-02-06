#' Create a new CurveDailyVolumeDTO
#'
#' @description
#' CurveDailyVolumeDTO Class
#'
#' @docType class
#' @title CurveDailyVolumeDTO
#' @description CurveDailyVolumeDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field pool  character [optional]
#' @field timestamp  character [optional]
#' @field volume  character [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveDailyVolumeDTO <- R6::R6Class(
  "CurveDailyVolumeDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `pool` = NULL,
    `timestamp` = NULL,
    `volume` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    #' Initialize a new CurveDailyVolumeDTO class.
    #'
    #' @description
    #' Initialize a new CurveDailyVolumeDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param pool 
    #' @param timestamp 
    #' @param volume 
    #' @param vid 
    #' @param block_range 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `pool` = NULL, `timestamp` = NULL, `volume` = NULL, `vid` = NULL, `block_range` = NULL, ...) {
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
      if (!is.null(`pool`)) {
        if (!(is.character(`pool`) && length(`pool`) == 1)) {
          stop(paste("Error! Invalid data for `pool`. Must be a string:", `pool`))
        }
        self$`pool` <- `pool`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.character(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`volume`)) {
        if (!(is.character(`volume`) && length(`volume`) == 1)) {
          stop(paste("Error! Invalid data for `volume`. Must be a string:", `volume`))
        }
        self$`volume` <- `volume`
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CurveDailyVolumeDTO in JSON format
    #' @export
    toJSON = function() {
      CurveDailyVolumeDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveDailyVolumeDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveDailyVolumeDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveDailyVolumeDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveDailyVolumeDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`pool`)) {
        CurveDailyVolumeDTOObject[["pool"]] <-
          self$`pool`
      }
      if (!is.null(self$`timestamp`)) {
        CurveDailyVolumeDTOObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`volume`)) {
        CurveDailyVolumeDTOObject[["volume"]] <-
          self$`volume`
      }
      if (!is.null(self$`vid`)) {
        CurveDailyVolumeDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        CurveDailyVolumeDTOObject[["block_range"]] <-
          self$`block_range`
      }
      CurveDailyVolumeDTOObject
    },
    #' Deserialize JSON string into an instance of CurveDailyVolumeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveDailyVolumeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveDailyVolumeDTO
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
      if (!is.null(this_object$`pool`)) {
        self$`pool` <- this_object$`pool`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`volume`)) {
        self$`volume` <- this_object$`volume`
      }
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`block_range`)) {
        self$`block_range` <- this_object$`block_range`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CurveDailyVolumeDTO in JSON format
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
        if (!is.null(self$`pool`)) {
          sprintf(
          '"pool":
            "%s"
                    ',
          self$`pool`
          )
        },
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`volume`)) {
          sprintf(
          '"volume":
            "%s"
                    ',
          self$`volume`
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CurveDailyVolumeDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveDailyVolumeDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveDailyVolumeDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`pool` <- this_object$`pool`
      self$`timestamp` <- this_object$`timestamp`
      self$`volume` <- this_object$`volume`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self
    },
    #' Validate JSON input with respect to CurveDailyVolumeDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveDailyVolumeDTO and throw an exception if invalid
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
    #' @return String representation of CurveDailyVolumeDTO
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
# CurveDailyVolumeDTO$unlock()
#
## Below is an example to define the print function
# CurveDailyVolumeDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveDailyVolumeDTO$lock()

