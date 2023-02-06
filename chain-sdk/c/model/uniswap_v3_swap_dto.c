#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_swap_dto.h"


char* evaluated_aggressoruniswap_v3_swap_dto_ToString(on_chain_dapps___rest_api_uniswap_v3_swap_dto__e evaluated_aggressor) {
    char* evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
	return evaluated_aggressorArray[evaluated_aggressor];
}

on_chain_dapps___rest_api_uniswap_v3_swap_dto__e evaluated_aggressoruniswap_v3_swap_dto_FromString(char* evaluated_aggressor){
    int stringToReturn = 0;
    char *evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
    size_t sizeofArray = sizeof(evaluated_aggressorArray) / sizeof(evaluated_aggressorArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(evaluated_aggressor, evaluated_aggressorArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

uniswap_v3_swap_dto_t *uniswap_v3_swap_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *transaction,
    char *timestamp,
    char *pool,
    char *token_0,
    char *token_1,
    char *sender,
    char *recipient,
    char *origin,
    char *amount_0,
    char *amount_1,
    char *amount_usd,
    numerics_big_integer_t *sqrt_price_x96,
    numerics_big_integer_t *tick,
    numerics_big_integer_t *log_index,
    double evaluated_price,
    double evaluated_amount,
    transactions_e_trade_aggressive_side_t *evaluated_aggressor,
    char *pool_id,
    char *transaction_id
    ) {
    uniswap_v3_swap_dto_t *uniswap_v3_swap_dto_local_var = malloc(sizeof(uniswap_v3_swap_dto_t));
    if (!uniswap_v3_swap_dto_local_var) {
        return NULL;
    }
    uniswap_v3_swap_dto_local_var->entry_time = entry_time;
    uniswap_v3_swap_dto_local_var->recv_time = recv_time;
    uniswap_v3_swap_dto_local_var->block_number = block_number;
    uniswap_v3_swap_dto_local_var->vid = vid;
    uniswap_v3_swap_dto_local_var->id = id;
    uniswap_v3_swap_dto_local_var->transaction = transaction;
    uniswap_v3_swap_dto_local_var->timestamp = timestamp;
    uniswap_v3_swap_dto_local_var->pool = pool;
    uniswap_v3_swap_dto_local_var->token_0 = token_0;
    uniswap_v3_swap_dto_local_var->token_1 = token_1;
    uniswap_v3_swap_dto_local_var->sender = sender;
    uniswap_v3_swap_dto_local_var->recipient = recipient;
    uniswap_v3_swap_dto_local_var->origin = origin;
    uniswap_v3_swap_dto_local_var->amount_0 = amount_0;
    uniswap_v3_swap_dto_local_var->amount_1 = amount_1;
    uniswap_v3_swap_dto_local_var->amount_usd = amount_usd;
    uniswap_v3_swap_dto_local_var->sqrt_price_x96 = sqrt_price_x96;
    uniswap_v3_swap_dto_local_var->tick = tick;
    uniswap_v3_swap_dto_local_var->log_index = log_index;
    uniswap_v3_swap_dto_local_var->evaluated_price = evaluated_price;
    uniswap_v3_swap_dto_local_var->evaluated_amount = evaluated_amount;
    uniswap_v3_swap_dto_local_var->evaluated_aggressor = evaluated_aggressor;
    uniswap_v3_swap_dto_local_var->pool_id = pool_id;
    uniswap_v3_swap_dto_local_var->transaction_id = transaction_id;

    return uniswap_v3_swap_dto_local_var;
}


void uniswap_v3_swap_dto_free(uniswap_v3_swap_dto_t *uniswap_v3_swap_dto) {
    if(NULL == uniswap_v3_swap_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_swap_dto->entry_time) {
        free(uniswap_v3_swap_dto->entry_time);
        uniswap_v3_swap_dto->entry_time = NULL;
    }
    if (uniswap_v3_swap_dto->recv_time) {
        free(uniswap_v3_swap_dto->recv_time);
        uniswap_v3_swap_dto->recv_time = NULL;
    }
    if (uniswap_v3_swap_dto->id) {
        free(uniswap_v3_swap_dto->id);
        uniswap_v3_swap_dto->id = NULL;
    }
    if (uniswap_v3_swap_dto->transaction) {
        free(uniswap_v3_swap_dto->transaction);
        uniswap_v3_swap_dto->transaction = NULL;
    }
    if (uniswap_v3_swap_dto->timestamp) {
        free(uniswap_v3_swap_dto->timestamp);
        uniswap_v3_swap_dto->timestamp = NULL;
    }
    if (uniswap_v3_swap_dto->pool) {
        free(uniswap_v3_swap_dto->pool);
        uniswap_v3_swap_dto->pool = NULL;
    }
    if (uniswap_v3_swap_dto->token_0) {
        free(uniswap_v3_swap_dto->token_0);
        uniswap_v3_swap_dto->token_0 = NULL;
    }
    if (uniswap_v3_swap_dto->token_1) {
        free(uniswap_v3_swap_dto->token_1);
        uniswap_v3_swap_dto->token_1 = NULL;
    }
    if (uniswap_v3_swap_dto->sender) {
        free(uniswap_v3_swap_dto->sender);
        uniswap_v3_swap_dto->sender = NULL;
    }
    if (uniswap_v3_swap_dto->recipient) {
        free(uniswap_v3_swap_dto->recipient);
        uniswap_v3_swap_dto->recipient = NULL;
    }
    if (uniswap_v3_swap_dto->origin) {
        free(uniswap_v3_swap_dto->origin);
        uniswap_v3_swap_dto->origin = NULL;
    }
    if (uniswap_v3_swap_dto->amount_0) {
        free(uniswap_v3_swap_dto->amount_0);
        uniswap_v3_swap_dto->amount_0 = NULL;
    }
    if (uniswap_v3_swap_dto->amount_1) {
        free(uniswap_v3_swap_dto->amount_1);
        uniswap_v3_swap_dto->amount_1 = NULL;
    }
    if (uniswap_v3_swap_dto->amount_usd) {
        free(uniswap_v3_swap_dto->amount_usd);
        uniswap_v3_swap_dto->amount_usd = NULL;
    }
    if (uniswap_v3_swap_dto->sqrt_price_x96) {
        numerics_big_integer_free(uniswap_v3_swap_dto->sqrt_price_x96);
        uniswap_v3_swap_dto->sqrt_price_x96 = NULL;
    }
    if (uniswap_v3_swap_dto->tick) {
        numerics_big_integer_free(uniswap_v3_swap_dto->tick);
        uniswap_v3_swap_dto->tick = NULL;
    }
    if (uniswap_v3_swap_dto->log_index) {
        numerics_big_integer_free(uniswap_v3_swap_dto->log_index);
        uniswap_v3_swap_dto->log_index = NULL;
    }
    if (uniswap_v3_swap_dto->evaluated_aggressor) {
        transactions_e_trade_aggressive_side_free(uniswap_v3_swap_dto->evaluated_aggressor);
        uniswap_v3_swap_dto->evaluated_aggressor = NULL;
    }
    if (uniswap_v3_swap_dto->pool_id) {
        free(uniswap_v3_swap_dto->pool_id);
        uniswap_v3_swap_dto->pool_id = NULL;
    }
    if (uniswap_v3_swap_dto->transaction_id) {
        free(uniswap_v3_swap_dto->transaction_id);
        uniswap_v3_swap_dto->transaction_id = NULL;
    }
    free(uniswap_v3_swap_dto);
}

cJSON *uniswap_v3_swap_dto_convertToJSON(uniswap_v3_swap_dto_t *uniswap_v3_swap_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_swap_dto->entry_time
    if(uniswap_v3_swap_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_swap_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_swap_dto->recv_time
    if(uniswap_v3_swap_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_swap_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_swap_dto->block_number
    if(uniswap_v3_swap_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_swap_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_swap_dto->vid
    if(uniswap_v3_swap_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_swap_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_swap_dto->id
    if(uniswap_v3_swap_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_swap_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->transaction
    if(uniswap_v3_swap_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", uniswap_v3_swap_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->timestamp
    if(uniswap_v3_swap_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", uniswap_v3_swap_dto->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_swap_dto->pool
    if(uniswap_v3_swap_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", uniswap_v3_swap_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->token_0
    if(uniswap_v3_swap_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", uniswap_v3_swap_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->token_1
    if(uniswap_v3_swap_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", uniswap_v3_swap_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->sender
    if(uniswap_v3_swap_dto->sender) {
    if(cJSON_AddStringToObject(item, "sender", uniswap_v3_swap_dto->sender) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->recipient
    if(uniswap_v3_swap_dto->recipient) {
    if(cJSON_AddStringToObject(item, "recipient", uniswap_v3_swap_dto->recipient) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->origin
    if(uniswap_v3_swap_dto->origin) {
    if(cJSON_AddStringToObject(item, "origin", uniswap_v3_swap_dto->origin) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->amount_0
    if(uniswap_v3_swap_dto->amount_0) {
    if(cJSON_AddStringToObject(item, "amount_0", uniswap_v3_swap_dto->amount_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->amount_1
    if(uniswap_v3_swap_dto->amount_1) {
    if(cJSON_AddStringToObject(item, "amount_1", uniswap_v3_swap_dto->amount_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->amount_usd
    if(uniswap_v3_swap_dto->amount_usd) {
    if(cJSON_AddStringToObject(item, "amount_usd", uniswap_v3_swap_dto->amount_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->sqrt_price_x96
    if(uniswap_v3_swap_dto->sqrt_price_x96) {
    cJSON *sqrt_price_x96_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_swap_dto->sqrt_price_x96);
    if(sqrt_price_x96_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "sqrt_price_x96", sqrt_price_x96_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_swap_dto->tick
    if(uniswap_v3_swap_dto->tick) {
    cJSON *tick_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_swap_dto->tick);
    if(tick_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tick", tick_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_swap_dto->log_index
    if(uniswap_v3_swap_dto->log_index) {
    cJSON *log_index_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_swap_dto->log_index);
    if(log_index_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "log_index", log_index_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_swap_dto->evaluated_price
    if(uniswap_v3_swap_dto->evaluated_price) {
    if(cJSON_AddNumberToObject(item, "evaluated_price", uniswap_v3_swap_dto->evaluated_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_swap_dto->evaluated_amount
    if(uniswap_v3_swap_dto->evaluated_amount) {
    if(cJSON_AddNumberToObject(item, "evaluated_amount", uniswap_v3_swap_dto->evaluated_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_swap_dto->evaluated_aggressor
    if(uniswap_v3_swap_dto->evaluated_aggressor != on_chain_dapps___rest_api_uniswap_v3_swap_dto__NULL) {
    cJSON *evaluated_aggressor_local_JSON = transactions_e_trade_aggressive_side_convertToJSON(uniswap_v3_swap_dto->evaluated_aggressor);
    if(evaluated_aggressor_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "evaluated_aggressor", evaluated_aggressor_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }


    // uniswap_v3_swap_dto->pool_id
    if(uniswap_v3_swap_dto->pool_id) {
    if(cJSON_AddStringToObject(item, "pool_id", uniswap_v3_swap_dto->pool_id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_swap_dto->transaction_id
    if(uniswap_v3_swap_dto->transaction_id) {
    if(cJSON_AddStringToObject(item, "transaction_id", uniswap_v3_swap_dto->transaction_id) == NULL) {
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

uniswap_v3_swap_dto_t *uniswap_v3_swap_dto_parseFromJSON(cJSON *uniswap_v3_swap_dtoJSON){

    uniswap_v3_swap_dto_t *uniswap_v3_swap_dto_local_var = NULL;

    // define the local variable for uniswap_v3_swap_dto->sqrt_price_x96
    numerics_big_integer_t *sqrt_price_x96_local_nonprim = NULL;

    // define the local variable for uniswap_v3_swap_dto->tick
    numerics_big_integer_t *tick_local_nonprim = NULL;

    // define the local variable for uniswap_v3_swap_dto->log_index
    numerics_big_integer_t *log_index_local_nonprim = NULL;

    // define the local variable for uniswap_v3_swap_dto->evaluated_aggressor
    transactions_e_trade_aggressive_side_t *evaluated_aggressor_local_nonprim = NULL;

    // uniswap_v3_swap_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_swap_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_swap_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_swap_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_swap_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_swap_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0) && !cJSON_IsNull(token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1) && !cJSON_IsNull(token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "sender");
    if (sender) { 
    if(!cJSON_IsString(sender) && !cJSON_IsNull(sender))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->recipient
    cJSON *recipient = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "recipient");
    if (recipient) { 
    if(!cJSON_IsString(recipient) && !cJSON_IsNull(recipient))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->origin
    cJSON *origin = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "origin");
    if (origin) { 
    if(!cJSON_IsString(origin) && !cJSON_IsNull(origin))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->amount_0
    cJSON *amount_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "amount_0");
    if (amount_0) { 
    if(!cJSON_IsString(amount_0) && !cJSON_IsNull(amount_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->amount_1
    cJSON *amount_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "amount_1");
    if (amount_1) { 
    if(!cJSON_IsString(amount_1) && !cJSON_IsNull(amount_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->amount_usd
    cJSON *amount_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "amount_usd");
    if (amount_usd) { 
    if(!cJSON_IsString(amount_usd) && !cJSON_IsNull(amount_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->sqrt_price_x96
    cJSON *sqrt_price_x96 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "sqrt_price_x96");
    if (sqrt_price_x96) { 
    sqrt_price_x96_local_nonprim = numerics_big_integer_parseFromJSON(sqrt_price_x96); //nonprimitive
    }

    // uniswap_v3_swap_dto->tick
    cJSON *tick = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "tick");
    if (tick) { 
    tick_local_nonprim = numerics_big_integer_parseFromJSON(tick); //nonprimitive
    }

    // uniswap_v3_swap_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "log_index");
    if (log_index) { 
    log_index_local_nonprim = numerics_big_integer_parseFromJSON(log_index); //nonprimitive
    }

    // uniswap_v3_swap_dto->evaluated_price
    cJSON *evaluated_price = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "evaluated_price");
    if (evaluated_price) { 
    if(!cJSON_IsNumber(evaluated_price))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_swap_dto->evaluated_amount
    cJSON *evaluated_amount = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "evaluated_amount");
    if (evaluated_amount) { 
    if(!cJSON_IsNumber(evaluated_amount))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_swap_dto->evaluated_aggressor
    cJSON *evaluated_aggressor = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "evaluated_aggressor");
    if (evaluated_aggressor) { 
    evaluated_aggressor_local_nonprim = transactions_e_trade_aggressive_side_parseFromJSON(evaluated_aggressor); //custom
    }

    // uniswap_v3_swap_dto->pool_id
    cJSON *pool_id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "pool_id");
    if (pool_id) { 
    if(!cJSON_IsString(pool_id) && !cJSON_IsNull(pool_id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_swap_dto->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_swap_dtoJSON, "transaction_id");
    if (transaction_id) { 
    if(!cJSON_IsString(transaction_id) && !cJSON_IsNull(transaction_id))
    {
    goto end; //String
    }
    }


    uniswap_v3_swap_dto_local_var = uniswap_v3_swap_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        transaction && !cJSON_IsNull(transaction) ? strdup(transaction->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        token_0 && !cJSON_IsNull(token_0) ? strdup(token_0->valuestring) : NULL,
        token_1 && !cJSON_IsNull(token_1) ? strdup(token_1->valuestring) : NULL,
        sender && !cJSON_IsNull(sender) ? strdup(sender->valuestring) : NULL,
        recipient && !cJSON_IsNull(recipient) ? strdup(recipient->valuestring) : NULL,
        origin && !cJSON_IsNull(origin) ? strdup(origin->valuestring) : NULL,
        amount_0 && !cJSON_IsNull(amount_0) ? strdup(amount_0->valuestring) : NULL,
        amount_1 && !cJSON_IsNull(amount_1) ? strdup(amount_1->valuestring) : NULL,
        amount_usd && !cJSON_IsNull(amount_usd) ? strdup(amount_usd->valuestring) : NULL,
        sqrt_price_x96 ? sqrt_price_x96_local_nonprim : NULL,
        tick ? tick_local_nonprim : NULL,
        log_index ? log_index_local_nonprim : NULL,
        evaluated_price ? evaluated_price->valuedouble : 0,
        evaluated_amount ? evaluated_amount->valuedouble : 0,
        evaluated_aggressor ? evaluated_aggressor_local_nonprim : NULL,
        pool_id && !cJSON_IsNull(pool_id) ? strdup(pool_id->valuestring) : NULL,
        transaction_id && !cJSON_IsNull(transaction_id) ? strdup(transaction_id->valuestring) : NULL
        );

    return uniswap_v3_swap_dto_local_var;
end:
    if (sqrt_price_x96_local_nonprim) {
        numerics_big_integer_free(sqrt_price_x96_local_nonprim);
        sqrt_price_x96_local_nonprim = NULL;
    }
    if (tick_local_nonprim) {
        numerics_big_integer_free(tick_local_nonprim);
        tick_local_nonprim = NULL;
    }
    if (log_index_local_nonprim) {
        numerics_big_integer_free(log_index_local_nonprim);
        log_index_local_nonprim = NULL;
    }
    if (evaluated_aggressor_local_nonprim) {
        transactions_e_trade_aggressive_side_free(evaluated_aggressor_local_nonprim);
        evaluated_aggressor_local_nonprim = NULL;
    }
    return NULL;

}
