#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_pair_day_data_dto.h"



uniswap_v2_pair_day_data_dto_t *uniswap_v2_pair_day_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int date,
    char *pair_address,
    char *token_0,
    char *token_1,
    char *reserve_0,
    char *reserve_1,
    char *total_supply,
    char *reserve_usd,
    char *daily_volume_token_0,
    char *daily_volume_token_1,
    char *daily_volume_usd,
    char *daily_txns,
    long vid
    ) {
    uniswap_v2_pair_day_data_dto_t *uniswap_v2_pair_day_data_dto_local_var = malloc(sizeof(uniswap_v2_pair_day_data_dto_t));
    if (!uniswap_v2_pair_day_data_dto_local_var) {
        return NULL;
    }
    uniswap_v2_pair_day_data_dto_local_var->entry_time = entry_time;
    uniswap_v2_pair_day_data_dto_local_var->recv_time = recv_time;
    uniswap_v2_pair_day_data_dto_local_var->block_number = block_number;
    uniswap_v2_pair_day_data_dto_local_var->id = id;
    uniswap_v2_pair_day_data_dto_local_var->date = date;
    uniswap_v2_pair_day_data_dto_local_var->pair_address = pair_address;
    uniswap_v2_pair_day_data_dto_local_var->token_0 = token_0;
    uniswap_v2_pair_day_data_dto_local_var->token_1 = token_1;
    uniswap_v2_pair_day_data_dto_local_var->reserve_0 = reserve_0;
    uniswap_v2_pair_day_data_dto_local_var->reserve_1 = reserve_1;
    uniswap_v2_pair_day_data_dto_local_var->total_supply = total_supply;
    uniswap_v2_pair_day_data_dto_local_var->reserve_usd = reserve_usd;
    uniswap_v2_pair_day_data_dto_local_var->daily_volume_token_0 = daily_volume_token_0;
    uniswap_v2_pair_day_data_dto_local_var->daily_volume_token_1 = daily_volume_token_1;
    uniswap_v2_pair_day_data_dto_local_var->daily_volume_usd = daily_volume_usd;
    uniswap_v2_pair_day_data_dto_local_var->daily_txns = daily_txns;
    uniswap_v2_pair_day_data_dto_local_var->vid = vid;

    return uniswap_v2_pair_day_data_dto_local_var;
}


void uniswap_v2_pair_day_data_dto_free(uniswap_v2_pair_day_data_dto_t *uniswap_v2_pair_day_data_dto) {
    if(NULL == uniswap_v2_pair_day_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_pair_day_data_dto->entry_time) {
        free(uniswap_v2_pair_day_data_dto->entry_time);
        uniswap_v2_pair_day_data_dto->entry_time = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->recv_time) {
        free(uniswap_v2_pair_day_data_dto->recv_time);
        uniswap_v2_pair_day_data_dto->recv_time = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->id) {
        free(uniswap_v2_pair_day_data_dto->id);
        uniswap_v2_pair_day_data_dto->id = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->pair_address) {
        free(uniswap_v2_pair_day_data_dto->pair_address);
        uniswap_v2_pair_day_data_dto->pair_address = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->token_0) {
        free(uniswap_v2_pair_day_data_dto->token_0);
        uniswap_v2_pair_day_data_dto->token_0 = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->token_1) {
        free(uniswap_v2_pair_day_data_dto->token_1);
        uniswap_v2_pair_day_data_dto->token_1 = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->reserve_0) {
        free(uniswap_v2_pair_day_data_dto->reserve_0);
        uniswap_v2_pair_day_data_dto->reserve_0 = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->reserve_1) {
        free(uniswap_v2_pair_day_data_dto->reserve_1);
        uniswap_v2_pair_day_data_dto->reserve_1 = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->total_supply) {
        free(uniswap_v2_pair_day_data_dto->total_supply);
        uniswap_v2_pair_day_data_dto->total_supply = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->reserve_usd) {
        free(uniswap_v2_pair_day_data_dto->reserve_usd);
        uniswap_v2_pair_day_data_dto->reserve_usd = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->daily_volume_token_0) {
        free(uniswap_v2_pair_day_data_dto->daily_volume_token_0);
        uniswap_v2_pair_day_data_dto->daily_volume_token_0 = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->daily_volume_token_1) {
        free(uniswap_v2_pair_day_data_dto->daily_volume_token_1);
        uniswap_v2_pair_day_data_dto->daily_volume_token_1 = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->daily_volume_usd) {
        free(uniswap_v2_pair_day_data_dto->daily_volume_usd);
        uniswap_v2_pair_day_data_dto->daily_volume_usd = NULL;
    }
    if (uniswap_v2_pair_day_data_dto->daily_txns) {
        free(uniswap_v2_pair_day_data_dto->daily_txns);
        uniswap_v2_pair_day_data_dto->daily_txns = NULL;
    }
    free(uniswap_v2_pair_day_data_dto);
}

cJSON *uniswap_v2_pair_day_data_dto_convertToJSON(uniswap_v2_pair_day_data_dto_t *uniswap_v2_pair_day_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_pair_day_data_dto->entry_time
    if(uniswap_v2_pair_day_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_pair_day_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_pair_day_data_dto->recv_time
    if(uniswap_v2_pair_day_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_pair_day_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_pair_day_data_dto->block_number
    if(uniswap_v2_pair_day_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_pair_day_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_pair_day_data_dto->id
    if(uniswap_v2_pair_day_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_pair_day_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->date
    if(uniswap_v2_pair_day_data_dto->date) {
    if(cJSON_AddNumberToObject(item, "date", uniswap_v2_pair_day_data_dto->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_pair_day_data_dto->pair_address
    if(uniswap_v2_pair_day_data_dto->pair_address) {
    if(cJSON_AddStringToObject(item, "pair_address", uniswap_v2_pair_day_data_dto->pair_address) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->token_0
    if(uniswap_v2_pair_day_data_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", uniswap_v2_pair_day_data_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->token_1
    if(uniswap_v2_pair_day_data_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", uniswap_v2_pair_day_data_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->reserve_0
    if(uniswap_v2_pair_day_data_dto->reserve_0) {
    if(cJSON_AddStringToObject(item, "reserve_0", uniswap_v2_pair_day_data_dto->reserve_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->reserve_1
    if(uniswap_v2_pair_day_data_dto->reserve_1) {
    if(cJSON_AddStringToObject(item, "reserve_1", uniswap_v2_pair_day_data_dto->reserve_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->total_supply
    if(uniswap_v2_pair_day_data_dto->total_supply) {
    if(cJSON_AddStringToObject(item, "total_supply", uniswap_v2_pair_day_data_dto->total_supply) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->reserve_usd
    if(uniswap_v2_pair_day_data_dto->reserve_usd) {
    if(cJSON_AddStringToObject(item, "reserve_usd", uniswap_v2_pair_day_data_dto->reserve_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->daily_volume_token_0
    if(uniswap_v2_pair_day_data_dto->daily_volume_token_0) {
    if(cJSON_AddStringToObject(item, "daily_volume_token_0", uniswap_v2_pair_day_data_dto->daily_volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->daily_volume_token_1
    if(uniswap_v2_pair_day_data_dto->daily_volume_token_1) {
    if(cJSON_AddStringToObject(item, "daily_volume_token_1", uniswap_v2_pair_day_data_dto->daily_volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->daily_volume_usd
    if(uniswap_v2_pair_day_data_dto->daily_volume_usd) {
    if(cJSON_AddStringToObject(item, "daily_volume_usd", uniswap_v2_pair_day_data_dto->daily_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->daily_txns
    if(uniswap_v2_pair_day_data_dto->daily_txns) {
    if(cJSON_AddStringToObject(item, "daily_txns", uniswap_v2_pair_day_data_dto->daily_txns) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_day_data_dto->vid
    if(uniswap_v2_pair_day_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_pair_day_data_dto->vid) == NULL) {
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

uniswap_v2_pair_day_data_dto_t *uniswap_v2_pair_day_data_dto_parseFromJSON(cJSON *uniswap_v2_pair_day_data_dtoJSON){

    uniswap_v2_pair_day_data_dto_t *uniswap_v2_pair_day_data_dto_local_var = NULL;

    // uniswap_v2_pair_day_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_pair_day_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_pair_day_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_pair_day_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "date");
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_pair_day_data_dto->pair_address
    cJSON *pair_address = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "pair_address");
    if (pair_address) { 
    if(!cJSON_IsString(pair_address) && !cJSON_IsNull(pair_address))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0) && !cJSON_IsNull(token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1) && !cJSON_IsNull(token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->reserve_0
    cJSON *reserve_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "reserve_0");
    if (reserve_0) { 
    if(!cJSON_IsString(reserve_0) && !cJSON_IsNull(reserve_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->reserve_1
    cJSON *reserve_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "reserve_1");
    if (reserve_1) { 
    if(!cJSON_IsString(reserve_1) && !cJSON_IsNull(reserve_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "total_supply");
    if (total_supply) { 
    if(!cJSON_IsString(total_supply) && !cJSON_IsNull(total_supply))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->reserve_usd
    cJSON *reserve_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "reserve_usd");
    if (reserve_usd) { 
    if(!cJSON_IsString(reserve_usd) && !cJSON_IsNull(reserve_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->daily_volume_token_0
    cJSON *daily_volume_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "daily_volume_token_0");
    if (daily_volume_token_0) { 
    if(!cJSON_IsString(daily_volume_token_0) && !cJSON_IsNull(daily_volume_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->daily_volume_token_1
    cJSON *daily_volume_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "daily_volume_token_1");
    if (daily_volume_token_1) { 
    if(!cJSON_IsString(daily_volume_token_1) && !cJSON_IsNull(daily_volume_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->daily_volume_usd
    cJSON *daily_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "daily_volume_usd");
    if (daily_volume_usd) { 
    if(!cJSON_IsString(daily_volume_usd) && !cJSON_IsNull(daily_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->daily_txns
    cJSON *daily_txns = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "daily_txns");
    if (daily_txns) { 
    if(!cJSON_IsString(daily_txns) && !cJSON_IsNull(daily_txns))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_day_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_day_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v2_pair_day_data_dto_local_var = uniswap_v2_pair_day_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        date ? date->valuedouble : 0,
        pair_address && !cJSON_IsNull(pair_address) ? strdup(pair_address->valuestring) : NULL,
        token_0 && !cJSON_IsNull(token_0) ? strdup(token_0->valuestring) : NULL,
        token_1 && !cJSON_IsNull(token_1) ? strdup(token_1->valuestring) : NULL,
        reserve_0 && !cJSON_IsNull(reserve_0) ? strdup(reserve_0->valuestring) : NULL,
        reserve_1 && !cJSON_IsNull(reserve_1) ? strdup(reserve_1->valuestring) : NULL,
        total_supply && !cJSON_IsNull(total_supply) ? strdup(total_supply->valuestring) : NULL,
        reserve_usd && !cJSON_IsNull(reserve_usd) ? strdup(reserve_usd->valuestring) : NULL,
        daily_volume_token_0 && !cJSON_IsNull(daily_volume_token_0) ? strdup(daily_volume_token_0->valuestring) : NULL,
        daily_volume_token_1 && !cJSON_IsNull(daily_volume_token_1) ? strdup(daily_volume_token_1->valuestring) : NULL,
        daily_volume_usd && !cJSON_IsNull(daily_volume_usd) ? strdup(daily_volume_usd->valuestring) : NULL,
        daily_txns && !cJSON_IsNull(daily_txns) ? strdup(daily_txns->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v2_pair_day_data_dto_local_var;
end:
    return NULL;

}
