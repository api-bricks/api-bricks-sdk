#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_transaction_dto.h"



uniswap_v3_transaction_dto_t *uniswap_v3_transaction_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *timestamp,
    char *gas_used,
    char *gas_price,
    long vid
    ) {
    uniswap_v3_transaction_dto_t *uniswap_v3_transaction_dto_local_var = malloc(sizeof(uniswap_v3_transaction_dto_t));
    if (!uniswap_v3_transaction_dto_local_var) {
        return NULL;
    }
    uniswap_v3_transaction_dto_local_var->entry_time = entry_time;
    uniswap_v3_transaction_dto_local_var->recv_time = recv_time;
    uniswap_v3_transaction_dto_local_var->block_number = block_number;
    uniswap_v3_transaction_dto_local_var->id = id;
    uniswap_v3_transaction_dto_local_var->timestamp = timestamp;
    uniswap_v3_transaction_dto_local_var->gas_used = gas_used;
    uniswap_v3_transaction_dto_local_var->gas_price = gas_price;
    uniswap_v3_transaction_dto_local_var->vid = vid;

    return uniswap_v3_transaction_dto_local_var;
}


void uniswap_v3_transaction_dto_free(uniswap_v3_transaction_dto_t *uniswap_v3_transaction_dto) {
    if(NULL == uniswap_v3_transaction_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_transaction_dto->entry_time) {
        free(uniswap_v3_transaction_dto->entry_time);
        uniswap_v3_transaction_dto->entry_time = NULL;
    }
    if (uniswap_v3_transaction_dto->recv_time) {
        free(uniswap_v3_transaction_dto->recv_time);
        uniswap_v3_transaction_dto->recv_time = NULL;
    }
    if (uniswap_v3_transaction_dto->id) {
        free(uniswap_v3_transaction_dto->id);
        uniswap_v3_transaction_dto->id = NULL;
    }
    if (uniswap_v3_transaction_dto->timestamp) {
        free(uniswap_v3_transaction_dto->timestamp);
        uniswap_v3_transaction_dto->timestamp = NULL;
    }
    if (uniswap_v3_transaction_dto->gas_used) {
        free(uniswap_v3_transaction_dto->gas_used);
        uniswap_v3_transaction_dto->gas_used = NULL;
    }
    if (uniswap_v3_transaction_dto->gas_price) {
        free(uniswap_v3_transaction_dto->gas_price);
        uniswap_v3_transaction_dto->gas_price = NULL;
    }
    free(uniswap_v3_transaction_dto);
}

cJSON *uniswap_v3_transaction_dto_convertToJSON(uniswap_v3_transaction_dto_t *uniswap_v3_transaction_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_transaction_dto->entry_time
    if(uniswap_v3_transaction_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_transaction_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_transaction_dto->recv_time
    if(uniswap_v3_transaction_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_transaction_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_transaction_dto->block_number
    if(uniswap_v3_transaction_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_transaction_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_transaction_dto->id
    if(uniswap_v3_transaction_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_transaction_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_transaction_dto->timestamp
    if(uniswap_v3_transaction_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", uniswap_v3_transaction_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_transaction_dto->gas_used
    if(uniswap_v3_transaction_dto->gas_used) {
    if(cJSON_AddStringToObject(item, "gas_used", uniswap_v3_transaction_dto->gas_used) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_transaction_dto->gas_price
    if(uniswap_v3_transaction_dto->gas_price) {
    if(cJSON_AddStringToObject(item, "gas_price", uniswap_v3_transaction_dto->gas_price) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_transaction_dto->vid
    if(uniswap_v3_transaction_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_transaction_dto->vid) == NULL) {
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

uniswap_v3_transaction_dto_t *uniswap_v3_transaction_dto_parseFromJSON(cJSON *uniswap_v3_transaction_dtoJSON){

    uniswap_v3_transaction_dto_t *uniswap_v3_transaction_dto_local_var = NULL;

    // uniswap_v3_transaction_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_transaction_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_transaction_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_transaction_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_transaction_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_transaction_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_transaction_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_transaction_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_transaction_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v3_transaction_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // uniswap_v3_transaction_dto->gas_used
    cJSON *gas_used = cJSON_GetObjectItemCaseSensitive(uniswap_v3_transaction_dtoJSON, "gas_used");
    if (gas_used) { 
    if(!cJSON_IsString(gas_used) && !cJSON_IsNull(gas_used))
    {
    goto end; //String
    }
    }

    // uniswap_v3_transaction_dto->gas_price
    cJSON *gas_price = cJSON_GetObjectItemCaseSensitive(uniswap_v3_transaction_dtoJSON, "gas_price");
    if (gas_price) { 
    if(!cJSON_IsString(gas_price) && !cJSON_IsNull(gas_price))
    {
    goto end; //String
    }
    }

    // uniswap_v3_transaction_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_transaction_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v3_transaction_dto_local_var = uniswap_v3_transaction_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        gas_used && !cJSON_IsNull(gas_used) ? strdup(gas_used->valuestring) : NULL,
        gas_price && !cJSON_IsNull(gas_price) ? strdup(gas_price->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v3_transaction_dto_local_var;
end:
    return NULL;

}
