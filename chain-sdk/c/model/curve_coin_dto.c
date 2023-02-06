#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_coin_dto.h"



curve_coin_dto_t *curve_coin_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int index,
    char *pool,
    char *token,
    char *underlying,
    char *balance,
    char *rate,
    char *updated,
    char *updated_at_block,
    char *updated_at_transaction,
    long vid,
    char *block_range
    ) {
    curve_coin_dto_t *curve_coin_dto_local_var = malloc(sizeof(curve_coin_dto_t));
    if (!curve_coin_dto_local_var) {
        return NULL;
    }
    curve_coin_dto_local_var->entry_time = entry_time;
    curve_coin_dto_local_var->recv_time = recv_time;
    curve_coin_dto_local_var->block_number = block_number;
    curve_coin_dto_local_var->id = id;
    curve_coin_dto_local_var->index = index;
    curve_coin_dto_local_var->pool = pool;
    curve_coin_dto_local_var->token = token;
    curve_coin_dto_local_var->underlying = underlying;
    curve_coin_dto_local_var->balance = balance;
    curve_coin_dto_local_var->rate = rate;
    curve_coin_dto_local_var->updated = updated;
    curve_coin_dto_local_var->updated_at_block = updated_at_block;
    curve_coin_dto_local_var->updated_at_transaction = updated_at_transaction;
    curve_coin_dto_local_var->vid = vid;
    curve_coin_dto_local_var->block_range = block_range;

    return curve_coin_dto_local_var;
}


void curve_coin_dto_free(curve_coin_dto_t *curve_coin_dto) {
    if(NULL == curve_coin_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_coin_dto->entry_time) {
        free(curve_coin_dto->entry_time);
        curve_coin_dto->entry_time = NULL;
    }
    if (curve_coin_dto->recv_time) {
        free(curve_coin_dto->recv_time);
        curve_coin_dto->recv_time = NULL;
    }
    if (curve_coin_dto->id) {
        free(curve_coin_dto->id);
        curve_coin_dto->id = NULL;
    }
    if (curve_coin_dto->pool) {
        free(curve_coin_dto->pool);
        curve_coin_dto->pool = NULL;
    }
    if (curve_coin_dto->token) {
        free(curve_coin_dto->token);
        curve_coin_dto->token = NULL;
    }
    if (curve_coin_dto->underlying) {
        free(curve_coin_dto->underlying);
        curve_coin_dto->underlying = NULL;
    }
    if (curve_coin_dto->balance) {
        free(curve_coin_dto->balance);
        curve_coin_dto->balance = NULL;
    }
    if (curve_coin_dto->rate) {
        free(curve_coin_dto->rate);
        curve_coin_dto->rate = NULL;
    }
    if (curve_coin_dto->updated) {
        free(curve_coin_dto->updated);
        curve_coin_dto->updated = NULL;
    }
    if (curve_coin_dto->updated_at_block) {
        free(curve_coin_dto->updated_at_block);
        curve_coin_dto->updated_at_block = NULL;
    }
    if (curve_coin_dto->updated_at_transaction) {
        free(curve_coin_dto->updated_at_transaction);
        curve_coin_dto->updated_at_transaction = NULL;
    }
    if (curve_coin_dto->block_range) {
        free(curve_coin_dto->block_range);
        curve_coin_dto->block_range = NULL;
    }
    free(curve_coin_dto);
}

cJSON *curve_coin_dto_convertToJSON(curve_coin_dto_t *curve_coin_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_coin_dto->entry_time
    if(curve_coin_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_coin_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_coin_dto->recv_time
    if(curve_coin_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_coin_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_coin_dto->block_number
    if(curve_coin_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_coin_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_coin_dto->id
    if(curve_coin_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_coin_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_coin_dto->index
    if(curve_coin_dto->index) {
    if(cJSON_AddNumberToObject(item, "index", curve_coin_dto->index) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_coin_dto->pool
    if(curve_coin_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", curve_coin_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // curve_coin_dto->token
    if(curve_coin_dto->token) {
    if(cJSON_AddStringToObject(item, "token", curve_coin_dto->token) == NULL) {
    goto fail; //String
    }
    }


    // curve_coin_dto->underlying
    if(curve_coin_dto->underlying) {
    if(cJSON_AddStringToObject(item, "underlying", curve_coin_dto->underlying) == NULL) {
    goto fail; //String
    }
    }


    // curve_coin_dto->balance
    if(curve_coin_dto->balance) {
    if(cJSON_AddStringToObject(item, "balance", curve_coin_dto->balance) == NULL) {
    goto fail; //String
    }
    }


    // curve_coin_dto->rate
    if(curve_coin_dto->rate) {
    if(cJSON_AddStringToObject(item, "rate", curve_coin_dto->rate) == NULL) {
    goto fail; //String
    }
    }


    // curve_coin_dto->updated
    if(curve_coin_dto->updated) {
    if(cJSON_AddStringToObject(item, "updated", curve_coin_dto->updated) == NULL) {
    goto fail; //String
    }
    }


    // curve_coin_dto->updated_at_block
    if(curve_coin_dto->updated_at_block) {
    if(cJSON_AddStringToObject(item, "updated_at_block", curve_coin_dto->updated_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_coin_dto->updated_at_transaction
    if(curve_coin_dto->updated_at_transaction) {
    if(cJSON_AddStringToObject(item, "updated_at_transaction", curve_coin_dto->updated_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_coin_dto->vid
    if(curve_coin_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_coin_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_coin_dto->block_range
    if(curve_coin_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", curve_coin_dto->block_range) == NULL) {
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

curve_coin_dto_t *curve_coin_dto_parseFromJSON(cJSON *curve_coin_dtoJSON){

    curve_coin_dto_t *curve_coin_dto_local_var = NULL;

    // curve_coin_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_coin_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_coin_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_coin_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_coin_dto->index
    cJSON *index = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "index");
    if (index) { 
    if(!cJSON_IsNumber(index))
    {
    goto end; //Numeric
    }
    }

    // curve_coin_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // curve_coin_dto->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "token");
    if (token) { 
    if(!cJSON_IsString(token) && !cJSON_IsNull(token))
    {
    goto end; //String
    }
    }

    // curve_coin_dto->underlying
    cJSON *underlying = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "underlying");
    if (underlying) { 
    if(!cJSON_IsString(underlying) && !cJSON_IsNull(underlying))
    {
    goto end; //String
    }
    }

    // curve_coin_dto->balance
    cJSON *balance = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "balance");
    if (balance) { 
    if(!cJSON_IsString(balance) && !cJSON_IsNull(balance))
    {
    goto end; //String
    }
    }

    // curve_coin_dto->rate
    cJSON *rate = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "rate");
    if (rate) { 
    if(!cJSON_IsString(rate) && !cJSON_IsNull(rate))
    {
    goto end; //String
    }
    }

    // curve_coin_dto->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "updated");
    if (updated) { 
    if(!cJSON_IsString(updated) && !cJSON_IsNull(updated))
    {
    goto end; //String
    }
    }

    // curve_coin_dto->updated_at_block
    cJSON *updated_at_block = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "updated_at_block");
    if (updated_at_block) { 
    if(!cJSON_IsString(updated_at_block) && !cJSON_IsNull(updated_at_block))
    {
    goto end; //String
    }
    }

    // curve_coin_dto->updated_at_transaction
    cJSON *updated_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "updated_at_transaction");
    if (updated_at_transaction) { 
    if(!cJSON_IsString(updated_at_transaction) && !cJSON_IsNull(updated_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_coin_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // curve_coin_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(curve_coin_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }


    curve_coin_dto_local_var = curve_coin_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        index ? index->valuedouble : 0,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        token && !cJSON_IsNull(token) ? strdup(token->valuestring) : NULL,
        underlying && !cJSON_IsNull(underlying) ? strdup(underlying->valuestring) : NULL,
        balance && !cJSON_IsNull(balance) ? strdup(balance->valuestring) : NULL,
        rate && !cJSON_IsNull(rate) ? strdup(rate->valuestring) : NULL,
        updated && !cJSON_IsNull(updated) ? strdup(updated->valuestring) : NULL,
        updated_at_block && !cJSON_IsNull(updated_at_block) ? strdup(updated_at_block->valuestring) : NULL,
        updated_at_transaction && !cJSON_IsNull(updated_at_transaction) ? strdup(updated_at_transaction->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL
        );

    return curve_coin_dto_local_var;
end:
    return NULL;

}
