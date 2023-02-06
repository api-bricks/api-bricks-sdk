#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_bundle_dto.h"



sushiswap_bundle_dto_t *sushiswap_bundle_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *eth_price,
    long vid
    ) {
    sushiswap_bundle_dto_t *sushiswap_bundle_dto_local_var = malloc(sizeof(sushiswap_bundle_dto_t));
    if (!sushiswap_bundle_dto_local_var) {
        return NULL;
    }
    sushiswap_bundle_dto_local_var->entry_time = entry_time;
    sushiswap_bundle_dto_local_var->recv_time = recv_time;
    sushiswap_bundle_dto_local_var->block_number = block_number;
    sushiswap_bundle_dto_local_var->id = id;
    sushiswap_bundle_dto_local_var->eth_price = eth_price;
    sushiswap_bundle_dto_local_var->vid = vid;

    return sushiswap_bundle_dto_local_var;
}


void sushiswap_bundle_dto_free(sushiswap_bundle_dto_t *sushiswap_bundle_dto) {
    if(NULL == sushiswap_bundle_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_bundle_dto->entry_time) {
        free(sushiswap_bundle_dto->entry_time);
        sushiswap_bundle_dto->entry_time = NULL;
    }
    if (sushiswap_bundle_dto->recv_time) {
        free(sushiswap_bundle_dto->recv_time);
        sushiswap_bundle_dto->recv_time = NULL;
    }
    if (sushiswap_bundle_dto->id) {
        free(sushiswap_bundle_dto->id);
        sushiswap_bundle_dto->id = NULL;
    }
    if (sushiswap_bundle_dto->eth_price) {
        free(sushiswap_bundle_dto->eth_price);
        sushiswap_bundle_dto->eth_price = NULL;
    }
    free(sushiswap_bundle_dto);
}

cJSON *sushiswap_bundle_dto_convertToJSON(sushiswap_bundle_dto_t *sushiswap_bundle_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_bundle_dto->entry_time
    if(sushiswap_bundle_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_bundle_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_bundle_dto->recv_time
    if(sushiswap_bundle_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_bundle_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_bundle_dto->block_number
    if(sushiswap_bundle_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_bundle_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_bundle_dto->id
    if(sushiswap_bundle_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_bundle_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_bundle_dto->eth_price
    if(sushiswap_bundle_dto->eth_price) {
    if(cJSON_AddStringToObject(item, "eth_price", sushiswap_bundle_dto->eth_price) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_bundle_dto->vid
    if(sushiswap_bundle_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_bundle_dto->vid) == NULL) {
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

sushiswap_bundle_dto_t *sushiswap_bundle_dto_parseFromJSON(cJSON *sushiswap_bundle_dtoJSON){

    sushiswap_bundle_dto_t *sushiswap_bundle_dto_local_var = NULL;

    // sushiswap_bundle_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_bundle_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_bundle_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_bundle_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_bundle_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_bundle_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_bundle_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_bundle_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_bundle_dto->eth_price
    cJSON *eth_price = cJSON_GetObjectItemCaseSensitive(sushiswap_bundle_dtoJSON, "eth_price");
    if (eth_price) { 
    if(!cJSON_IsString(eth_price) && !cJSON_IsNull(eth_price))
    {
    goto end; //String
    }
    }

    // sushiswap_bundle_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_bundle_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    sushiswap_bundle_dto_local_var = sushiswap_bundle_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        eth_price && !cJSON_IsNull(eth_price) ? strdup(eth_price->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return sushiswap_bundle_dto_local_var;
end:
    return NULL;

}
