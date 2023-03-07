#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cryptopunks_trade_dto.h"



cryptopunks_trade_dto_t *cryptopunks_trade_dto_create(
    char *entry_time,
    char *recv_time,
    char *block_number,
    long vid,
    char *block_range,
    char *id,
    char *transaction_hash,
    int log_index,
    char *timestamp,
    int is_bundle,
    char *collection,
    char *token_id,
    char *amount,
    char *price_eth,
    char *buyer,
    char *seller
    ) {
    cryptopunks_trade_dto_t *cryptopunks_trade_dto_local_var = malloc(sizeof(cryptopunks_trade_dto_t));
    if (!cryptopunks_trade_dto_local_var) {
        return NULL;
    }
    cryptopunks_trade_dto_local_var->entry_time = entry_time;
    cryptopunks_trade_dto_local_var->recv_time = recv_time;
    cryptopunks_trade_dto_local_var->block_number = block_number;
    cryptopunks_trade_dto_local_var->vid = vid;
    cryptopunks_trade_dto_local_var->block_range = block_range;
    cryptopunks_trade_dto_local_var->id = id;
    cryptopunks_trade_dto_local_var->transaction_hash = transaction_hash;
    cryptopunks_trade_dto_local_var->log_index = log_index;
    cryptopunks_trade_dto_local_var->timestamp = timestamp;
    cryptopunks_trade_dto_local_var->is_bundle = is_bundle;
    cryptopunks_trade_dto_local_var->collection = collection;
    cryptopunks_trade_dto_local_var->token_id = token_id;
    cryptopunks_trade_dto_local_var->amount = amount;
    cryptopunks_trade_dto_local_var->price_eth = price_eth;
    cryptopunks_trade_dto_local_var->buyer = buyer;
    cryptopunks_trade_dto_local_var->seller = seller;

    return cryptopunks_trade_dto_local_var;
}


void cryptopunks_trade_dto_free(cryptopunks_trade_dto_t *cryptopunks_trade_dto) {
    if(NULL == cryptopunks_trade_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cryptopunks_trade_dto->entry_time) {
        free(cryptopunks_trade_dto->entry_time);
        cryptopunks_trade_dto->entry_time = NULL;
    }
    if (cryptopunks_trade_dto->recv_time) {
        free(cryptopunks_trade_dto->recv_time);
        cryptopunks_trade_dto->recv_time = NULL;
    }
    if (cryptopunks_trade_dto->block_number) {
        free(cryptopunks_trade_dto->block_number);
        cryptopunks_trade_dto->block_number = NULL;
    }
    if (cryptopunks_trade_dto->block_range) {
        free(cryptopunks_trade_dto->block_range);
        cryptopunks_trade_dto->block_range = NULL;
    }
    if (cryptopunks_trade_dto->id) {
        free(cryptopunks_trade_dto->id);
        cryptopunks_trade_dto->id = NULL;
    }
    if (cryptopunks_trade_dto->transaction_hash) {
        free(cryptopunks_trade_dto->transaction_hash);
        cryptopunks_trade_dto->transaction_hash = NULL;
    }
    if (cryptopunks_trade_dto->timestamp) {
        free(cryptopunks_trade_dto->timestamp);
        cryptopunks_trade_dto->timestamp = NULL;
    }
    if (cryptopunks_trade_dto->collection) {
        free(cryptopunks_trade_dto->collection);
        cryptopunks_trade_dto->collection = NULL;
    }
    if (cryptopunks_trade_dto->token_id) {
        free(cryptopunks_trade_dto->token_id);
        cryptopunks_trade_dto->token_id = NULL;
    }
    if (cryptopunks_trade_dto->amount) {
        free(cryptopunks_trade_dto->amount);
        cryptopunks_trade_dto->amount = NULL;
    }
    if (cryptopunks_trade_dto->price_eth) {
        free(cryptopunks_trade_dto->price_eth);
        cryptopunks_trade_dto->price_eth = NULL;
    }
    if (cryptopunks_trade_dto->buyer) {
        free(cryptopunks_trade_dto->buyer);
        cryptopunks_trade_dto->buyer = NULL;
    }
    if (cryptopunks_trade_dto->seller) {
        free(cryptopunks_trade_dto->seller);
        cryptopunks_trade_dto->seller = NULL;
    }
    free(cryptopunks_trade_dto);
}

cJSON *cryptopunks_trade_dto_convertToJSON(cryptopunks_trade_dto_t *cryptopunks_trade_dto) {
    cJSON *item = cJSON_CreateObject();

    // cryptopunks_trade_dto->entry_time
    if(cryptopunks_trade_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cryptopunks_trade_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_trade_dto->recv_time
    if(cryptopunks_trade_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cryptopunks_trade_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_trade_dto->block_number
    if(cryptopunks_trade_dto->block_number) {
    if(cJSON_AddStringToObject(item, "block_number", cryptopunks_trade_dto->block_number) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->vid
    if(cryptopunks_trade_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cryptopunks_trade_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_trade_dto->block_range
    if(cryptopunks_trade_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", cryptopunks_trade_dto->block_range) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->id
    if(cryptopunks_trade_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cryptopunks_trade_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->transaction_hash
    if(cryptopunks_trade_dto->transaction_hash) {
    if(cJSON_AddStringToObject(item, "transaction_hash", cryptopunks_trade_dto->transaction_hash) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->log_index
    if(cryptopunks_trade_dto->log_index) {
    if(cJSON_AddNumberToObject(item, "log_index", cryptopunks_trade_dto->log_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_trade_dto->timestamp
    if(cryptopunks_trade_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", cryptopunks_trade_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->is_bundle
    if(cryptopunks_trade_dto->is_bundle) {
    if(cJSON_AddBoolToObject(item, "is_bundle", cryptopunks_trade_dto->is_bundle) == NULL) {
    goto fail; //Bool
    }
    }


    // cryptopunks_trade_dto->collection
    if(cryptopunks_trade_dto->collection) {
    if(cJSON_AddStringToObject(item, "collection", cryptopunks_trade_dto->collection) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->token_id
    if(cryptopunks_trade_dto->token_id) {
    if(cJSON_AddStringToObject(item, "token_id", cryptopunks_trade_dto->token_id) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->amount
    if(cryptopunks_trade_dto->amount) {
    if(cJSON_AddStringToObject(item, "amount", cryptopunks_trade_dto->amount) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->price_eth
    if(cryptopunks_trade_dto->price_eth) {
    if(cJSON_AddStringToObject(item, "price_eth", cryptopunks_trade_dto->price_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->buyer
    if(cryptopunks_trade_dto->buyer) {
    if(cJSON_AddStringToObject(item, "buyer", cryptopunks_trade_dto->buyer) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_trade_dto->seller
    if(cryptopunks_trade_dto->seller) {
    if(cJSON_AddStringToObject(item, "seller", cryptopunks_trade_dto->seller) == NULL) {
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

cryptopunks_trade_dto_t *cryptopunks_trade_dto_parseFromJSON(cJSON *cryptopunks_trade_dtoJSON){

    cryptopunks_trade_dto_t *cryptopunks_trade_dto_local_var = NULL;

    // cryptopunks_trade_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_trade_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_trade_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsString(block_number) && !cJSON_IsNull(block_number))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_trade_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->transaction_hash
    cJSON *transaction_hash = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "transaction_hash");
    if (transaction_hash) { 
    if(!cJSON_IsString(transaction_hash) && !cJSON_IsNull(transaction_hash))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "log_index");
    if (log_index) { 
    if(!cJSON_IsNumber(log_index))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_trade_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->is_bundle
    cJSON *is_bundle = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "is_bundle");
    if (is_bundle) { 
    if(!cJSON_IsBool(is_bundle))
    {
    goto end; //Bool
    }
    }

    // cryptopunks_trade_dto->collection
    cJSON *collection = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "collection");
    if (collection) { 
    if(!cJSON_IsString(collection) && !cJSON_IsNull(collection))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->token_id
    cJSON *token_id = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "token_id");
    if (token_id) { 
    if(!cJSON_IsString(token_id) && !cJSON_IsNull(token_id))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "amount");
    if (amount) { 
    if(!cJSON_IsString(amount) && !cJSON_IsNull(amount))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->price_eth
    cJSON *price_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "price_eth");
    if (price_eth) { 
    if(!cJSON_IsString(price_eth) && !cJSON_IsNull(price_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->buyer
    cJSON *buyer = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "buyer");
    if (buyer) { 
    if(!cJSON_IsString(buyer) && !cJSON_IsNull(buyer))
    {
    goto end; //String
    }
    }

    // cryptopunks_trade_dto->seller
    cJSON *seller = cJSON_GetObjectItemCaseSensitive(cryptopunks_trade_dtoJSON, "seller");
    if (seller) { 
    if(!cJSON_IsString(seller) && !cJSON_IsNull(seller))
    {
    goto end; //String
    }
    }


    cryptopunks_trade_dto_local_var = cryptopunks_trade_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number && !cJSON_IsNull(block_number) ? strdup(block_number->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        transaction_hash && !cJSON_IsNull(transaction_hash) ? strdup(transaction_hash->valuestring) : NULL,
        log_index ? log_index->valuedouble : 0,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        is_bundle ? is_bundle->valueint : 0,
        collection && !cJSON_IsNull(collection) ? strdup(collection->valuestring) : NULL,
        token_id && !cJSON_IsNull(token_id) ? strdup(token_id->valuestring) : NULL,
        amount && !cJSON_IsNull(amount) ? strdup(amount->valuestring) : NULL,
        price_eth && !cJSON_IsNull(price_eth) ? strdup(price_eth->valuestring) : NULL,
        buyer && !cJSON_IsNull(buyer) ? strdup(buyer->valuestring) : NULL,
        seller && !cJSON_IsNull(seller) ? strdup(seller->valuestring) : NULL
        );

    return cryptopunks_trade_dto_local_var;
end:
    return NULL;

}
