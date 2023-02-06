#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_exchange_dto.h"


char* evaluated_aggressorcurve_exchange_dto_ToString(on_chain_dapps___rest_api_curve_exchange_dto__e evaluated_aggressor) {
    char* evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
	return evaluated_aggressorArray[evaluated_aggressor];
}

on_chain_dapps___rest_api_curve_exchange_dto__e evaluated_aggressorcurve_exchange_dto_FromString(char* evaluated_aggressor){
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

curve_exchange_dto_t *curve_exchange_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *pool,
    char *buyer,
    char *receiver,
    char *token_sold,
    char *token_bought,
    char *amount_sold,
    char *amount_bought,
    char *block,
    char *timestamp,
    char *transaction,
    long vid,
    double evaluated_price,
    double evaluated_amount,
    transactions_e_trade_aggressive_side_t *evaluated_aggressor,
    char *pool_id,
    char *transaction_id
    ) {
    curve_exchange_dto_t *curve_exchange_dto_local_var = malloc(sizeof(curve_exchange_dto_t));
    if (!curve_exchange_dto_local_var) {
        return NULL;
    }
    curve_exchange_dto_local_var->entry_time = entry_time;
    curve_exchange_dto_local_var->recv_time = recv_time;
    curve_exchange_dto_local_var->block_number = block_number;
    curve_exchange_dto_local_var->id = id;
    curve_exchange_dto_local_var->pool = pool;
    curve_exchange_dto_local_var->buyer = buyer;
    curve_exchange_dto_local_var->receiver = receiver;
    curve_exchange_dto_local_var->token_sold = token_sold;
    curve_exchange_dto_local_var->token_bought = token_bought;
    curve_exchange_dto_local_var->amount_sold = amount_sold;
    curve_exchange_dto_local_var->amount_bought = amount_bought;
    curve_exchange_dto_local_var->block = block;
    curve_exchange_dto_local_var->timestamp = timestamp;
    curve_exchange_dto_local_var->transaction = transaction;
    curve_exchange_dto_local_var->vid = vid;
    curve_exchange_dto_local_var->evaluated_price = evaluated_price;
    curve_exchange_dto_local_var->evaluated_amount = evaluated_amount;
    curve_exchange_dto_local_var->evaluated_aggressor = evaluated_aggressor;
    curve_exchange_dto_local_var->pool_id = pool_id;
    curve_exchange_dto_local_var->transaction_id = transaction_id;

    return curve_exchange_dto_local_var;
}


void curve_exchange_dto_free(curve_exchange_dto_t *curve_exchange_dto) {
    if(NULL == curve_exchange_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_exchange_dto->entry_time) {
        free(curve_exchange_dto->entry_time);
        curve_exchange_dto->entry_time = NULL;
    }
    if (curve_exchange_dto->recv_time) {
        free(curve_exchange_dto->recv_time);
        curve_exchange_dto->recv_time = NULL;
    }
    if (curve_exchange_dto->id) {
        free(curve_exchange_dto->id);
        curve_exchange_dto->id = NULL;
    }
    if (curve_exchange_dto->pool) {
        free(curve_exchange_dto->pool);
        curve_exchange_dto->pool = NULL;
    }
    if (curve_exchange_dto->buyer) {
        free(curve_exchange_dto->buyer);
        curve_exchange_dto->buyer = NULL;
    }
    if (curve_exchange_dto->receiver) {
        free(curve_exchange_dto->receiver);
        curve_exchange_dto->receiver = NULL;
    }
    if (curve_exchange_dto->token_sold) {
        free(curve_exchange_dto->token_sold);
        curve_exchange_dto->token_sold = NULL;
    }
    if (curve_exchange_dto->token_bought) {
        free(curve_exchange_dto->token_bought);
        curve_exchange_dto->token_bought = NULL;
    }
    if (curve_exchange_dto->amount_sold) {
        free(curve_exchange_dto->amount_sold);
        curve_exchange_dto->amount_sold = NULL;
    }
    if (curve_exchange_dto->amount_bought) {
        free(curve_exchange_dto->amount_bought);
        curve_exchange_dto->amount_bought = NULL;
    }
    if (curve_exchange_dto->block) {
        free(curve_exchange_dto->block);
        curve_exchange_dto->block = NULL;
    }
    if (curve_exchange_dto->timestamp) {
        free(curve_exchange_dto->timestamp);
        curve_exchange_dto->timestamp = NULL;
    }
    if (curve_exchange_dto->transaction) {
        free(curve_exchange_dto->transaction);
        curve_exchange_dto->transaction = NULL;
    }
    if (curve_exchange_dto->evaluated_aggressor) {
        transactions_e_trade_aggressive_side_free(curve_exchange_dto->evaluated_aggressor);
        curve_exchange_dto->evaluated_aggressor = NULL;
    }
    if (curve_exchange_dto->pool_id) {
        free(curve_exchange_dto->pool_id);
        curve_exchange_dto->pool_id = NULL;
    }
    if (curve_exchange_dto->transaction_id) {
        free(curve_exchange_dto->transaction_id);
        curve_exchange_dto->transaction_id = NULL;
    }
    free(curve_exchange_dto);
}

cJSON *curve_exchange_dto_convertToJSON(curve_exchange_dto_t *curve_exchange_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_exchange_dto->entry_time
    if(curve_exchange_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_exchange_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_exchange_dto->recv_time
    if(curve_exchange_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_exchange_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_exchange_dto->block_number
    if(curve_exchange_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_exchange_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_exchange_dto->id
    if(curve_exchange_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_exchange_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->pool
    if(curve_exchange_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", curve_exchange_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->buyer
    if(curve_exchange_dto->buyer) {
    if(cJSON_AddStringToObject(item, "buyer", curve_exchange_dto->buyer) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->receiver
    if(curve_exchange_dto->receiver) {
    if(cJSON_AddStringToObject(item, "receiver", curve_exchange_dto->receiver) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->token_sold
    if(curve_exchange_dto->token_sold) {
    if(cJSON_AddStringToObject(item, "token_sold", curve_exchange_dto->token_sold) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->token_bought
    if(curve_exchange_dto->token_bought) {
    if(cJSON_AddStringToObject(item, "token_bought", curve_exchange_dto->token_bought) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->amount_sold
    if(curve_exchange_dto->amount_sold) {
    if(cJSON_AddStringToObject(item, "amount_sold", curve_exchange_dto->amount_sold) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->amount_bought
    if(curve_exchange_dto->amount_bought) {
    if(cJSON_AddStringToObject(item, "amount_bought", curve_exchange_dto->amount_bought) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->block
    if(curve_exchange_dto->block) {
    if(cJSON_AddStringToObject(item, "block", curve_exchange_dto->block) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->timestamp
    if(curve_exchange_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", curve_exchange_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->transaction
    if(curve_exchange_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", curve_exchange_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->vid
    if(curve_exchange_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_exchange_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_exchange_dto->evaluated_price
    if(curve_exchange_dto->evaluated_price) {
    if(cJSON_AddNumberToObject(item, "evaluated_price", curve_exchange_dto->evaluated_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_exchange_dto->evaluated_amount
    if(curve_exchange_dto->evaluated_amount) {
    if(cJSON_AddNumberToObject(item, "evaluated_amount", curve_exchange_dto->evaluated_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_exchange_dto->evaluated_aggressor
    if(curve_exchange_dto->evaluated_aggressor != on_chain_dapps___rest_api_curve_exchange_dto__NULL) {
    cJSON *evaluated_aggressor_local_JSON = transactions_e_trade_aggressive_side_convertToJSON(curve_exchange_dto->evaluated_aggressor);
    if(evaluated_aggressor_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "evaluated_aggressor", evaluated_aggressor_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }


    // curve_exchange_dto->pool_id
    if(curve_exchange_dto->pool_id) {
    if(cJSON_AddStringToObject(item, "pool_id", curve_exchange_dto->pool_id) == NULL) {
    goto fail; //String
    }
    }


    // curve_exchange_dto->transaction_id
    if(curve_exchange_dto->transaction_id) {
    if(cJSON_AddStringToObject(item, "transaction_id", curve_exchange_dto->transaction_id) == NULL) {
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

curve_exchange_dto_t *curve_exchange_dto_parseFromJSON(cJSON *curve_exchange_dtoJSON){

    curve_exchange_dto_t *curve_exchange_dto_local_var = NULL;

    // define the local variable for curve_exchange_dto->evaluated_aggressor
    transactions_e_trade_aggressive_side_t *evaluated_aggressor_local_nonprim = NULL;

    // curve_exchange_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_exchange_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_exchange_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_exchange_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->buyer
    cJSON *buyer = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "buyer");
    if (buyer) { 
    if(!cJSON_IsString(buyer) && !cJSON_IsNull(buyer))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->receiver
    cJSON *receiver = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "receiver");
    if (receiver) { 
    if(!cJSON_IsString(receiver) && !cJSON_IsNull(receiver))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->token_sold
    cJSON *token_sold = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "token_sold");
    if (token_sold) { 
    if(!cJSON_IsString(token_sold) && !cJSON_IsNull(token_sold))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->token_bought
    cJSON *token_bought = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "token_bought");
    if (token_bought) { 
    if(!cJSON_IsString(token_bought) && !cJSON_IsNull(token_bought))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->amount_sold
    cJSON *amount_sold = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "amount_sold");
    if (amount_sold) { 
    if(!cJSON_IsString(amount_sold) && !cJSON_IsNull(amount_sold))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->amount_bought
    cJSON *amount_bought = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "amount_bought");
    if (amount_bought) { 
    if(!cJSON_IsString(amount_bought) && !cJSON_IsNull(amount_bought))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->block
    cJSON *block = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "block");
    if (block) { 
    if(!cJSON_IsString(block) && !cJSON_IsNull(block))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // curve_exchange_dto->evaluated_price
    cJSON *evaluated_price = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "evaluated_price");
    if (evaluated_price) { 
    if(!cJSON_IsNumber(evaluated_price))
    {
    goto end; //Numeric
    }
    }

    // curve_exchange_dto->evaluated_amount
    cJSON *evaluated_amount = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "evaluated_amount");
    if (evaluated_amount) { 
    if(!cJSON_IsNumber(evaluated_amount))
    {
    goto end; //Numeric
    }
    }

    // curve_exchange_dto->evaluated_aggressor
    cJSON *evaluated_aggressor = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "evaluated_aggressor");
    if (evaluated_aggressor) { 
    evaluated_aggressor_local_nonprim = transactions_e_trade_aggressive_side_parseFromJSON(evaluated_aggressor); //custom
    }

    // curve_exchange_dto->pool_id
    cJSON *pool_id = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "pool_id");
    if (pool_id) { 
    if(!cJSON_IsString(pool_id) && !cJSON_IsNull(pool_id))
    {
    goto end; //String
    }
    }

    // curve_exchange_dto->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(curve_exchange_dtoJSON, "transaction_id");
    if (transaction_id) { 
    if(!cJSON_IsString(transaction_id) && !cJSON_IsNull(transaction_id))
    {
    goto end; //String
    }
    }


    curve_exchange_dto_local_var = curve_exchange_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        buyer && !cJSON_IsNull(buyer) ? strdup(buyer->valuestring) : NULL,
        receiver && !cJSON_IsNull(receiver) ? strdup(receiver->valuestring) : NULL,
        token_sold && !cJSON_IsNull(token_sold) ? strdup(token_sold->valuestring) : NULL,
        token_bought && !cJSON_IsNull(token_bought) ? strdup(token_bought->valuestring) : NULL,
        amount_sold && !cJSON_IsNull(amount_sold) ? strdup(amount_sold->valuestring) : NULL,
        amount_bought && !cJSON_IsNull(amount_bought) ? strdup(amount_bought->valuestring) : NULL,
        block && !cJSON_IsNull(block) ? strdup(block->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        transaction && !cJSON_IsNull(transaction) ? strdup(transaction->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        evaluated_price ? evaluated_price->valuedouble : 0,
        evaluated_amount ? evaluated_amount->valuedouble : 0,
        evaluated_aggressor ? evaluated_aggressor_local_nonprim : NULL,
        pool_id && !cJSON_IsNull(pool_id) ? strdup(pool_id->valuestring) : NULL,
        transaction_id && !cJSON_IsNull(transaction_id) ? strdup(transaction_id->valuestring) : NULL
        );

    return curve_exchange_dto_local_var;
end:
    if (evaluated_aggressor_local_nonprim) {
        transactions_e_trade_aggressive_side_free(evaluated_aggressor_local_nonprim);
        evaluated_aggressor_local_nonprim = NULL;
    }
    return NULL;

}
