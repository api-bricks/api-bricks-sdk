#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_swap_dto.h"


char* evaluated_aggressorsushiswap_swap_dto_ToString(on_chain_dapps___rest_api_sushiswap_swap_dto__e evaluated_aggressor) {
    char* evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
	return evaluated_aggressorArray[evaluated_aggressor];
}

on_chain_dapps___rest_api_sushiswap_swap_dto__e evaluated_aggressorsushiswap_swap_dto_FromString(char* evaluated_aggressor){
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

sushiswap_swap_dto_t *sushiswap_swap_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *transaction,
    char *timestamp,
    char *pair,
    char *sender,
    char *amount_0_in,
    char *amount_1_in,
    char *amount_0_out,
    char *amount_1_out,
    char *to,
    char *log_index,
    char *amount_usd,
    long vid,
    char *pool_id,
    char *transaction_id,
    double evaluated_price,
    double evaluated_amount,
    transactions_e_trade_aggressive_side_t *evaluated_aggressor
    ) {
    sushiswap_swap_dto_t *sushiswap_swap_dto_local_var = malloc(sizeof(sushiswap_swap_dto_t));
    if (!sushiswap_swap_dto_local_var) {
        return NULL;
    }
    sushiswap_swap_dto_local_var->entry_time = entry_time;
    sushiswap_swap_dto_local_var->recv_time = recv_time;
    sushiswap_swap_dto_local_var->block_number = block_number;
    sushiswap_swap_dto_local_var->id = id;
    sushiswap_swap_dto_local_var->transaction = transaction;
    sushiswap_swap_dto_local_var->timestamp = timestamp;
    sushiswap_swap_dto_local_var->pair = pair;
    sushiswap_swap_dto_local_var->sender = sender;
    sushiswap_swap_dto_local_var->amount_0_in = amount_0_in;
    sushiswap_swap_dto_local_var->amount_1_in = amount_1_in;
    sushiswap_swap_dto_local_var->amount_0_out = amount_0_out;
    sushiswap_swap_dto_local_var->amount_1_out = amount_1_out;
    sushiswap_swap_dto_local_var->to = to;
    sushiswap_swap_dto_local_var->log_index = log_index;
    sushiswap_swap_dto_local_var->amount_usd = amount_usd;
    sushiswap_swap_dto_local_var->vid = vid;
    sushiswap_swap_dto_local_var->pool_id = pool_id;
    sushiswap_swap_dto_local_var->transaction_id = transaction_id;
    sushiswap_swap_dto_local_var->evaluated_price = evaluated_price;
    sushiswap_swap_dto_local_var->evaluated_amount = evaluated_amount;
    sushiswap_swap_dto_local_var->evaluated_aggressor = evaluated_aggressor;

    return sushiswap_swap_dto_local_var;
}


void sushiswap_swap_dto_free(sushiswap_swap_dto_t *sushiswap_swap_dto) {
    if(NULL == sushiswap_swap_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_swap_dto->entry_time) {
        free(sushiswap_swap_dto->entry_time);
        sushiswap_swap_dto->entry_time = NULL;
    }
    if (sushiswap_swap_dto->recv_time) {
        free(sushiswap_swap_dto->recv_time);
        sushiswap_swap_dto->recv_time = NULL;
    }
    if (sushiswap_swap_dto->id) {
        free(sushiswap_swap_dto->id);
        sushiswap_swap_dto->id = NULL;
    }
    if (sushiswap_swap_dto->transaction) {
        free(sushiswap_swap_dto->transaction);
        sushiswap_swap_dto->transaction = NULL;
    }
    if (sushiswap_swap_dto->timestamp) {
        free(sushiswap_swap_dto->timestamp);
        sushiswap_swap_dto->timestamp = NULL;
    }
    if (sushiswap_swap_dto->pair) {
        free(sushiswap_swap_dto->pair);
        sushiswap_swap_dto->pair = NULL;
    }
    if (sushiswap_swap_dto->sender) {
        free(sushiswap_swap_dto->sender);
        sushiswap_swap_dto->sender = NULL;
    }
    if (sushiswap_swap_dto->amount_0_in) {
        free(sushiswap_swap_dto->amount_0_in);
        sushiswap_swap_dto->amount_0_in = NULL;
    }
    if (sushiswap_swap_dto->amount_1_in) {
        free(sushiswap_swap_dto->amount_1_in);
        sushiswap_swap_dto->amount_1_in = NULL;
    }
    if (sushiswap_swap_dto->amount_0_out) {
        free(sushiswap_swap_dto->amount_0_out);
        sushiswap_swap_dto->amount_0_out = NULL;
    }
    if (sushiswap_swap_dto->amount_1_out) {
        free(sushiswap_swap_dto->amount_1_out);
        sushiswap_swap_dto->amount_1_out = NULL;
    }
    if (sushiswap_swap_dto->to) {
        free(sushiswap_swap_dto->to);
        sushiswap_swap_dto->to = NULL;
    }
    if (sushiswap_swap_dto->log_index) {
        free(sushiswap_swap_dto->log_index);
        sushiswap_swap_dto->log_index = NULL;
    }
    if (sushiswap_swap_dto->amount_usd) {
        free(sushiswap_swap_dto->amount_usd);
        sushiswap_swap_dto->amount_usd = NULL;
    }
    if (sushiswap_swap_dto->pool_id) {
        free(sushiswap_swap_dto->pool_id);
        sushiswap_swap_dto->pool_id = NULL;
    }
    if (sushiswap_swap_dto->transaction_id) {
        free(sushiswap_swap_dto->transaction_id);
        sushiswap_swap_dto->transaction_id = NULL;
    }
    if (sushiswap_swap_dto->evaluated_aggressor) {
        transactions_e_trade_aggressive_side_free(sushiswap_swap_dto->evaluated_aggressor);
        sushiswap_swap_dto->evaluated_aggressor = NULL;
    }
    free(sushiswap_swap_dto);
}

cJSON *sushiswap_swap_dto_convertToJSON(sushiswap_swap_dto_t *sushiswap_swap_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_swap_dto->entry_time
    if(sushiswap_swap_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_swap_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_swap_dto->recv_time
    if(sushiswap_swap_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_swap_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_swap_dto->block_number
    if(sushiswap_swap_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_swap_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_swap_dto->id
    if(sushiswap_swap_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_swap_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->transaction
    if(sushiswap_swap_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", sushiswap_swap_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->timestamp
    if(sushiswap_swap_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", sushiswap_swap_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->pair
    if(sushiswap_swap_dto->pair) {
    if(cJSON_AddStringToObject(item, "pair", sushiswap_swap_dto->pair) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->sender
    if(sushiswap_swap_dto->sender) {
    if(cJSON_AddStringToObject(item, "sender", sushiswap_swap_dto->sender) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->amount_0_in
    if(sushiswap_swap_dto->amount_0_in) {
    if(cJSON_AddStringToObject(item, "amount_0_in", sushiswap_swap_dto->amount_0_in) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->amount_1_in
    if(sushiswap_swap_dto->amount_1_in) {
    if(cJSON_AddStringToObject(item, "amount_1_in", sushiswap_swap_dto->amount_1_in) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->amount_0_out
    if(sushiswap_swap_dto->amount_0_out) {
    if(cJSON_AddStringToObject(item, "amount_0_out", sushiswap_swap_dto->amount_0_out) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->amount_1_out
    if(sushiswap_swap_dto->amount_1_out) {
    if(cJSON_AddStringToObject(item, "amount_1_out", sushiswap_swap_dto->amount_1_out) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->to
    if(sushiswap_swap_dto->to) {
    if(cJSON_AddStringToObject(item, "to", sushiswap_swap_dto->to) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->log_index
    if(sushiswap_swap_dto->log_index) {
    if(cJSON_AddStringToObject(item, "log_index", sushiswap_swap_dto->log_index) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->amount_usd
    if(sushiswap_swap_dto->amount_usd) {
    if(cJSON_AddStringToObject(item, "amount_usd", sushiswap_swap_dto->amount_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->vid
    if(sushiswap_swap_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_swap_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_swap_dto->pool_id
    if(sushiswap_swap_dto->pool_id) {
    if(cJSON_AddStringToObject(item, "pool_id", sushiswap_swap_dto->pool_id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->transaction_id
    if(sushiswap_swap_dto->transaction_id) {
    if(cJSON_AddStringToObject(item, "transaction_id", sushiswap_swap_dto->transaction_id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_swap_dto->evaluated_price
    if(sushiswap_swap_dto->evaluated_price) {
    if(cJSON_AddNumberToObject(item, "evaluated_price", sushiswap_swap_dto->evaluated_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_swap_dto->evaluated_amount
    if(sushiswap_swap_dto->evaluated_amount) {
    if(cJSON_AddNumberToObject(item, "evaluated_amount", sushiswap_swap_dto->evaluated_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_swap_dto->evaluated_aggressor
    if(sushiswap_swap_dto->evaluated_aggressor != on_chain_dapps___rest_api_sushiswap_swap_dto__NULL) {
    cJSON *evaluated_aggressor_local_JSON = transactions_e_trade_aggressive_side_convertToJSON(sushiswap_swap_dto->evaluated_aggressor);
    if(evaluated_aggressor_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "evaluated_aggressor", evaluated_aggressor_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

sushiswap_swap_dto_t *sushiswap_swap_dto_parseFromJSON(cJSON *sushiswap_swap_dtoJSON){

    sushiswap_swap_dto_t *sushiswap_swap_dto_local_var = NULL;

    // define the local variable for sushiswap_swap_dto->evaluated_aggressor
    transactions_e_trade_aggressive_side_t *evaluated_aggressor_local_nonprim = NULL;

    // sushiswap_swap_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_swap_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_swap_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_swap_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->pair
    cJSON *pair = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "pair");
    if (pair) { 
    if(!cJSON_IsString(pair) && !cJSON_IsNull(pair))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "sender");
    if (sender) { 
    if(!cJSON_IsString(sender) && !cJSON_IsNull(sender))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->amount_0_in
    cJSON *amount_0_in = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "amount_0_in");
    if (amount_0_in) { 
    if(!cJSON_IsString(amount_0_in) && !cJSON_IsNull(amount_0_in))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->amount_1_in
    cJSON *amount_1_in = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "amount_1_in");
    if (amount_1_in) { 
    if(!cJSON_IsString(amount_1_in) && !cJSON_IsNull(amount_1_in))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->amount_0_out
    cJSON *amount_0_out = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "amount_0_out");
    if (amount_0_out) { 
    if(!cJSON_IsString(amount_0_out) && !cJSON_IsNull(amount_0_out))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->amount_1_out
    cJSON *amount_1_out = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "amount_1_out");
    if (amount_1_out) { 
    if(!cJSON_IsString(amount_1_out) && !cJSON_IsNull(amount_1_out))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->to
    cJSON *to = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "to");
    if (to) { 
    if(!cJSON_IsString(to) && !cJSON_IsNull(to))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "log_index");
    if (log_index) { 
    if(!cJSON_IsString(log_index) && !cJSON_IsNull(log_index))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->amount_usd
    cJSON *amount_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "amount_usd");
    if (amount_usd) { 
    if(!cJSON_IsString(amount_usd) && !cJSON_IsNull(amount_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_swap_dto->pool_id
    cJSON *pool_id = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "pool_id");
    if (pool_id) { 
    if(!cJSON_IsString(pool_id) && !cJSON_IsNull(pool_id))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "transaction_id");
    if (transaction_id) { 
    if(!cJSON_IsString(transaction_id) && !cJSON_IsNull(transaction_id))
    {
    goto end; //String
    }
    }

    // sushiswap_swap_dto->evaluated_price
    cJSON *evaluated_price = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "evaluated_price");
    if (evaluated_price) { 
    if(!cJSON_IsNumber(evaluated_price))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_swap_dto->evaluated_amount
    cJSON *evaluated_amount = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "evaluated_amount");
    if (evaluated_amount) { 
    if(!cJSON_IsNumber(evaluated_amount))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_swap_dto->evaluated_aggressor
    cJSON *evaluated_aggressor = cJSON_GetObjectItemCaseSensitive(sushiswap_swap_dtoJSON, "evaluated_aggressor");
    if (evaluated_aggressor) { 
    evaluated_aggressor_local_nonprim = transactions_e_trade_aggressive_side_parseFromJSON(evaluated_aggressor); //custom
    }


    sushiswap_swap_dto_local_var = sushiswap_swap_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        transaction && !cJSON_IsNull(transaction) ? strdup(transaction->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        pair && !cJSON_IsNull(pair) ? strdup(pair->valuestring) : NULL,
        sender && !cJSON_IsNull(sender) ? strdup(sender->valuestring) : NULL,
        amount_0_in && !cJSON_IsNull(amount_0_in) ? strdup(amount_0_in->valuestring) : NULL,
        amount_1_in && !cJSON_IsNull(amount_1_in) ? strdup(amount_1_in->valuestring) : NULL,
        amount_0_out && !cJSON_IsNull(amount_0_out) ? strdup(amount_0_out->valuestring) : NULL,
        amount_1_out && !cJSON_IsNull(amount_1_out) ? strdup(amount_1_out->valuestring) : NULL,
        to && !cJSON_IsNull(to) ? strdup(to->valuestring) : NULL,
        log_index && !cJSON_IsNull(log_index) ? strdup(log_index->valuestring) : NULL,
        amount_usd && !cJSON_IsNull(amount_usd) ? strdup(amount_usd->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        pool_id && !cJSON_IsNull(pool_id) ? strdup(pool_id->valuestring) : NULL,
        transaction_id && !cJSON_IsNull(transaction_id) ? strdup(transaction_id->valuestring) : NULL,
        evaluated_price ? evaluated_price->valuedouble : 0,
        evaluated_amount ? evaluated_amount->valuedouble : 0,
        evaluated_aggressor ? evaluated_aggressor_local_nonprim : NULL
        );

    return sushiswap_swap_dto_local_var;
end:
    if (evaluated_aggressor_local_nonprim) {
        transactions_e_trade_aggressive_side_free(evaluated_aggressor_local_nonprim);
        evaluated_aggressor_local_nonprim = NULL;
    }
    return NULL;

}
