#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_proposal_dto.h"



curve_proposal_dto_t *curve_proposal_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *number,
    char *app,
    char *creator,
    char *execution_script,
    char *expire_date,
    char *minimum_quorum,
    char *required_support,
    char *snapshot_block,
    char *voting_power,
    char *metadata,
    char *text,
    char *vote_count,
    char *positive_vote_count,
    char *negative_vote_count,
    char *current_quorum,
    char *current_support,
    char *staked_support,
    char *total_staked,
    char *created,
    char *created_at_block,
    char *created_at_transaction,
    char *updated,
    char *updated_at_block,
    char *updated_at_transaction,
    char *executed,
    char *executed_at_block,
    char *executed_at_transaction,
    long vid
    ) {
    curve_proposal_dto_t *curve_proposal_dto_local_var = malloc(sizeof(curve_proposal_dto_t));
    if (!curve_proposal_dto_local_var) {
        return NULL;
    }
    curve_proposal_dto_local_var->entry_time = entry_time;
    curve_proposal_dto_local_var->recv_time = recv_time;
    curve_proposal_dto_local_var->block_number = block_number;
    curve_proposal_dto_local_var->id = id;
    curve_proposal_dto_local_var->number = number;
    curve_proposal_dto_local_var->app = app;
    curve_proposal_dto_local_var->creator = creator;
    curve_proposal_dto_local_var->execution_script = execution_script;
    curve_proposal_dto_local_var->expire_date = expire_date;
    curve_proposal_dto_local_var->minimum_quorum = minimum_quorum;
    curve_proposal_dto_local_var->required_support = required_support;
    curve_proposal_dto_local_var->snapshot_block = snapshot_block;
    curve_proposal_dto_local_var->voting_power = voting_power;
    curve_proposal_dto_local_var->metadata = metadata;
    curve_proposal_dto_local_var->text = text;
    curve_proposal_dto_local_var->vote_count = vote_count;
    curve_proposal_dto_local_var->positive_vote_count = positive_vote_count;
    curve_proposal_dto_local_var->negative_vote_count = negative_vote_count;
    curve_proposal_dto_local_var->current_quorum = current_quorum;
    curve_proposal_dto_local_var->current_support = current_support;
    curve_proposal_dto_local_var->staked_support = staked_support;
    curve_proposal_dto_local_var->total_staked = total_staked;
    curve_proposal_dto_local_var->created = created;
    curve_proposal_dto_local_var->created_at_block = created_at_block;
    curve_proposal_dto_local_var->created_at_transaction = created_at_transaction;
    curve_proposal_dto_local_var->updated = updated;
    curve_proposal_dto_local_var->updated_at_block = updated_at_block;
    curve_proposal_dto_local_var->updated_at_transaction = updated_at_transaction;
    curve_proposal_dto_local_var->executed = executed;
    curve_proposal_dto_local_var->executed_at_block = executed_at_block;
    curve_proposal_dto_local_var->executed_at_transaction = executed_at_transaction;
    curve_proposal_dto_local_var->vid = vid;

    return curve_proposal_dto_local_var;
}


void curve_proposal_dto_free(curve_proposal_dto_t *curve_proposal_dto) {
    if(NULL == curve_proposal_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_proposal_dto->entry_time) {
        free(curve_proposal_dto->entry_time);
        curve_proposal_dto->entry_time = NULL;
    }
    if (curve_proposal_dto->recv_time) {
        free(curve_proposal_dto->recv_time);
        curve_proposal_dto->recv_time = NULL;
    }
    if (curve_proposal_dto->id) {
        free(curve_proposal_dto->id);
        curve_proposal_dto->id = NULL;
    }
    if (curve_proposal_dto->number) {
        free(curve_proposal_dto->number);
        curve_proposal_dto->number = NULL;
    }
    if (curve_proposal_dto->app) {
        free(curve_proposal_dto->app);
        curve_proposal_dto->app = NULL;
    }
    if (curve_proposal_dto->creator) {
        free(curve_proposal_dto->creator);
        curve_proposal_dto->creator = NULL;
    }
    if (curve_proposal_dto->execution_script) {
        free(curve_proposal_dto->execution_script);
        curve_proposal_dto->execution_script = NULL;
    }
    if (curve_proposal_dto->expire_date) {
        free(curve_proposal_dto->expire_date);
        curve_proposal_dto->expire_date = NULL;
    }
    if (curve_proposal_dto->minimum_quorum) {
        free(curve_proposal_dto->minimum_quorum);
        curve_proposal_dto->minimum_quorum = NULL;
    }
    if (curve_proposal_dto->required_support) {
        free(curve_proposal_dto->required_support);
        curve_proposal_dto->required_support = NULL;
    }
    if (curve_proposal_dto->snapshot_block) {
        free(curve_proposal_dto->snapshot_block);
        curve_proposal_dto->snapshot_block = NULL;
    }
    if (curve_proposal_dto->voting_power) {
        free(curve_proposal_dto->voting_power);
        curve_proposal_dto->voting_power = NULL;
    }
    if (curve_proposal_dto->metadata) {
        free(curve_proposal_dto->metadata);
        curve_proposal_dto->metadata = NULL;
    }
    if (curve_proposal_dto->text) {
        free(curve_proposal_dto->text);
        curve_proposal_dto->text = NULL;
    }
    if (curve_proposal_dto->vote_count) {
        free(curve_proposal_dto->vote_count);
        curve_proposal_dto->vote_count = NULL;
    }
    if (curve_proposal_dto->positive_vote_count) {
        free(curve_proposal_dto->positive_vote_count);
        curve_proposal_dto->positive_vote_count = NULL;
    }
    if (curve_proposal_dto->negative_vote_count) {
        free(curve_proposal_dto->negative_vote_count);
        curve_proposal_dto->negative_vote_count = NULL;
    }
    if (curve_proposal_dto->current_quorum) {
        free(curve_proposal_dto->current_quorum);
        curve_proposal_dto->current_quorum = NULL;
    }
    if (curve_proposal_dto->current_support) {
        free(curve_proposal_dto->current_support);
        curve_proposal_dto->current_support = NULL;
    }
    if (curve_proposal_dto->staked_support) {
        free(curve_proposal_dto->staked_support);
        curve_proposal_dto->staked_support = NULL;
    }
    if (curve_proposal_dto->total_staked) {
        free(curve_proposal_dto->total_staked);
        curve_proposal_dto->total_staked = NULL;
    }
    if (curve_proposal_dto->created) {
        free(curve_proposal_dto->created);
        curve_proposal_dto->created = NULL;
    }
    if (curve_proposal_dto->created_at_block) {
        free(curve_proposal_dto->created_at_block);
        curve_proposal_dto->created_at_block = NULL;
    }
    if (curve_proposal_dto->created_at_transaction) {
        free(curve_proposal_dto->created_at_transaction);
        curve_proposal_dto->created_at_transaction = NULL;
    }
    if (curve_proposal_dto->updated) {
        free(curve_proposal_dto->updated);
        curve_proposal_dto->updated = NULL;
    }
    if (curve_proposal_dto->updated_at_block) {
        free(curve_proposal_dto->updated_at_block);
        curve_proposal_dto->updated_at_block = NULL;
    }
    if (curve_proposal_dto->updated_at_transaction) {
        free(curve_proposal_dto->updated_at_transaction);
        curve_proposal_dto->updated_at_transaction = NULL;
    }
    if (curve_proposal_dto->executed) {
        free(curve_proposal_dto->executed);
        curve_proposal_dto->executed = NULL;
    }
    if (curve_proposal_dto->executed_at_block) {
        free(curve_proposal_dto->executed_at_block);
        curve_proposal_dto->executed_at_block = NULL;
    }
    if (curve_proposal_dto->executed_at_transaction) {
        free(curve_proposal_dto->executed_at_transaction);
        curve_proposal_dto->executed_at_transaction = NULL;
    }
    free(curve_proposal_dto);
}

cJSON *curve_proposal_dto_convertToJSON(curve_proposal_dto_t *curve_proposal_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_proposal_dto->entry_time
    if(curve_proposal_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_proposal_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_proposal_dto->recv_time
    if(curve_proposal_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_proposal_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_proposal_dto->block_number
    if(curve_proposal_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_proposal_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_proposal_dto->id
    if(curve_proposal_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_proposal_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->number
    if(curve_proposal_dto->number) {
    if(cJSON_AddStringToObject(item, "number", curve_proposal_dto->number) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->app
    if(curve_proposal_dto->app) {
    if(cJSON_AddStringToObject(item, "app", curve_proposal_dto->app) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->creator
    if(curve_proposal_dto->creator) {
    if(cJSON_AddStringToObject(item, "creator", curve_proposal_dto->creator) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->execution_script
    if(curve_proposal_dto->execution_script) {
    if(cJSON_AddStringToObject(item, "execution_script", curve_proposal_dto->execution_script) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->expire_date
    if(curve_proposal_dto->expire_date) {
    if(cJSON_AddStringToObject(item, "expire_date", curve_proposal_dto->expire_date) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->minimum_quorum
    if(curve_proposal_dto->minimum_quorum) {
    if(cJSON_AddStringToObject(item, "minimum_quorum", curve_proposal_dto->minimum_quorum) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->required_support
    if(curve_proposal_dto->required_support) {
    if(cJSON_AddStringToObject(item, "required_support", curve_proposal_dto->required_support) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->snapshot_block
    if(curve_proposal_dto->snapshot_block) {
    if(cJSON_AddStringToObject(item, "snapshot_block", curve_proposal_dto->snapshot_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->voting_power
    if(curve_proposal_dto->voting_power) {
    if(cJSON_AddStringToObject(item, "voting_power", curve_proposal_dto->voting_power) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->metadata
    if(curve_proposal_dto->metadata) {
    if(cJSON_AddStringToObject(item, "metadata", curve_proposal_dto->metadata) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->text
    if(curve_proposal_dto->text) {
    if(cJSON_AddStringToObject(item, "text", curve_proposal_dto->text) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->vote_count
    if(curve_proposal_dto->vote_count) {
    if(cJSON_AddStringToObject(item, "vote_count", curve_proposal_dto->vote_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->positive_vote_count
    if(curve_proposal_dto->positive_vote_count) {
    if(cJSON_AddStringToObject(item, "positive_vote_count", curve_proposal_dto->positive_vote_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->negative_vote_count
    if(curve_proposal_dto->negative_vote_count) {
    if(cJSON_AddStringToObject(item, "negative_vote_count", curve_proposal_dto->negative_vote_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->current_quorum
    if(curve_proposal_dto->current_quorum) {
    if(cJSON_AddStringToObject(item, "current_quorum", curve_proposal_dto->current_quorum) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->current_support
    if(curve_proposal_dto->current_support) {
    if(cJSON_AddStringToObject(item, "current_support", curve_proposal_dto->current_support) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->staked_support
    if(curve_proposal_dto->staked_support) {
    if(cJSON_AddStringToObject(item, "staked_support", curve_proposal_dto->staked_support) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->total_staked
    if(curve_proposal_dto->total_staked) {
    if(cJSON_AddStringToObject(item, "total_staked", curve_proposal_dto->total_staked) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->created
    if(curve_proposal_dto->created) {
    if(cJSON_AddStringToObject(item, "created", curve_proposal_dto->created) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->created_at_block
    if(curve_proposal_dto->created_at_block) {
    if(cJSON_AddStringToObject(item, "created_at_block", curve_proposal_dto->created_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->created_at_transaction
    if(curve_proposal_dto->created_at_transaction) {
    if(cJSON_AddStringToObject(item, "created_at_transaction", curve_proposal_dto->created_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->updated
    if(curve_proposal_dto->updated) {
    if(cJSON_AddStringToObject(item, "updated", curve_proposal_dto->updated) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->updated_at_block
    if(curve_proposal_dto->updated_at_block) {
    if(cJSON_AddStringToObject(item, "updated_at_block", curve_proposal_dto->updated_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->updated_at_transaction
    if(curve_proposal_dto->updated_at_transaction) {
    if(cJSON_AddStringToObject(item, "updated_at_transaction", curve_proposal_dto->updated_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->executed
    if(curve_proposal_dto->executed) {
    if(cJSON_AddStringToObject(item, "executed", curve_proposal_dto->executed) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->executed_at_block
    if(curve_proposal_dto->executed_at_block) {
    if(cJSON_AddStringToObject(item, "executed_at_block", curve_proposal_dto->executed_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->executed_at_transaction
    if(curve_proposal_dto->executed_at_transaction) {
    if(cJSON_AddStringToObject(item, "executed_at_transaction", curve_proposal_dto->executed_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_dto->vid
    if(curve_proposal_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_proposal_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

curve_proposal_dto_t *curve_proposal_dto_parseFromJSON(cJSON *curve_proposal_dtoJSON){

    curve_proposal_dto_t *curve_proposal_dto_local_var = NULL;

    // curve_proposal_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_proposal_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_proposal_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_proposal_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->number
    cJSON *number = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "number");
    if (number) { 
    if(!cJSON_IsString(number) && !cJSON_IsNull(number))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->app
    cJSON *app = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "app");
    if (app) { 
    if(!cJSON_IsString(app) && !cJSON_IsNull(app))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->creator
    cJSON *creator = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "creator");
    if (creator) { 
    if(!cJSON_IsString(creator) && !cJSON_IsNull(creator))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->execution_script
    cJSON *execution_script = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "execution_script");
    if (execution_script) { 
    if(!cJSON_IsString(execution_script) && !cJSON_IsNull(execution_script))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->expire_date
    cJSON *expire_date = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "expire_date");
    if (expire_date) { 
    if(!cJSON_IsString(expire_date) && !cJSON_IsNull(expire_date))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->minimum_quorum
    cJSON *minimum_quorum = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "minimum_quorum");
    if (minimum_quorum) { 
    if(!cJSON_IsString(minimum_quorum) && !cJSON_IsNull(minimum_quorum))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->required_support
    cJSON *required_support = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "required_support");
    if (required_support) { 
    if(!cJSON_IsString(required_support) && !cJSON_IsNull(required_support))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->snapshot_block
    cJSON *snapshot_block = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "snapshot_block");
    if (snapshot_block) { 
    if(!cJSON_IsString(snapshot_block) && !cJSON_IsNull(snapshot_block))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->voting_power
    cJSON *voting_power = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "voting_power");
    if (voting_power) { 
    if(!cJSON_IsString(voting_power) && !cJSON_IsNull(voting_power))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->metadata
    cJSON *metadata = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "metadata");
    if (metadata) { 
    if(!cJSON_IsString(metadata) && !cJSON_IsNull(metadata))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->text
    cJSON *text = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "text");
    if (text) { 
    if(!cJSON_IsString(text) && !cJSON_IsNull(text))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->vote_count
    cJSON *vote_count = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "vote_count");
    if (vote_count) { 
    if(!cJSON_IsString(vote_count) && !cJSON_IsNull(vote_count))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->positive_vote_count
    cJSON *positive_vote_count = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "positive_vote_count");
    if (positive_vote_count) { 
    if(!cJSON_IsString(positive_vote_count) && !cJSON_IsNull(positive_vote_count))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->negative_vote_count
    cJSON *negative_vote_count = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "negative_vote_count");
    if (negative_vote_count) { 
    if(!cJSON_IsString(negative_vote_count) && !cJSON_IsNull(negative_vote_count))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->current_quorum
    cJSON *current_quorum = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "current_quorum");
    if (current_quorum) { 
    if(!cJSON_IsString(current_quorum) && !cJSON_IsNull(current_quorum))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->current_support
    cJSON *current_support = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "current_support");
    if (current_support) { 
    if(!cJSON_IsString(current_support) && !cJSON_IsNull(current_support))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->staked_support
    cJSON *staked_support = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "staked_support");
    if (staked_support) { 
    if(!cJSON_IsString(staked_support) && !cJSON_IsNull(staked_support))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->total_staked
    cJSON *total_staked = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "total_staked");
    if (total_staked) { 
    if(!cJSON_IsString(total_staked) && !cJSON_IsNull(total_staked))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "created");
    if (created) { 
    if(!cJSON_IsString(created) && !cJSON_IsNull(created))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->created_at_block
    cJSON *created_at_block = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "created_at_block");
    if (created_at_block) { 
    if(!cJSON_IsString(created_at_block) && !cJSON_IsNull(created_at_block))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->created_at_transaction
    cJSON *created_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "created_at_transaction");
    if (created_at_transaction) { 
    if(!cJSON_IsString(created_at_transaction) && !cJSON_IsNull(created_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "updated");
    if (updated) { 
    if(!cJSON_IsString(updated) && !cJSON_IsNull(updated))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->updated_at_block
    cJSON *updated_at_block = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "updated_at_block");
    if (updated_at_block) { 
    if(!cJSON_IsString(updated_at_block) && !cJSON_IsNull(updated_at_block))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->updated_at_transaction
    cJSON *updated_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "updated_at_transaction");
    if (updated_at_transaction) { 
    if(!cJSON_IsString(updated_at_transaction) && !cJSON_IsNull(updated_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->executed
    cJSON *executed = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "executed");
    if (executed) { 
    if(!cJSON_IsString(executed) && !cJSON_IsNull(executed))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->executed_at_block
    cJSON *executed_at_block = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "executed_at_block");
    if (executed_at_block) { 
    if(!cJSON_IsString(executed_at_block) && !cJSON_IsNull(executed_at_block))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->executed_at_transaction
    cJSON *executed_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "executed_at_transaction");
    if (executed_at_transaction) { 
    if(!cJSON_IsString(executed_at_transaction) && !cJSON_IsNull(executed_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_proposal_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_proposal_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_proposal_dto_local_var = curve_proposal_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        number && !cJSON_IsNull(number) ? strdup(number->valuestring) : NULL,
        app && !cJSON_IsNull(app) ? strdup(app->valuestring) : NULL,
        creator && !cJSON_IsNull(creator) ? strdup(creator->valuestring) : NULL,
        execution_script && !cJSON_IsNull(execution_script) ? strdup(execution_script->valuestring) : NULL,
        expire_date && !cJSON_IsNull(expire_date) ? strdup(expire_date->valuestring) : NULL,
        minimum_quorum && !cJSON_IsNull(minimum_quorum) ? strdup(minimum_quorum->valuestring) : NULL,
        required_support && !cJSON_IsNull(required_support) ? strdup(required_support->valuestring) : NULL,
        snapshot_block && !cJSON_IsNull(snapshot_block) ? strdup(snapshot_block->valuestring) : NULL,
        voting_power && !cJSON_IsNull(voting_power) ? strdup(voting_power->valuestring) : NULL,
        metadata && !cJSON_IsNull(metadata) ? strdup(metadata->valuestring) : NULL,
        text && !cJSON_IsNull(text) ? strdup(text->valuestring) : NULL,
        vote_count && !cJSON_IsNull(vote_count) ? strdup(vote_count->valuestring) : NULL,
        positive_vote_count && !cJSON_IsNull(positive_vote_count) ? strdup(positive_vote_count->valuestring) : NULL,
        negative_vote_count && !cJSON_IsNull(negative_vote_count) ? strdup(negative_vote_count->valuestring) : NULL,
        current_quorum && !cJSON_IsNull(current_quorum) ? strdup(current_quorum->valuestring) : NULL,
        current_support && !cJSON_IsNull(current_support) ? strdup(current_support->valuestring) : NULL,
        staked_support && !cJSON_IsNull(staked_support) ? strdup(staked_support->valuestring) : NULL,
        total_staked && !cJSON_IsNull(total_staked) ? strdup(total_staked->valuestring) : NULL,
        created && !cJSON_IsNull(created) ? strdup(created->valuestring) : NULL,
        created_at_block && !cJSON_IsNull(created_at_block) ? strdup(created_at_block->valuestring) : NULL,
        created_at_transaction && !cJSON_IsNull(created_at_transaction) ? strdup(created_at_transaction->valuestring) : NULL,
        updated && !cJSON_IsNull(updated) ? strdup(updated->valuestring) : NULL,
        updated_at_block && !cJSON_IsNull(updated_at_block) ? strdup(updated_at_block->valuestring) : NULL,
        updated_at_transaction && !cJSON_IsNull(updated_at_transaction) ? strdup(updated_at_transaction->valuestring) : NULL,
        executed && !cJSON_IsNull(executed) ? strdup(executed->valuestring) : NULL,
        executed_at_block && !cJSON_IsNull(executed_at_block) ? strdup(executed_at_block->valuestring) : NULL,
        executed_at_transaction && !cJSON_IsNull(executed_at_transaction) ? strdup(executed_at_transaction->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_proposal_dto_local_var;
end:
    return NULL;

}
