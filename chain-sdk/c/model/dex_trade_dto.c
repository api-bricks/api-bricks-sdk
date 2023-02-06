#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dex_trade_dto.h"


char* evaluated_aggressordex_trade_dto_ToString(on_chain_dapps___rest_api_dex_trade_dto__e evaluated_aggressor) {
    char* evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
	return evaluated_aggressorArray[evaluated_aggressor];
}

on_chain_dapps___rest_api_dex_trade_dto__e evaluated_aggressordex_trade_dto_FromString(char* evaluated_aggressor){
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

dex_trade_dto_t *dex_trade_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *order,
    char *owner,
    char *sell_volume,
    char *buy_volume,
    char *trade_batch_id,
    char *trade_epoch,
    char *buy_token,
    char *sell_token,
    char *create_epoch,
    char *revert_epoch,
    char *tx_hash,
    char *tx_log_index,
    long vid,
    char *pool_id,
    char *transaction_id,
    double evaluated_price,
    double evaluated_amount,
    transactions_e_trade_aggressive_side_t *evaluated_aggressor
    ) {
    dex_trade_dto_t *dex_trade_dto_local_var = malloc(sizeof(dex_trade_dto_t));
    if (!dex_trade_dto_local_var) {
        return NULL;
    }
    dex_trade_dto_local_var->entry_time = entry_time;
    dex_trade_dto_local_var->recv_time = recv_time;
    dex_trade_dto_local_var->block_number = block_number;
    dex_trade_dto_local_var->id = id;
    dex_trade_dto_local_var->order = order;
    dex_trade_dto_local_var->owner = owner;
    dex_trade_dto_local_var->sell_volume = sell_volume;
    dex_trade_dto_local_var->buy_volume = buy_volume;
    dex_trade_dto_local_var->trade_batch_id = trade_batch_id;
    dex_trade_dto_local_var->trade_epoch = trade_epoch;
    dex_trade_dto_local_var->buy_token = buy_token;
    dex_trade_dto_local_var->sell_token = sell_token;
    dex_trade_dto_local_var->create_epoch = create_epoch;
    dex_trade_dto_local_var->revert_epoch = revert_epoch;
    dex_trade_dto_local_var->tx_hash = tx_hash;
    dex_trade_dto_local_var->tx_log_index = tx_log_index;
    dex_trade_dto_local_var->vid = vid;
    dex_trade_dto_local_var->pool_id = pool_id;
    dex_trade_dto_local_var->transaction_id = transaction_id;
    dex_trade_dto_local_var->evaluated_price = evaluated_price;
    dex_trade_dto_local_var->evaluated_amount = evaluated_amount;
    dex_trade_dto_local_var->evaluated_aggressor = evaluated_aggressor;

    return dex_trade_dto_local_var;
}


void dex_trade_dto_free(dex_trade_dto_t *dex_trade_dto) {
    if(NULL == dex_trade_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (dex_trade_dto->entry_time) {
        free(dex_trade_dto->entry_time);
        dex_trade_dto->entry_time = NULL;
    }
    if (dex_trade_dto->recv_time) {
        free(dex_trade_dto->recv_time);
        dex_trade_dto->recv_time = NULL;
    }
    if (dex_trade_dto->id) {
        free(dex_trade_dto->id);
        dex_trade_dto->id = NULL;
    }
    if (dex_trade_dto->order) {
        free(dex_trade_dto->order);
        dex_trade_dto->order = NULL;
    }
    if (dex_trade_dto->owner) {
        free(dex_trade_dto->owner);
        dex_trade_dto->owner = NULL;
    }
    if (dex_trade_dto->sell_volume) {
        free(dex_trade_dto->sell_volume);
        dex_trade_dto->sell_volume = NULL;
    }
    if (dex_trade_dto->buy_volume) {
        free(dex_trade_dto->buy_volume);
        dex_trade_dto->buy_volume = NULL;
    }
    if (dex_trade_dto->trade_batch_id) {
        free(dex_trade_dto->trade_batch_id);
        dex_trade_dto->trade_batch_id = NULL;
    }
    if (dex_trade_dto->trade_epoch) {
        free(dex_trade_dto->trade_epoch);
        dex_trade_dto->trade_epoch = NULL;
    }
    if (dex_trade_dto->buy_token) {
        free(dex_trade_dto->buy_token);
        dex_trade_dto->buy_token = NULL;
    }
    if (dex_trade_dto->sell_token) {
        free(dex_trade_dto->sell_token);
        dex_trade_dto->sell_token = NULL;
    }
    if (dex_trade_dto->create_epoch) {
        free(dex_trade_dto->create_epoch);
        dex_trade_dto->create_epoch = NULL;
    }
    if (dex_trade_dto->revert_epoch) {
        free(dex_trade_dto->revert_epoch);
        dex_trade_dto->revert_epoch = NULL;
    }
    if (dex_trade_dto->tx_hash) {
        free(dex_trade_dto->tx_hash);
        dex_trade_dto->tx_hash = NULL;
    }
    if (dex_trade_dto->tx_log_index) {
        free(dex_trade_dto->tx_log_index);
        dex_trade_dto->tx_log_index = NULL;
    }
    if (dex_trade_dto->pool_id) {
        free(dex_trade_dto->pool_id);
        dex_trade_dto->pool_id = NULL;
    }
    if (dex_trade_dto->transaction_id) {
        free(dex_trade_dto->transaction_id);
        dex_trade_dto->transaction_id = NULL;
    }
    if (dex_trade_dto->evaluated_aggressor) {
        transactions_e_trade_aggressive_side_free(dex_trade_dto->evaluated_aggressor);
        dex_trade_dto->evaluated_aggressor = NULL;
    }
    free(dex_trade_dto);
}

cJSON *dex_trade_dto_convertToJSON(dex_trade_dto_t *dex_trade_dto) {
    cJSON *item = cJSON_CreateObject();

    // dex_trade_dto->entry_time
    if(dex_trade_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", dex_trade_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_trade_dto->recv_time
    if(dex_trade_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", dex_trade_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_trade_dto->block_number
    if(dex_trade_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", dex_trade_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_trade_dto->id
    if(dex_trade_dto->id) {
    if(cJSON_AddStringToObject(item, "id", dex_trade_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->order
    if(dex_trade_dto->order) {
    if(cJSON_AddStringToObject(item, "order", dex_trade_dto->order) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->owner
    if(dex_trade_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", dex_trade_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->sell_volume
    if(dex_trade_dto->sell_volume) {
    if(cJSON_AddStringToObject(item, "sell_volume", dex_trade_dto->sell_volume) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->buy_volume
    if(dex_trade_dto->buy_volume) {
    if(cJSON_AddStringToObject(item, "buy_volume", dex_trade_dto->buy_volume) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->trade_batch_id
    if(dex_trade_dto->trade_batch_id) {
    if(cJSON_AddStringToObject(item, "trade_batch_id", dex_trade_dto->trade_batch_id) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->trade_epoch
    if(dex_trade_dto->trade_epoch) {
    if(cJSON_AddStringToObject(item, "trade_epoch", dex_trade_dto->trade_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->buy_token
    if(dex_trade_dto->buy_token) {
    if(cJSON_AddStringToObject(item, "buy_token", dex_trade_dto->buy_token) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->sell_token
    if(dex_trade_dto->sell_token) {
    if(cJSON_AddStringToObject(item, "sell_token", dex_trade_dto->sell_token) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->create_epoch
    if(dex_trade_dto->create_epoch) {
    if(cJSON_AddStringToObject(item, "create_epoch", dex_trade_dto->create_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->revert_epoch
    if(dex_trade_dto->revert_epoch) {
    if(cJSON_AddStringToObject(item, "revert_epoch", dex_trade_dto->revert_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->tx_hash
    if(dex_trade_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", dex_trade_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->tx_log_index
    if(dex_trade_dto->tx_log_index) {
    if(cJSON_AddStringToObject(item, "tx_log_index", dex_trade_dto->tx_log_index) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->vid
    if(dex_trade_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", dex_trade_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_trade_dto->pool_id
    if(dex_trade_dto->pool_id) {
    if(cJSON_AddStringToObject(item, "pool_id", dex_trade_dto->pool_id) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->transaction_id
    if(dex_trade_dto->transaction_id) {
    if(cJSON_AddStringToObject(item, "transaction_id", dex_trade_dto->transaction_id) == NULL) {
    goto fail; //String
    }
    }


    // dex_trade_dto->evaluated_price
    if(dex_trade_dto->evaluated_price) {
    if(cJSON_AddNumberToObject(item, "evaluated_price", dex_trade_dto->evaluated_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_trade_dto->evaluated_amount
    if(dex_trade_dto->evaluated_amount) {
    if(cJSON_AddNumberToObject(item, "evaluated_amount", dex_trade_dto->evaluated_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_trade_dto->evaluated_aggressor
    if(dex_trade_dto->evaluated_aggressor != on_chain_dapps___rest_api_dex_trade_dto__NULL) {
    cJSON *evaluated_aggressor_local_JSON = transactions_e_trade_aggressive_side_convertToJSON(dex_trade_dto->evaluated_aggressor);
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

dex_trade_dto_t *dex_trade_dto_parseFromJSON(cJSON *dex_trade_dtoJSON){

    dex_trade_dto_t *dex_trade_dto_local_var = NULL;

    // define the local variable for dex_trade_dto->evaluated_aggressor
    transactions_e_trade_aggressive_side_t *evaluated_aggressor_local_nonprim = NULL;

    // dex_trade_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // dex_trade_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // dex_trade_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // dex_trade_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->order
    cJSON *order = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "order");
    if (order) { 
    if(!cJSON_IsString(order) && !cJSON_IsNull(order))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner) && !cJSON_IsNull(owner))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->sell_volume
    cJSON *sell_volume = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "sell_volume");
    if (sell_volume) { 
    if(!cJSON_IsString(sell_volume) && !cJSON_IsNull(sell_volume))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->buy_volume
    cJSON *buy_volume = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "buy_volume");
    if (buy_volume) { 
    if(!cJSON_IsString(buy_volume) && !cJSON_IsNull(buy_volume))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->trade_batch_id
    cJSON *trade_batch_id = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "trade_batch_id");
    if (trade_batch_id) { 
    if(!cJSON_IsString(trade_batch_id) && !cJSON_IsNull(trade_batch_id))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->trade_epoch
    cJSON *trade_epoch = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "trade_epoch");
    if (trade_epoch) { 
    if(!cJSON_IsString(trade_epoch) && !cJSON_IsNull(trade_epoch))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->buy_token
    cJSON *buy_token = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "buy_token");
    if (buy_token) { 
    if(!cJSON_IsString(buy_token) && !cJSON_IsNull(buy_token))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->sell_token
    cJSON *sell_token = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "sell_token");
    if (sell_token) { 
    if(!cJSON_IsString(sell_token) && !cJSON_IsNull(sell_token))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->create_epoch
    cJSON *create_epoch = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "create_epoch");
    if (create_epoch) { 
    if(!cJSON_IsString(create_epoch) && !cJSON_IsNull(create_epoch))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->revert_epoch
    cJSON *revert_epoch = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "revert_epoch");
    if (revert_epoch) { 
    if(!cJSON_IsString(revert_epoch) && !cJSON_IsNull(revert_epoch))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->tx_log_index
    cJSON *tx_log_index = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "tx_log_index");
    if (tx_log_index) { 
    if(!cJSON_IsString(tx_log_index) && !cJSON_IsNull(tx_log_index))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // dex_trade_dto->pool_id
    cJSON *pool_id = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "pool_id");
    if (pool_id) { 
    if(!cJSON_IsString(pool_id) && !cJSON_IsNull(pool_id))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "transaction_id");
    if (transaction_id) { 
    if(!cJSON_IsString(transaction_id) && !cJSON_IsNull(transaction_id))
    {
    goto end; //String
    }
    }

    // dex_trade_dto->evaluated_price
    cJSON *evaluated_price = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "evaluated_price");
    if (evaluated_price) { 
    if(!cJSON_IsNumber(evaluated_price))
    {
    goto end; //Numeric
    }
    }

    // dex_trade_dto->evaluated_amount
    cJSON *evaluated_amount = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "evaluated_amount");
    if (evaluated_amount) { 
    if(!cJSON_IsNumber(evaluated_amount))
    {
    goto end; //Numeric
    }
    }

    // dex_trade_dto->evaluated_aggressor
    cJSON *evaluated_aggressor = cJSON_GetObjectItemCaseSensitive(dex_trade_dtoJSON, "evaluated_aggressor");
    if (evaluated_aggressor) { 
    evaluated_aggressor_local_nonprim = transactions_e_trade_aggressive_side_parseFromJSON(evaluated_aggressor); //custom
    }


    dex_trade_dto_local_var = dex_trade_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        order && !cJSON_IsNull(order) ? strdup(order->valuestring) : NULL,
        owner && !cJSON_IsNull(owner) ? strdup(owner->valuestring) : NULL,
        sell_volume && !cJSON_IsNull(sell_volume) ? strdup(sell_volume->valuestring) : NULL,
        buy_volume && !cJSON_IsNull(buy_volume) ? strdup(buy_volume->valuestring) : NULL,
        trade_batch_id && !cJSON_IsNull(trade_batch_id) ? strdup(trade_batch_id->valuestring) : NULL,
        trade_epoch && !cJSON_IsNull(trade_epoch) ? strdup(trade_epoch->valuestring) : NULL,
        buy_token && !cJSON_IsNull(buy_token) ? strdup(buy_token->valuestring) : NULL,
        sell_token && !cJSON_IsNull(sell_token) ? strdup(sell_token->valuestring) : NULL,
        create_epoch && !cJSON_IsNull(create_epoch) ? strdup(create_epoch->valuestring) : NULL,
        revert_epoch && !cJSON_IsNull(revert_epoch) ? strdup(revert_epoch->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        tx_log_index && !cJSON_IsNull(tx_log_index) ? strdup(tx_log_index->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        pool_id && !cJSON_IsNull(pool_id) ? strdup(pool_id->valuestring) : NULL,
        transaction_id && !cJSON_IsNull(transaction_id) ? strdup(transaction_id->valuestring) : NULL,
        evaluated_price ? evaluated_price->valuedouble : 0,
        evaluated_amount ? evaluated_amount->valuedouble : 0,
        evaluated_aggressor ? evaluated_aggressor_local_nonprim : NULL
        );

    return dex_trade_dto_local_var;
end:
    if (evaluated_aggressor_local_nonprim) {
        transactions_e_trade_aggressive_side_free(evaluated_aggressor_local_nonprim);
        evaluated_aggressor_local_nonprim = NULL;
    }
    return NULL;

}
