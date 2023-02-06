#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_uniswap_day_data_dto.h"



uniswap_v3_uniswap_day_data_dto_t *uniswap_v3_uniswap_day_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    int date,
    char *volume_eth,
    char *volume_usd,
    char *volume_usd_untracked,
    char *fees_usd,
    numerics_big_integer_t *tx_count,
    char *tvl_usd
    ) {
    uniswap_v3_uniswap_day_data_dto_t *uniswap_v3_uniswap_day_data_dto_local_var = malloc(sizeof(uniswap_v3_uniswap_day_data_dto_t));
    if (!uniswap_v3_uniswap_day_data_dto_local_var) {
        return NULL;
    }
    uniswap_v3_uniswap_day_data_dto_local_var->entry_time = entry_time;
    uniswap_v3_uniswap_day_data_dto_local_var->recv_time = recv_time;
    uniswap_v3_uniswap_day_data_dto_local_var->block_number = block_number;
    uniswap_v3_uniswap_day_data_dto_local_var->vid = vid;
    uniswap_v3_uniswap_day_data_dto_local_var->id = id;
    uniswap_v3_uniswap_day_data_dto_local_var->date = date;
    uniswap_v3_uniswap_day_data_dto_local_var->volume_eth = volume_eth;
    uniswap_v3_uniswap_day_data_dto_local_var->volume_usd = volume_usd;
    uniswap_v3_uniswap_day_data_dto_local_var->volume_usd_untracked = volume_usd_untracked;
    uniswap_v3_uniswap_day_data_dto_local_var->fees_usd = fees_usd;
    uniswap_v3_uniswap_day_data_dto_local_var->tx_count = tx_count;
    uniswap_v3_uniswap_day_data_dto_local_var->tvl_usd = tvl_usd;

    return uniswap_v3_uniswap_day_data_dto_local_var;
}


void uniswap_v3_uniswap_day_data_dto_free(uniswap_v3_uniswap_day_data_dto_t *uniswap_v3_uniswap_day_data_dto) {
    if(NULL == uniswap_v3_uniswap_day_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_uniswap_day_data_dto->entry_time) {
        free(uniswap_v3_uniswap_day_data_dto->entry_time);
        uniswap_v3_uniswap_day_data_dto->entry_time = NULL;
    }
    if (uniswap_v3_uniswap_day_data_dto->recv_time) {
        free(uniswap_v3_uniswap_day_data_dto->recv_time);
        uniswap_v3_uniswap_day_data_dto->recv_time = NULL;
    }
    if (uniswap_v3_uniswap_day_data_dto->id) {
        free(uniswap_v3_uniswap_day_data_dto->id);
        uniswap_v3_uniswap_day_data_dto->id = NULL;
    }
    if (uniswap_v3_uniswap_day_data_dto->volume_eth) {
        free(uniswap_v3_uniswap_day_data_dto->volume_eth);
        uniswap_v3_uniswap_day_data_dto->volume_eth = NULL;
    }
    if (uniswap_v3_uniswap_day_data_dto->volume_usd) {
        free(uniswap_v3_uniswap_day_data_dto->volume_usd);
        uniswap_v3_uniswap_day_data_dto->volume_usd = NULL;
    }
    if (uniswap_v3_uniswap_day_data_dto->volume_usd_untracked) {
        free(uniswap_v3_uniswap_day_data_dto->volume_usd_untracked);
        uniswap_v3_uniswap_day_data_dto->volume_usd_untracked = NULL;
    }
    if (uniswap_v3_uniswap_day_data_dto->fees_usd) {
        free(uniswap_v3_uniswap_day_data_dto->fees_usd);
        uniswap_v3_uniswap_day_data_dto->fees_usd = NULL;
    }
    if (uniswap_v3_uniswap_day_data_dto->tx_count) {
        numerics_big_integer_free(uniswap_v3_uniswap_day_data_dto->tx_count);
        uniswap_v3_uniswap_day_data_dto->tx_count = NULL;
    }
    if (uniswap_v3_uniswap_day_data_dto->tvl_usd) {
        free(uniswap_v3_uniswap_day_data_dto->tvl_usd);
        uniswap_v3_uniswap_day_data_dto->tvl_usd = NULL;
    }
    free(uniswap_v3_uniswap_day_data_dto);
}

cJSON *uniswap_v3_uniswap_day_data_dto_convertToJSON(uniswap_v3_uniswap_day_data_dto_t *uniswap_v3_uniswap_day_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_uniswap_day_data_dto->entry_time
    if(uniswap_v3_uniswap_day_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_uniswap_day_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_uniswap_day_data_dto->recv_time
    if(uniswap_v3_uniswap_day_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_uniswap_day_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_uniswap_day_data_dto->block_number
    if(uniswap_v3_uniswap_day_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_uniswap_day_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_uniswap_day_data_dto->vid
    if(uniswap_v3_uniswap_day_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_uniswap_day_data_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_uniswap_day_data_dto->id
    if(uniswap_v3_uniswap_day_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_uniswap_day_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_uniswap_day_data_dto->date
    if(uniswap_v3_uniswap_day_data_dto->date) {
    if(cJSON_AddNumberToObject(item, "date", uniswap_v3_uniswap_day_data_dto->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_uniswap_day_data_dto->volume_eth
    if(uniswap_v3_uniswap_day_data_dto->volume_eth) {
    if(cJSON_AddStringToObject(item, "volume_eth", uniswap_v3_uniswap_day_data_dto->volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_uniswap_day_data_dto->volume_usd
    if(uniswap_v3_uniswap_day_data_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", uniswap_v3_uniswap_day_data_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_uniswap_day_data_dto->volume_usd_untracked
    if(uniswap_v3_uniswap_day_data_dto->volume_usd_untracked) {
    if(cJSON_AddStringToObject(item, "volume_usd_untracked", uniswap_v3_uniswap_day_data_dto->volume_usd_untracked) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_uniswap_day_data_dto->fees_usd
    if(uniswap_v3_uniswap_day_data_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", uniswap_v3_uniswap_day_data_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_uniswap_day_data_dto->tx_count
    if(uniswap_v3_uniswap_day_data_dto->tx_count) {
    cJSON *tx_count_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_uniswap_day_data_dto->tx_count);
    if(tx_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tx_count", tx_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_uniswap_day_data_dto->tvl_usd
    if(uniswap_v3_uniswap_day_data_dto->tvl_usd) {
    if(cJSON_AddStringToObject(item, "tvl_usd", uniswap_v3_uniswap_day_data_dto->tvl_usd) == NULL) {
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

uniswap_v3_uniswap_day_data_dto_t *uniswap_v3_uniswap_day_data_dto_parseFromJSON(cJSON *uniswap_v3_uniswap_day_data_dtoJSON){

    uniswap_v3_uniswap_day_data_dto_t *uniswap_v3_uniswap_day_data_dto_local_var = NULL;

    // define the local variable for uniswap_v3_uniswap_day_data_dto->tx_count
    numerics_big_integer_t *tx_count_local_nonprim = NULL;

    // uniswap_v3_uniswap_day_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_uniswap_day_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_uniswap_day_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_uniswap_day_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_uniswap_day_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_uniswap_day_data_dto->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "date");
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_uniswap_day_data_dto->volume_eth
    cJSON *volume_eth = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "volume_eth");
    if (volume_eth) { 
    if(!cJSON_IsString(volume_eth) && !cJSON_IsNull(volume_eth))
    {
    goto end; //String
    }
    }

    // uniswap_v3_uniswap_day_data_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_uniswap_day_data_dto->volume_usd_untracked
    cJSON *volume_usd_untracked = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "volume_usd_untracked");
    if (volume_usd_untracked) { 
    if(!cJSON_IsString(volume_usd_untracked) && !cJSON_IsNull(volume_usd_untracked))
    {
    goto end; //String
    }
    }

    // uniswap_v3_uniswap_day_data_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd) && !cJSON_IsNull(fees_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_uniswap_day_data_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "tx_count");
    if (tx_count) { 
    tx_count_local_nonprim = numerics_big_integer_parseFromJSON(tx_count); //nonprimitive
    }

    // uniswap_v3_uniswap_day_data_dto->tvl_usd
    cJSON *tvl_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_uniswap_day_data_dtoJSON, "tvl_usd");
    if (tvl_usd) { 
    if(!cJSON_IsString(tvl_usd) && !cJSON_IsNull(tvl_usd))
    {
    goto end; //String
    }
    }


    uniswap_v3_uniswap_day_data_dto_local_var = uniswap_v3_uniswap_day_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        date ? date->valuedouble : 0,
        volume_eth && !cJSON_IsNull(volume_eth) ? strdup(volume_eth->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        volume_usd_untracked && !cJSON_IsNull(volume_usd_untracked) ? strdup(volume_usd_untracked->valuestring) : NULL,
        fees_usd && !cJSON_IsNull(fees_usd) ? strdup(fees_usd->valuestring) : NULL,
        tx_count ? tx_count_local_nonprim : NULL,
        tvl_usd && !cJSON_IsNull(tvl_usd) ? strdup(tvl_usd->valuestring) : NULL
        );

    return uniswap_v3_uniswap_day_data_dto_local_var;
end:
    if (tx_count_local_nonprim) {
        numerics_big_integer_free(tx_count_local_nonprim);
        tx_count_local_nonprim = NULL;
    }
    return NULL;

}
