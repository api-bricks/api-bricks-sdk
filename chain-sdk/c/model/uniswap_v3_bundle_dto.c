#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_bundle_dto.h"



uniswap_v3_bundle_dto_t *uniswap_v3_bundle_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *eth_price_usd,
    long vid
    ) {
    uniswap_v3_bundle_dto_t *uniswap_v3_bundle_dto_local_var = malloc(sizeof(uniswap_v3_bundle_dto_t));
    if (!uniswap_v3_bundle_dto_local_var) {
        return NULL;
    }
    uniswap_v3_bundle_dto_local_var->entry_time = entry_time;
    uniswap_v3_bundle_dto_local_var->recv_time = recv_time;
    uniswap_v3_bundle_dto_local_var->block_number = block_number;
    uniswap_v3_bundle_dto_local_var->id = id;
    uniswap_v3_bundle_dto_local_var->eth_price_usd = eth_price_usd;
    uniswap_v3_bundle_dto_local_var->vid = vid;

    return uniswap_v3_bundle_dto_local_var;
}


void uniswap_v3_bundle_dto_free(uniswap_v3_bundle_dto_t *uniswap_v3_bundle_dto) {
    if(NULL == uniswap_v3_bundle_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_bundle_dto->entry_time) {
        free(uniswap_v3_bundle_dto->entry_time);
        uniswap_v3_bundle_dto->entry_time = NULL;
    }
    if (uniswap_v3_bundle_dto->recv_time) {
        free(uniswap_v3_bundle_dto->recv_time);
        uniswap_v3_bundle_dto->recv_time = NULL;
    }
    if (uniswap_v3_bundle_dto->id) {
        free(uniswap_v3_bundle_dto->id);
        uniswap_v3_bundle_dto->id = NULL;
    }
    if (uniswap_v3_bundle_dto->eth_price_usd) {
        free(uniswap_v3_bundle_dto->eth_price_usd);
        uniswap_v3_bundle_dto->eth_price_usd = NULL;
    }
    free(uniswap_v3_bundle_dto);
}

cJSON *uniswap_v3_bundle_dto_convertToJSON(uniswap_v3_bundle_dto_t *uniswap_v3_bundle_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_bundle_dto->entry_time
    if(uniswap_v3_bundle_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_bundle_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_bundle_dto->recv_time
    if(uniswap_v3_bundle_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_bundle_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_bundle_dto->block_number
    if(uniswap_v3_bundle_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_bundle_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_bundle_dto->id
    if(uniswap_v3_bundle_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_bundle_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_bundle_dto->eth_price_usd
    if(uniswap_v3_bundle_dto->eth_price_usd) {
    if(cJSON_AddStringToObject(item, "eth_price_usd", uniswap_v3_bundle_dto->eth_price_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_bundle_dto->vid
    if(uniswap_v3_bundle_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_bundle_dto->vid) == NULL) {
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

uniswap_v3_bundle_dto_t *uniswap_v3_bundle_dto_parseFromJSON(cJSON *uniswap_v3_bundle_dtoJSON){

    uniswap_v3_bundle_dto_t *uniswap_v3_bundle_dto_local_var = NULL;

    // uniswap_v3_bundle_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_bundle_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_bundle_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_bundle_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_bundle_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_bundle_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_bundle_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_bundle_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_bundle_dto->eth_price_usd
    cJSON *eth_price_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_bundle_dtoJSON, "eth_price_usd");
    if (eth_price_usd) { 
    if(!cJSON_IsString(eth_price_usd) && !cJSON_IsNull(eth_price_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_bundle_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_bundle_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v3_bundle_dto_local_var = uniswap_v3_bundle_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        eth_price_usd && !cJSON_IsNull(eth_price_usd) ? strdup(eth_price_usd->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v3_bundle_dto_local_var;
end:
    return NULL;

}
