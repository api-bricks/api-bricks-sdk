#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_remove_liquidity_one_event_dto.h"



curve_remove_liquidity_one_event_dto_t *curve_remove_liquidity_one_event_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *pool,
    char *provider,
    char *token_amount,
    char *coin_amount,
    char *block,
    char *timestamp,
    char *transaction,
    long vid
    ) {
    curve_remove_liquidity_one_event_dto_t *curve_remove_liquidity_one_event_dto_local_var = malloc(sizeof(curve_remove_liquidity_one_event_dto_t));
    if (!curve_remove_liquidity_one_event_dto_local_var) {
        return NULL;
    }
    curve_remove_liquidity_one_event_dto_local_var->entry_time = entry_time;
    curve_remove_liquidity_one_event_dto_local_var->recv_time = recv_time;
    curve_remove_liquidity_one_event_dto_local_var->block_number = block_number;
    curve_remove_liquidity_one_event_dto_local_var->id = id;
    curve_remove_liquidity_one_event_dto_local_var->pool = pool;
    curve_remove_liquidity_one_event_dto_local_var->provider = provider;
    curve_remove_liquidity_one_event_dto_local_var->token_amount = token_amount;
    curve_remove_liquidity_one_event_dto_local_var->coin_amount = coin_amount;
    curve_remove_liquidity_one_event_dto_local_var->block = block;
    curve_remove_liquidity_one_event_dto_local_var->timestamp = timestamp;
    curve_remove_liquidity_one_event_dto_local_var->transaction = transaction;
    curve_remove_liquidity_one_event_dto_local_var->vid = vid;

    return curve_remove_liquidity_one_event_dto_local_var;
}


void curve_remove_liquidity_one_event_dto_free(curve_remove_liquidity_one_event_dto_t *curve_remove_liquidity_one_event_dto) {
    if(NULL == curve_remove_liquidity_one_event_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_remove_liquidity_one_event_dto->entry_time) {
        free(curve_remove_liquidity_one_event_dto->entry_time);
        curve_remove_liquidity_one_event_dto->entry_time = NULL;
    }
    if (curve_remove_liquidity_one_event_dto->recv_time) {
        free(curve_remove_liquidity_one_event_dto->recv_time);
        curve_remove_liquidity_one_event_dto->recv_time = NULL;
    }
    if (curve_remove_liquidity_one_event_dto->id) {
        free(curve_remove_liquidity_one_event_dto->id);
        curve_remove_liquidity_one_event_dto->id = NULL;
    }
    if (curve_remove_liquidity_one_event_dto->pool) {
        free(curve_remove_liquidity_one_event_dto->pool);
        curve_remove_liquidity_one_event_dto->pool = NULL;
    }
    if (curve_remove_liquidity_one_event_dto->provider) {
        free(curve_remove_liquidity_one_event_dto->provider);
        curve_remove_liquidity_one_event_dto->provider = NULL;
    }
    if (curve_remove_liquidity_one_event_dto->token_amount) {
        free(curve_remove_liquidity_one_event_dto->token_amount);
        curve_remove_liquidity_one_event_dto->token_amount = NULL;
    }
    if (curve_remove_liquidity_one_event_dto->coin_amount) {
        free(curve_remove_liquidity_one_event_dto->coin_amount);
        curve_remove_liquidity_one_event_dto->coin_amount = NULL;
    }
    if (curve_remove_liquidity_one_event_dto->block) {
        free(curve_remove_liquidity_one_event_dto->block);
        curve_remove_liquidity_one_event_dto->block = NULL;
    }
    if (curve_remove_liquidity_one_event_dto->timestamp) {
        free(curve_remove_liquidity_one_event_dto->timestamp);
        curve_remove_liquidity_one_event_dto->timestamp = NULL;
    }
    if (curve_remove_liquidity_one_event_dto->transaction) {
        free(curve_remove_liquidity_one_event_dto->transaction);
        curve_remove_liquidity_one_event_dto->transaction = NULL;
    }
    free(curve_remove_liquidity_one_event_dto);
}

cJSON *curve_remove_liquidity_one_event_dto_convertToJSON(curve_remove_liquidity_one_event_dto_t *curve_remove_liquidity_one_event_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_remove_liquidity_one_event_dto->entry_time
    if(curve_remove_liquidity_one_event_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_remove_liquidity_one_event_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_remove_liquidity_one_event_dto->recv_time
    if(curve_remove_liquidity_one_event_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_remove_liquidity_one_event_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_remove_liquidity_one_event_dto->block_number
    if(curve_remove_liquidity_one_event_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_remove_liquidity_one_event_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_remove_liquidity_one_event_dto->id
    if(curve_remove_liquidity_one_event_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_remove_liquidity_one_event_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_remove_liquidity_one_event_dto->pool
    if(curve_remove_liquidity_one_event_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", curve_remove_liquidity_one_event_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // curve_remove_liquidity_one_event_dto->provider
    if(curve_remove_liquidity_one_event_dto->provider) {
    if(cJSON_AddStringToObject(item, "provider", curve_remove_liquidity_one_event_dto->provider) == NULL) {
    goto fail; //String
    }
    }


    // curve_remove_liquidity_one_event_dto->token_amount
    if(curve_remove_liquidity_one_event_dto->token_amount) {
    if(cJSON_AddStringToObject(item, "token_amount", curve_remove_liquidity_one_event_dto->token_amount) == NULL) {
    goto fail; //String
    }
    }


    // curve_remove_liquidity_one_event_dto->coin_amount
    if(curve_remove_liquidity_one_event_dto->coin_amount) {
    if(cJSON_AddStringToObject(item, "coin_amount", curve_remove_liquidity_one_event_dto->coin_amount) == NULL) {
    goto fail; //String
    }
    }


    // curve_remove_liquidity_one_event_dto->block
    if(curve_remove_liquidity_one_event_dto->block) {
    if(cJSON_AddStringToObject(item, "block", curve_remove_liquidity_one_event_dto->block) == NULL) {
    goto fail; //String
    }
    }


    // curve_remove_liquidity_one_event_dto->timestamp
    if(curve_remove_liquidity_one_event_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", curve_remove_liquidity_one_event_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // curve_remove_liquidity_one_event_dto->transaction
    if(curve_remove_liquidity_one_event_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", curve_remove_liquidity_one_event_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_remove_liquidity_one_event_dto->vid
    if(curve_remove_liquidity_one_event_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_remove_liquidity_one_event_dto->vid) == NULL) {
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

curve_remove_liquidity_one_event_dto_t *curve_remove_liquidity_one_event_dto_parseFromJSON(cJSON *curve_remove_liquidity_one_event_dtoJSON){

    curve_remove_liquidity_one_event_dto_t *curve_remove_liquidity_one_event_dto_local_var = NULL;

    // curve_remove_liquidity_one_event_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_remove_liquidity_one_event_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_remove_liquidity_one_event_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_remove_liquidity_one_event_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_remove_liquidity_one_event_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // curve_remove_liquidity_one_event_dto->provider
    cJSON *provider = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "provider");
    if (provider) { 
    if(!cJSON_IsString(provider) && !cJSON_IsNull(provider))
    {
    goto end; //String
    }
    }

    // curve_remove_liquidity_one_event_dto->token_amount
    cJSON *token_amount = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "token_amount");
    if (token_amount) { 
    if(!cJSON_IsString(token_amount) && !cJSON_IsNull(token_amount))
    {
    goto end; //String
    }
    }

    // curve_remove_liquidity_one_event_dto->coin_amount
    cJSON *coin_amount = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "coin_amount");
    if (coin_amount) { 
    if(!cJSON_IsString(coin_amount) && !cJSON_IsNull(coin_amount))
    {
    goto end; //String
    }
    }

    // curve_remove_liquidity_one_event_dto->block
    cJSON *block = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "block");
    if (block) { 
    if(!cJSON_IsString(block) && !cJSON_IsNull(block))
    {
    goto end; //String
    }
    }

    // curve_remove_liquidity_one_event_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // curve_remove_liquidity_one_event_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // curve_remove_liquidity_one_event_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_remove_liquidity_one_event_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_remove_liquidity_one_event_dto_local_var = curve_remove_liquidity_one_event_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        provider && !cJSON_IsNull(provider) ? strdup(provider->valuestring) : NULL,
        token_amount && !cJSON_IsNull(token_amount) ? strdup(token_amount->valuestring) : NULL,
        coin_amount && !cJSON_IsNull(coin_amount) ? strdup(coin_amount->valuestring) : NULL,
        block && !cJSON_IsNull(block) ? strdup(block->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        transaction && !cJSON_IsNull(transaction) ? strdup(transaction->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_remove_liquidity_one_event_dto_local_var;
end:
    return NULL;

}
