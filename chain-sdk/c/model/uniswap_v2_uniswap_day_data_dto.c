#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_uniswap_day_data_dto.h"



uniswap_v2_uniswap_day_data_dto_t *uniswap_v2_uniswap_day_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int date,
    char *daily_volume_eth,
    char *daily_volume_usd,
    char *daily_volume_untracked,
    char *total_volume_eth,
    char *total_liquidity_eth,
    char *total_volume_usd,
    char *total_liquidity_usd,
    char *tx_count,
    long vid
    ) {
    uniswap_v2_uniswap_day_data_dto_t *uniswap_v2_uniswap_day_data_dto_local_var = malloc(sizeof(uniswap_v2_uniswap_day_data_dto_t));
    if (!uniswap_v2_uniswap_day_data_dto_local_var) {
        return NULL;
    }
    uniswap_v2_uniswap_day_data_dto_local_var->entry_time = entry_time;
    uniswap_v2_uniswap_day_data_dto_local_var->recv_time = recv_time;
    uniswap_v2_uniswap_day_data_dto_local_var->block_number = block_number;
    uniswap_v2_uniswap_day_data_dto_local_var->id = id;
    uniswap_v2_uniswap_day_data_dto_local_var->date = date;
    uniswap_v2_uniswap_day_data_dto_local_var->daily_volume_eth = daily_volume_eth;
    uniswap_v2_uniswap_day_data_dto_local_var->daily_volume_usd = daily_volume_usd;
    uniswap_v2_uniswap_day_data_dto_local_var->daily_volume_untracked = daily_volume_untracked;
    uniswap_v2_uniswap_day_data_dto_local_var->total_volume_eth = total_volume_eth;
    uniswap_v2_uniswap_day_data_dto_local_var->total_liquidity_eth = total_liquidity_eth;
    uniswap_v2_uniswap_day_data_dto_local_var->total_volume_usd = total_volume_usd;
    uniswap_v2_uniswap_day_data_dto_local_var->total_liquidity_usd = total_liquidity_usd;
    uniswap_v2_uniswap_day_data_dto_local_var->tx_count = tx_count;
    uniswap_v2_uniswap_day_data_dto_local_var->vid = vid;

    return uniswap_v2_uniswap_day_data_dto_local_var;
}


void uniswap_v2_uniswap_day_data_dto_free(uniswap_v2_uniswap_day_data_dto_t *uniswap_v2_uniswap_day_data_dto) {
    if(NULL == uniswap_v2_uniswap_day_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_uniswap_day_data_dto->entry_time) {
        free(uniswap_v2_uniswap_day_data_dto->entry_time);
        uniswap_v2_uniswap_day_data_dto->entry_time = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->recv_time) {
        free(uniswap_v2_uniswap_day_data_dto->recv_time);
        uniswap_v2_uniswap_day_data_dto->recv_time = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->id) {
        free(uniswap_v2_uniswap_day_data_dto->id);
        uniswap_v2_uniswap_day_data_dto->id = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->daily_volume_eth) {
        free(uniswap_v2_uniswap_day_data_dto->daily_volume_eth);
        uniswap_v2_uniswap_day_data_dto->daily_volume_eth = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->daily_volume_usd) {
        free(uniswap_v2_uniswap_day_data_dto->daily_volume_usd);
        uniswap_v2_uniswap_day_data_dto->daily_volume_usd = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->daily_volume_untracked) {
        free(uniswap_v2_uniswap_day_data_dto->daily_volume_untracked);
        uniswap_v2_uniswap_day_data_dto->daily_volume_untracked = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->total_volume_eth) {
        free(uniswap_v2_uniswap_day_data_dto->total_volume_eth);
        uniswap_v2_uniswap_day_data_dto->total_volume_eth = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->total_liquidity_eth) {
        free(uniswap_v2_uniswap_day_data_dto->total_liquidity_eth);
        uniswap_v2_uniswap_day_data_dto->total_liquidity_eth = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->total_volume_usd) {
        free(uniswap_v2_uniswap_day_data_dto->total_volume_usd);
        uniswap_v2_uniswap_day_data_dto->total_volume_usd = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->total_liquidity_usd) {
        free(uniswap_v2_uniswap_day_data_dto->total_liquidity_usd);
        uniswap_v2_uniswap_day_data_dto->total_liquidity_usd = NULL;
    }
    if (uniswap_v2_uniswap_day_data_dto->tx_count) {
        free(uniswap_v2_uniswap_day_data_dto->tx_count);
        uniswap_v2_uniswap_day_data_dto->tx_count = NULL;
    }
    free(uniswap_v2_uniswap_day_data_dto);
}

cJSON *uniswap_v2_uniswap_day_data_dto_convertToJSON(uniswap_v2_uniswap_day_data_dto_t *uniswap_v2_uniswap_day_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_uniswap_day_data_dto->entry_time
    if(uniswap_v2_uniswap_day_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_uniswap_day_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_uniswap_day_data_dto->recv_time
    if(uniswap_v2_uniswap_day_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_uniswap_day_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_uniswap_day_data_dto->block_number
    if(uniswap_v2_uniswap_day_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_uniswap_day_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_uniswap_day_data_dto->id
    if(uniswap_v2_uniswap_day_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_uniswap_day_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_uniswap_day_data_dto->date
    if(uniswap_v2_uniswap_day_data_dto->date) {
    if(cJSON_AddNumberToObject(item, "date", uniswap_v2_uniswap_day_data_dto->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_uniswap_day_data_dto->daily_volume_eth
    if(uniswap_v2_uniswap_day_data_dto->daily_volume_eth) {
    if(cJSON_AddStringToObject(item, "daily_volume_eth", uniswap_v2_uniswap_day_data_dto->daily_volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_uniswap_day_data_dto->daily_volume_usd
    if(uniswap_v2_uniswap_day_data_dto->daily_volume_usd) {
    if(cJSON_AddStringToObject(item, "daily_volume_usd", uniswap_v2_uniswap_day_data_dto->daily_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_uniswap_day_data_dto->daily_volume_untracked
    if(uniswap_v2_uniswap_day_data_dto->daily_volume_untracked) {
    if(cJSON_AddStringToObject(item, "daily_volume_untracked", uniswap_v2_uniswap_day_data_dto->daily_volume_untracked) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_uniswap_day_data_dto->total_volume_eth
    if(uniswap_v2_uniswap_day_data_dto->total_volume_eth) {
    if(cJSON_AddStringToObject(item, "total_volume_eth", uniswap_v2_uniswap_day_data_dto->total_volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_uniswap_day_data_dto->total_liquidity_eth
    if(uniswap_v2_uniswap_day_data_dto->total_liquidity_eth) {
    if(cJSON_AddStringToObject(item, "total_liquidity_eth", uniswap_v2_uniswap_day_data_dto->total_liquidity_eth) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_uniswap_day_data_dto->total_volume_usd
    if(uniswap_v2_uniswap_day_data_dto->total_volume_usd) {
    if(cJSON_AddStringToObject(item, "total_volume_usd", uniswap_v2_uniswap_day_data_dto->total_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_uniswap_day_data_dto->total_liquidity_usd
    if(uniswap_v2_uniswap_day_data_dto->total_liquidity_usd) {
    if(cJSON_AddStringToObject(item, "total_liquidity_usd", uniswap_v2_uniswap_day_data_dto->total_liquidity_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_uniswap_day_data_dto->tx_count
    if(uniswap_v2_uniswap_day_data_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", uniswap_v2_uniswap_day_data_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_uniswap_day_data_dto->vid
    if(uniswap_v2_uniswap_day_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_uniswap_day_data_dto->vid) == NULL) {
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

uniswap_v2_uniswap_day_data_dto_t *uniswap_v2_uniswap_day_data_dto_parseFromJSON(cJSON *uniswap_v2_uniswap_day_data_dtoJSON){

    uniswap_v2_uniswap_day_data_dto_t *uniswap_v2_uniswap_day_data_dto_local_var = NULL;

    // uniswap_v2_uniswap_day_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_uniswap_day_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_uniswap_day_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_uniswap_day_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_uniswap_day_data_dto->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "date");
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_uniswap_day_data_dto->daily_volume_eth
    cJSON *daily_volume_eth = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "daily_volume_eth");
    if (daily_volume_eth) { 
    if(!cJSON_IsString(daily_volume_eth) && !cJSON_IsNull(daily_volume_eth))
    {
    goto end; //String
    }
    }

    // uniswap_v2_uniswap_day_data_dto->daily_volume_usd
    cJSON *daily_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "daily_volume_usd");
    if (daily_volume_usd) { 
    if(!cJSON_IsString(daily_volume_usd) && !cJSON_IsNull(daily_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_uniswap_day_data_dto->daily_volume_untracked
    cJSON *daily_volume_untracked = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "daily_volume_untracked");
    if (daily_volume_untracked) { 
    if(!cJSON_IsString(daily_volume_untracked) && !cJSON_IsNull(daily_volume_untracked))
    {
    goto end; //String
    }
    }

    // uniswap_v2_uniswap_day_data_dto->total_volume_eth
    cJSON *total_volume_eth = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "total_volume_eth");
    if (total_volume_eth) { 
    if(!cJSON_IsString(total_volume_eth) && !cJSON_IsNull(total_volume_eth))
    {
    goto end; //String
    }
    }

    // uniswap_v2_uniswap_day_data_dto->total_liquidity_eth
    cJSON *total_liquidity_eth = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "total_liquidity_eth");
    if (total_liquidity_eth) { 
    if(!cJSON_IsString(total_liquidity_eth) && !cJSON_IsNull(total_liquidity_eth))
    {
    goto end; //String
    }
    }

    // uniswap_v2_uniswap_day_data_dto->total_volume_usd
    cJSON *total_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "total_volume_usd");
    if (total_volume_usd) { 
    if(!cJSON_IsString(total_volume_usd) && !cJSON_IsNull(total_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_uniswap_day_data_dto->total_liquidity_usd
    cJSON *total_liquidity_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "total_liquidity_usd");
    if (total_liquidity_usd) { 
    if(!cJSON_IsString(total_liquidity_usd) && !cJSON_IsNull(total_liquidity_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_uniswap_day_data_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count) && !cJSON_IsNull(tx_count))
    {
    goto end; //String
    }
    }

    // uniswap_v2_uniswap_day_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_uniswap_day_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v2_uniswap_day_data_dto_local_var = uniswap_v2_uniswap_day_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        date ? date->valuedouble : 0,
        daily_volume_eth && !cJSON_IsNull(daily_volume_eth) ? strdup(daily_volume_eth->valuestring) : NULL,
        daily_volume_usd && !cJSON_IsNull(daily_volume_usd) ? strdup(daily_volume_usd->valuestring) : NULL,
        daily_volume_untracked && !cJSON_IsNull(daily_volume_untracked) ? strdup(daily_volume_untracked->valuestring) : NULL,
        total_volume_eth && !cJSON_IsNull(total_volume_eth) ? strdup(total_volume_eth->valuestring) : NULL,
        total_liquidity_eth && !cJSON_IsNull(total_liquidity_eth) ? strdup(total_liquidity_eth->valuestring) : NULL,
        total_volume_usd && !cJSON_IsNull(total_volume_usd) ? strdup(total_volume_usd->valuestring) : NULL,
        total_liquidity_usd && !cJSON_IsNull(total_liquidity_usd) ? strdup(total_liquidity_usd->valuestring) : NULL,
        tx_count && !cJSON_IsNull(tx_count) ? strdup(tx_count->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v2_uniswap_day_data_dto_local_var;
end:
    return NULL;

}
