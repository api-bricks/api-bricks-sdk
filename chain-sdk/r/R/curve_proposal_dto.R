#' Create a new CurveProposalDTO
#'
#' @description
#' CurveProposalDTO Class
#'
#' @docType class
#' @title CurveProposalDTO
#' @description CurveProposalDTO Class
#' @format An \code{R6Class} generator object
#' @field entry_time  character [optional]
#' @field recv_time  character [optional]
#' @field block_number Number of block in which entity was recorded. integer [optional]
#' @field id  character [optional]
#' @field number Sequential number in related to the realted voting app. character [optional]
#' @field app Voting app instance. character [optional]
#' @field creator Proposal creator's account. character [optional]
#' @field execution_script  character [optional]
#' @field expire_date  character [optional]
#' @field minimum_quorum Percentage of positive votes in total possible votes for this proposal to be accepted. character [optional]
#' @field required_support Percentage of positive votes needed for this proposal to be accepted. character [optional]
#' @field snapshot_block  character [optional]
#' @field voting_power  character [optional]
#' @field metadata Link to metadata file. character [optional]
#' @field text Proposal description text. character [optional]
#' @field vote_count Number of votes received by the proposal. character [optional]
#' @field positive_vote_count Number of positive votes (yes) received by the proposal. character [optional]
#' @field negative_vote_count Number of negative votes (no) received by the proposal. character [optional]
#' @field current_quorum  character [optional]
#' @field current_support  character [optional]
#' @field staked_support  character [optional]
#' @field total_staked  character [optional]
#' @field created  character [optional]
#' @field created_at_block  character [optional]
#' @field created_at_transaction  character [optional]
#' @field updated  character [optional]
#' @field updated_at_block  character [optional]
#' @field updated_at_transaction  character [optional]
#' @field executed  character [optional]
#' @field executed_at_block  character [optional]
#' @field executed_at_transaction  character [optional]
#' @field vid  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurveProposalDTO <- R6::R6Class(
  "CurveProposalDTO",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `block_number` = NULL,
    `id` = NULL,
    `number` = NULL,
    `app` = NULL,
    `creator` = NULL,
    `execution_script` = NULL,
    `expire_date` = NULL,
    `minimum_quorum` = NULL,
    `required_support` = NULL,
    `snapshot_block` = NULL,
    `voting_power` = NULL,
    `metadata` = NULL,
    `text` = NULL,
    `vote_count` = NULL,
    `positive_vote_count` = NULL,
    `negative_vote_count` = NULL,
    `current_quorum` = NULL,
    `current_support` = NULL,
    `staked_support` = NULL,
    `total_staked` = NULL,
    `created` = NULL,
    `created_at_block` = NULL,
    `created_at_transaction` = NULL,
    `updated` = NULL,
    `updated_at_block` = NULL,
    `updated_at_transaction` = NULL,
    `executed` = NULL,
    `executed_at_block` = NULL,
    `executed_at_transaction` = NULL,
    `vid` = NULL,
    #' Initialize a new CurveProposalDTO class.
    #'
    #' @description
    #' Initialize a new CurveProposalDTO class.
    #'
    #' @param entry_time entry_time
    #' @param recv_time recv_time
    #' @param block_number Number of block in which entity was recorded.
    #' @param id 
    #' @param number Sequential number in related to the realted voting app.
    #' @param app Voting app instance.
    #' @param creator Proposal creator's account.
    #' @param execution_script 
    #' @param expire_date 
    #' @param minimum_quorum Percentage of positive votes in total possible votes for this proposal to be accepted.
    #' @param required_support Percentage of positive votes needed for this proposal to be accepted.
    #' @param snapshot_block 
    #' @param voting_power 
    #' @param metadata Link to metadata file.
    #' @param text Proposal description text.
    #' @param vote_count Number of votes received by the proposal.
    #' @param positive_vote_count Number of positive votes (yes) received by the proposal.
    #' @param negative_vote_count Number of negative votes (no) received by the proposal.
    #' @param current_quorum 
    #' @param current_support 
    #' @param staked_support 
    #' @param total_staked 
    #' @param created 
    #' @param created_at_block 
    #' @param created_at_transaction 
    #' @param updated 
    #' @param updated_at_block 
    #' @param updated_at_transaction 
    #' @param executed 
    #' @param executed_at_block 
    #' @param executed_at_transaction 
    #' @param vid 
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `block_number` = NULL, `id` = NULL, `number` = NULL, `app` = NULL, `creator` = NULL, `execution_script` = NULL, `expire_date` = NULL, `minimum_quorum` = NULL, `required_support` = NULL, `snapshot_block` = NULL, `voting_power` = NULL, `metadata` = NULL, `text` = NULL, `vote_count` = NULL, `positive_vote_count` = NULL, `negative_vote_count` = NULL, `current_quorum` = NULL, `current_support` = NULL, `staked_support` = NULL, `total_staked` = NULL, `created` = NULL, `created_at_block` = NULL, `created_at_transaction` = NULL, `updated` = NULL, `updated_at_block` = NULL, `updated_at_transaction` = NULL, `executed` = NULL, `executed_at_block` = NULL, `executed_at_transaction` = NULL, `vid` = NULL, ...) {
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
      if (!is.null(`number`)) {
        if (!(is.character(`number`) && length(`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be a string:", `number`))
        }
        self$`number` <- `number`
      }
      if (!is.null(`app`)) {
        if (!(is.character(`app`) && length(`app`) == 1)) {
          stop(paste("Error! Invalid data for `app`. Must be a string:", `app`))
        }
        self$`app` <- `app`
      }
      if (!is.null(`creator`)) {
        if (!(is.character(`creator`) && length(`creator`) == 1)) {
          stop(paste("Error! Invalid data for `creator`. Must be a string:", `creator`))
        }
        self$`creator` <- `creator`
      }
      if (!is.null(`execution_script`)) {
        if (!(is.character(`execution_script`) && length(`execution_script`) == 1)) {
          stop(paste("Error! Invalid data for `execution_script`. Must be a string:", `execution_script`))
        }
        self$`execution_script` <- `execution_script`
      }
      if (!is.null(`expire_date`)) {
        if (!(is.character(`expire_date`) && length(`expire_date`) == 1)) {
          stop(paste("Error! Invalid data for `expire_date`. Must be a string:", `expire_date`))
        }
        self$`expire_date` <- `expire_date`
      }
      if (!is.null(`minimum_quorum`)) {
        if (!(is.character(`minimum_quorum`) && length(`minimum_quorum`) == 1)) {
          stop(paste("Error! Invalid data for `minimum_quorum`. Must be a string:", `minimum_quorum`))
        }
        self$`minimum_quorum` <- `minimum_quorum`
      }
      if (!is.null(`required_support`)) {
        if (!(is.character(`required_support`) && length(`required_support`) == 1)) {
          stop(paste("Error! Invalid data for `required_support`. Must be a string:", `required_support`))
        }
        self$`required_support` <- `required_support`
      }
      if (!is.null(`snapshot_block`)) {
        if (!(is.character(`snapshot_block`) && length(`snapshot_block`) == 1)) {
          stop(paste("Error! Invalid data for `snapshot_block`. Must be a string:", `snapshot_block`))
        }
        self$`snapshot_block` <- `snapshot_block`
      }
      if (!is.null(`voting_power`)) {
        if (!(is.character(`voting_power`) && length(`voting_power`) == 1)) {
          stop(paste("Error! Invalid data for `voting_power`. Must be a string:", `voting_power`))
        }
        self$`voting_power` <- `voting_power`
      }
      if (!is.null(`metadata`)) {
        if (!(is.character(`metadata`) && length(`metadata`) == 1)) {
          stop(paste("Error! Invalid data for `metadata`. Must be a string:", `metadata`))
        }
        self$`metadata` <- `metadata`
      }
      if (!is.null(`text`)) {
        if (!(is.character(`text`) && length(`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", `text`))
        }
        self$`text` <- `text`
      }
      if (!is.null(`vote_count`)) {
        if (!(is.character(`vote_count`) && length(`vote_count`) == 1)) {
          stop(paste("Error! Invalid data for `vote_count`. Must be a string:", `vote_count`))
        }
        self$`vote_count` <- `vote_count`
      }
      if (!is.null(`positive_vote_count`)) {
        if (!(is.character(`positive_vote_count`) && length(`positive_vote_count`) == 1)) {
          stop(paste("Error! Invalid data for `positive_vote_count`. Must be a string:", `positive_vote_count`))
        }
        self$`positive_vote_count` <- `positive_vote_count`
      }
      if (!is.null(`negative_vote_count`)) {
        if (!(is.character(`negative_vote_count`) && length(`negative_vote_count`) == 1)) {
          stop(paste("Error! Invalid data for `negative_vote_count`. Must be a string:", `negative_vote_count`))
        }
        self$`negative_vote_count` <- `negative_vote_count`
      }
      if (!is.null(`current_quorum`)) {
        if (!(is.character(`current_quorum`) && length(`current_quorum`) == 1)) {
          stop(paste("Error! Invalid data for `current_quorum`. Must be a string:", `current_quorum`))
        }
        self$`current_quorum` <- `current_quorum`
      }
      if (!is.null(`current_support`)) {
        if (!(is.character(`current_support`) && length(`current_support`) == 1)) {
          stop(paste("Error! Invalid data for `current_support`. Must be a string:", `current_support`))
        }
        self$`current_support` <- `current_support`
      }
      if (!is.null(`staked_support`)) {
        if (!(is.character(`staked_support`) && length(`staked_support`) == 1)) {
          stop(paste("Error! Invalid data for `staked_support`. Must be a string:", `staked_support`))
        }
        self$`staked_support` <- `staked_support`
      }
      if (!is.null(`total_staked`)) {
        if (!(is.character(`total_staked`) && length(`total_staked`) == 1)) {
          stop(paste("Error! Invalid data for `total_staked`. Must be a string:", `total_staked`))
        }
        self$`total_staked` <- `total_staked`
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
      if (!is.null(`updated`)) {
        if (!(is.character(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be a string:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`updated_at_block`)) {
        if (!(is.character(`updated_at_block`) && length(`updated_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at_block`. Must be a string:", `updated_at_block`))
        }
        self$`updated_at_block` <- `updated_at_block`
      }
      if (!is.null(`updated_at_transaction`)) {
        if (!(is.character(`updated_at_transaction`) && length(`updated_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at_transaction`. Must be a string:", `updated_at_transaction`))
        }
        self$`updated_at_transaction` <- `updated_at_transaction`
      }
      if (!is.null(`executed`)) {
        if (!(is.character(`executed`) && length(`executed`) == 1)) {
          stop(paste("Error! Invalid data for `executed`. Must be a string:", `executed`))
        }
        self$`executed` <- `executed`
      }
      if (!is.null(`executed_at_block`)) {
        if (!(is.character(`executed_at_block`) && length(`executed_at_block`) == 1)) {
          stop(paste("Error! Invalid data for `executed_at_block`. Must be a string:", `executed_at_block`))
        }
        self$`executed_at_block` <- `executed_at_block`
      }
      if (!is.null(`executed_at_transaction`)) {
        if (!(is.character(`executed_at_transaction`) && length(`executed_at_transaction`) == 1)) {
          stop(paste("Error! Invalid data for `executed_at_transaction`. Must be a string:", `executed_at_transaction`))
        }
        self$`executed_at_transaction` <- `executed_at_transaction`
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
    #' @return CurveProposalDTO in JSON format
    #' @export
    toJSON = function() {
      CurveProposalDTOObject <- list()
      if (!is.null(self$`entry_time`)) {
        CurveProposalDTOObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        CurveProposalDTOObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`block_number`)) {
        CurveProposalDTOObject[["block_number"]] <-
          self$`block_number`
      }
      if (!is.null(self$`id`)) {
        CurveProposalDTOObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`number`)) {
        CurveProposalDTOObject[["number"]] <-
          self$`number`
      }
      if (!is.null(self$`app`)) {
        CurveProposalDTOObject[["app"]] <-
          self$`app`
      }
      if (!is.null(self$`creator`)) {
        CurveProposalDTOObject[["creator"]] <-
          self$`creator`
      }
      if (!is.null(self$`execution_script`)) {
        CurveProposalDTOObject[["execution_script"]] <-
          self$`execution_script`
      }
      if (!is.null(self$`expire_date`)) {
        CurveProposalDTOObject[["expire_date"]] <-
          self$`expire_date`
      }
      if (!is.null(self$`minimum_quorum`)) {
        CurveProposalDTOObject[["minimum_quorum"]] <-
          self$`minimum_quorum`
      }
      if (!is.null(self$`required_support`)) {
        CurveProposalDTOObject[["required_support"]] <-
          self$`required_support`
      }
      if (!is.null(self$`snapshot_block`)) {
        CurveProposalDTOObject[["snapshot_block"]] <-
          self$`snapshot_block`
      }
      if (!is.null(self$`voting_power`)) {
        CurveProposalDTOObject[["voting_power"]] <-
          self$`voting_power`
      }
      if (!is.null(self$`metadata`)) {
        CurveProposalDTOObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`text`)) {
        CurveProposalDTOObject[["text"]] <-
          self$`text`
      }
      if (!is.null(self$`vote_count`)) {
        CurveProposalDTOObject[["vote_count"]] <-
          self$`vote_count`
      }
      if (!is.null(self$`positive_vote_count`)) {
        CurveProposalDTOObject[["positive_vote_count"]] <-
          self$`positive_vote_count`
      }
      if (!is.null(self$`negative_vote_count`)) {
        CurveProposalDTOObject[["negative_vote_count"]] <-
          self$`negative_vote_count`
      }
      if (!is.null(self$`current_quorum`)) {
        CurveProposalDTOObject[["current_quorum"]] <-
          self$`current_quorum`
      }
      if (!is.null(self$`current_support`)) {
        CurveProposalDTOObject[["current_support"]] <-
          self$`current_support`
      }
      if (!is.null(self$`staked_support`)) {
        CurveProposalDTOObject[["staked_support"]] <-
          self$`staked_support`
      }
      if (!is.null(self$`total_staked`)) {
        CurveProposalDTOObject[["total_staked"]] <-
          self$`total_staked`
      }
      if (!is.null(self$`created`)) {
        CurveProposalDTOObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`created_at_block`)) {
        CurveProposalDTOObject[["created_at_block"]] <-
          self$`created_at_block`
      }
      if (!is.null(self$`created_at_transaction`)) {
        CurveProposalDTOObject[["created_at_transaction"]] <-
          self$`created_at_transaction`
      }
      if (!is.null(self$`updated`)) {
        CurveProposalDTOObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`updated_at_block`)) {
        CurveProposalDTOObject[["updated_at_block"]] <-
          self$`updated_at_block`
      }
      if (!is.null(self$`updated_at_transaction`)) {
        CurveProposalDTOObject[["updated_at_transaction"]] <-
          self$`updated_at_transaction`
      }
      if (!is.null(self$`executed`)) {
        CurveProposalDTOObject[["executed"]] <-
          self$`executed`
      }
      if (!is.null(self$`executed_at_block`)) {
        CurveProposalDTOObject[["executed_at_block"]] <-
          self$`executed_at_block`
      }
      if (!is.null(self$`executed_at_transaction`)) {
        CurveProposalDTOObject[["executed_at_transaction"]] <-
          self$`executed_at_transaction`
      }
      if (!is.null(self$`vid`)) {
        CurveProposalDTOObject[["vid"]] <-
          self$`vid`
      }
      CurveProposalDTOObject
    },
    #' Deserialize JSON string into an instance of CurveProposalDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveProposalDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveProposalDTO
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
      if (!is.null(this_object$`number`)) {
        self$`number` <- this_object$`number`
      }
      if (!is.null(this_object$`app`)) {
        self$`app` <- this_object$`app`
      }
      if (!is.null(this_object$`creator`)) {
        self$`creator` <- this_object$`creator`
      }
      if (!is.null(this_object$`execution_script`)) {
        self$`execution_script` <- this_object$`execution_script`
      }
      if (!is.null(this_object$`expire_date`)) {
        self$`expire_date` <- this_object$`expire_date`
      }
      if (!is.null(this_object$`minimum_quorum`)) {
        self$`minimum_quorum` <- this_object$`minimum_quorum`
      }
      if (!is.null(this_object$`required_support`)) {
        self$`required_support` <- this_object$`required_support`
      }
      if (!is.null(this_object$`snapshot_block`)) {
        self$`snapshot_block` <- this_object$`snapshot_block`
      }
      if (!is.null(this_object$`voting_power`)) {
        self$`voting_power` <- this_object$`voting_power`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`text`)) {
        self$`text` <- this_object$`text`
      }
      if (!is.null(this_object$`vote_count`)) {
        self$`vote_count` <- this_object$`vote_count`
      }
      if (!is.null(this_object$`positive_vote_count`)) {
        self$`positive_vote_count` <- this_object$`positive_vote_count`
      }
      if (!is.null(this_object$`negative_vote_count`)) {
        self$`negative_vote_count` <- this_object$`negative_vote_count`
      }
      if (!is.null(this_object$`current_quorum`)) {
        self$`current_quorum` <- this_object$`current_quorum`
      }
      if (!is.null(this_object$`current_support`)) {
        self$`current_support` <- this_object$`current_support`
      }
      if (!is.null(this_object$`staked_support`)) {
        self$`staked_support` <- this_object$`staked_support`
      }
      if (!is.null(this_object$`total_staked`)) {
        self$`total_staked` <- this_object$`total_staked`
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
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`updated_at_block`)) {
        self$`updated_at_block` <- this_object$`updated_at_block`
      }
      if (!is.null(this_object$`updated_at_transaction`)) {
        self$`updated_at_transaction` <- this_object$`updated_at_transaction`
      }
      if (!is.null(this_object$`executed`)) {
        self$`executed` <- this_object$`executed`
      }
      if (!is.null(this_object$`executed_at_block`)) {
        self$`executed_at_block` <- this_object$`executed_at_block`
      }
      if (!is.null(this_object$`executed_at_transaction`)) {
        self$`executed_at_transaction` <- this_object$`executed_at_transaction`
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
    #' @return CurveProposalDTO in JSON format
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
        if (!is.null(self$`number`)) {
          sprintf(
          '"number":
            "%s"
                    ',
          self$`number`
          )
        },
        if (!is.null(self$`app`)) {
          sprintf(
          '"app":
            "%s"
                    ',
          self$`app`
          )
        },
        if (!is.null(self$`creator`)) {
          sprintf(
          '"creator":
            "%s"
                    ',
          self$`creator`
          )
        },
        if (!is.null(self$`execution_script`)) {
          sprintf(
          '"execution_script":
            "%s"
                    ',
          self$`execution_script`
          )
        },
        if (!is.null(self$`expire_date`)) {
          sprintf(
          '"expire_date":
            "%s"
                    ',
          self$`expire_date`
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
        if (!is.null(self$`required_support`)) {
          sprintf(
          '"required_support":
            "%s"
                    ',
          self$`required_support`
          )
        },
        if (!is.null(self$`snapshot_block`)) {
          sprintf(
          '"snapshot_block":
            "%s"
                    ',
          self$`snapshot_block`
          )
        },
        if (!is.null(self$`voting_power`)) {
          sprintf(
          '"voting_power":
            "%s"
                    ',
          self$`voting_power`
          )
        },
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
            "%s"
                    ',
          self$`metadata`
          )
        },
        if (!is.null(self$`text`)) {
          sprintf(
          '"text":
            "%s"
                    ',
          self$`text`
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
        if (!is.null(self$`positive_vote_count`)) {
          sprintf(
          '"positive_vote_count":
            "%s"
                    ',
          self$`positive_vote_count`
          )
        },
        if (!is.null(self$`negative_vote_count`)) {
          sprintf(
          '"negative_vote_count":
            "%s"
                    ',
          self$`negative_vote_count`
          )
        },
        if (!is.null(self$`current_quorum`)) {
          sprintf(
          '"current_quorum":
            "%s"
                    ',
          self$`current_quorum`
          )
        },
        if (!is.null(self$`current_support`)) {
          sprintf(
          '"current_support":
            "%s"
                    ',
          self$`current_support`
          )
        },
        if (!is.null(self$`staked_support`)) {
          sprintf(
          '"staked_support":
            "%s"
                    ',
          self$`staked_support`
          )
        },
        if (!is.null(self$`total_staked`)) {
          sprintf(
          '"total_staked":
            "%s"
                    ',
          self$`total_staked`
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
        if (!is.null(self$`updated`)) {
          sprintf(
          '"updated":
            "%s"
                    ',
          self$`updated`
          )
        },
        if (!is.null(self$`updated_at_block`)) {
          sprintf(
          '"updated_at_block":
            "%s"
                    ',
          self$`updated_at_block`
          )
        },
        if (!is.null(self$`updated_at_transaction`)) {
          sprintf(
          '"updated_at_transaction":
            "%s"
                    ',
          self$`updated_at_transaction`
          )
        },
        if (!is.null(self$`executed`)) {
          sprintf(
          '"executed":
            "%s"
                    ',
          self$`executed`
          )
        },
        if (!is.null(self$`executed_at_block`)) {
          sprintf(
          '"executed_at_block":
            "%s"
                    ',
          self$`executed_at_block`
          )
        },
        if (!is.null(self$`executed_at_transaction`)) {
          sprintf(
          '"executed_at_transaction":
            "%s"
                    ',
          self$`executed_at_transaction`
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
    #' Deserialize JSON string into an instance of CurveProposalDTO
    #'
    #' @description
    #' Deserialize JSON string into an instance of CurveProposalDTO
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurveProposalDTO
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`block_number` <- this_object$`block_number`
      self$`id` <- this_object$`id`
      self$`number` <- this_object$`number`
      self$`app` <- this_object$`app`
      self$`creator` <- this_object$`creator`
      self$`execution_script` <- this_object$`execution_script`
      self$`expire_date` <- this_object$`expire_date`
      self$`minimum_quorum` <- this_object$`minimum_quorum`
      self$`required_support` <- this_object$`required_support`
      self$`snapshot_block` <- this_object$`snapshot_block`
      self$`voting_power` <- this_object$`voting_power`
      self$`metadata` <- this_object$`metadata`
      self$`text` <- this_object$`text`
      self$`vote_count` <- this_object$`vote_count`
      self$`positive_vote_count` <- this_object$`positive_vote_count`
      self$`negative_vote_count` <- this_object$`negative_vote_count`
      self$`current_quorum` <- this_object$`current_quorum`
      self$`current_support` <- this_object$`current_support`
      self$`staked_support` <- this_object$`staked_support`
      self$`total_staked` <- this_object$`total_staked`
      self$`created` <- this_object$`created`
      self$`created_at_block` <- this_object$`created_at_block`
      self$`created_at_transaction` <- this_object$`created_at_transaction`
      self$`updated` <- this_object$`updated`
      self$`updated_at_block` <- this_object$`updated_at_block`
      self$`updated_at_transaction` <- this_object$`updated_at_transaction`
      self$`executed` <- this_object$`executed`
      self$`executed_at_block` <- this_object$`executed_at_block`
      self$`executed_at_transaction` <- this_object$`executed_at_transaction`
      self$`vid` <- this_object$`vid`
      self
    },
    #' Validate JSON input with respect to CurveProposalDTO
    #'
    #' @description
    #' Validate JSON input with respect to CurveProposalDTO and throw an exception if invalid
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
    #' @return String representation of CurveProposalDTO
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
# CurveProposalDTO$unlock()
#
## Below is an example to define the print function
# CurveProposalDTO$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurveProposalDTO$lock()

