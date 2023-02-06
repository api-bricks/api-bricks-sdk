#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_mint_dto.h"



uniswap_v2_mint_dto_t *uniswap_v2_mint_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *transaction,
    char *timestamp,
    char *pair,
    char *to,
    char *liquidity,
    char *sender,
    char *amount_0,
    char *amount_1,
    char *log_index,
    char *amount_usd,
    char *fee_to,
    char *fee_liquidity,
    long vid,
    char *block_range
    ) {
    uniswap_v2_mint_dto_t *uniswap_v2_mint_dto_local_var = malloc(sizeof(uniswap_v2_mint_dto_t));
    if (!uniswap_v2_mint_dto_local_var) {
        return NULL;
    }
    uniswap_v2_mint_dto_local_var->entry_time = entry_time;
    uniswap_v2_mint_dto_local_var->recv_time = recv_time;
    uniswap_v2_mint_dto_local_var->block_number = block_number;
    uniswap_v2_mint_dto_local_var->id = id;
    uniswap_v2_mint_dto_local_var->transaction = transaction;
    uniswap_v2_mint_dto_local_var->timestamp = timestamp;
    uniswap_v2_mint_dto_local_var->pair = pair;
    uniswap_v2_mint_dto_local_var->to = to;
    uniswap_v2_mint_dto_local_var->liquidity = liquidity;
    uniswap_v2_mint_dto_local_var->sender = sender;
    uniswap_v2_mint_dto_local_var->amount_0 = amount_0;
    uniswap_v2_mint_dto_local_var->amount_1 = amount_1;
    uniswap_v2_mint_dto_local_var->log_index = log_index;
    uniswap_v2_mint_dto_local_var->amount_usd = amount_usd;
    uniswap_v2_mint_dto_local_var->fee_to = fee_to;
    uniswap_v2_mint_dto_local_var->fee_liquidity = fee_liquidity;
    uniswap_v2_mint_dto_local_var->vid = vid;
    uniswap_v2_mint_dto_local_var->block_range = block_range;

    return uniswap_v2_mint_dto_local_var;
}


void uniswap_v2_mint_dto_free(uniswap_v2_mint_dto_t *uniswap_v2_mint_dto) {
    if(NULL == uniswap_v2_mint_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_mint_dto->entry_time) {
        free(uniswap_v2_mint_dto->entry_time);
        uniswap_v2_mint_dto->entry_time = NULL;
    }
    if (uniswap_v2_mint_dto->recv_time) {
        free(uniswap_v2_mint_dto->recv_time);
        uniswap_v2_mint_dto->recv_time = NULL;
    }
    if (uniswap_v2_mint_dto->id) {
        free(uniswap_v2_mint_dto->id);
        uniswap_v2_mint_dto->id = NULL;
    }
    if (uniswap_v2_mint_dto->transaction) {
        free(uniswap_v2_mint_dto->transaction);
        uniswap_v2_mint_dto->transaction = NULL;
    }
    if (uniswap_v2_mint_dto->timestamp) {
        free(uniswap_v2_mint_dto->timestamp);
        uniswap_v2_mint_dto->timestamp = NULL;
    }
    if (uniswap_v2_mint_dto->pair) {
        free(uniswap_v2_mint_dto->pair);
        uniswap_v2_mint_dto->pair = NULL;
    }
    if (uniswap_v2_mint_dto->to) {
        free(uniswap_v2_mint_dto->to);
        uniswap_v2_mint_dto->to = NULL;
    }
    if (uniswap_v2_mint_dto->liquidity) {
        free(uniswap_v2_mint_dto->liquidity);
        uniswap_v2_mint_dto->liquidity = NULL;
    }
    if (uniswap_v2_mint_dto->sender) {
        free(uniswap_v2_mint_dto->sender);
        uniswap_v2_mint_dto->sender = NULL;
    }
    if (uniswap_v2_mint_dto->amount_0) {
        free(uniswap_v2_mint_dto->amount_0);
        uniswap_v2_mint_dto->amount_0 = NULL;
    }
    if (uniswap_v2_mint_dto->amount_1) {
        free(uniswap_v2_mint_dto->amount_1);
        uniswap_v2_mint_dto->amount_1 = NULL;
    }
    if (uniswap_v2_mint_dto->log_index) {
        free(uniswap_v2_mint_dto->log_index);
        uniswap_v2_mint_dto->log_index = NULL;
    }
    if (uniswap_v2_mint_dto->amount_usd) {
        free(uniswap_v2_mint_dto->amount_usd);
        uniswap_v2_mint_dto->amount_usd = NULL;
    }
    if (uniswap_v2_mint_dto->fee_to) {
        free(uniswap_v2_mint_dto->fee_to);
        uniswap_v2_mint_dto->fee_to = NULL;
    }
    if (uniswap_v2_mint_dto->fee_liquidity) {
        free(uniswap_v2_mint_dto->fee_liquidity);
        uniswap_v2_mint_dto->fee_liquidity = NULL;
    }
    if (uniswap_v2_mint_dto->block_range) {
        free(uniswap_v2_mint_dto->block_range);
        uniswap_v2_mint_dto->block_range = NULL;
    }
    free(uniswap_v2_mint_dto);
}

cJSON *uniswap_v2_mint_dto_convertToJSON(uniswap_v2_mint_dto_t *uniswap_v2_mint_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_mint_dto->entry_time
    if(uniswap_v2_mint_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_mint_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_mint_dto->recv_time
    if(uniswap_v2_mint_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_mint_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_mint_dto->block_number
    if(uniswap_v2_mint_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_mint_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_mint_dto->id
    if(uniswap_v2_mint_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_mint_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->transaction
    if(uniswap_v2_mint_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", uniswap_v2_mint_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->timestamp
    if(uniswap_v2_mint_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", uniswap_v2_mint_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->pair
    if(uniswap_v2_mint_dto->pair) {
    if(cJSON_AddStringToObject(item, "pair", uniswap_v2_mint_dto->pair) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->to
    if(uniswap_v2_mint_dto->to) {
    if(cJSON_AddStringToObject(item, "to", uniswap_v2_mint_dto->to) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->liquidity
    if(uniswap_v2_mint_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", uniswap_v2_mint_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->sender
    if(uniswap_v2_mint_dto->sender) {
    if(cJSON_AddStringToObject(item, "sender", uniswap_v2_mint_dto->sender) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->amount_0
    if(uniswap_v2_mint_dto->amount_0) {
    if(cJSON_AddStringToObject(item, "amount_0", uniswap_v2_mint_dto->amount_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->amount_1
    if(uniswap_v2_mint_dto->amount_1) {
    if(cJSON_AddStringToObject(item, "amount_1", uniswap_v2_mint_dto->amount_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->log_index
    if(uniswap_v2_mint_dto->log_index) {
    if(cJSON_AddStringToObject(item, "log_index", uniswap_v2_mint_dto->log_index) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->amount_usd
    if(uniswap_v2_mint_dto->amount_usd) {
    if(cJSON_AddStringToObject(item, "amount_usd", uniswap_v2_mint_dto->amount_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->fee_to
    if(uniswap_v2_mint_dto->fee_to) {
    if(cJSON_AddStringToObject(item, "fee_to", uniswap_v2_mint_dto->fee_to) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->fee_liquidity
    if(uniswap_v2_mint_dto->fee_liquidity) {
    if(cJSON_AddStringToObject(item, "fee_liquidity", uniswap_v2_mint_dto->fee_liquidity) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_mint_dto->vid
    if(uniswap_v2_mint_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_mint_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_mint_dto->block_range
    if(uniswap_v2_mint_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", uniswap_v2_mint_dto->block_range) == NULL) {
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

uniswap_v2_mint_dto_t *uniswap_v2_mint_dto_parseFromJSON(cJSON *uniswap_v2_mint_dtoJSON){

    uniswap_v2_mint_dto_t *uniswap_v2_mint_dto_local_var = NULL;

    // uniswap_v2_mint_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_mint_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_mint_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_mint_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->pair
    cJSON *pair = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "pair");
    if (pair) { 
    if(!cJSON_IsString(pair) && !cJSON_IsNull(pair))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->to
    cJSON *to = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "to");
    if (to) { 
    if(!cJSON_IsString(to) && !cJSON_IsNull(to))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity) && !cJSON_IsNull(liquidity))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "sender");
    if (sender) { 
    if(!cJSON_IsString(sender) && !cJSON_IsNull(sender))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->amount_0
    cJSON *amount_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "amount_0");
    if (amount_0) { 
    if(!cJSON_IsString(amount_0) && !cJSON_IsNull(amount_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->amount_1
    cJSON *amount_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "amount_1");
    if (amount_1) { 
    if(!cJSON_IsString(amount_1) && !cJSON_IsNull(amount_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "log_index");
    if (log_index) { 
    if(!cJSON_IsString(log_index) && !cJSON_IsNull(log_index))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->amount_usd
    cJSON *amount_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "amount_usd");
    if (amount_usd) { 
    if(!cJSON_IsString(amount_usd) && !cJSON_IsNull(amount_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->fee_to
    cJSON *fee_to = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "fee_to");
    if (fee_to) { 
    if(!cJSON_IsString(fee_to) && !cJSON_IsNull(fee_to))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->fee_liquidity
    cJSON *fee_liquidity = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "fee_liquidity");
    if (fee_liquidity) { 
    if(!cJSON_IsString(fee_liquidity) && !cJSON_IsNull(fee_liquidity))
    {
    goto end; //String
    }
    }

    // uniswap_v2_mint_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_mint_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(uniswap_v2_mint_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }


    uniswap_v2_mint_dto_local_var = uniswap_v2_mint_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        transaction && !cJSON_IsNull(transaction) ? strdup(transaction->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        pair && !cJSON_IsNull(pair) ? strdup(pair->valuestring) : NULL,
        to && !cJSON_IsNull(to) ? strdup(to->valuestring) : NULL,
        liquidity && !cJSON_IsNull(liquidity) ? strdup(liquidity->valuestring) : NULL,
        sender && !cJSON_IsNull(sender) ? strdup(sender->valuestring) : NULL,
        amount_0 && !cJSON_IsNull(amount_0) ? strdup(amount_0->valuestring) : NULL,
        amount_1 && !cJSON_IsNull(amount_1) ? strdup(amount_1->valuestring) : NULL,
        log_index && !cJSON_IsNull(log_index) ? strdup(log_index->valuestring) : NULL,
        amount_usd && !cJSON_IsNull(amount_usd) ? strdup(amount_usd->valuestring) : NULL,
        fee_to && !cJSON_IsNull(fee_to) ? strdup(fee_to->valuestring) : NULL,
        fee_liquidity && !cJSON_IsNull(fee_liquidity) ? strdup(fee_liquidity->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL
        );

    return uniswap_v2_mint_dto_local_var;
end:
    return NULL;

}
