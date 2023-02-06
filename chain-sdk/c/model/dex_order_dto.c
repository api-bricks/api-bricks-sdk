#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dex_order_dto.h"



dex_order_dto_t *dex_order_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *owner,
    int order_id,
    char *from_batch_id,
    char *from_epoch,
    char *until_batch_id,
    char *until_epoch,
    char *buy_token,
    char *sell_token,
    char *price_numerator,
    char *price_denominator,
    char *max_sell_amount,
    char *min_receive_amount,
    char *sold_volume,
    char *bought_volume,
    char *create_epoch,
    char *cancel_epoch,
    char *delete_epoch,
    char *tx_hash,
    char *tx_log_index,
    long vid
    ) {
    dex_order_dto_t *dex_order_dto_local_var = malloc(sizeof(dex_order_dto_t));
    if (!dex_order_dto_local_var) {
        return NULL;
    }
    dex_order_dto_local_var->entry_time = entry_time;
    dex_order_dto_local_var->recv_time = recv_time;
    dex_order_dto_local_var->block_number = block_number;
    dex_order_dto_local_var->id = id;
    dex_order_dto_local_var->owner = owner;
    dex_order_dto_local_var->order_id = order_id;
    dex_order_dto_local_var->from_batch_id = from_batch_id;
    dex_order_dto_local_var->from_epoch = from_epoch;
    dex_order_dto_local_var->until_batch_id = until_batch_id;
    dex_order_dto_local_var->until_epoch = until_epoch;
    dex_order_dto_local_var->buy_token = buy_token;
    dex_order_dto_local_var->sell_token = sell_token;
    dex_order_dto_local_var->price_numerator = price_numerator;
    dex_order_dto_local_var->price_denominator = price_denominator;
    dex_order_dto_local_var->max_sell_amount = max_sell_amount;
    dex_order_dto_local_var->min_receive_amount = min_receive_amount;
    dex_order_dto_local_var->sold_volume = sold_volume;
    dex_order_dto_local_var->bought_volume = bought_volume;
    dex_order_dto_local_var->create_epoch = create_epoch;
    dex_order_dto_local_var->cancel_epoch = cancel_epoch;
    dex_order_dto_local_var->delete_epoch = delete_epoch;
    dex_order_dto_local_var->tx_hash = tx_hash;
    dex_order_dto_local_var->tx_log_index = tx_log_index;
    dex_order_dto_local_var->vid = vid;

    return dex_order_dto_local_var;
}


void dex_order_dto_free(dex_order_dto_t *dex_order_dto) {
    if(NULL == dex_order_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (dex_order_dto->entry_time) {
        free(dex_order_dto->entry_time);
        dex_order_dto->entry_time = NULL;
    }
    if (dex_order_dto->recv_time) {
        free(dex_order_dto->recv_time);
        dex_order_dto->recv_time = NULL;
    }
    if (dex_order_dto->id) {
        free(dex_order_dto->id);
        dex_order_dto->id = NULL;
    }
    if (dex_order_dto->owner) {
        free(dex_order_dto->owner);
        dex_order_dto->owner = NULL;
    }
    if (dex_order_dto->from_batch_id) {
        free(dex_order_dto->from_batch_id);
        dex_order_dto->from_batch_id = NULL;
    }
    if (dex_order_dto->from_epoch) {
        free(dex_order_dto->from_epoch);
        dex_order_dto->from_epoch = NULL;
    }
    if (dex_order_dto->until_batch_id) {
        free(dex_order_dto->until_batch_id);
        dex_order_dto->until_batch_id = NULL;
    }
    if (dex_order_dto->until_epoch) {
        free(dex_order_dto->until_epoch);
        dex_order_dto->until_epoch = NULL;
    }
    if (dex_order_dto->buy_token) {
        free(dex_order_dto->buy_token);
        dex_order_dto->buy_token = NULL;
    }
    if (dex_order_dto->sell_token) {
        free(dex_order_dto->sell_token);
        dex_order_dto->sell_token = NULL;
    }
    if (dex_order_dto->price_numerator) {
        free(dex_order_dto->price_numerator);
        dex_order_dto->price_numerator = NULL;
    }
    if (dex_order_dto->price_denominator) {
        free(dex_order_dto->price_denominator);
        dex_order_dto->price_denominator = NULL;
    }
    if (dex_order_dto->max_sell_amount) {
        free(dex_order_dto->max_sell_amount);
        dex_order_dto->max_sell_amount = NULL;
    }
    if (dex_order_dto->min_receive_amount) {
        free(dex_order_dto->min_receive_amount);
        dex_order_dto->min_receive_amount = NULL;
    }
    if (dex_order_dto->sold_volume) {
        free(dex_order_dto->sold_volume);
        dex_order_dto->sold_volume = NULL;
    }
    if (dex_order_dto->bought_volume) {
        free(dex_order_dto->bought_volume);
        dex_order_dto->bought_volume = NULL;
    }
    if (dex_order_dto->create_epoch) {
        free(dex_order_dto->create_epoch);
        dex_order_dto->create_epoch = NULL;
    }
    if (dex_order_dto->cancel_epoch) {
        free(dex_order_dto->cancel_epoch);
        dex_order_dto->cancel_epoch = NULL;
    }
    if (dex_order_dto->delete_epoch) {
        free(dex_order_dto->delete_epoch);
        dex_order_dto->delete_epoch = NULL;
    }
    if (dex_order_dto->tx_hash) {
        free(dex_order_dto->tx_hash);
        dex_order_dto->tx_hash = NULL;
    }
    if (dex_order_dto->tx_log_index) {
        free(dex_order_dto->tx_log_index);
        dex_order_dto->tx_log_index = NULL;
    }
    free(dex_order_dto);
}

cJSON *dex_order_dto_convertToJSON(dex_order_dto_t *dex_order_dto) {
    cJSON *item = cJSON_CreateObject();

    // dex_order_dto->entry_time
    if(dex_order_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", dex_order_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_order_dto->recv_time
    if(dex_order_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", dex_order_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_order_dto->block_number
    if(dex_order_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", dex_order_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_order_dto->id
    if(dex_order_dto->id) {
    if(cJSON_AddStringToObject(item, "id", dex_order_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->owner
    if(dex_order_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", dex_order_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->order_id
    if(dex_order_dto->order_id) {
    if(cJSON_AddNumberToObject(item, "order_id", dex_order_dto->order_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_order_dto->from_batch_id
    if(dex_order_dto->from_batch_id) {
    if(cJSON_AddStringToObject(item, "from_batch_id", dex_order_dto->from_batch_id) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->from_epoch
    if(dex_order_dto->from_epoch) {
    if(cJSON_AddStringToObject(item, "from_epoch", dex_order_dto->from_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->until_batch_id
    if(dex_order_dto->until_batch_id) {
    if(cJSON_AddStringToObject(item, "until_batch_id", dex_order_dto->until_batch_id) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->until_epoch
    if(dex_order_dto->until_epoch) {
    if(cJSON_AddStringToObject(item, "until_epoch", dex_order_dto->until_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->buy_token
    if(dex_order_dto->buy_token) {
    if(cJSON_AddStringToObject(item, "buy_token", dex_order_dto->buy_token) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->sell_token
    if(dex_order_dto->sell_token) {
    if(cJSON_AddStringToObject(item, "sell_token", dex_order_dto->sell_token) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->price_numerator
    if(dex_order_dto->price_numerator) {
    if(cJSON_AddStringToObject(item, "price_numerator", dex_order_dto->price_numerator) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->price_denominator
    if(dex_order_dto->price_denominator) {
    if(cJSON_AddStringToObject(item, "price_denominator", dex_order_dto->price_denominator) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->max_sell_amount
    if(dex_order_dto->max_sell_amount) {
    if(cJSON_AddStringToObject(item, "max_sell_amount", dex_order_dto->max_sell_amount) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->min_receive_amount
    if(dex_order_dto->min_receive_amount) {
    if(cJSON_AddStringToObject(item, "min_receive_amount", dex_order_dto->min_receive_amount) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->sold_volume
    if(dex_order_dto->sold_volume) {
    if(cJSON_AddStringToObject(item, "sold_volume", dex_order_dto->sold_volume) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->bought_volume
    if(dex_order_dto->bought_volume) {
    if(cJSON_AddStringToObject(item, "bought_volume", dex_order_dto->bought_volume) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->create_epoch
    if(dex_order_dto->create_epoch) {
    if(cJSON_AddStringToObject(item, "create_epoch", dex_order_dto->create_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->cancel_epoch
    if(dex_order_dto->cancel_epoch) {
    if(cJSON_AddStringToObject(item, "cancel_epoch", dex_order_dto->cancel_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->delete_epoch
    if(dex_order_dto->delete_epoch) {
    if(cJSON_AddStringToObject(item, "delete_epoch", dex_order_dto->delete_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->tx_hash
    if(dex_order_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", dex_order_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->tx_log_index
    if(dex_order_dto->tx_log_index) {
    if(cJSON_AddStringToObject(item, "tx_log_index", dex_order_dto->tx_log_index) == NULL) {
    goto fail; //String
    }
    }


    // dex_order_dto->vid
    if(dex_order_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", dex_order_dto->vid) == NULL) {
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

dex_order_dto_t *dex_order_dto_parseFromJSON(cJSON *dex_order_dtoJSON){

    dex_order_dto_t *dex_order_dto_local_var = NULL;

    // dex_order_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // dex_order_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // dex_order_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // dex_order_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // dex_order_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner) && !cJSON_IsNull(owner))
    {
    goto end; //String
    }
    }

    // dex_order_dto->order_id
    cJSON *order_id = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "order_id");
    if (order_id) { 
    if(!cJSON_IsNumber(order_id))
    {
    goto end; //Numeric
    }
    }

    // dex_order_dto->from_batch_id
    cJSON *from_batch_id = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "from_batch_id");
    if (from_batch_id) { 
    if(!cJSON_IsString(from_batch_id) && !cJSON_IsNull(from_batch_id))
    {
    goto end; //String
    }
    }

    // dex_order_dto->from_epoch
    cJSON *from_epoch = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "from_epoch");
    if (from_epoch) { 
    if(!cJSON_IsString(from_epoch) && !cJSON_IsNull(from_epoch))
    {
    goto end; //String
    }
    }

    // dex_order_dto->until_batch_id
    cJSON *until_batch_id = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "until_batch_id");
    if (until_batch_id) { 
    if(!cJSON_IsString(until_batch_id) && !cJSON_IsNull(until_batch_id))
    {
    goto end; //String
    }
    }

    // dex_order_dto->until_epoch
    cJSON *until_epoch = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "until_epoch");
    if (until_epoch) { 
    if(!cJSON_IsString(until_epoch) && !cJSON_IsNull(until_epoch))
    {
    goto end; //String
    }
    }

    // dex_order_dto->buy_token
    cJSON *buy_token = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "buy_token");
    if (buy_token) { 
    if(!cJSON_IsString(buy_token) && !cJSON_IsNull(buy_token))
    {
    goto end; //String
    }
    }

    // dex_order_dto->sell_token
    cJSON *sell_token = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "sell_token");
    if (sell_token) { 
    if(!cJSON_IsString(sell_token) && !cJSON_IsNull(sell_token))
    {
    goto end; //String
    }
    }

    // dex_order_dto->price_numerator
    cJSON *price_numerator = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "price_numerator");
    if (price_numerator) { 
    if(!cJSON_IsString(price_numerator) && !cJSON_IsNull(price_numerator))
    {
    goto end; //String
    }
    }

    // dex_order_dto->price_denominator
    cJSON *price_denominator = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "price_denominator");
    if (price_denominator) { 
    if(!cJSON_IsString(price_denominator) && !cJSON_IsNull(price_denominator))
    {
    goto end; //String
    }
    }

    // dex_order_dto->max_sell_amount
    cJSON *max_sell_amount = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "max_sell_amount");
    if (max_sell_amount) { 
    if(!cJSON_IsString(max_sell_amount) && !cJSON_IsNull(max_sell_amount))
    {
    goto end; //String
    }
    }

    // dex_order_dto->min_receive_amount
    cJSON *min_receive_amount = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "min_receive_amount");
    if (min_receive_amount) { 
    if(!cJSON_IsString(min_receive_amount) && !cJSON_IsNull(min_receive_amount))
    {
    goto end; //String
    }
    }

    // dex_order_dto->sold_volume
    cJSON *sold_volume = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "sold_volume");
    if (sold_volume) { 
    if(!cJSON_IsString(sold_volume) && !cJSON_IsNull(sold_volume))
    {
    goto end; //String
    }
    }

    // dex_order_dto->bought_volume
    cJSON *bought_volume = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "bought_volume");
    if (bought_volume) { 
    if(!cJSON_IsString(bought_volume) && !cJSON_IsNull(bought_volume))
    {
    goto end; //String
    }
    }

    // dex_order_dto->create_epoch
    cJSON *create_epoch = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "create_epoch");
    if (create_epoch) { 
    if(!cJSON_IsString(create_epoch) && !cJSON_IsNull(create_epoch))
    {
    goto end; //String
    }
    }

    // dex_order_dto->cancel_epoch
    cJSON *cancel_epoch = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "cancel_epoch");
    if (cancel_epoch) { 
    if(!cJSON_IsString(cancel_epoch) && !cJSON_IsNull(cancel_epoch))
    {
    goto end; //String
    }
    }

    // dex_order_dto->delete_epoch
    cJSON *delete_epoch = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "delete_epoch");
    if (delete_epoch) { 
    if(!cJSON_IsString(delete_epoch) && !cJSON_IsNull(delete_epoch))
    {
    goto end; //String
    }
    }

    // dex_order_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // dex_order_dto->tx_log_index
    cJSON *tx_log_index = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "tx_log_index");
    if (tx_log_index) { 
    if(!cJSON_IsString(tx_log_index) && !cJSON_IsNull(tx_log_index))
    {
    goto end; //String
    }
    }

    // dex_order_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(dex_order_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    dex_order_dto_local_var = dex_order_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        owner && !cJSON_IsNull(owner) ? strdup(owner->valuestring) : NULL,
        order_id ? order_id->valuedouble : 0,
        from_batch_id && !cJSON_IsNull(from_batch_id) ? strdup(from_batch_id->valuestring) : NULL,
        from_epoch && !cJSON_IsNull(from_epoch) ? strdup(from_epoch->valuestring) : NULL,
        until_batch_id && !cJSON_IsNull(until_batch_id) ? strdup(until_batch_id->valuestring) : NULL,
        until_epoch && !cJSON_IsNull(until_epoch) ? strdup(until_epoch->valuestring) : NULL,
        buy_token && !cJSON_IsNull(buy_token) ? strdup(buy_token->valuestring) : NULL,
        sell_token && !cJSON_IsNull(sell_token) ? strdup(sell_token->valuestring) : NULL,
        price_numerator && !cJSON_IsNull(price_numerator) ? strdup(price_numerator->valuestring) : NULL,
        price_denominator && !cJSON_IsNull(price_denominator) ? strdup(price_denominator->valuestring) : NULL,
        max_sell_amount && !cJSON_IsNull(max_sell_amount) ? strdup(max_sell_amount->valuestring) : NULL,
        min_receive_amount && !cJSON_IsNull(min_receive_amount) ? strdup(min_receive_amount->valuestring) : NULL,
        sold_volume && !cJSON_IsNull(sold_volume) ? strdup(sold_volume->valuestring) : NULL,
        bought_volume && !cJSON_IsNull(bought_volume) ? strdup(bought_volume->valuestring) : NULL,
        create_epoch && !cJSON_IsNull(create_epoch) ? strdup(create_epoch->valuestring) : NULL,
        cancel_epoch && !cJSON_IsNull(cancel_epoch) ? strdup(cancel_epoch->valuestring) : NULL,
        delete_epoch && !cJSON_IsNull(delete_epoch) ? strdup(delete_epoch->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        tx_log_index && !cJSON_IsNull(tx_log_index) ? strdup(tx_log_index->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return dex_order_dto_local_var;
end:
    return NULL;

}
