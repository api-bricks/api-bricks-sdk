#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_liquidity_position_dto.h"



uniswap_v2_liquidity_position_dto_t *uniswap_v2_liquidity_position_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *user,
    char *pair,
    char *liquidity_token_balance,
    long vid
    ) {
    uniswap_v2_liquidity_position_dto_t *uniswap_v2_liquidity_position_dto_local_var = malloc(sizeof(uniswap_v2_liquidity_position_dto_t));
    if (!uniswap_v2_liquidity_position_dto_local_var) {
        return NULL;
    }
    uniswap_v2_liquidity_position_dto_local_var->entry_time = entry_time;
    uniswap_v2_liquidity_position_dto_local_var->recv_time = recv_time;
    uniswap_v2_liquidity_position_dto_local_var->block_number = block_number;
    uniswap_v2_liquidity_position_dto_local_var->id = id;
    uniswap_v2_liquidity_position_dto_local_var->user = user;
    uniswap_v2_liquidity_position_dto_local_var->pair = pair;
    uniswap_v2_liquidity_position_dto_local_var->liquidity_token_balance = liquidity_token_balance;
    uniswap_v2_liquidity_position_dto_local_var->vid = vid;

    return uniswap_v2_liquidity_position_dto_local_var;
}


void uniswap_v2_liquidity_position_dto_free(uniswap_v2_liquidity_position_dto_t *uniswap_v2_liquidity_position_dto) {
    if(NULL == uniswap_v2_liquidity_position_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_liquidity_position_dto->entry_time) {
        free(uniswap_v2_liquidity_position_dto->entry_time);
        uniswap_v2_liquidity_position_dto->entry_time = NULL;
    }
    if (uniswap_v2_liquidity_position_dto->recv_time) {
        free(uniswap_v2_liquidity_position_dto->recv_time);
        uniswap_v2_liquidity_position_dto->recv_time = NULL;
    }
    if (uniswap_v2_liquidity_position_dto->id) {
        free(uniswap_v2_liquidity_position_dto->id);
        uniswap_v2_liquidity_position_dto->id = NULL;
    }
    if (uniswap_v2_liquidity_position_dto->user) {
        free(uniswap_v2_liquidity_position_dto->user);
        uniswap_v2_liquidity_position_dto->user = NULL;
    }
    if (uniswap_v2_liquidity_position_dto->pair) {
        free(uniswap_v2_liquidity_position_dto->pair);
        uniswap_v2_liquidity_position_dto->pair = NULL;
    }
    if (uniswap_v2_liquidity_position_dto->liquidity_token_balance) {
        free(uniswap_v2_liquidity_position_dto->liquidity_token_balance);
        uniswap_v2_liquidity_position_dto->liquidity_token_balance = NULL;
    }
    free(uniswap_v2_liquidity_position_dto);
}

cJSON *uniswap_v2_liquidity_position_dto_convertToJSON(uniswap_v2_liquidity_position_dto_t *uniswap_v2_liquidity_position_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_liquidity_position_dto->entry_time
    if(uniswap_v2_liquidity_position_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_liquidity_position_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_liquidity_position_dto->recv_time
    if(uniswap_v2_liquidity_position_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_liquidity_position_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_liquidity_position_dto->block_number
    if(uniswap_v2_liquidity_position_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_liquidity_position_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_liquidity_position_dto->id
    if(uniswap_v2_liquidity_position_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_liquidity_position_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_dto->user
    if(uniswap_v2_liquidity_position_dto->user) {
    if(cJSON_AddStringToObject(item, "user", uniswap_v2_liquidity_position_dto->user) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_dto->pair
    if(uniswap_v2_liquidity_position_dto->pair) {
    if(cJSON_AddStringToObject(item, "pair", uniswap_v2_liquidity_position_dto->pair) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_dto->liquidity_token_balance
    if(uniswap_v2_liquidity_position_dto->liquidity_token_balance) {
    if(cJSON_AddStringToObject(item, "liquidity_token_balance", uniswap_v2_liquidity_position_dto->liquidity_token_balance) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_dto->vid
    if(uniswap_v2_liquidity_position_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_liquidity_position_dto->vid) == NULL) {
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

uniswap_v2_liquidity_position_dto_t *uniswap_v2_liquidity_position_dto_parseFromJSON(cJSON *uniswap_v2_liquidity_position_dtoJSON){

    uniswap_v2_liquidity_position_dto_t *uniswap_v2_liquidity_position_dto_local_var = NULL;

    // uniswap_v2_liquidity_position_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_liquidity_position_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_liquidity_position_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_liquidity_position_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_dto->user
    cJSON *user = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_dtoJSON, "user");
    if (user) { 
    if(!cJSON_IsString(user) && !cJSON_IsNull(user))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_dto->pair
    cJSON *pair = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_dtoJSON, "pair");
    if (pair) { 
    if(!cJSON_IsString(pair) && !cJSON_IsNull(pair))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_dto->liquidity_token_balance
    cJSON *liquidity_token_balance = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_dtoJSON, "liquidity_token_balance");
    if (liquidity_token_balance) { 
    if(!cJSON_IsString(liquidity_token_balance) && !cJSON_IsNull(liquidity_token_balance))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v2_liquidity_position_dto_local_var = uniswap_v2_liquidity_position_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        user && !cJSON_IsNull(user) ? strdup(user->valuestring) : NULL,
        pair && !cJSON_IsNull(pair) ? strdup(pair->valuestring) : NULL,
        liquidity_token_balance && !cJSON_IsNull(liquidity_token_balance) ? strdup(liquidity_token_balance->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v2_liquidity_position_dto_local_var;
end:
    return NULL;

}
