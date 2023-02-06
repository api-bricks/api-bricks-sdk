#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_mint_dto.h"



sushiswap_mint_dto_t *sushiswap_mint_dto_create(
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
    long vid
    ) {
    sushiswap_mint_dto_t *sushiswap_mint_dto_local_var = malloc(sizeof(sushiswap_mint_dto_t));
    if (!sushiswap_mint_dto_local_var) {
        return NULL;
    }
    sushiswap_mint_dto_local_var->entry_time = entry_time;
    sushiswap_mint_dto_local_var->recv_time = recv_time;
    sushiswap_mint_dto_local_var->block_number = block_number;
    sushiswap_mint_dto_local_var->id = id;
    sushiswap_mint_dto_local_var->transaction = transaction;
    sushiswap_mint_dto_local_var->timestamp = timestamp;
    sushiswap_mint_dto_local_var->pair = pair;
    sushiswap_mint_dto_local_var->to = to;
    sushiswap_mint_dto_local_var->liquidity = liquidity;
    sushiswap_mint_dto_local_var->sender = sender;
    sushiswap_mint_dto_local_var->amount_0 = amount_0;
    sushiswap_mint_dto_local_var->amount_1 = amount_1;
    sushiswap_mint_dto_local_var->log_index = log_index;
    sushiswap_mint_dto_local_var->amount_usd = amount_usd;
    sushiswap_mint_dto_local_var->fee_to = fee_to;
    sushiswap_mint_dto_local_var->fee_liquidity = fee_liquidity;
    sushiswap_mint_dto_local_var->vid = vid;

    return sushiswap_mint_dto_local_var;
}


void sushiswap_mint_dto_free(sushiswap_mint_dto_t *sushiswap_mint_dto) {
    if(NULL == sushiswap_mint_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_mint_dto->entry_time) {
        free(sushiswap_mint_dto->entry_time);
        sushiswap_mint_dto->entry_time = NULL;
    }
    if (sushiswap_mint_dto->recv_time) {
        free(sushiswap_mint_dto->recv_time);
        sushiswap_mint_dto->recv_time = NULL;
    }
    if (sushiswap_mint_dto->id) {
        free(sushiswap_mint_dto->id);
        sushiswap_mint_dto->id = NULL;
    }
    if (sushiswap_mint_dto->transaction) {
        free(sushiswap_mint_dto->transaction);
        sushiswap_mint_dto->transaction = NULL;
    }
    if (sushiswap_mint_dto->timestamp) {
        free(sushiswap_mint_dto->timestamp);
        sushiswap_mint_dto->timestamp = NULL;
    }
    if (sushiswap_mint_dto->pair) {
        free(sushiswap_mint_dto->pair);
        sushiswap_mint_dto->pair = NULL;
    }
    if (sushiswap_mint_dto->to) {
        free(sushiswap_mint_dto->to);
        sushiswap_mint_dto->to = NULL;
    }
    if (sushiswap_mint_dto->liquidity) {
        free(sushiswap_mint_dto->liquidity);
        sushiswap_mint_dto->liquidity = NULL;
    }
    if (sushiswap_mint_dto->sender) {
        free(sushiswap_mint_dto->sender);
        sushiswap_mint_dto->sender = NULL;
    }
    if (sushiswap_mint_dto->amount_0) {
        free(sushiswap_mint_dto->amount_0);
        sushiswap_mint_dto->amount_0 = NULL;
    }
    if (sushiswap_mint_dto->amount_1) {
        free(sushiswap_mint_dto->amount_1);
        sushiswap_mint_dto->amount_1 = NULL;
    }
    if (sushiswap_mint_dto->log_index) {
        free(sushiswap_mint_dto->log_index);
        sushiswap_mint_dto->log_index = NULL;
    }
    if (sushiswap_mint_dto->amount_usd) {
        free(sushiswap_mint_dto->amount_usd);
        sushiswap_mint_dto->amount_usd = NULL;
    }
    if (sushiswap_mint_dto->fee_to) {
        free(sushiswap_mint_dto->fee_to);
        sushiswap_mint_dto->fee_to = NULL;
    }
    if (sushiswap_mint_dto->fee_liquidity) {
        free(sushiswap_mint_dto->fee_liquidity);
        sushiswap_mint_dto->fee_liquidity = NULL;
    }
    free(sushiswap_mint_dto);
}

cJSON *sushiswap_mint_dto_convertToJSON(sushiswap_mint_dto_t *sushiswap_mint_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_mint_dto->entry_time
    if(sushiswap_mint_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_mint_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_mint_dto->recv_time
    if(sushiswap_mint_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_mint_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_mint_dto->block_number
    if(sushiswap_mint_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_mint_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_mint_dto->id
    if(sushiswap_mint_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_mint_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->transaction
    if(sushiswap_mint_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", sushiswap_mint_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->timestamp
    if(sushiswap_mint_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", sushiswap_mint_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->pair
    if(sushiswap_mint_dto->pair) {
    if(cJSON_AddStringToObject(item, "pair", sushiswap_mint_dto->pair) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->to
    if(sushiswap_mint_dto->to) {
    if(cJSON_AddStringToObject(item, "to", sushiswap_mint_dto->to) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->liquidity
    if(sushiswap_mint_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", sushiswap_mint_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->sender
    if(sushiswap_mint_dto->sender) {
    if(cJSON_AddStringToObject(item, "sender", sushiswap_mint_dto->sender) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->amount_0
    if(sushiswap_mint_dto->amount_0) {
    if(cJSON_AddStringToObject(item, "amount_0", sushiswap_mint_dto->amount_0) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->amount_1
    if(sushiswap_mint_dto->amount_1) {
    if(cJSON_AddStringToObject(item, "amount_1", sushiswap_mint_dto->amount_1) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->log_index
    if(sushiswap_mint_dto->log_index) {
    if(cJSON_AddStringToObject(item, "log_index", sushiswap_mint_dto->log_index) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->amount_usd
    if(sushiswap_mint_dto->amount_usd) {
    if(cJSON_AddStringToObject(item, "amount_usd", sushiswap_mint_dto->amount_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->fee_to
    if(sushiswap_mint_dto->fee_to) {
    if(cJSON_AddStringToObject(item, "fee_to", sushiswap_mint_dto->fee_to) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->fee_liquidity
    if(sushiswap_mint_dto->fee_liquidity) {
    if(cJSON_AddStringToObject(item, "fee_liquidity", sushiswap_mint_dto->fee_liquidity) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_mint_dto->vid
    if(sushiswap_mint_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_mint_dto->vid) == NULL) {
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

sushiswap_mint_dto_t *sushiswap_mint_dto_parseFromJSON(cJSON *sushiswap_mint_dtoJSON){

    sushiswap_mint_dto_t *sushiswap_mint_dto_local_var = NULL;

    // sushiswap_mint_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_mint_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_mint_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_mint_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->pair
    cJSON *pair = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "pair");
    if (pair) { 
    if(!cJSON_IsString(pair) && !cJSON_IsNull(pair))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->to
    cJSON *to = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "to");
    if (to) { 
    if(!cJSON_IsString(to) && !cJSON_IsNull(to))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity) && !cJSON_IsNull(liquidity))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "sender");
    if (sender) { 
    if(!cJSON_IsString(sender) && !cJSON_IsNull(sender))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->amount_0
    cJSON *amount_0 = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "amount_0");
    if (amount_0) { 
    if(!cJSON_IsString(amount_0) && !cJSON_IsNull(amount_0))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->amount_1
    cJSON *amount_1 = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "amount_1");
    if (amount_1) { 
    if(!cJSON_IsString(amount_1) && !cJSON_IsNull(amount_1))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "log_index");
    if (log_index) { 
    if(!cJSON_IsString(log_index) && !cJSON_IsNull(log_index))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->amount_usd
    cJSON *amount_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "amount_usd");
    if (amount_usd) { 
    if(!cJSON_IsString(amount_usd) && !cJSON_IsNull(amount_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->fee_to
    cJSON *fee_to = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "fee_to");
    if (fee_to) { 
    if(!cJSON_IsString(fee_to) && !cJSON_IsNull(fee_to))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->fee_liquidity
    cJSON *fee_liquidity = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "fee_liquidity");
    if (fee_liquidity) { 
    if(!cJSON_IsString(fee_liquidity) && !cJSON_IsNull(fee_liquidity))
    {
    goto end; //String
    }
    }

    // sushiswap_mint_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_mint_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    sushiswap_mint_dto_local_var = sushiswap_mint_dto_create (
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
        vid ? vid->valuedouble : 0
        );

    return sushiswap_mint_dto_local_var;
end:
    return NULL;

}
