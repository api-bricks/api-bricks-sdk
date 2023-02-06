#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_voting_app_dto.h"



curve_voting_app_dto_t *curve_voting_app_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *address,
    char *codename,
    char *minimum_balance,
    char *minimum_quorum,
    char *minimum_time,
    char *required_support,
    char *vote_time,
    char *proposal_count,
    char *vote_count,
    char *token,
    long vid
    ) {
    curve_voting_app_dto_t *curve_voting_app_dto_local_var = malloc(sizeof(curve_voting_app_dto_t));
    if (!curve_voting_app_dto_local_var) {
        return NULL;
    }
    curve_voting_app_dto_local_var->entry_time = entry_time;
    curve_voting_app_dto_local_var->recv_time = recv_time;
    curve_voting_app_dto_local_var->block_number = block_number;
    curve_voting_app_dto_local_var->id = id;
    curve_voting_app_dto_local_var->address = address;
    curve_voting_app_dto_local_var->codename = codename;
    curve_voting_app_dto_local_var->minimum_balance = minimum_balance;
    curve_voting_app_dto_local_var->minimum_quorum = minimum_quorum;
    curve_voting_app_dto_local_var->minimum_time = minimum_time;
    curve_voting_app_dto_local_var->required_support = required_support;
    curve_voting_app_dto_local_var->vote_time = vote_time;
    curve_voting_app_dto_local_var->proposal_count = proposal_count;
    curve_voting_app_dto_local_var->vote_count = vote_count;
    curve_voting_app_dto_local_var->token = token;
    curve_voting_app_dto_local_var->vid = vid;

    return curve_voting_app_dto_local_var;
}


void curve_voting_app_dto_free(curve_voting_app_dto_t *curve_voting_app_dto) {
    if(NULL == curve_voting_app_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_voting_app_dto->entry_time) {
        free(curve_voting_app_dto->entry_time);
        curve_voting_app_dto->entry_time = NULL;
    }
    if (curve_voting_app_dto->recv_time) {
        free(curve_voting_app_dto->recv_time);
        curve_voting_app_dto->recv_time = NULL;
    }
    if (curve_voting_app_dto->id) {
        free(curve_voting_app_dto->id);
        curve_voting_app_dto->id = NULL;
    }
    if (curve_voting_app_dto->address) {
        free(curve_voting_app_dto->address);
        curve_voting_app_dto->address = NULL;
    }
    if (curve_voting_app_dto->codename) {
        free(curve_voting_app_dto->codename);
        curve_voting_app_dto->codename = NULL;
    }
    if (curve_voting_app_dto->minimum_balance) {
        free(curve_voting_app_dto->minimum_balance);
        curve_voting_app_dto->minimum_balance = NULL;
    }
    if (curve_voting_app_dto->minimum_quorum) {
        free(curve_voting_app_dto->minimum_quorum);
        curve_voting_app_dto->minimum_quorum = NULL;
    }
    if (curve_voting_app_dto->minimum_time) {
        free(curve_voting_app_dto->minimum_time);
        curve_voting_app_dto->minimum_time = NULL;
    }
    if (curve_voting_app_dto->required_support) {
        free(curve_voting_app_dto->required_support);
        curve_voting_app_dto->required_support = NULL;
    }
    if (curve_voting_app_dto->vote_time) {
        free(curve_voting_app_dto->vote_time);
        curve_voting_app_dto->vote_time = NULL;
    }
    if (curve_voting_app_dto->proposal_count) {
        free(curve_voting_app_dto->proposal_count);
        curve_voting_app_dto->proposal_count = NULL;
    }
    if (curve_voting_app_dto->vote_count) {
        free(curve_voting_app_dto->vote_count);
        curve_voting_app_dto->vote_count = NULL;
    }
    if (curve_voting_app_dto->token) {
        free(curve_voting_app_dto->token);
        curve_voting_app_dto->token = NULL;
    }
    free(curve_voting_app_dto);
}

cJSON *curve_voting_app_dto_convertToJSON(curve_voting_app_dto_t *curve_voting_app_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_voting_app_dto->entry_time
    if(curve_voting_app_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_voting_app_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_voting_app_dto->recv_time
    if(curve_voting_app_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_voting_app_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_voting_app_dto->block_number
    if(curve_voting_app_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_voting_app_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_voting_app_dto->id
    if(curve_voting_app_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_voting_app_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->address
    if(curve_voting_app_dto->address) {
    if(cJSON_AddStringToObject(item, "address", curve_voting_app_dto->address) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->codename
    if(curve_voting_app_dto->codename) {
    if(cJSON_AddStringToObject(item, "codename", curve_voting_app_dto->codename) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->minimum_balance
    if(curve_voting_app_dto->minimum_balance) {
    if(cJSON_AddStringToObject(item, "minimum_balance", curve_voting_app_dto->minimum_balance) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->minimum_quorum
    if(curve_voting_app_dto->minimum_quorum) {
    if(cJSON_AddStringToObject(item, "minimum_quorum", curve_voting_app_dto->minimum_quorum) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->minimum_time
    if(curve_voting_app_dto->minimum_time) {
    if(cJSON_AddStringToObject(item, "minimum_time", curve_voting_app_dto->minimum_time) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->required_support
    if(curve_voting_app_dto->required_support) {
    if(cJSON_AddStringToObject(item, "required_support", curve_voting_app_dto->required_support) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->vote_time
    if(curve_voting_app_dto->vote_time) {
    if(cJSON_AddStringToObject(item, "vote_time", curve_voting_app_dto->vote_time) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->proposal_count
    if(curve_voting_app_dto->proposal_count) {
    if(cJSON_AddStringToObject(item, "proposal_count", curve_voting_app_dto->proposal_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->vote_count
    if(curve_voting_app_dto->vote_count) {
    if(cJSON_AddStringToObject(item, "vote_count", curve_voting_app_dto->vote_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->token
    if(curve_voting_app_dto->token) {
    if(cJSON_AddStringToObject(item, "token", curve_voting_app_dto->token) == NULL) {
    goto fail; //String
    }
    }


    // curve_voting_app_dto->vid
    if(curve_voting_app_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_voting_app_dto->vid) == NULL) {
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

curve_voting_app_dto_t *curve_voting_app_dto_parseFromJSON(cJSON *curve_voting_app_dtoJSON){

    curve_voting_app_dto_t *curve_voting_app_dto_local_var = NULL;

    // curve_voting_app_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_voting_app_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_voting_app_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_voting_app_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "address");
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->codename
    cJSON *codename = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "codename");
    if (codename) { 
    if(!cJSON_IsString(codename) && !cJSON_IsNull(codename))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->minimum_balance
    cJSON *minimum_balance = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "minimum_balance");
    if (minimum_balance) { 
    if(!cJSON_IsString(minimum_balance) && !cJSON_IsNull(minimum_balance))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->minimum_quorum
    cJSON *minimum_quorum = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "minimum_quorum");
    if (minimum_quorum) { 
    if(!cJSON_IsString(minimum_quorum) && !cJSON_IsNull(minimum_quorum))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->minimum_time
    cJSON *minimum_time = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "minimum_time");
    if (minimum_time) { 
    if(!cJSON_IsString(minimum_time) && !cJSON_IsNull(minimum_time))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->required_support
    cJSON *required_support = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "required_support");
    if (required_support) { 
    if(!cJSON_IsString(required_support) && !cJSON_IsNull(required_support))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->vote_time
    cJSON *vote_time = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "vote_time");
    if (vote_time) { 
    if(!cJSON_IsString(vote_time) && !cJSON_IsNull(vote_time))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->proposal_count
    cJSON *proposal_count = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "proposal_count");
    if (proposal_count) { 
    if(!cJSON_IsString(proposal_count) && !cJSON_IsNull(proposal_count))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->vote_count
    cJSON *vote_count = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "vote_count");
    if (vote_count) { 
    if(!cJSON_IsString(vote_count) && !cJSON_IsNull(vote_count))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "token");
    if (token) { 
    if(!cJSON_IsString(token) && !cJSON_IsNull(token))
    {
    goto end; //String
    }
    }

    // curve_voting_app_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_voting_app_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_voting_app_dto_local_var = curve_voting_app_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL,
        codename && !cJSON_IsNull(codename) ? strdup(codename->valuestring) : NULL,
        minimum_balance && !cJSON_IsNull(minimum_balance) ? strdup(minimum_balance->valuestring) : NULL,
        minimum_quorum && !cJSON_IsNull(minimum_quorum) ? strdup(minimum_quorum->valuestring) : NULL,
        minimum_time && !cJSON_IsNull(minimum_time) ? strdup(minimum_time->valuestring) : NULL,
        required_support && !cJSON_IsNull(required_support) ? strdup(required_support->valuestring) : NULL,
        vote_time && !cJSON_IsNull(vote_time) ? strdup(vote_time->valuestring) : NULL,
        proposal_count && !cJSON_IsNull(proposal_count) ? strdup(proposal_count->valuestring) : NULL,
        vote_count && !cJSON_IsNull(vote_count) ? strdup(vote_count->valuestring) : NULL,
        token && !cJSON_IsNull(token) ? strdup(token->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_voting_app_dto_local_var;
end:
    return NULL;

}
