#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cow_trade_dto.h"


char* evaluated_aggressorcow_trade_dto_ToString(on_chain_dapps___rest_api_cow_trade_dto__e evaluated_aggressor) {
    char* evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
	return evaluated_aggressorArray[evaluated_aggressor];
}

on_chain_dapps___rest_api_cow_trade_dto__e evaluated_aggressorcow_trade_dto_FromString(char* evaluated_aggressor){
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

cow_trade_dto_t *cow_trade_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *timestamp,
    char *gas_price,
    char *gas_limit,
    char *fee_amount,
    char *tx_hash,
    char *settlement,
    char *buy_amount,
    char *sell_amount,
    char *sell_token,
    char *buy_token,
    char *order,
    long vid,
    char *pool_id,
    char *transaction_id,
    double evaluated_price,
    double evaluated_amount,
    transactions_e_trade_aggressive_side_t *evaluated_aggressor
    ) {
    cow_trade_dto_t *cow_trade_dto_local_var = malloc(sizeof(cow_trade_dto_t));
    if (!cow_trade_dto_local_var) {
        return NULL;
    }
    cow_trade_dto_local_var->entry_time = entry_time;
    cow_trade_dto_local_var->recv_time = recv_time;
    cow_trade_dto_local_var->block_number = block_number;
    cow_trade_dto_local_var->id = id;
    cow_trade_dto_local_var->timestamp = timestamp;
    cow_trade_dto_local_var->gas_price = gas_price;
    cow_trade_dto_local_var->gas_limit = gas_limit;
    cow_trade_dto_local_var->fee_amount = fee_amount;
    cow_trade_dto_local_var->tx_hash = tx_hash;
    cow_trade_dto_local_var->settlement = settlement;
    cow_trade_dto_local_var->buy_amount = buy_amount;
    cow_trade_dto_local_var->sell_amount = sell_amount;
    cow_trade_dto_local_var->sell_token = sell_token;
    cow_trade_dto_local_var->buy_token = buy_token;
    cow_trade_dto_local_var->order = order;
    cow_trade_dto_local_var->vid = vid;
    cow_trade_dto_local_var->pool_id = pool_id;
    cow_trade_dto_local_var->transaction_id = transaction_id;
    cow_trade_dto_local_var->evaluated_price = evaluated_price;
    cow_trade_dto_local_var->evaluated_amount = evaluated_amount;
    cow_trade_dto_local_var->evaluated_aggressor = evaluated_aggressor;

    return cow_trade_dto_local_var;
}


void cow_trade_dto_free(cow_trade_dto_t *cow_trade_dto) {
    if(NULL == cow_trade_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cow_trade_dto->entry_time) {
        free(cow_trade_dto->entry_time);
        cow_trade_dto->entry_time = NULL;
    }
    if (cow_trade_dto->recv_time) {
        free(cow_trade_dto->recv_time);
        cow_trade_dto->recv_time = NULL;
    }
    if (cow_trade_dto->id) {
        free(cow_trade_dto->id);
        cow_trade_dto->id = NULL;
    }
    if (cow_trade_dto->timestamp) {
        free(cow_trade_dto->timestamp);
        cow_trade_dto->timestamp = NULL;
    }
    if (cow_trade_dto->gas_price) {
        free(cow_trade_dto->gas_price);
        cow_trade_dto->gas_price = NULL;
    }
    if (cow_trade_dto->gas_limit) {
        free(cow_trade_dto->gas_limit);
        cow_trade_dto->gas_limit = NULL;
    }
    if (cow_trade_dto->fee_amount) {
        free(cow_trade_dto->fee_amount);
        cow_trade_dto->fee_amount = NULL;
    }
    if (cow_trade_dto->tx_hash) {
        free(cow_trade_dto->tx_hash);
        cow_trade_dto->tx_hash = NULL;
    }
    if (cow_trade_dto->settlement) {
        free(cow_trade_dto->settlement);
        cow_trade_dto->settlement = NULL;
    }
    if (cow_trade_dto->buy_amount) {
        free(cow_trade_dto->buy_amount);
        cow_trade_dto->buy_amount = NULL;
    }
    if (cow_trade_dto->sell_amount) {
        free(cow_trade_dto->sell_amount);
        cow_trade_dto->sell_amount = NULL;
    }
    if (cow_trade_dto->sell_token) {
        free(cow_trade_dto->sell_token);
        cow_trade_dto->sell_token = NULL;
    }
    if (cow_trade_dto->buy_token) {
        free(cow_trade_dto->buy_token);
        cow_trade_dto->buy_token = NULL;
    }
    if (cow_trade_dto->order) {
        free(cow_trade_dto->order);
        cow_trade_dto->order = NULL;
    }
    if (cow_trade_dto->pool_id) {
        free(cow_trade_dto->pool_id);
        cow_trade_dto->pool_id = NULL;
    }
    if (cow_trade_dto->transaction_id) {
        free(cow_trade_dto->transaction_id);
        cow_trade_dto->transaction_id = NULL;
    }
    if (cow_trade_dto->evaluated_aggressor) {
        transactions_e_trade_aggressive_side_free(cow_trade_dto->evaluated_aggressor);
        cow_trade_dto->evaluated_aggressor = NULL;
    }
    free(cow_trade_dto);
}

cJSON *cow_trade_dto_convertToJSON(cow_trade_dto_t *cow_trade_dto) {
    cJSON *item = cJSON_CreateObject();

    // cow_trade_dto->entry_time
    if(cow_trade_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cow_trade_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_trade_dto->recv_time
    if(cow_trade_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cow_trade_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_trade_dto->block_number
    if(cow_trade_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", cow_trade_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_trade_dto->id
    if(cow_trade_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cow_trade_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->timestamp
    if(cow_trade_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", cow_trade_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->gas_price
    if(cow_trade_dto->gas_price) {
    if(cJSON_AddStringToObject(item, "gas_price", cow_trade_dto->gas_price) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->gas_limit
    if(cow_trade_dto->gas_limit) {
    if(cJSON_AddStringToObject(item, "gas_limit", cow_trade_dto->gas_limit) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->fee_amount
    if(cow_trade_dto->fee_amount) {
    if(cJSON_AddStringToObject(item, "fee_amount", cow_trade_dto->fee_amount) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->tx_hash
    if(cow_trade_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", cow_trade_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->settlement
    if(cow_trade_dto->settlement) {
    if(cJSON_AddStringToObject(item, "settlement", cow_trade_dto->settlement) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->buy_amount
    if(cow_trade_dto->buy_amount) {
    if(cJSON_AddStringToObject(item, "buy_amount", cow_trade_dto->buy_amount) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->sell_amount
    if(cow_trade_dto->sell_amount) {
    if(cJSON_AddStringToObject(item, "sell_amount", cow_trade_dto->sell_amount) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->sell_token
    if(cow_trade_dto->sell_token) {
    if(cJSON_AddStringToObject(item, "sell_token", cow_trade_dto->sell_token) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->buy_token
    if(cow_trade_dto->buy_token) {
    if(cJSON_AddStringToObject(item, "buy_token", cow_trade_dto->buy_token) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->order
    if(cow_trade_dto->order) {
    if(cJSON_AddStringToObject(item, "order", cow_trade_dto->order) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->vid
    if(cow_trade_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cow_trade_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_trade_dto->pool_id
    if(cow_trade_dto->pool_id) {
    if(cJSON_AddStringToObject(item, "pool_id", cow_trade_dto->pool_id) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->transaction_id
    if(cow_trade_dto->transaction_id) {
    if(cJSON_AddStringToObject(item, "transaction_id", cow_trade_dto->transaction_id) == NULL) {
    goto fail; //String
    }
    }


    // cow_trade_dto->evaluated_price
    if(cow_trade_dto->evaluated_price) {
    if(cJSON_AddNumberToObject(item, "evaluated_price", cow_trade_dto->evaluated_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_trade_dto->evaluated_amount
    if(cow_trade_dto->evaluated_amount) {
    if(cJSON_AddNumberToObject(item, "evaluated_amount", cow_trade_dto->evaluated_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_trade_dto->evaluated_aggressor
    if(cow_trade_dto->evaluated_aggressor != on_chain_dapps___rest_api_cow_trade_dto__NULL) {
    cJSON *evaluated_aggressor_local_JSON = transactions_e_trade_aggressive_side_convertToJSON(cow_trade_dto->evaluated_aggressor);
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

cow_trade_dto_t *cow_trade_dto_parseFromJSON(cJSON *cow_trade_dtoJSON){

    cow_trade_dto_t *cow_trade_dto_local_var = NULL;

    // define the local variable for cow_trade_dto->evaluated_aggressor
    transactions_e_trade_aggressive_side_t *evaluated_aggressor_local_nonprim = NULL;

    // cow_trade_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cow_trade_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cow_trade_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // cow_trade_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->gas_price
    cJSON *gas_price = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "gas_price");
    if (gas_price) { 
    if(!cJSON_IsString(gas_price) && !cJSON_IsNull(gas_price))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->gas_limit
    cJSON *gas_limit = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "gas_limit");
    if (gas_limit) { 
    if(!cJSON_IsString(gas_limit) && !cJSON_IsNull(gas_limit))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->fee_amount
    cJSON *fee_amount = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "fee_amount");
    if (fee_amount) { 
    if(!cJSON_IsString(fee_amount) && !cJSON_IsNull(fee_amount))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->settlement
    cJSON *settlement = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "settlement");
    if (settlement) { 
    if(!cJSON_IsString(settlement) && !cJSON_IsNull(settlement))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->buy_amount
    cJSON *buy_amount = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "buy_amount");
    if (buy_amount) { 
    if(!cJSON_IsString(buy_amount) && !cJSON_IsNull(buy_amount))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->sell_amount
    cJSON *sell_amount = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "sell_amount");
    if (sell_amount) { 
    if(!cJSON_IsString(sell_amount) && !cJSON_IsNull(sell_amount))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->sell_token
    cJSON *sell_token = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "sell_token");
    if (sell_token) { 
    if(!cJSON_IsString(sell_token) && !cJSON_IsNull(sell_token))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->buy_token
    cJSON *buy_token = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "buy_token");
    if (buy_token) { 
    if(!cJSON_IsString(buy_token) && !cJSON_IsNull(buy_token))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->order
    cJSON *order = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "order");
    if (order) { 
    if(!cJSON_IsString(order) && !cJSON_IsNull(order))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // cow_trade_dto->pool_id
    cJSON *pool_id = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "pool_id");
    if (pool_id) { 
    if(!cJSON_IsString(pool_id) && !cJSON_IsNull(pool_id))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "transaction_id");
    if (transaction_id) { 
    if(!cJSON_IsString(transaction_id) && !cJSON_IsNull(transaction_id))
    {
    goto end; //String
    }
    }

    // cow_trade_dto->evaluated_price
    cJSON *evaluated_price = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "evaluated_price");
    if (evaluated_price) { 
    if(!cJSON_IsNumber(evaluated_price))
    {
    goto end; //Numeric
    }
    }

    // cow_trade_dto->evaluated_amount
    cJSON *evaluated_amount = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "evaluated_amount");
    if (evaluated_amount) { 
    if(!cJSON_IsNumber(evaluated_amount))
    {
    goto end; //Numeric
    }
    }

    // cow_trade_dto->evaluated_aggressor
    cJSON *evaluated_aggressor = cJSON_GetObjectItemCaseSensitive(cow_trade_dtoJSON, "evaluated_aggressor");
    if (evaluated_aggressor) { 
    evaluated_aggressor_local_nonprim = transactions_e_trade_aggressive_side_parseFromJSON(evaluated_aggressor); //custom
    }


    cow_trade_dto_local_var = cow_trade_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        gas_price && !cJSON_IsNull(gas_price) ? strdup(gas_price->valuestring) : NULL,
        gas_limit && !cJSON_IsNull(gas_limit) ? strdup(gas_limit->valuestring) : NULL,
        fee_amount && !cJSON_IsNull(fee_amount) ? strdup(fee_amount->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        settlement && !cJSON_IsNull(settlement) ? strdup(settlement->valuestring) : NULL,
        buy_amount && !cJSON_IsNull(buy_amount) ? strdup(buy_amount->valuestring) : NULL,
        sell_amount && !cJSON_IsNull(sell_amount) ? strdup(sell_amount->valuestring) : NULL,
        sell_token && !cJSON_IsNull(sell_token) ? strdup(sell_token->valuestring) : NULL,
        buy_token && !cJSON_IsNull(buy_token) ? strdup(buy_token->valuestring) : NULL,
        order && !cJSON_IsNull(order) ? strdup(order->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        pool_id && !cJSON_IsNull(pool_id) ? strdup(pool_id->valuestring) : NULL,
        transaction_id && !cJSON_IsNull(transaction_id) ? strdup(transaction_id->valuestring) : NULL,
        evaluated_price ? evaluated_price->valuedouble : 0,
        evaluated_amount ? evaluated_amount->valuedouble : 0,
        evaluated_aggressor ? evaluated_aggressor_local_nonprim : NULL
        );

    return cow_trade_dto_local_var;
end:
    if (evaluated_aggressor_local_nonprim) {
        transactions_e_trade_aggressive_side_free(evaluated_aggressor_local_nonprim);
        evaluated_aggressor_local_nonprim = NULL;
    }
    return NULL;

}
