#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_mint_dto.h"



uniswap_v3_mint_dto_t *uniswap_v3_mint_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *transaction,
    char *timestamp,
    char *pool,
    char *token_0,
    char *token_1,
    char *owner,
    char *sender,
    char *origin,
    char *amount,
    char *amount_0,
    char *amount_1,
    char *amount_usd,
    char *tick_lower,
    char *tick_upper,
    char *log_index,
    long vid
    ) {
    uniswap_v3_mint_dto_t *uniswap_v3_mint_dto_local_var = malloc(sizeof(uniswap_v3_mint_dto_t));
    if (!uniswap_v3_mint_dto_local_var) {
        return NULL;
    }
    uniswap_v3_mint_dto_local_var->entry_time = entry_time;
    uniswap_v3_mint_dto_local_var->recv_time = recv_time;
    uniswap_v3_mint_dto_local_var->block_number = block_number;
    uniswap_v3_mint_dto_local_var->id = id;
    uniswap_v3_mint_dto_local_var->transaction = transaction;
    uniswap_v3_mint_dto_local_var->timestamp = timestamp;
    uniswap_v3_mint_dto_local_var->pool = pool;
    uniswap_v3_mint_dto_local_var->token_0 = token_0;
    uniswap_v3_mint_dto_local_var->token_1 = token_1;
    uniswap_v3_mint_dto_local_var->owner = owner;
    uniswap_v3_mint_dto_local_var->sender = sender;
    uniswap_v3_mint_dto_local_var->origin = origin;
    uniswap_v3_mint_dto_local_var->amount = amount;
    uniswap_v3_mint_dto_local_var->amount_0 = amount_0;
    uniswap_v3_mint_dto_local_var->amount_1 = amount_1;
    uniswap_v3_mint_dto_local_var->amount_usd = amount_usd;
    uniswap_v3_mint_dto_local_var->tick_lower = tick_lower;
    uniswap_v3_mint_dto_local_var->tick_upper = tick_upper;
    uniswap_v3_mint_dto_local_var->log_index = log_index;
    uniswap_v3_mint_dto_local_var->vid = vid;

    return uniswap_v3_mint_dto_local_var;
}


void uniswap_v3_mint_dto_free(uniswap_v3_mint_dto_t *uniswap_v3_mint_dto) {
    if(NULL == uniswap_v3_mint_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_mint_dto->entry_time) {
        free(uniswap_v3_mint_dto->entry_time);
        uniswap_v3_mint_dto->entry_time = NULL;
    }
    if (uniswap_v3_mint_dto->recv_time) {
        free(uniswap_v3_mint_dto->recv_time);
        uniswap_v3_mint_dto->recv_time = NULL;
    }
    if (uniswap_v3_mint_dto->id) {
        free(uniswap_v3_mint_dto->id);
        uniswap_v3_mint_dto->id = NULL;
    }
    if (uniswap_v3_mint_dto->transaction) {
        free(uniswap_v3_mint_dto->transaction);
        uniswap_v3_mint_dto->transaction = NULL;
    }
    if (uniswap_v3_mint_dto->timestamp) {
        free(uniswap_v3_mint_dto->timestamp);
        uniswap_v3_mint_dto->timestamp = NULL;
    }
    if (uniswap_v3_mint_dto->pool) {
        free(uniswap_v3_mint_dto->pool);
        uniswap_v3_mint_dto->pool = NULL;
    }
    if (uniswap_v3_mint_dto->token_0) {
        free(uniswap_v3_mint_dto->token_0);
        uniswap_v3_mint_dto->token_0 = NULL;
    }
    if (uniswap_v3_mint_dto->token_1) {
        free(uniswap_v3_mint_dto->token_1);
        uniswap_v3_mint_dto->token_1 = NULL;
    }
    if (uniswap_v3_mint_dto->owner) {
        free(uniswap_v3_mint_dto->owner);
        uniswap_v3_mint_dto->owner = NULL;
    }
    if (uniswap_v3_mint_dto->sender) {
        free(uniswap_v3_mint_dto->sender);
        uniswap_v3_mint_dto->sender = NULL;
    }
    if (uniswap_v3_mint_dto->origin) {
        free(uniswap_v3_mint_dto->origin);
        uniswap_v3_mint_dto->origin = NULL;
    }
    if (uniswap_v3_mint_dto->amount) {
        free(uniswap_v3_mint_dto->amount);
        uniswap_v3_mint_dto->amount = NULL;
    }
    if (uniswap_v3_mint_dto->amount_0) {
        free(uniswap_v3_mint_dto->amount_0);
        uniswap_v3_mint_dto->amount_0 = NULL;
    }
    if (uniswap_v3_mint_dto->amount_1) {
        free(uniswap_v3_mint_dto->amount_1);
        uniswap_v3_mint_dto->amount_1 = NULL;
    }
    if (uniswap_v3_mint_dto->amount_usd) {
        free(uniswap_v3_mint_dto->amount_usd);
        uniswap_v3_mint_dto->amount_usd = NULL;
    }
    if (uniswap_v3_mint_dto->tick_lower) {
        free(uniswap_v3_mint_dto->tick_lower);
        uniswap_v3_mint_dto->tick_lower = NULL;
    }
    if (uniswap_v3_mint_dto->tick_upper) {
        free(uniswap_v3_mint_dto->tick_upper);
        uniswap_v3_mint_dto->tick_upper = NULL;
    }
    if (uniswap_v3_mint_dto->log_index) {
        free(uniswap_v3_mint_dto->log_index);
        uniswap_v3_mint_dto->log_index = NULL;
    }
    free(uniswap_v3_mint_dto);
}

cJSON *uniswap_v3_mint_dto_convertToJSON(uniswap_v3_mint_dto_t *uniswap_v3_mint_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_mint_dto->entry_time
    if(uniswap_v3_mint_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_mint_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_mint_dto->recv_time
    if(uniswap_v3_mint_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_mint_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_mint_dto->block_number
    if(uniswap_v3_mint_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_mint_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_mint_dto->id
    if(uniswap_v3_mint_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_mint_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->transaction
    if(uniswap_v3_mint_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", uniswap_v3_mint_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->timestamp
    if(uniswap_v3_mint_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", uniswap_v3_mint_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->pool
    if(uniswap_v3_mint_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", uniswap_v3_mint_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->token_0
    if(uniswap_v3_mint_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", uniswap_v3_mint_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->token_1
    if(uniswap_v3_mint_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", uniswap_v3_mint_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->owner
    if(uniswap_v3_mint_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", uniswap_v3_mint_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->sender
    if(uniswap_v3_mint_dto->sender) {
    if(cJSON_AddStringToObject(item, "sender", uniswap_v3_mint_dto->sender) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->origin
    if(uniswap_v3_mint_dto->origin) {
    if(cJSON_AddStringToObject(item, "origin", uniswap_v3_mint_dto->origin) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->amount
    if(uniswap_v3_mint_dto->amount) {
    if(cJSON_AddStringToObject(item, "amount", uniswap_v3_mint_dto->amount) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->amount_0
    if(uniswap_v3_mint_dto->amount_0) {
    if(cJSON_AddStringToObject(item, "amount_0", uniswap_v3_mint_dto->amount_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->amount_1
    if(uniswap_v3_mint_dto->amount_1) {
    if(cJSON_AddStringToObject(item, "amount_1", uniswap_v3_mint_dto->amount_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->amount_usd
    if(uniswap_v3_mint_dto->amount_usd) {
    if(cJSON_AddStringToObject(item, "amount_usd", uniswap_v3_mint_dto->amount_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->tick_lower
    if(uniswap_v3_mint_dto->tick_lower) {
    if(cJSON_AddStringToObject(item, "tick_lower", uniswap_v3_mint_dto->tick_lower) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->tick_upper
    if(uniswap_v3_mint_dto->tick_upper) {
    if(cJSON_AddStringToObject(item, "tick_upper", uniswap_v3_mint_dto->tick_upper) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->log_index
    if(uniswap_v3_mint_dto->log_index) {
    if(cJSON_AddStringToObject(item, "log_index", uniswap_v3_mint_dto->log_index) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_mint_dto->vid
    if(uniswap_v3_mint_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_mint_dto->vid) == NULL) {
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

uniswap_v3_mint_dto_t *uniswap_v3_mint_dto_parseFromJSON(cJSON *uniswap_v3_mint_dtoJSON){

    uniswap_v3_mint_dto_t *uniswap_v3_mint_dto_local_var = NULL;

    // uniswap_v3_mint_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_mint_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_mint_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_mint_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0) && !cJSON_IsNull(token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1) && !cJSON_IsNull(token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner) && !cJSON_IsNull(owner))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "sender");
    if (sender) { 
    if(!cJSON_IsString(sender) && !cJSON_IsNull(sender))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->origin
    cJSON *origin = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "origin");
    if (origin) { 
    if(!cJSON_IsString(origin) && !cJSON_IsNull(origin))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "amount");
    if (amount) { 
    if(!cJSON_IsString(amount) && !cJSON_IsNull(amount))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->amount_0
    cJSON *amount_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "amount_0");
    if (amount_0) { 
    if(!cJSON_IsString(amount_0) && !cJSON_IsNull(amount_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->amount_1
    cJSON *amount_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "amount_1");
    if (amount_1) { 
    if(!cJSON_IsString(amount_1) && !cJSON_IsNull(amount_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->amount_usd
    cJSON *amount_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "amount_usd");
    if (amount_usd) { 
    if(!cJSON_IsString(amount_usd) && !cJSON_IsNull(amount_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->tick_lower
    cJSON *tick_lower = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "tick_lower");
    if (tick_lower) { 
    if(!cJSON_IsString(tick_lower) && !cJSON_IsNull(tick_lower))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->tick_upper
    cJSON *tick_upper = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "tick_upper");
    if (tick_upper) { 
    if(!cJSON_IsString(tick_upper) && !cJSON_IsNull(tick_upper))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "log_index");
    if (log_index) { 
    if(!cJSON_IsString(log_index) && !cJSON_IsNull(log_index))
    {
    goto end; //String
    }
    }

    // uniswap_v3_mint_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_mint_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v3_mint_dto_local_var = uniswap_v3_mint_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        transaction && !cJSON_IsNull(transaction) ? strdup(transaction->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        token_0 && !cJSON_IsNull(token_0) ? strdup(token_0->valuestring) : NULL,
        token_1 && !cJSON_IsNull(token_1) ? strdup(token_1->valuestring) : NULL,
        owner && !cJSON_IsNull(owner) ? strdup(owner->valuestring) : NULL,
        sender && !cJSON_IsNull(sender) ? strdup(sender->valuestring) : NULL,
        origin && !cJSON_IsNull(origin) ? strdup(origin->valuestring) : NULL,
        amount && !cJSON_IsNull(amount) ? strdup(amount->valuestring) : NULL,
        amount_0 && !cJSON_IsNull(amount_0) ? strdup(amount_0->valuestring) : NULL,
        amount_1 && !cJSON_IsNull(amount_1) ? strdup(amount_1->valuestring) : NULL,
        amount_usd && !cJSON_IsNull(amount_usd) ? strdup(amount_usd->valuestring) : NULL,
        tick_lower && !cJSON_IsNull(tick_lower) ? strdup(tick_lower->valuestring) : NULL,
        tick_upper && !cJSON_IsNull(tick_upper) ? strdup(tick_upper->valuestring) : NULL,
        log_index && !cJSON_IsNull(log_index) ? strdup(log_index->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v3_mint_dto_local_var;
end:
    return NULL;

}
