#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_swap_dto.h"


char* evaluated_aggressoruniswap_v2_swap_dto_ToString(on_chain_dapps___rest_api_uniswap_v2_swap_dto__e evaluated_aggressor) {
    char* evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
	return evaluated_aggressorArray[evaluated_aggressor];
}

on_chain_dapps___rest_api_uniswap_v2_swap_dto__e evaluated_aggressoruniswap_v2_swap_dto_FromString(char* evaluated_aggressor){
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

uniswap_v2_swap_dto_t *uniswap_v2_swap_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *transaction,
    char *timestamp,
    char *pair,
    char *sender,
    char *from,
    char *amount_0_in,
    char *amount_1_in,
    char *amount_0_out,
    char *amount_1_out,
    char *to,
    numerics_big_integer_t *log_index,
    char *amount_usd,
    double evaluated_price,
    double evaluated_amount,
    transactions_e_trade_aggressive_side_t *evaluated_aggressor,
    char *pool_id,
    char *transaction_id
    ) {
    uniswap_v2_swap_dto_t *uniswap_v2_swap_dto_local_var = malloc(sizeof(uniswap_v2_swap_dto_t));
    if (!uniswap_v2_swap_dto_local_var) {
        return NULL;
    }
    uniswap_v2_swap_dto_local_var->entry_time = entry_time;
    uniswap_v2_swap_dto_local_var->recv_time = recv_time;
    uniswap_v2_swap_dto_local_var->block_number = block_number;
    uniswap_v2_swap_dto_local_var->vid = vid;
    uniswap_v2_swap_dto_local_var->id = id;
    uniswap_v2_swap_dto_local_var->transaction = transaction;
    uniswap_v2_swap_dto_local_var->timestamp = timestamp;
    uniswap_v2_swap_dto_local_var->pair = pair;
    uniswap_v2_swap_dto_local_var->sender = sender;
    uniswap_v2_swap_dto_local_var->from = from;
    uniswap_v2_swap_dto_local_var->amount_0_in = amount_0_in;
    uniswap_v2_swap_dto_local_var->amount_1_in = amount_1_in;
    uniswap_v2_swap_dto_local_var->amount_0_out = amount_0_out;
    uniswap_v2_swap_dto_local_var->amount_1_out = amount_1_out;
    uniswap_v2_swap_dto_local_var->to = to;
    uniswap_v2_swap_dto_local_var->log_index = log_index;
    uniswap_v2_swap_dto_local_var->amount_usd = amount_usd;
    uniswap_v2_swap_dto_local_var->evaluated_price = evaluated_price;
    uniswap_v2_swap_dto_local_var->evaluated_amount = evaluated_amount;
    uniswap_v2_swap_dto_local_var->evaluated_aggressor = evaluated_aggressor;
    uniswap_v2_swap_dto_local_var->pool_id = pool_id;
    uniswap_v2_swap_dto_local_var->transaction_id = transaction_id;

    return uniswap_v2_swap_dto_local_var;
}


void uniswap_v2_swap_dto_free(uniswap_v2_swap_dto_t *uniswap_v2_swap_dto) {
    if(NULL == uniswap_v2_swap_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_swap_dto->entry_time) {
        free(uniswap_v2_swap_dto->entry_time);
        uniswap_v2_swap_dto->entry_time = NULL;
    }
    if (uniswap_v2_swap_dto->recv_time) {
        free(uniswap_v2_swap_dto->recv_time);
        uniswap_v2_swap_dto->recv_time = NULL;
    }
    if (uniswap_v2_swap_dto->id) {
        free(uniswap_v2_swap_dto->id);
        uniswap_v2_swap_dto->id = NULL;
    }
    if (uniswap_v2_swap_dto->transaction) {
        free(uniswap_v2_swap_dto->transaction);
        uniswap_v2_swap_dto->transaction = NULL;
    }
    if (uniswap_v2_swap_dto->timestamp) {
        free(uniswap_v2_swap_dto->timestamp);
        uniswap_v2_swap_dto->timestamp = NULL;
    }
    if (uniswap_v2_swap_dto->pair) {
        free(uniswap_v2_swap_dto->pair);
        uniswap_v2_swap_dto->pair = NULL;
    }
    if (uniswap_v2_swap_dto->sender) {
        free(uniswap_v2_swap_dto->sender);
        uniswap_v2_swap_dto->sender = NULL;
    }
    if (uniswap_v2_swap_dto->from) {
        free(uniswap_v2_swap_dto->from);
        uniswap_v2_swap_dto->from = NULL;
    }
    if (uniswap_v2_swap_dto->amount_0_in) {
        free(uniswap_v2_swap_dto->amount_0_in);
        uniswap_v2_swap_dto->amount_0_in = NULL;
    }
    if (uniswap_v2_swap_dto->amount_1_in) {
        free(uniswap_v2_swap_dto->amount_1_in);
        uniswap_v2_swap_dto->amount_1_in = NULL;
    }
    if (uniswap_v2_swap_dto->amount_0_out) {
        free(uniswap_v2_swap_dto->amount_0_out);
        uniswap_v2_swap_dto->amount_0_out = NULL;
    }
    if (uniswap_v2_swap_dto->amount_1_out) {
        free(uniswap_v2_swap_dto->amount_1_out);
        uniswap_v2_swap_dto->amount_1_out = NULL;
    }
    if (uniswap_v2_swap_dto->to) {
        free(uniswap_v2_swap_dto->to);
        uniswap_v2_swap_dto->to = NULL;
    }
    if (uniswap_v2_swap_dto->log_index) {
        numerics_big_integer_free(uniswap_v2_swap_dto->log_index);
        uniswap_v2_swap_dto->log_index = NULL;
    }
    if (uniswap_v2_swap_dto->amount_usd) {
        free(uniswap_v2_swap_dto->amount_usd);
        uniswap_v2_swap_dto->amount_usd = NULL;
    }
    if (uniswap_v2_swap_dto->evaluated_aggressor) {
        transactions_e_trade_aggressive_side_free(uniswap_v2_swap_dto->evaluated_aggressor);
        uniswap_v2_swap_dto->evaluated_aggressor = NULL;
    }
    if (uniswap_v2_swap_dto->pool_id) {
        free(uniswap_v2_swap_dto->pool_id);
        uniswap_v2_swap_dto->pool_id = NULL;
    }
    if (uniswap_v2_swap_dto->transaction_id) {
        free(uniswap_v2_swap_dto->transaction_id);
        uniswap_v2_swap_dto->transaction_id = NULL;
    }
    free(uniswap_v2_swap_dto);
}

cJSON *uniswap_v2_swap_dto_convertToJSON(uniswap_v2_swap_dto_t *uniswap_v2_swap_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_swap_dto->entry_time
    if(uniswap_v2_swap_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_swap_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_swap_dto->recv_time
    if(uniswap_v2_swap_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_swap_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_swap_dto->block_number
    if(uniswap_v2_swap_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_swap_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_swap_dto->vid
    if(uniswap_v2_swap_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_swap_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_swap_dto->id
    if(uniswap_v2_swap_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_swap_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->transaction
    if(uniswap_v2_swap_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", uniswap_v2_swap_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->timestamp
    if(uniswap_v2_swap_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", uniswap_v2_swap_dto->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_swap_dto->pair
    if(uniswap_v2_swap_dto->pair) {
    if(cJSON_AddStringToObject(item, "pair", uniswap_v2_swap_dto->pair) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->sender
    if(uniswap_v2_swap_dto->sender) {
    if(cJSON_AddStringToObject(item, "sender", uniswap_v2_swap_dto->sender) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->from
    if(uniswap_v2_swap_dto->from) {
    if(cJSON_AddStringToObject(item, "from", uniswap_v2_swap_dto->from) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->amount_0_in
    if(uniswap_v2_swap_dto->amount_0_in) {
    if(cJSON_AddStringToObject(item, "amount_0_in", uniswap_v2_swap_dto->amount_0_in) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->amount_1_in
    if(uniswap_v2_swap_dto->amount_1_in) {
    if(cJSON_AddStringToObject(item, "amount_1_in", uniswap_v2_swap_dto->amount_1_in) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->amount_0_out
    if(uniswap_v2_swap_dto->amount_0_out) {
    if(cJSON_AddStringToObject(item, "amount_0_out", uniswap_v2_swap_dto->amount_0_out) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->amount_1_out
    if(uniswap_v2_swap_dto->amount_1_out) {
    if(cJSON_AddStringToObject(item, "amount_1_out", uniswap_v2_swap_dto->amount_1_out) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->to
    if(uniswap_v2_swap_dto->to) {
    if(cJSON_AddStringToObject(item, "to", uniswap_v2_swap_dto->to) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->log_index
    if(uniswap_v2_swap_dto->log_index) {
    cJSON *log_index_local_JSON = numerics_big_integer_convertToJSON(uniswap_v2_swap_dto->log_index);
    if(log_index_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "log_index", log_index_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v2_swap_dto->amount_usd
    if(uniswap_v2_swap_dto->amount_usd) {
    if(cJSON_AddStringToObject(item, "amount_usd", uniswap_v2_swap_dto->amount_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->evaluated_price
    if(uniswap_v2_swap_dto->evaluated_price) {
    if(cJSON_AddNumberToObject(item, "evaluated_price", uniswap_v2_swap_dto->evaluated_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_swap_dto->evaluated_amount
    if(uniswap_v2_swap_dto->evaluated_amount) {
    if(cJSON_AddNumberToObject(item, "evaluated_amount", uniswap_v2_swap_dto->evaluated_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_swap_dto->evaluated_aggressor
    if(uniswap_v2_swap_dto->evaluated_aggressor != on_chain_dapps___rest_api_uniswap_v2_swap_dto__NULL) {
    cJSON *evaluated_aggressor_local_JSON = transactions_e_trade_aggressive_side_convertToJSON(uniswap_v2_swap_dto->evaluated_aggressor);
    if(evaluated_aggressor_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "evaluated_aggressor", evaluated_aggressor_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }


    // uniswap_v2_swap_dto->pool_id
    if(uniswap_v2_swap_dto->pool_id) {
    if(cJSON_AddStringToObject(item, "pool_id", uniswap_v2_swap_dto->pool_id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_swap_dto->transaction_id
    if(uniswap_v2_swap_dto->transaction_id) {
    if(cJSON_AddStringToObject(item, "transaction_id", uniswap_v2_swap_dto->transaction_id) == NULL) {
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

uniswap_v2_swap_dto_t *uniswap_v2_swap_dto_parseFromJSON(cJSON *uniswap_v2_swap_dtoJSON){

    uniswap_v2_swap_dto_t *uniswap_v2_swap_dto_local_var = NULL;

    // define the local variable for uniswap_v2_swap_dto->log_index
    numerics_big_integer_t *log_index_local_nonprim = NULL;

    // define the local variable for uniswap_v2_swap_dto->evaluated_aggressor
    transactions_e_trade_aggressive_side_t *evaluated_aggressor_local_nonprim = NULL;

    // uniswap_v2_swap_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_swap_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_swap_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_swap_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_swap_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_swap_dto->pair
    cJSON *pair = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "pair");
    if (pair) { 
    if(!cJSON_IsString(pair) && !cJSON_IsNull(pair))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "sender");
    if (sender) { 
    if(!cJSON_IsString(sender) && !cJSON_IsNull(sender))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->from
    cJSON *from = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "from");
    if (from) { 
    if(!cJSON_IsString(from) && !cJSON_IsNull(from))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->amount_0_in
    cJSON *amount_0_in = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "amount_0_in");
    if (amount_0_in) { 
    if(!cJSON_IsString(amount_0_in) && !cJSON_IsNull(amount_0_in))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->amount_1_in
    cJSON *amount_1_in = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "amount_1_in");
    if (amount_1_in) { 
    if(!cJSON_IsString(amount_1_in) && !cJSON_IsNull(amount_1_in))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->amount_0_out
    cJSON *amount_0_out = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "amount_0_out");
    if (amount_0_out) { 
    if(!cJSON_IsString(amount_0_out) && !cJSON_IsNull(amount_0_out))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->amount_1_out
    cJSON *amount_1_out = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "amount_1_out");
    if (amount_1_out) { 
    if(!cJSON_IsString(amount_1_out) && !cJSON_IsNull(amount_1_out))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->to
    cJSON *to = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "to");
    if (to) { 
    if(!cJSON_IsString(to) && !cJSON_IsNull(to))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "log_index");
    if (log_index) { 
    log_index_local_nonprim = numerics_big_integer_parseFromJSON(log_index); //nonprimitive
    }

    // uniswap_v2_swap_dto->amount_usd
    cJSON *amount_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "amount_usd");
    if (amount_usd) { 
    if(!cJSON_IsString(amount_usd) && !cJSON_IsNull(amount_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->evaluated_price
    cJSON *evaluated_price = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "evaluated_price");
    if (evaluated_price) { 
    if(!cJSON_IsNumber(evaluated_price))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_swap_dto->evaluated_amount
    cJSON *evaluated_amount = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "evaluated_amount");
    if (evaluated_amount) { 
    if(!cJSON_IsNumber(evaluated_amount))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_swap_dto->evaluated_aggressor
    cJSON *evaluated_aggressor = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "evaluated_aggressor");
    if (evaluated_aggressor) { 
    evaluated_aggressor_local_nonprim = transactions_e_trade_aggressive_side_parseFromJSON(evaluated_aggressor); //custom
    }

    // uniswap_v2_swap_dto->pool_id
    cJSON *pool_id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "pool_id");
    if (pool_id) { 
    if(!cJSON_IsString(pool_id) && !cJSON_IsNull(pool_id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_swap_dto->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_swap_dtoJSON, "transaction_id");
    if (transaction_id) { 
    if(!cJSON_IsString(transaction_id) && !cJSON_IsNull(transaction_id))
    {
    goto end; //String
    }
    }


    uniswap_v2_swap_dto_local_var = uniswap_v2_swap_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        transaction && !cJSON_IsNull(transaction) ? strdup(transaction->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        pair && !cJSON_IsNull(pair) ? strdup(pair->valuestring) : NULL,
        sender && !cJSON_IsNull(sender) ? strdup(sender->valuestring) : NULL,
        from && !cJSON_IsNull(from) ? strdup(from->valuestring) : NULL,
        amount_0_in && !cJSON_IsNull(amount_0_in) ? strdup(amount_0_in->valuestring) : NULL,
        amount_1_in && !cJSON_IsNull(amount_1_in) ? strdup(amount_1_in->valuestring) : NULL,
        amount_0_out && !cJSON_IsNull(amount_0_out) ? strdup(amount_0_out->valuestring) : NULL,
        amount_1_out && !cJSON_IsNull(amount_1_out) ? strdup(amount_1_out->valuestring) : NULL,
        to && !cJSON_IsNull(to) ? strdup(to->valuestring) : NULL,
        log_index ? log_index_local_nonprim : NULL,
        amount_usd && !cJSON_IsNull(amount_usd) ? strdup(amount_usd->valuestring) : NULL,
        evaluated_price ? evaluated_price->valuedouble : 0,
        evaluated_amount ? evaluated_amount->valuedouble : 0,
        evaluated_aggressor ? evaluated_aggressor_local_nonprim : NULL,
        pool_id && !cJSON_IsNull(pool_id) ? strdup(pool_id->valuestring) : NULL,
        transaction_id && !cJSON_IsNull(transaction_id) ? strdup(transaction_id->valuestring) : NULL
        );

    return uniswap_v2_swap_dto_local_var;
end:
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
