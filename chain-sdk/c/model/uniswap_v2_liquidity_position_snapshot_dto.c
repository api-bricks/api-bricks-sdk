#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_liquidity_position_snapshot_dto.h"



uniswap_v2_liquidity_position_snapshot_dto_t *uniswap_v2_liquidity_position_snapshot_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *liquidity_position,
    int timestamp,
    int block,
    char *user,
    char *pair,
    char *token_0_price_usd,
    char *token_1_price_usd,
    char *reserve_0,
    char *reserve_1,
    char *reserve_usd,
    char *liquidity_token_total_supply,
    char *liquidity_token_balance,
    long vid,
    char *block_range
    ) {
    uniswap_v2_liquidity_position_snapshot_dto_t *uniswap_v2_liquidity_position_snapshot_dto_local_var = malloc(sizeof(uniswap_v2_liquidity_position_snapshot_dto_t));
    if (!uniswap_v2_liquidity_position_snapshot_dto_local_var) {
        return NULL;
    }
    uniswap_v2_liquidity_position_snapshot_dto_local_var->entry_time = entry_time;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->recv_time = recv_time;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->block_number = block_number;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->id = id;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->liquidity_position = liquidity_position;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->timestamp = timestamp;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->block = block;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->user = user;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->pair = pair;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->token_0_price_usd = token_0_price_usd;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->token_1_price_usd = token_1_price_usd;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->reserve_0 = reserve_0;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->reserve_1 = reserve_1;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->reserve_usd = reserve_usd;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->liquidity_token_total_supply = liquidity_token_total_supply;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->liquidity_token_balance = liquidity_token_balance;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->vid = vid;
    uniswap_v2_liquidity_position_snapshot_dto_local_var->block_range = block_range;

    return uniswap_v2_liquidity_position_snapshot_dto_local_var;
}


void uniswap_v2_liquidity_position_snapshot_dto_free(uniswap_v2_liquidity_position_snapshot_dto_t *uniswap_v2_liquidity_position_snapshot_dto) {
    if(NULL == uniswap_v2_liquidity_position_snapshot_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_liquidity_position_snapshot_dto->entry_time) {
        free(uniswap_v2_liquidity_position_snapshot_dto->entry_time);
        uniswap_v2_liquidity_position_snapshot_dto->entry_time = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->recv_time) {
        free(uniswap_v2_liquidity_position_snapshot_dto->recv_time);
        uniswap_v2_liquidity_position_snapshot_dto->recv_time = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->id) {
        free(uniswap_v2_liquidity_position_snapshot_dto->id);
        uniswap_v2_liquidity_position_snapshot_dto->id = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->liquidity_position) {
        free(uniswap_v2_liquidity_position_snapshot_dto->liquidity_position);
        uniswap_v2_liquidity_position_snapshot_dto->liquidity_position = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->user) {
        free(uniswap_v2_liquidity_position_snapshot_dto->user);
        uniswap_v2_liquidity_position_snapshot_dto->user = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->pair) {
        free(uniswap_v2_liquidity_position_snapshot_dto->pair);
        uniswap_v2_liquidity_position_snapshot_dto->pair = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->token_0_price_usd) {
        free(uniswap_v2_liquidity_position_snapshot_dto->token_0_price_usd);
        uniswap_v2_liquidity_position_snapshot_dto->token_0_price_usd = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->token_1_price_usd) {
        free(uniswap_v2_liquidity_position_snapshot_dto->token_1_price_usd);
        uniswap_v2_liquidity_position_snapshot_dto->token_1_price_usd = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->reserve_0) {
        free(uniswap_v2_liquidity_position_snapshot_dto->reserve_0);
        uniswap_v2_liquidity_position_snapshot_dto->reserve_0 = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->reserve_1) {
        free(uniswap_v2_liquidity_position_snapshot_dto->reserve_1);
        uniswap_v2_liquidity_position_snapshot_dto->reserve_1 = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->reserve_usd) {
        free(uniswap_v2_liquidity_position_snapshot_dto->reserve_usd);
        uniswap_v2_liquidity_position_snapshot_dto->reserve_usd = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_total_supply) {
        free(uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_total_supply);
        uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_total_supply = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_balance) {
        free(uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_balance);
        uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_balance = NULL;
    }
    if (uniswap_v2_liquidity_position_snapshot_dto->block_range) {
        free(uniswap_v2_liquidity_position_snapshot_dto->block_range);
        uniswap_v2_liquidity_position_snapshot_dto->block_range = NULL;
    }
    free(uniswap_v2_liquidity_position_snapshot_dto);
}

cJSON *uniswap_v2_liquidity_position_snapshot_dto_convertToJSON(uniswap_v2_liquidity_position_snapshot_dto_t *uniswap_v2_liquidity_position_snapshot_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_liquidity_position_snapshot_dto->entry_time
    if(uniswap_v2_liquidity_position_snapshot_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_liquidity_position_snapshot_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->recv_time
    if(uniswap_v2_liquidity_position_snapshot_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_liquidity_position_snapshot_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->block_number
    if(uniswap_v2_liquidity_position_snapshot_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_liquidity_position_snapshot_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->id
    if(uniswap_v2_liquidity_position_snapshot_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_liquidity_position_snapshot_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->liquidity_position
    if(uniswap_v2_liquidity_position_snapshot_dto->liquidity_position) {
    if(cJSON_AddStringToObject(item, "liquidity_position", uniswap_v2_liquidity_position_snapshot_dto->liquidity_position) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->timestamp
    if(uniswap_v2_liquidity_position_snapshot_dto->timestamp) {
    if(cJSON_AddNumberToObject(item, "timestamp", uniswap_v2_liquidity_position_snapshot_dto->timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->block
    if(uniswap_v2_liquidity_position_snapshot_dto->block) {
    if(cJSON_AddNumberToObject(item, "block", uniswap_v2_liquidity_position_snapshot_dto->block) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->user
    if(uniswap_v2_liquidity_position_snapshot_dto->user) {
    if(cJSON_AddStringToObject(item, "user", uniswap_v2_liquidity_position_snapshot_dto->user) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->pair
    if(uniswap_v2_liquidity_position_snapshot_dto->pair) {
    if(cJSON_AddStringToObject(item, "pair", uniswap_v2_liquidity_position_snapshot_dto->pair) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->token_0_price_usd
    if(uniswap_v2_liquidity_position_snapshot_dto->token_0_price_usd) {
    if(cJSON_AddStringToObject(item, "token_0_price_usd", uniswap_v2_liquidity_position_snapshot_dto->token_0_price_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->token_1_price_usd
    if(uniswap_v2_liquidity_position_snapshot_dto->token_1_price_usd) {
    if(cJSON_AddStringToObject(item, "token_1_price_usd", uniswap_v2_liquidity_position_snapshot_dto->token_1_price_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->reserve_0
    if(uniswap_v2_liquidity_position_snapshot_dto->reserve_0) {
    if(cJSON_AddStringToObject(item, "reserve_0", uniswap_v2_liquidity_position_snapshot_dto->reserve_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->reserve_1
    if(uniswap_v2_liquidity_position_snapshot_dto->reserve_1) {
    if(cJSON_AddStringToObject(item, "reserve_1", uniswap_v2_liquidity_position_snapshot_dto->reserve_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->reserve_usd
    if(uniswap_v2_liquidity_position_snapshot_dto->reserve_usd) {
    if(cJSON_AddStringToObject(item, "reserve_usd", uniswap_v2_liquidity_position_snapshot_dto->reserve_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_total_supply
    if(uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_total_supply) {
    if(cJSON_AddStringToObject(item, "liquidity_token_total_supply", uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_total_supply) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_balance
    if(uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_balance) {
    if(cJSON_AddStringToObject(item, "liquidity_token_balance", uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_balance) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->vid
    if(uniswap_v2_liquidity_position_snapshot_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_liquidity_position_snapshot_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_liquidity_position_snapshot_dto->block_range
    if(uniswap_v2_liquidity_position_snapshot_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", uniswap_v2_liquidity_position_snapshot_dto->block_range) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

uniswap_v2_liquidity_position_snapshot_dto_t *uniswap_v2_liquidity_position_snapshot_dto_parseFromJSON(cJSON *uniswap_v2_liquidity_position_snapshot_dtoJSON){

    uniswap_v2_liquidity_position_snapshot_dto_t *uniswap_v2_liquidity_position_snapshot_dto_local_var = NULL;

    // uniswap_v2_liquidity_position_snapshot_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->liquidity_position
    cJSON *liquidity_position = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "liquidity_position");
    if (liquidity_position) { 
    if(!cJSON_IsString(liquidity_position) && !cJSON_IsNull(liquidity_position))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsNumber(timestamp))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->block
    cJSON *block = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "block");
    if (block) { 
    if(!cJSON_IsNumber(block))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->user
    cJSON *user = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "user");
    if (user) { 
    if(!cJSON_IsString(user) && !cJSON_IsNull(user))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->pair
    cJSON *pair = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "pair");
    if (pair) { 
    if(!cJSON_IsString(pair) && !cJSON_IsNull(pair))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->token_0_price_usd
    cJSON *token_0_price_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "token_0_price_usd");
    if (token_0_price_usd) { 
    if(!cJSON_IsString(token_0_price_usd) && !cJSON_IsNull(token_0_price_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->token_1_price_usd
    cJSON *token_1_price_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "token_1_price_usd");
    if (token_1_price_usd) { 
    if(!cJSON_IsString(token_1_price_usd) && !cJSON_IsNull(token_1_price_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->reserve_0
    cJSON *reserve_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "reserve_0");
    if (reserve_0) { 
    if(!cJSON_IsString(reserve_0) && !cJSON_IsNull(reserve_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->reserve_1
    cJSON *reserve_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "reserve_1");
    if (reserve_1) { 
    if(!cJSON_IsString(reserve_1) && !cJSON_IsNull(reserve_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->reserve_usd
    cJSON *reserve_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "reserve_usd");
    if (reserve_usd) { 
    if(!cJSON_IsString(reserve_usd) && !cJSON_IsNull(reserve_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_total_supply
    cJSON *liquidity_token_total_supply = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "liquidity_token_total_supply");
    if (liquidity_token_total_supply) { 
    if(!cJSON_IsString(liquidity_token_total_supply) && !cJSON_IsNull(liquidity_token_total_supply))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->liquidity_token_balance
    cJSON *liquidity_token_balance = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "liquidity_token_balance");
    if (liquidity_token_balance) { 
    if(!cJSON_IsString(liquidity_token_balance) && !cJSON_IsNull(liquidity_token_balance))
    {
    goto end; //String
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_liquidity_position_snapshot_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(uniswap_v2_liquidity_position_snapshot_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }


    uniswap_v2_liquidity_position_snapshot_dto_local_var = uniswap_v2_liquidity_position_snapshot_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        liquidity_position && !cJSON_IsNull(liquidity_position) ? strdup(liquidity_position->valuestring) : NULL,
        timestamp ? timestamp->valuedouble : 0,
        block ? block->valuedouble : 0,
        user && !cJSON_IsNull(user) ? strdup(user->valuestring) : NULL,
        pair && !cJSON_IsNull(pair) ? strdup(pair->valuestring) : NULL,
        token_0_price_usd && !cJSON_IsNull(token_0_price_usd) ? strdup(token_0_price_usd->valuestring) : NULL,
        token_1_price_usd && !cJSON_IsNull(token_1_price_usd) ? strdup(token_1_price_usd->valuestring) : NULL,
        reserve_0 && !cJSON_IsNull(reserve_0) ? strdup(reserve_0->valuestring) : NULL,
        reserve_1 && !cJSON_IsNull(reserve_1) ? strdup(reserve_1->valuestring) : NULL,
        reserve_usd && !cJSON_IsNull(reserve_usd) ? strdup(reserve_usd->valuestring) : NULL,
        liquidity_token_total_supply && !cJSON_IsNull(liquidity_token_total_supply) ? strdup(liquidity_token_total_supply->valuestring) : NULL,
        liquidity_token_balance && !cJSON_IsNull(liquidity_token_balance) ? strdup(liquidity_token_balance->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL
        );

    return uniswap_v2_liquidity_position_snapshot_dto_local_var;
end:
    return NULL;

}
