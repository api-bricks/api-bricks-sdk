#' Create a new OrderHistory
#'
#' @description
#' OrderHistory Class
#'
#' @docType class
#' @title OrderHistory
#' @description OrderHistory Class
#' @format An \code{R6Class} generator object
#' @field apikey Apikey character [optional]
#' @field exchangeId Exchange id character [optional]
#' @field clientOrderId Client order id character [optional]
#' @field symbolIdExchange Symbol id exchange character [optional]
#' @field symbolIdCoinapi Symbol id in coinapi character [optional]
#' @field amountOrder Amount numeric [optional]
#' @field price Price numeric [optional]
#' @field side 1-buy, 2-sell numeric [optional]
#' @field orderType Order type character [optional]
#' @field timeInForce Time in force character [optional]
#' @field expireTime Expire time character [optional]
#' @field execInst Exec inst list(character) [optional]
#' @field clientOrderIdFormatExchange Client order id format character [optional]
#' @field exchangeOrderId Exchange order id character [optional]
#' @field amountOpen Amount open numeric [optional]
#' @field amountFilled Amount filled numeric [optional]
#' @field avgPx Average price numeric [optional]
#' @field status Status character [optional]
#' @field statusHistoryStatus History status list(character) [optional]
#' @field statusHistoryTime History status time list(character) [optional]
#' @field errorMessageResult Error message character [optional]
#' @field errorMessageReason Error message reason character [optional]
#' @field errorMessageMessage Error message character [optional]
#' @field fillsTime Fills time list(character) [optional]
#' @field fillsPrice Fills price list(numeric) [optional]
#' @field fillsAmount Fills amount list(numeric) [optional]
#' @field createdTime Created time character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderHistory <- R6::R6Class(
  "OrderHistory",
  public = list(
    `apikey` = NULL,
    `exchangeId` = NULL,
    `clientOrderId` = NULL,
    `symbolIdExchange` = NULL,
    `symbolIdCoinapi` = NULL,
    `amountOrder` = NULL,
    `price` = NULL,
    `side` = NULL,
    `orderType` = NULL,
    `timeInForce` = NULL,
    `expireTime` = NULL,
    `execInst` = NULL,
    `clientOrderIdFormatExchange` = NULL,
    `exchangeOrderId` = NULL,
    `amountOpen` = NULL,
    `amountFilled` = NULL,
    `avgPx` = NULL,
    `status` = NULL,
    `statusHistoryStatus` = NULL,
    `statusHistoryTime` = NULL,
    `errorMessageResult` = NULL,
    `errorMessageReason` = NULL,
    `errorMessageMessage` = NULL,
    `fillsTime` = NULL,
    `fillsPrice` = NULL,
    `fillsAmount` = NULL,
    `createdTime` = NULL,
    #' Initialize a new OrderHistory class.
    #'
    #' @description
    #' Initialize a new OrderHistory class.
    #'
    #' @param apikey Apikey
    #' @param exchangeId Exchange id
    #' @param clientOrderId Client order id
    #' @param symbolIdExchange Symbol id exchange
    #' @param symbolIdCoinapi Symbol id in coinapi
    #' @param amountOrder Amount
    #' @param price Price
    #' @param side 1-buy, 2-sell
    #' @param orderType Order type
    #' @param timeInForce Time in force
    #' @param expireTime Expire time
    #' @param execInst Exec inst
    #' @param clientOrderIdFormatExchange Client order id format
    #' @param exchangeOrderId Exchange order id
    #' @param amountOpen Amount open
    #' @param amountFilled Amount filled
    #' @param avgPx Average price
    #' @param status Status
    #' @param statusHistoryStatus History status
    #' @param statusHistoryTime History status time
    #' @param errorMessageResult Error message
    #' @param errorMessageReason Error message reason
    #' @param errorMessageMessage Error message
    #' @param fillsTime Fills time
    #' @param fillsPrice Fills price
    #' @param fillsAmount Fills amount
    #' @param createdTime Created time
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`apikey` = NULL, `exchangeId` = NULL, `clientOrderId` = NULL, `symbolIdExchange` = NULL, `symbolIdCoinapi` = NULL, `amountOrder` = NULL, `price` = NULL, `side` = NULL, `orderType` = NULL, `timeInForce` = NULL, `expireTime` = NULL, `execInst` = NULL, `clientOrderIdFormatExchange` = NULL, `exchangeOrderId` = NULL, `amountOpen` = NULL, `amountFilled` = NULL, `avgPx` = NULL, `status` = NULL, `statusHistoryStatus` = NULL, `statusHistoryTime` = NULL, `errorMessageResult` = NULL, `errorMessageReason` = NULL, `errorMessageMessage` = NULL, `fillsTime` = NULL, `fillsPrice` = NULL, `fillsAmount` = NULL, `createdTime` = NULL, ...) {
      if (!is.null(`apikey`)) {
        if (!(is.character(`apikey`) && length(`apikey`) == 1)) {
          stop(paste("Error! Invalid data for `apikey`. Must be a string:", `apikey`))
        }
        self$`apikey` <- `apikey`
      }
      if (!is.null(`exchangeId`)) {
        if (!(is.character(`exchangeId`) && length(`exchangeId`) == 1)) {
          stop(paste("Error! Invalid data for `exchangeId`. Must be a string:", `exchangeId`))
        }
        self$`exchangeId` <- `exchangeId`
      }
      if (!is.null(`clientOrderId`)) {
        if (!(is.character(`clientOrderId`) && length(`clientOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `clientOrderId`. Must be a string:", `clientOrderId`))
        }
        self$`clientOrderId` <- `clientOrderId`
      }
      if (!is.null(`symbolIdExchange`)) {
        if (!(is.character(`symbolIdExchange`) && length(`symbolIdExchange`) == 1)) {
          stop(paste("Error! Invalid data for `symbolIdExchange`. Must be a string:", `symbolIdExchange`))
        }
        self$`symbolIdExchange` <- `symbolIdExchange`
      }
      if (!is.null(`symbolIdCoinapi`)) {
        if (!(is.character(`symbolIdCoinapi`) && length(`symbolIdCoinapi`) == 1)) {
          stop(paste("Error! Invalid data for `symbolIdCoinapi`. Must be a string:", `symbolIdCoinapi`))
        }
        self$`symbolIdCoinapi` <- `symbolIdCoinapi`
      }
      if (!is.null(`amountOrder`)) {
        self$`amountOrder` <- `amountOrder`
      }
      if (!is.null(`price`)) {
        self$`price` <- `price`
      }
      if (!is.null(`side`)) {
        self$`side` <- `side`
      }
      if (!is.null(`orderType`)) {
        if (!(is.character(`orderType`) && length(`orderType`) == 1)) {
          stop(paste("Error! Invalid data for `orderType`. Must be a string:", `orderType`))
        }
        self$`orderType` <- `orderType`
      }
      if (!is.null(`timeInForce`)) {
        if (!(is.character(`timeInForce`) && length(`timeInForce`) == 1)) {
          stop(paste("Error! Invalid data for `timeInForce`. Must be a string:", `timeInForce`))
        }
        self$`timeInForce` <- `timeInForce`
      }
      if (!is.null(`expireTime`)) {
        self$`expireTime` <- `expireTime`
      }
      if (!is.null(`execInst`)) {
        stopifnot(is.vector(`execInst`), length(`execInst`) != 0)
        sapply(`execInst`, function(x) stopifnot(is.character(x)))
        self$`execInst` <- `execInst`
      }
      if (!is.null(`clientOrderIdFormatExchange`)) {
        if (!(is.character(`clientOrderIdFormatExchange`) && length(`clientOrderIdFormatExchange`) == 1)) {
          stop(paste("Error! Invalid data for `clientOrderIdFormatExchange`. Must be a string:", `clientOrderIdFormatExchange`))
        }
        self$`clientOrderIdFormatExchange` <- `clientOrderIdFormatExchange`
      }
      if (!is.null(`exchangeOrderId`)) {
        if (!(is.character(`exchangeOrderId`) && length(`exchangeOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `exchangeOrderId`. Must be a string:", `exchangeOrderId`))
        }
        self$`exchangeOrderId` <- `exchangeOrderId`
      }
      if (!is.null(`amountOpen`)) {
        self$`amountOpen` <- `amountOpen`
      }
      if (!is.null(`amountFilled`)) {
        self$`amountFilled` <- `amountFilled`
      }
      if (!is.null(`avgPx`)) {
        self$`avgPx` <- `avgPx`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`statusHistoryStatus`)) {
        stopifnot(is.vector(`statusHistoryStatus`), length(`statusHistoryStatus`) != 0)
        sapply(`statusHistoryStatus`, function(x) stopifnot(is.character(x)))
        self$`statusHistoryStatus` <- `statusHistoryStatus`
      }
      if (!is.null(`statusHistoryTime`)) {
        stopifnot(is.vector(`statusHistoryTime`), length(`statusHistoryTime`) != 0)
        sapply(`statusHistoryTime`, function(x) stopifnot(is.character(x)))
        self$`statusHistoryTime` <- `statusHistoryTime`
      }
      if (!is.null(`errorMessageResult`)) {
        if (!(is.character(`errorMessageResult`) && length(`errorMessageResult`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessageResult`. Must be a string:", `errorMessageResult`))
        }
        self$`errorMessageResult` <- `errorMessageResult`
      }
      if (!is.null(`errorMessageReason`)) {
        if (!(is.character(`errorMessageReason`) && length(`errorMessageReason`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessageReason`. Must be a string:", `errorMessageReason`))
        }
        self$`errorMessageReason` <- `errorMessageReason`
      }
      if (!is.null(`errorMessageMessage`)) {
        if (!(is.character(`errorMessageMessage`) && length(`errorMessageMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessageMessage`. Must be a string:", `errorMessageMessage`))
        }
        self$`errorMessageMessage` <- `errorMessageMessage`
      }
      if (!is.null(`fillsTime`)) {
        stopifnot(is.vector(`fillsTime`), length(`fillsTime`) != 0)
        sapply(`fillsTime`, function(x) stopifnot(is.character(x)))
        self$`fillsTime` <- `fillsTime`
      }
      if (!is.null(`fillsPrice`)) {
        stopifnot(is.vector(`fillsPrice`), length(`fillsPrice`) != 0)
        sapply(`fillsPrice`, function(x) stopifnot(is.character(x)))
        self$`fillsPrice` <- `fillsPrice`
      }
      if (!is.null(`fillsAmount`)) {
        stopifnot(is.vector(`fillsAmount`), length(`fillsAmount`) != 0)
        sapply(`fillsAmount`, function(x) stopifnot(is.character(x)))
        self$`fillsAmount` <- `fillsAmount`
      }
      if (!is.null(`createdTime`)) {
        self$`createdTime` <- `createdTime`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderHistory in JSON format
    #' @export
    toJSON = function() {
      OrderHistoryObject <- list()
      if (!is.null(self$`apikey`)) {
        OrderHistoryObject[["apikey"]] <-
          self$`apikey`
      }
      if (!is.null(self$`exchangeId`)) {
        OrderHistoryObject[["exchangeId"]] <-
          self$`exchangeId`
      }
      if (!is.null(self$`clientOrderId`)) {
        OrderHistoryObject[["clientOrderId"]] <-
          self$`clientOrderId`
      }
      if (!is.null(self$`symbolIdExchange`)) {
        OrderHistoryObject[["symbolIdExchange"]] <-
          self$`symbolIdExchange`
      }
      if (!is.null(self$`symbolIdCoinapi`)) {
        OrderHistoryObject[["symbolIdCoinapi"]] <-
          self$`symbolIdCoinapi`
      }
      if (!is.null(self$`amountOrder`)) {
        OrderHistoryObject[["amountOrder"]] <-
          self$`amountOrder`
      }
      if (!is.null(self$`price`)) {
        OrderHistoryObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`side`)) {
        OrderHistoryObject[["side"]] <-
          self$`side`
      }
      if (!is.null(self$`orderType`)) {
        OrderHistoryObject[["orderType"]] <-
          self$`orderType`
      }
      if (!is.null(self$`timeInForce`)) {
        OrderHistoryObject[["timeInForce"]] <-
          self$`timeInForce`
      }
      if (!is.null(self$`expireTime`)) {
        OrderHistoryObject[["expireTime"]] <-
          self$`expireTime`
      }
      if (!is.null(self$`execInst`)) {
        OrderHistoryObject[["execInst"]] <-
          self$`execInst`
      }
      if (!is.null(self$`clientOrderIdFormatExchange`)) {
        OrderHistoryObject[["clientOrderIdFormatExchange"]] <-
          self$`clientOrderIdFormatExchange`
      }
      if (!is.null(self$`exchangeOrderId`)) {
        OrderHistoryObject[["exchangeOrderId"]] <-
          self$`exchangeOrderId`
      }
      if (!is.null(self$`amountOpen`)) {
        OrderHistoryObject[["amountOpen"]] <-
          self$`amountOpen`
      }
      if (!is.null(self$`amountFilled`)) {
        OrderHistoryObject[["amountFilled"]] <-
          self$`amountFilled`
      }
      if (!is.null(self$`avgPx`)) {
        OrderHistoryObject[["avgPx"]] <-
          self$`avgPx`
      }
      if (!is.null(self$`status`)) {
        OrderHistoryObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`statusHistoryStatus`)) {
        OrderHistoryObject[["statusHistoryStatus"]] <-
          self$`statusHistoryStatus`
      }
      if (!is.null(self$`statusHistoryTime`)) {
        OrderHistoryObject[["statusHistoryTime"]] <-
          self$`statusHistoryTime`
      }
      if (!is.null(self$`errorMessageResult`)) {
        OrderHistoryObject[["errorMessageResult"]] <-
          self$`errorMessageResult`
      }
      if (!is.null(self$`errorMessageReason`)) {
        OrderHistoryObject[["errorMessageReason"]] <-
          self$`errorMessageReason`
      }
      if (!is.null(self$`errorMessageMessage`)) {
        OrderHistoryObject[["errorMessageMessage"]] <-
          self$`errorMessageMessage`
      }
      if (!is.null(self$`fillsTime`)) {
        OrderHistoryObject[["fillsTime"]] <-
          self$`fillsTime`
      }
      if (!is.null(self$`fillsPrice`)) {
        OrderHistoryObject[["fillsPrice"]] <-
          self$`fillsPrice`
      }
      if (!is.null(self$`fillsAmount`)) {
        OrderHistoryObject[["fillsAmount"]] <-
          self$`fillsAmount`
      }
      if (!is.null(self$`createdTime`)) {
        OrderHistoryObject[["createdTime"]] <-
          self$`createdTime`
      }
      OrderHistoryObject
    },
    #' Deserialize JSON string into an instance of OrderHistory
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderHistory
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderHistory
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`apikey`)) {
        self$`apikey` <- this_object$`apikey`
      }
      if (!is.null(this_object$`exchangeId`)) {
        self$`exchangeId` <- this_object$`exchangeId`
      }
      if (!is.null(this_object$`clientOrderId`)) {
        self$`clientOrderId` <- this_object$`clientOrderId`
      }
      if (!is.null(this_object$`symbolIdExchange`)) {
        self$`symbolIdExchange` <- this_object$`symbolIdExchange`
      }
      if (!is.null(this_object$`symbolIdCoinapi`)) {
        self$`symbolIdCoinapi` <- this_object$`symbolIdCoinapi`
      }
      if (!is.null(this_object$`amountOrder`)) {
        self$`amountOrder` <- this_object$`amountOrder`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`side`)) {
        self$`side` <- this_object$`side`
      }
      if (!is.null(this_object$`orderType`)) {
        self$`orderType` <- this_object$`orderType`
      }
      if (!is.null(this_object$`timeInForce`)) {
        self$`timeInForce` <- this_object$`timeInForce`
      }
      if (!is.null(this_object$`expireTime`)) {
        self$`expireTime` <- this_object$`expireTime`
      }
      if (!is.null(this_object$`execInst`)) {
        self$`execInst` <- ApiClient$new()$deserializeObj(this_object$`execInst`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`clientOrderIdFormatExchange`)) {
        self$`clientOrderIdFormatExchange` <- this_object$`clientOrderIdFormatExchange`
      }
      if (!is.null(this_object$`exchangeOrderId`)) {
        self$`exchangeOrderId` <- this_object$`exchangeOrderId`
      }
      if (!is.null(this_object$`amountOpen`)) {
        self$`amountOpen` <- this_object$`amountOpen`
      }
      if (!is.null(this_object$`amountFilled`)) {
        self$`amountFilled` <- this_object$`amountFilled`
      }
      if (!is.null(this_object$`avgPx`)) {
        self$`avgPx` <- this_object$`avgPx`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`statusHistoryStatus`)) {
        self$`statusHistoryStatus` <- ApiClient$new()$deserializeObj(this_object$`statusHistoryStatus`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`statusHistoryTime`)) {
        self$`statusHistoryTime` <- ApiClient$new()$deserializeObj(this_object$`statusHistoryTime`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`errorMessageResult`)) {
        self$`errorMessageResult` <- this_object$`errorMessageResult`
      }
      if (!is.null(this_object$`errorMessageReason`)) {
        self$`errorMessageReason` <- this_object$`errorMessageReason`
      }
      if (!is.null(this_object$`errorMessageMessage`)) {
        self$`errorMessageMessage` <- this_object$`errorMessageMessage`
      }
      if (!is.null(this_object$`fillsTime`)) {
        self$`fillsTime` <- ApiClient$new()$deserializeObj(this_object$`fillsTime`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`fillsPrice`)) {
        self$`fillsPrice` <- ApiClient$new()$deserializeObj(this_object$`fillsPrice`, "array[numeric]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`fillsAmount`)) {
        self$`fillsAmount` <- ApiClient$new()$deserializeObj(this_object$`fillsAmount`, "array[numeric]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`createdTime`)) {
        self$`createdTime` <- this_object$`createdTime`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderHistory in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`apikey`)) {
          sprintf(
          '"apikey":
            "%s"
                    ',
          self$`apikey`
          )
        },
        if (!is.null(self$`exchangeId`)) {
          sprintf(
          '"exchangeId":
            "%s"
                    ',
          self$`exchangeId`
          )
        },
        if (!is.null(self$`clientOrderId`)) {
          sprintf(
          '"clientOrderId":
            "%s"
                    ',
          self$`clientOrderId`
          )
        },
        if (!is.null(self$`symbolIdExchange`)) {
          sprintf(
          '"symbolIdExchange":
            "%s"
                    ',
          self$`symbolIdExchange`
          )
        },
        if (!is.null(self$`symbolIdCoinapi`)) {
          sprintf(
          '"symbolIdCoinapi":
            "%s"
                    ',
          self$`symbolIdCoinapi`
          )
        },
        if (!is.null(self$`amountOrder`)) {
          sprintf(
          '"amountOrder":
            %d
                    ',
          self$`amountOrder`
          )
        },
        if (!is.null(self$`price`)) {
          sprintf(
          '"price":
            %d
                    ',
          self$`price`
          )
        },
        if (!is.null(self$`side`)) {
          sprintf(
          '"side":
            %d
                    ',
          self$`side`
          )
        },
        if (!is.null(self$`orderType`)) {
          sprintf(
          '"orderType":
            "%s"
                    ',
          self$`orderType`
          )
        },
        if (!is.null(self$`timeInForce`)) {
          sprintf(
          '"timeInForce":
            "%s"
                    ',
          self$`timeInForce`
          )
        },
        if (!is.null(self$`expireTime`)) {
          sprintf(
          '"expireTime":
            "%s"
                    ',
          self$`expireTime`
          )
        },
        if (!is.null(self$`execInst`)) {
          sprintf(
          '"execInst":
             [%s]
          ',
          paste(unlist(lapply(self$`execInst`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`clientOrderIdFormatExchange`)) {
          sprintf(
          '"clientOrderIdFormatExchange":
            "%s"
                    ',
          self$`clientOrderIdFormatExchange`
          )
        },
        if (!is.null(self$`exchangeOrderId`)) {
          sprintf(
          '"exchangeOrderId":
            "%s"
                    ',
          self$`exchangeOrderId`
          )
        },
        if (!is.null(self$`amountOpen`)) {
          sprintf(
          '"amountOpen":
            %d
                    ',
          self$`amountOpen`
          )
        },
        if (!is.null(self$`amountFilled`)) {
          sprintf(
          '"amountFilled":
            %d
                    ',
          self$`amountFilled`
          )
        },
        if (!is.null(self$`avgPx`)) {
          sprintf(
          '"avgPx":
            %d
                    ',
          self$`avgPx`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            "%s"
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`statusHistoryStatus`)) {
          sprintf(
          '"statusHistoryStatus":
             [%s]
          ',
          paste(unlist(lapply(self$`statusHistoryStatus`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`statusHistoryTime`)) {
          sprintf(
          '"statusHistoryTime":
             [%s]
          ',
          paste(unlist(lapply(self$`statusHistoryTime`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`errorMessageResult`)) {
          sprintf(
          '"errorMessageResult":
            "%s"
                    ',
          self$`errorMessageResult`
          )
        },
        if (!is.null(self$`errorMessageReason`)) {
          sprintf(
          '"errorMessageReason":
            "%s"
                    ',
          self$`errorMessageReason`
          )
        },
        if (!is.null(self$`errorMessageMessage`)) {
          sprintf(
          '"errorMessageMessage":
            "%s"
                    ',
          self$`errorMessageMessage`
          )
        },
        if (!is.null(self$`fillsTime`)) {
          sprintf(
          '"fillsTime":
             [%s]
          ',
          paste(unlist(lapply(self$`fillsTime`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`fillsPrice`)) {
          sprintf(
          '"fillsPrice":
             [%s]
          ',
          paste(unlist(lapply(self$`fillsPrice`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`fillsAmount`)) {
          sprintf(
          '"fillsAmount":
             [%s]
          ',
          paste(unlist(lapply(self$`fillsAmount`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`createdTime`)) {
          sprintf(
          '"createdTime":
            "%s"
                    ',
          self$`createdTime`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of OrderHistory
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderHistory
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderHistory
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`apikey` <- this_object$`apikey`
      self$`exchangeId` <- this_object$`exchangeId`
      self$`clientOrderId` <- this_object$`clientOrderId`
      self$`symbolIdExchange` <- this_object$`symbolIdExchange`
      self$`symbolIdCoinapi` <- this_object$`symbolIdCoinapi`
      self$`amountOrder` <- this_object$`amountOrder`
      self$`price` <- this_object$`price`
      self$`side` <- this_object$`side`
      self$`orderType` <- this_object$`orderType`
      self$`timeInForce` <- this_object$`timeInForce`
      self$`expireTime` <- this_object$`expireTime`
      self$`execInst` <- ApiClient$new()$deserializeObj(this_object$`execInst`, "array[character]", loadNamespace("openapi"))
      self$`clientOrderIdFormatExchange` <- this_object$`clientOrderIdFormatExchange`
      self$`exchangeOrderId` <- this_object$`exchangeOrderId`
      self$`amountOpen` <- this_object$`amountOpen`
      self$`amountFilled` <- this_object$`amountFilled`
      self$`avgPx` <- this_object$`avgPx`
      self$`status` <- this_object$`status`
      self$`statusHistoryStatus` <- ApiClient$new()$deserializeObj(this_object$`statusHistoryStatus`, "array[character]", loadNamespace("openapi"))
      self$`statusHistoryTime` <- ApiClient$new()$deserializeObj(this_object$`statusHistoryTime`, "array[character]", loadNamespace("openapi"))
      self$`errorMessageResult` <- this_object$`errorMessageResult`
      self$`errorMessageReason` <- this_object$`errorMessageReason`
      self$`errorMessageMessage` <- this_object$`errorMessageMessage`
      self$`fillsTime` <- ApiClient$new()$deserializeObj(this_object$`fillsTime`, "array[character]", loadNamespace("openapi"))
      self$`fillsPrice` <- ApiClient$new()$deserializeObj(this_object$`fillsPrice`, "array[numeric]", loadNamespace("openapi"))
      self$`fillsAmount` <- ApiClient$new()$deserializeObj(this_object$`fillsAmount`, "array[numeric]", loadNamespace("openapi"))
      self$`createdTime` <- this_object$`createdTime`
      self
    },
    #' Validate JSON input with respect to OrderHistory
    #'
    #' @description
    #' Validate JSON input with respect to OrderHistory and throw an exception if invalid
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
    #' @return String representation of OrderHistory
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
# OrderHistory$unlock()
#
## Below is an example to define the print fnuction
# OrderHistory$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderHistory$lock()

