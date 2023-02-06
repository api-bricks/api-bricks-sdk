#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dex_price_dto.h"



dex_price_dto_t *dex_price_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *token,
    char *batch_id,
    char *price_in_owl_numerator,
    char *price_in_owl_denominator,
    char *volume,
    char *create_epoch,
    char *tx_hash,
    long vid
    ) {
    dex_price_dto_t *dex_price_dto_local_var = malloc(sizeof(dex_price_dto_t));
    if (!dex_price_dto_local_var) {
        return NULL;
    }
    dex_price_dto_local_var->entry_time = entry_time;
    dex_price_dto_local_var->recv_time = recv_time;
    dex_price_dto_local_var->block_number = block_number;
    dex_price_dto_local_var->id = id;
    dex_price_dto_local_var->token = token;
    dex_price_dto_local_var->batch_id = batch_id;
    dex_price_dto_local_var->price_in_owl_numerator = price_in_owl_numerator;
    dex_price_dto_local_var->price_in_owl_denominator = price_in_owl_denominator;
    dex_price_dto_local_var->volume = volume;
    dex_price_dto_local_var->create_epoch = create_epoch;
    dex_price_dto_local_var->tx_hash = tx_hash;
    dex_price_dto_local_var->vid = vid;

    return dex_price_dto_local_var;
}


void dex_price_dto_free(dex_price_dto_t *dex_price_dto) {
    if(NULL == dex_price_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (dex_price_dto->entry_time) {
        free(dex_price_dto->entry_time);
        dex_price_dto->entry_time = NULL;
    }
    if (dex_price_dto->recv_time) {
        free(dex_price_dto->recv_time);
        dex_price_dto->recv_time = NULL;
    }
    if (dex_price_dto->id) {
        free(dex_price_dto->id);
        dex_price_dto->id = NULL;
    }
    if (dex_price_dto->token) {
        free(dex_price_dto->token);
        dex_price_dto->token = NULL;
    }
    if (dex_price_dto->batch_id) {
        free(dex_price_dto->batch_id);
        dex_price_dto->batch_id = NULL;
    }
    if (dex_price_dto->price_in_owl_numerator) {
        free(dex_price_dto->price_in_owl_numerator);
        dex_price_dto->price_in_owl_numerator = NULL;
    }
    if (dex_price_dto->price_in_owl_denominator) {
        free(dex_price_dto->price_in_owl_denominator);
        dex_price_dto->price_in_owl_denominator = NULL;
    }
    if (dex_price_dto->volume) {
        free(dex_price_dto->volume);
        dex_price_dto->volume = NULL;
    }
    if (dex_price_dto->create_epoch) {
        free(dex_price_dto->create_epoch);
        dex_price_dto->create_epoch = NULL;
    }
    if (dex_price_dto->tx_hash) {
        free(dex_price_dto->tx_hash);
        dex_price_dto->tx_hash = NULL;
    }
    free(dex_price_dto);
}

cJSON *dex_price_dto_convertToJSON(dex_price_dto_t *dex_price_dto) {
    cJSON *item = cJSON_CreateObject();

    // dex_price_dto->entry_time
    if(dex_price_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", dex_price_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_price_dto->recv_time
    if(dex_price_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", dex_price_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_price_dto->block_number
    if(dex_price_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", dex_price_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_price_dto->id
    if(dex_price_dto->id) {
    if(cJSON_AddStringToObject(item, "id", dex_price_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // dex_price_dto->token
    if(dex_price_dto->token) {
    if(cJSON_AddStringToObject(item, "token", dex_price_dto->token) == NULL) {
    goto fail; //String
    }
    }


    // dex_price_dto->batch_id
    if(dex_price_dto->batch_id) {
    if(cJSON_AddStringToObject(item, "batch_id", dex_price_dto->batch_id) == NULL) {
    goto fail; //String
    }
    }


    // dex_price_dto->price_in_owl_numerator
    if(dex_price_dto->price_in_owl_numerator) {
    if(cJSON_AddStringToObject(item, "price_in_owl_numerator", dex_price_dto->price_in_owl_numerator) == NULL) {
    goto fail; //String
    }
    }


    // dex_price_dto->price_in_owl_denominator
    if(dex_price_dto->price_in_owl_denominator) {
    if(cJSON_AddStringToObject(item, "price_in_owl_denominator", dex_price_dto->price_in_owl_denominator) == NULL) {
    goto fail; //String
    }
    }


    // dex_price_dto->volume
    if(dex_price_dto->volume) {
    if(cJSON_AddStringToObject(item, "volume", dex_price_dto->volume) == NULL) {
    goto fail; //String
    }
    }


    // dex_price_dto->create_epoch
    if(dex_price_dto->create_epoch) {
    if(cJSON_AddStringToObject(item, "create_epoch", dex_price_dto->create_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_price_dto->tx_hash
    if(dex_price_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", dex_price_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // dex_price_dto->vid
    if(dex_price_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", dex_price_dto->vid) == NULL) {
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

dex_price_dto_t *dex_price_dto_parseFromJSON(cJSON *dex_price_dtoJSON){

    dex_price_dto_t *dex_price_dto_local_var = NULL;

    // dex_price_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // dex_price_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // dex_price_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // dex_price_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // dex_price_dto->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "token");
    if (token) { 
    if(!cJSON_IsString(token) && !cJSON_IsNull(token))
    {
    goto end; //String
    }
    }

    // dex_price_dto->batch_id
    cJSON *batch_id = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "batch_id");
    if (batch_id) { 
    if(!cJSON_IsString(batch_id) && !cJSON_IsNull(batch_id))
    {
    goto end; //String
    }
    }

    // dex_price_dto->price_in_owl_numerator
    cJSON *price_in_owl_numerator = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "price_in_owl_numerator");
    if (price_in_owl_numerator) { 
    if(!cJSON_IsString(price_in_owl_numerator) && !cJSON_IsNull(price_in_owl_numerator))
    {
    goto end; //String
    }
    }

    // dex_price_dto->price_in_owl_denominator
    cJSON *price_in_owl_denominator = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "price_in_owl_denominator");
    if (price_in_owl_denominator) { 
    if(!cJSON_IsString(price_in_owl_denominator) && !cJSON_IsNull(price_in_owl_denominator))
    {
    goto end; //String
    }
    }

    // dex_price_dto->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "volume");
    if (volume) { 
    if(!cJSON_IsString(volume) && !cJSON_IsNull(volume))
    {
    goto end; //String
    }
    }

    // dex_price_dto->create_epoch
    cJSON *create_epoch = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "create_epoch");
    if (create_epoch) { 
    if(!cJSON_IsString(create_epoch) && !cJSON_IsNull(create_epoch))
    {
    goto end; //String
    }
    }

    // dex_price_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // dex_price_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(dex_price_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    dex_price_dto_local_var = dex_price_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        token && !cJSON_IsNull(token) ? strdup(token->valuestring) : NULL,
        batch_id && !cJSON_IsNull(batch_id) ? strdup(batch_id->valuestring) : NULL,
        price_in_owl_numerator && !cJSON_IsNull(price_in_owl_numerator) ? strdup(price_in_owl_numerator->valuestring) : NULL,
        price_in_owl_denominator && !cJSON_IsNull(price_in_owl_denominator) ? strdup(price_in_owl_denominator->valuestring) : NULL,
        volume && !cJSON_IsNull(volume) ? strdup(volume->valuestring) : NULL,
        create_epoch && !cJSON_IsNull(create_epoch) ? strdup(create_epoch->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return dex_price_dto_local_var;
end:
    return NULL;

}
