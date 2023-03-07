#' Create a new CRYPTOPUNKSDataSourcesDTO
#'
#' @description
#' CRYPTOPUNKSDataSourcesDTO Class
#'
#' @docType class
#' @title CRYPTOPUNKSDataSourcesDTO
#' @description CRYPTOPUNKSDataSourcesDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field vid  integer [optional]
#' @field block_range  character [optional]
#' @field causality_region  integer [optional]
#' @field manifest_idx  integer [optional]
#' @field parent  integer [optional]
#' @field id  character [optional]
#' @field param  character [optional]
#' @field context  character [optional]
#' @field done_at  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CRYPTOPUNKSDataSourcesDTO <- R6::R6Class(
  "CRYPTOPUNKSDataSourcesDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `vid` = NULL,
    `block_range` = NULL,
    `causality_region` = NULL,
    `manifest_idx` = NULL,
    `parent` = NULL,
    `id` = NULL,
    `param` = NULL,
    `context` = NULL,
    `done_at` = NULL,
    #' Initialize a new CRYPTOPUNKSDataSourcesDTO class.
    #'
    #' @description
    #' Initialize a new CRYPTOPUNKSDataSourcesDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param vid 
    #' @param block_range 
    #' @param causality_region 
    #' @param manifest_idx 
    #' @param parent 
    #' @param id 
    #' @param param 
    #' @param context 
    #' @param done_at 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `vid` = NULL, `block_range` = NULL, `causality_region` = NULL, `manifest_idx` = NULL, `parent` = NULL, `id` = NULL, `param` = NULL, `context` = NULL, `done_at` = NULL, ...) {
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
      if (!is.null(`causality_region`)) {
        if (!(is.numeric(`causality_region`) && length(`causality_region`) == 1)) {
          stop(paste("Error! Invalid data for `causality_region`. Must be an integer:", `causality_region`))
        }
        self$`causality_region` <- `causality_region`
      }
      if (!is.null(`manifest_idx`)) {
        if (!(is.numeric(`manifest_idx`) && length(`manifest_idx`) == 1)) {
          stop(paste("Error! Invalid data for `manifest_idx`. Must be an integer:", `manifest_idx`))
        }
        self$`manifest_idx` <- `manifest_idx`
      }
      if (!is.null(`parent`)) {
        if (!(is.numeric(`parent`) && length(`parent`) == 1)) {
          stop(paste("Error! Invalid data for `parent`. Must be an integer:", `parent`))
        }
        self$`parent` <- `parent`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`param`)) {
        if (!(is.character(`param`) && length(`param`) == 1)) {
          stop(paste("Error! Invalid data for `param`. Must be a string:", `param`))
        }
        self$`param` <- `param`
      }
      if (!is.null(`context`)) {
        if (!(is.character(`context`) && length(`context`) == 1)) {
          stop(paste("Error! Invalid data for `context`. Must be a string:", `context`))
        }
        self$`context` <- `context`
      }
      if (!is.null(`done_at`)) {
        if (!(is.numeric(`done_at`) && length(`done_at`) == 1)) {
          stop(paste("Error! Invalid data for `done_at`. Must be an integer:", `done_at`))
        }
        self$`done_at` <- `done_at`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSDataSourcesDTO in JSON format
    #' @export
    toJSON = function() {
      CRYPTOPUNKSDataSourcesDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`vid`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["vid"]] <-
          self$`vid`
      }
      if (!is.null(self$`block_range`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["block_range"]] <-
          self$`block_range`
      }
      if (!is.null(self$`causality_region`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["causality_region"]] <-
          self$`causality_region`
      }
      if (!is.null(self$`manifest_idx`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["manifest_idx"]] <-
          self$`manifest_idx`
      }
      if (!is.null(self$`parent`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["parent"]] <-
          self$`parent`
      }
      if (!is.null(self$`id`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`param`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["param"]] <-
          self$`param`
      }
      if (!is.null(self$`context`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["context"]] <-
          self$`context`
      }
      if (!is.null(self$`done_at`)) {
        CRYPTOPUNKSDataSourcesDTOObject[["done_at"]] <-
          self$`done_at`
      }
      CRYPTOPUNKSDataSourcesDTOObject
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSDataSourcesDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSDataSourcesDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSDataSourcesDTO
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
      if (!is.null(this_object$`vid`)) {
        self$`vid` <- this_object$`vid`
      }
      if (!is.null(this_object$`block_range`)) {
        self$`block_range` <- this_object$`block_range`
      }
      if (!is.null(this_object$`causality_region`)) {
        self$`causality_region` <- this_object$`causality_region`
      }
      if (!is.null(this_object$`manifest_idx`)) {
        self$`manifest_idx` <- this_object$`manifest_idx`
      }
      if (!is.null(this_object$`parent`)) {
        self$`parent` <- this_object$`parent`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`param`)) {
        self$`param` <- this_object$`param`
      }
      if (!is.null(this_object$`context`)) {
        self$`context` <- this_object$`context`
      }
      if (!is.null(this_object$`done_at`)) {
        self$`done_at` <- this_object$`done_at`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CRYPTOPUNKSDataSourcesDTO in JSON format
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
        },
        if (!is.null(self$`causality_region`)) {
          sprintf(
          '"causality_region":
            %d
                    ',
          self$`causality_region`
          )
        },
        if (!is.null(self$`manifest_idx`)) {
          sprintf(
          '"manifest_idx":
            %d
                    ',
          self$`manifest_idx`
          )
        },
        if (!is.null(self$`parent`)) {
          sprintf(
          '"parent":
            %d
                    ',
          self$`parent`
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
        if (!is.null(self$`param`)) {
          sprintf(
          '"param":
            "%s"
                    ',
          self$`param`
          )
        },
        if (!is.null(self$`context`)) {
          sprintf(
          '"context":
            "%s"
                    ',
          self$`context`
          )
        },
        if (!is.null(self$`done_at`)) {
          sprintf(
          '"done_at":
            %d
                    ',
          self$`done_at`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CRYPTOPUNKSDataSourcesDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CRYPTOPUNKSDataSourcesDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CRYPTOPUNKSDataSourcesDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`vid` <- this_object$`vid`
      self$`block_range` <- this_object$`block_range`
      self$`causality_region` <- this_object$`causality_region`
      self$`manifest_idx` <- this_object$`manifest_idx`
      self$`parent` <- this_object$`parent`
      self$`id` <- this_object$`id`
      self$`param` <- this_object$`param`
      self$`context` <- this_object$`context`
      self$`done_at` <- this_object$`done_at`
      self
    },
    #' Validate JSON input with respect to CRYPTOPUNKSDataSourcesDTO
    #'
    #' @description
    #' Validate JSON input with respect to CRYPTOPUNKSDataSourcesDTO and throw an exception if invalid
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
    #' @return String representation of CRYPTOPUNKSDataSourcesDTO
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
# CRYPTOPUNKSDataSourcesDTO$unlock()
#
## Below is an example to define the print function
# CRYPTOPUNKSDataSourcesDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CRYPTOPUNKSDataSourcesDTO$lock()

