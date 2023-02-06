#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_pair_hour_data_dto.h"



uniswap_v2_pair_hour_data_dto_t *uniswap_v2_pair_hour_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int hour_start_unix,
    char *pair,
    char *reserve_0,
    char *reserve_1,
    char *total_supply,
    char *reserve_usd,
    char *hourly_volume_token_0,
    char *hourly_volume_token_1,
    char *hourly_volume_usd,
    char *hourly_txns,
    long vid
    ) {
    uniswap_v2_pair_hour_data_dto_t *uniswap_v2_pair_hour_data_dto_local_var = malloc(sizeof(uniswap_v2_pair_hour_data_dto_t));
    if (!uniswap_v2_pair_hour_data_dto_local_var) {
        return NULL;
    }
    uniswap_v2_pair_hour_data_dto_local_var->entry_time = entry_time;
    uniswap_v2_pair_hour_data_dto_local_var->recv_time = recv_time;
    uniswap_v2_pair_hour_data_dto_local_var->block_number = block_number;
    uniswap_v2_pair_hour_data_dto_local_var->id = id;
    uniswap_v2_pair_hour_data_dto_local_var->hour_start_unix = hour_start_unix;
    uniswap_v2_pair_hour_data_dto_local_var->pair = pair;
    uniswap_v2_pair_hour_data_dto_local_var->reserve_0 = reserve_0;
    uniswap_v2_pair_hour_data_dto_local_var->reserve_1 = reserve_1;
    uniswap_v2_pair_hour_data_dto_local_var->total_supply = total_supply;
    uniswap_v2_pair_hour_data_dto_local_var->reserve_usd = reserve_usd;
    uniswap_v2_pair_hour_data_dto_local_var->hourly_volume_token_0 = hourly_volume_token_0;
    uniswap_v2_pair_hour_data_dto_local_var->hourly_volume_token_1 = hourly_volume_token_1;
    uniswap_v2_pair_hour_data_dto_local_var->hourly_volume_usd = hourly_volume_usd;
    uniswap_v2_pair_hour_data_dto_local_var->hourly_txns = hourly_txns;
    uniswap_v2_pair_hour_data_dto_local_var->vid = vid;

    return uniswap_v2_pair_hour_data_dto_local_var;
}


void uniswap_v2_pair_hour_data_dto_free(uniswap_v2_pair_hour_data_dto_t *uniswap_v2_pair_hour_data_dto) {
    if(NULL == uniswap_v2_pair_hour_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_pair_hour_data_dto->entry_time) {
        free(uniswap_v2_pair_hour_data_dto->entry_time);
        uniswap_v2_pair_hour_data_dto->entry_time = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->recv_time) {
        free(uniswap_v2_pair_hour_data_dto->recv_time);
        uniswap_v2_pair_hour_data_dto->recv_time = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->id) {
        free(uniswap_v2_pair_hour_data_dto->id);
        uniswap_v2_pair_hour_data_dto->id = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->pair) {
        free(uniswap_v2_pair_hour_data_dto->pair);
        uniswap_v2_pair_hour_data_dto->pair = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->reserve_0) {
        free(uniswap_v2_pair_hour_data_dto->reserve_0);
        uniswap_v2_pair_hour_data_dto->reserve_0 = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->reserve_1) {
        free(uniswap_v2_pair_hour_data_dto->reserve_1);
        uniswap_v2_pair_hour_data_dto->reserve_1 = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->total_supply) {
        free(uniswap_v2_pair_hour_data_dto->total_supply);
        uniswap_v2_pair_hour_data_dto->total_supply = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->reserve_usd) {
        free(uniswap_v2_pair_hour_data_dto->reserve_usd);
        uniswap_v2_pair_hour_data_dto->reserve_usd = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->hourly_volume_token_0) {
        free(uniswap_v2_pair_hour_data_dto->hourly_volume_token_0);
        uniswap_v2_pair_hour_data_dto->hourly_volume_token_0 = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->hourly_volume_token_1) {
        free(uniswap_v2_pair_hour_data_dto->hourly_volume_token_1);
        uniswap_v2_pair_hour_data_dto->hourly_volume_token_1 = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->hourly_volume_usd) {
        free(uniswap_v2_pair_hour_data_dto->hourly_volume_usd);
        uniswap_v2_pair_hour_data_dto->hourly_volume_usd = NULL;
    }
    if (uniswap_v2_pair_hour_data_dto->hourly_txns) {
        free(uniswap_v2_pair_hour_data_dto->hourly_txns);
        uniswap_v2_pair_hour_data_dto->hourly_txns = NULL;
    }
    free(uniswap_v2_pair_hour_data_dto);
}

cJSON *uniswap_v2_pair_hour_data_dto_convertToJSON(uniswap_v2_pair_hour_data_dto_t *uniswap_v2_pair_hour_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_pair_hour_data_dto->entry_time
    if(uniswap_v2_pair_hour_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_pair_hour_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_pair_hour_data_dto->recv_time
    if(uniswap_v2_pair_hour_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_pair_hour_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_pair_hour_data_dto->block_number
    if(uniswap_v2_pair_hour_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_pair_hour_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_pair_hour_data_dto->id
    if(uniswap_v2_pair_hour_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_pair_hour_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->hour_start_unix
    if(uniswap_v2_pair_hour_data_dto->hour_start_unix) {
    if(cJSON_AddNumberToObject(item, "hour_start_unix", uniswap_v2_pair_hour_data_dto->hour_start_unix) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_pair_hour_data_dto->pair
    if(uniswap_v2_pair_hour_data_dto->pair) {
    if(cJSON_AddStringToObject(item, "pair", uniswap_v2_pair_hour_data_dto->pair) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->reserve_0
    if(uniswap_v2_pair_hour_data_dto->reserve_0) {
    if(cJSON_AddStringToObject(item, "reserve_0", uniswap_v2_pair_hour_data_dto->reserve_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->reserve_1
    if(uniswap_v2_pair_hour_data_dto->reserve_1) {
    if(cJSON_AddStringToObject(item, "reserve_1", uniswap_v2_pair_hour_data_dto->reserve_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->total_supply
    if(uniswap_v2_pair_hour_data_dto->total_supply) {
    if(cJSON_AddStringToObject(item, "total_supply", uniswap_v2_pair_hour_data_dto->total_supply) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->reserve_usd
    if(uniswap_v2_pair_hour_data_dto->reserve_usd) {
    if(cJSON_AddStringToObject(item, "reserve_usd", uniswap_v2_pair_hour_data_dto->reserve_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->hourly_volume_token_0
    if(uniswap_v2_pair_hour_data_dto->hourly_volume_token_0) {
    if(cJSON_AddStringToObject(item, "hourly_volume_token_0", uniswap_v2_pair_hour_data_dto->hourly_volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->hourly_volume_token_1
    if(uniswap_v2_pair_hour_data_dto->hourly_volume_token_1) {
    if(cJSON_AddStringToObject(item, "hourly_volume_token_1", uniswap_v2_pair_hour_data_dto->hourly_volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->hourly_volume_usd
    if(uniswap_v2_pair_hour_data_dto->hourly_volume_usd) {
    if(cJSON_AddStringToObject(item, "hourly_volume_usd", uniswap_v2_pair_hour_data_dto->hourly_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->hourly_txns
    if(uniswap_v2_pair_hour_data_dto->hourly_txns) {
    if(cJSON_AddStringToObject(item, "hourly_txns", uniswap_v2_pair_hour_data_dto->hourly_txns) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_hour_data_dto->vid
    if(uniswap_v2_pair_hour_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_pair_hour_data_dto->vid) == NULL) {
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

uniswap_v2_pair_hour_data_dto_t *uniswap_v2_pair_hour_data_dto_parseFromJSON(cJSON *uniswap_v2_pair_hour_data_dtoJSON){

    uniswap_v2_pair_hour_data_dto_t *uniswap_v2_pair_hour_data_dto_local_var = NULL;

    // uniswap_v2_pair_hour_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_pair_hour_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_pair_hour_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_pair_hour_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->hour_start_unix
    cJSON *hour_start_unix = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "hour_start_unix");
    if (hour_start_unix) { 
    if(!cJSON_IsNumber(hour_start_unix))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_pair_hour_data_dto->pair
    cJSON *pair = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "pair");
    if (pair) { 
    if(!cJSON_IsString(pair) && !cJSON_IsNull(pair))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->reserve_0
    cJSON *reserve_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "reserve_0");
    if (reserve_0) { 
    if(!cJSON_IsString(reserve_0) && !cJSON_IsNull(reserve_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->reserve_1
    cJSON *reserve_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "reserve_1");
    if (reserve_1) { 
    if(!cJSON_IsString(reserve_1) && !cJSON_IsNull(reserve_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "total_supply");
    if (total_supply) { 
    if(!cJSON_IsString(total_supply) && !cJSON_IsNull(total_supply))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->reserve_usd
    cJSON *reserve_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "reserve_usd");
    if (reserve_usd) { 
    if(!cJSON_IsString(reserve_usd) && !cJSON_IsNull(reserve_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->hourly_volume_token_0
    cJSON *hourly_volume_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "hourly_volume_token_0");
    if (hourly_volume_token_0) { 
    if(!cJSON_IsString(hourly_volume_token_0) && !cJSON_IsNull(hourly_volume_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->hourly_volume_token_1
    cJSON *hourly_volume_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "hourly_volume_token_1");
    if (hourly_volume_token_1) { 
    if(!cJSON_IsString(hourly_volume_token_1) && !cJSON_IsNull(hourly_volume_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->hourly_volume_usd
    cJSON *hourly_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "hourly_volume_usd");
    if (hourly_volume_usd) { 
    if(!cJSON_IsString(hourly_volume_usd) && !cJSON_IsNull(hourly_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->hourly_txns
    cJSON *hourly_txns = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "hourly_txns");
    if (hourly_txns) { 
    if(!cJSON_IsString(hourly_txns) && !cJSON_IsNull(hourly_txns))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_hour_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_hour_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v2_pair_hour_data_dto_local_var = uniswap_v2_pair_hour_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        hour_start_unix ? hour_start_unix->valuedouble : 0,
        pair && !cJSON_IsNull(pair) ? strdup(pair->valuestring) : NULL,
        reserve_0 && !cJSON_IsNull(reserve_0) ? strdup(reserve_0->valuestring) : NULL,
        reserve_1 && !cJSON_IsNull(reserve_1) ? strdup(reserve_1->valuestring) : NULL,
        total_supply && !cJSON_IsNull(total_supply) ? strdup(total_supply->valuestring) : NULL,
        reserve_usd && !cJSON_IsNull(reserve_usd) ? strdup(reserve_usd->valuestring) : NULL,
        hourly_volume_token_0 && !cJSON_IsNull(hourly_volume_token_0) ? strdup(hourly_volume_token_0->valuestring) : NULL,
        hourly_volume_token_1 && !cJSON_IsNull(hourly_volume_token_1) ? strdup(hourly_volume_token_1->valuestring) : NULL,
        hourly_volume_usd && !cJSON_IsNull(hourly_volume_usd) ? strdup(hourly_volume_usd->valuestring) : NULL,
        hourly_txns && !cJSON_IsNull(hourly_txns) ? strdup(hourly_txns->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v2_pair_hour_data_dto_local_var;
end:
    return NULL;

}
