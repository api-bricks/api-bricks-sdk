#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_proposal_vote_dto.h"



curve_proposal_vote_dto_t *curve_proposal_vote_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *proposal,
    int supports,
    char *stake,
    char *voter,
    char *created,
    char *created_at_block,
    char *created_at_transaction,
    long vid
    ) {
    curve_proposal_vote_dto_t *curve_proposal_vote_dto_local_var = malloc(sizeof(curve_proposal_vote_dto_t));
    if (!curve_proposal_vote_dto_local_var) {
        return NULL;
    }
    curve_proposal_vote_dto_local_var->entry_time = entry_time;
    curve_proposal_vote_dto_local_var->recv_time = recv_time;
    curve_proposal_vote_dto_local_var->block_number = block_number;
    curve_proposal_vote_dto_local_var->id = id;
    curve_proposal_vote_dto_local_var->proposal = proposal;
    curve_proposal_vote_dto_local_var->supports = supports;
    curve_proposal_vote_dto_local_var->stake = stake;
    curve_proposal_vote_dto_local_var->voter = voter;
    curve_proposal_vote_dto_local_var->created = created;
    curve_proposal_vote_dto_local_var->created_at_block = created_at_block;
    curve_proposal_vote_dto_local_var->created_at_transaction = created_at_transaction;
    curve_proposal_vote_dto_local_var->vid = vid;

    return curve_proposal_vote_dto_local_var;
}


void curve_proposal_vote_dto_free(curve_proposal_vote_dto_t *curve_proposal_vote_dto) {
    if(NULL == curve_proposal_vote_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_proposal_vote_dto->entry_time) {
        free(curve_proposal_vote_dto->entry_time);
        curve_proposal_vote_dto->entry_time = NULL;
    }
    if (curve_proposal_vote_dto->recv_time) {
        free(curve_proposal_vote_dto->recv_time);
        curve_proposal_vote_dto->recv_time = NULL;
    }
    if (curve_proposal_vote_dto->id) {
        free(curve_proposal_vote_dto->id);
        curve_proposal_vote_dto->id = NULL;
    }
    if (curve_proposal_vote_dto->proposal) {
        free(curve_proposal_vote_dto->proposal);
        curve_proposal_vote_dto->proposal = NULL;
    }
    if (curve_proposal_vote_dto->stake) {
        free(curve_proposal_vote_dto->stake);
        curve_proposal_vote_dto->stake = NULL;
    }
    if (curve_proposal_vote_dto->voter) {
        free(curve_proposal_vote_dto->voter);
        curve_proposal_vote_dto->voter = NULL;
    }
    if (curve_proposal_vote_dto->created) {
        free(curve_proposal_vote_dto->created);
        curve_proposal_vote_dto->created = NULL;
    }
    if (curve_proposal_vote_dto->created_at_block) {
        free(curve_proposal_vote_dto->created_at_block);
        curve_proposal_vote_dto->created_at_block = NULL;
    }
    if (curve_proposal_vote_dto->created_at_transaction) {
        free(curve_proposal_vote_dto->created_at_transaction);
        curve_proposal_vote_dto->created_at_transaction = NULL;
    }
    free(curve_proposal_vote_dto);
}

cJSON *curve_proposal_vote_dto_convertToJSON(curve_proposal_vote_dto_t *curve_proposal_vote_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_proposal_vote_dto->entry_time
    if(curve_proposal_vote_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_proposal_vote_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_proposal_vote_dto->recv_time
    if(curve_proposal_vote_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_proposal_vote_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_proposal_vote_dto->block_number
    if(curve_proposal_vote_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_proposal_vote_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_proposal_vote_dto->id
    if(curve_proposal_vote_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_proposal_vote_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_vote_dto->proposal
    if(curve_proposal_vote_dto->proposal) {
    if(cJSON_AddStringToObject(item, "proposal", curve_proposal_vote_dto->proposal) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_vote_dto->supports
    if(curve_proposal_vote_dto->supports) {
    if(cJSON_AddBoolToObject(item, "supports", curve_proposal_vote_dto->supports) == NULL) {
    goto fail; //Bool
    }
    }


    // curve_proposal_vote_dto->stake
    if(curve_proposal_vote_dto->stake) {
    if(cJSON_AddStringToObject(item, "stake", curve_proposal_vote_dto->stake) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_vote_dto->voter
    if(curve_proposal_vote_dto->voter) {
    if(cJSON_AddStringToObject(item, "voter", curve_proposal_vote_dto->voter) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_vote_dto->created
    if(curve_proposal_vote_dto->created) {
    if(cJSON_AddStringToObject(item, "created", curve_proposal_vote_dto->created) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_vote_dto->created_at_block
    if(curve_proposal_vote_dto->created_at_block) {
    if(cJSON_AddStringToObject(item, "created_at_block", curve_proposal_vote_dto->created_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_vote_dto->created_at_transaction
    if(curve_proposal_vote_dto->created_at_transaction) {
    if(cJSON_AddStringToObject(item, "created_at_transaction", curve_proposal_vote_dto->created_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_proposal_vote_dto->vid
    if(curve_proposal_vote_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_proposal_vote_dto->vid) == NULL) {
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

curve_proposal_vote_dto_t *curve_proposal_vote_dto_parseFromJSON(cJSON *curve_proposal_vote_dtoJSON){

    curve_proposal_vote_dto_t *curve_proposal_vote_dto_local_var = NULL;

    // curve_proposal_vote_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_proposal_vote_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_proposal_vote_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_proposal_vote_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_proposal_vote_dto->proposal
    cJSON *proposal = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "proposal");
    if (proposal) { 
    if(!cJSON_IsString(proposal) && !cJSON_IsNull(proposal))
    {
    goto end; //String
    }
    }

    // curve_proposal_vote_dto->supports
    cJSON *supports = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "supports");
    if (supports) { 
    if(!cJSON_IsBool(supports))
    {
    goto end; //Bool
    }
    }

    // curve_proposal_vote_dto->stake
    cJSON *stake = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "stake");
    if (stake) { 
    if(!cJSON_IsString(stake) && !cJSON_IsNull(stake))
    {
    goto end; //String
    }
    }

    // curve_proposal_vote_dto->voter
    cJSON *voter = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "voter");
    if (voter) { 
    if(!cJSON_IsString(voter) && !cJSON_IsNull(voter))
    {
    goto end; //String
    }
    }

    // curve_proposal_vote_dto->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "created");
    if (created) { 
    if(!cJSON_IsString(created) && !cJSON_IsNull(created))
    {
    goto end; //String
    }
    }

    // curve_proposal_vote_dto->created_at_block
    cJSON *created_at_block = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "created_at_block");
    if (created_at_block) { 
    if(!cJSON_IsString(created_at_block) && !cJSON_IsNull(created_at_block))
    {
    goto end; //String
    }
    }

    // curve_proposal_vote_dto->created_at_transaction
    cJSON *created_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "created_at_transaction");
    if (created_at_transaction) { 
    if(!cJSON_IsString(created_at_transaction) && !cJSON_IsNull(created_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_proposal_vote_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_proposal_vote_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_proposal_vote_dto_local_var = curve_proposal_vote_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        proposal && !cJSON_IsNull(proposal) ? strdup(proposal->valuestring) : NULL,
        supports ? supports->valueint : 0,
        stake && !cJSON_IsNull(stake) ? strdup(stake->valuestring) : NULL,
        voter && !cJSON_IsNull(voter) ? strdup(voter->valuestring) : NULL,
        created && !cJSON_IsNull(created) ? strdup(created->valuestring) : NULL,
        created_at_block && !cJSON_IsNull(created_at_block) ? strdup(created_at_block->valuestring) : NULL,
        created_at_transaction && !cJSON_IsNull(created_at_transaction) ? strdup(created_at_transaction->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_proposal_vote_dto_local_var;
end:
    return NULL;

}
