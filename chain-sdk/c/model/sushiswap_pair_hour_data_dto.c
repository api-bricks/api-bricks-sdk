#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_pair_hour_data_dto.h"



sushiswap_pair_hour_data_dto_t *sushiswap_pair_hour_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int date,
    char *pair,
    char *reserve_0,
    char *reserve_1,
    char *reserve_usd,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *tx_count,
    long vid
    ) {
    sushiswap_pair_hour_data_dto_t *sushiswap_pair_hour_data_dto_local_var = malloc(sizeof(sushiswap_pair_hour_data_dto_t));
    if (!sushiswap_pair_hour_data_dto_local_var) {
        return NULL;
    }
    sushiswap_pair_hour_data_dto_local_var->entry_time = entry_time;
    sushiswap_pair_hour_data_dto_local_var->recv_time = recv_time;
    sushiswap_pair_hour_data_dto_local_var->block_number = block_number;
    sushiswap_pair_hour_data_dto_local_var->id = id;
    sushiswap_pair_hour_data_dto_local_var->date = date;
    sushiswap_pair_hour_data_dto_local_var->pair = pair;
    sushiswap_pair_hour_data_dto_local_var->reserve_0 = reserve_0;
    sushiswap_pair_hour_data_dto_local_var->reserve_1 = reserve_1;
    sushiswap_pair_hour_data_dto_local_var->reserve_usd = reserve_usd;
    sushiswap_pair_hour_data_dto_local_var->volume_token_0 = volume_token_0;
    sushiswap_pair_hour_data_dto_local_var->volume_token_1 = volume_token_1;
    sushiswap_pair_hour_data_dto_local_var->volume_usd = volume_usd;
    sushiswap_pair_hour_data_dto_local_var->tx_count = tx_count;
    sushiswap_pair_hour_data_dto_local_var->vid = vid;

    return sushiswap_pair_hour_data_dto_local_var;
}


void sushiswap_pair_hour_data_dto_free(sushiswap_pair_hour_data_dto_t *sushiswap_pair_hour_data_dto) {
    if(NULL == sushiswap_pair_hour_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_pair_hour_data_dto->entry_time) {
        free(sushiswap_pair_hour_data_dto->entry_time);
        sushiswap_pair_hour_data_dto->entry_time = NULL;
    }
    if (sushiswap_pair_hour_data_dto->recv_time) {
        free(sushiswap_pair_hour_data_dto->recv_time);
        sushiswap_pair_hour_data_dto->recv_time = NULL;
    }
    if (sushiswap_pair_hour_data_dto->id) {
        free(sushiswap_pair_hour_data_dto->id);
        sushiswap_pair_hour_data_dto->id = NULL;
    }
    if (sushiswap_pair_hour_data_dto->pair) {
        free(sushiswap_pair_hour_data_dto->pair);
        sushiswap_pair_hour_data_dto->pair = NULL;
    }
    if (sushiswap_pair_hour_data_dto->reserve_0) {
        free(sushiswap_pair_hour_data_dto->reserve_0);
        sushiswap_pair_hour_data_dto->reserve_0 = NULL;
    }
    if (sushiswap_pair_hour_data_dto->reserve_1) {
        free(sushiswap_pair_hour_data_dto->reserve_1);
        sushiswap_pair_hour_data_dto->reserve_1 = NULL;
    }
    if (sushiswap_pair_hour_data_dto->reserve_usd) {
        free(sushiswap_pair_hour_data_dto->reserve_usd);
        sushiswap_pair_hour_data_dto->reserve_usd = NULL;
    }
    if (sushiswap_pair_hour_data_dto->volume_token_0) {
        free(sushiswap_pair_hour_data_dto->volume_token_0);
        sushiswap_pair_hour_data_dto->volume_token_0 = NULL;
    }
    if (sushiswap_pair_hour_data_dto->volume_token_1) {
        free(sushiswap_pair_hour_data_dto->volume_token_1);
        sushiswap_pair_hour_data_dto->volume_token_1 = NULL;
    }
    if (sushiswap_pair_hour_data_dto->volume_usd) {
        free(sushiswap_pair_hour_data_dto->volume_usd);
        sushiswap_pair_hour_data_dto->volume_usd = NULL;
    }
    if (sushiswap_pair_hour_data_dto->tx_count) {
        free(sushiswap_pair_hour_data_dto->tx_count);
        sushiswap_pair_hour_data_dto->tx_count = NULL;
    }
    free(sushiswap_pair_hour_data_dto);
}

cJSON *sushiswap_pair_hour_data_dto_convertToJSON(sushiswap_pair_hour_data_dto_t *sushiswap_pair_hour_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_pair_hour_data_dto->entry_time
    if(sushiswap_pair_hour_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_pair_hour_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_pair_hour_data_dto->recv_time
    if(sushiswap_pair_hour_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_pair_hour_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_pair_hour_data_dto->block_number
    if(sushiswap_pair_hour_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_pair_hour_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_pair_hour_data_dto->id
    if(sushiswap_pair_hour_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_pair_hour_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_hour_data_dto->date
    if(sushiswap_pair_hour_data_dto->date) {
    if(cJSON_AddNumberToObject(item, "date", sushiswap_pair_hour_data_dto->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_pair_hour_data_dto->pair
    if(sushiswap_pair_hour_data_dto->pair) {
    if(cJSON_AddStringToObject(item, "pair", sushiswap_pair_hour_data_dto->pair) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_hour_data_dto->reserve_0
    if(sushiswap_pair_hour_data_dto->reserve_0) {
    if(cJSON_AddStringToObject(item, "reserve_0", sushiswap_pair_hour_data_dto->reserve_0) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_hour_data_dto->reserve_1
    if(sushiswap_pair_hour_data_dto->reserve_1) {
    if(cJSON_AddStringToObject(item, "reserve_1", sushiswap_pair_hour_data_dto->reserve_1) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_hour_data_dto->reserve_usd
    if(sushiswap_pair_hour_data_dto->reserve_usd) {
    if(cJSON_AddStringToObject(item, "reserve_usd", sushiswap_pair_hour_data_dto->reserve_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_hour_data_dto->volume_token_0
    if(sushiswap_pair_hour_data_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", sushiswap_pair_hour_data_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_hour_data_dto->volume_token_1
    if(sushiswap_pair_hour_data_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", sushiswap_pair_hour_data_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_hour_data_dto->volume_usd
    if(sushiswap_pair_hour_data_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", sushiswap_pair_hour_data_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_hour_data_dto->tx_count
    if(sushiswap_pair_hour_data_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", sushiswap_pair_hour_data_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_hour_data_dto->vid
    if(sushiswap_pair_hour_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_pair_hour_data_dto->vid) == NULL) {
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

sushiswap_pair_hour_data_dto_t *sushiswap_pair_hour_data_dto_parseFromJSON(cJSON *sushiswap_pair_hour_data_dtoJSON){

    sushiswap_pair_hour_data_dto_t *sushiswap_pair_hour_data_dto_local_var = NULL;

    // sushiswap_pair_hour_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_pair_hour_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_pair_hour_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_pair_hour_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_hour_data_dto->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "date");
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_pair_hour_data_dto->pair
    cJSON *pair = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "pair");
    if (pair) { 
    if(!cJSON_IsString(pair) && !cJSON_IsNull(pair))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_hour_data_dto->reserve_0
    cJSON *reserve_0 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "reserve_0");
    if (reserve_0) { 
    if(!cJSON_IsString(reserve_0) && !cJSON_IsNull(reserve_0))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_hour_data_dto->reserve_1
    cJSON *reserve_1 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "reserve_1");
    if (reserve_1) { 
    if(!cJSON_IsString(reserve_1) && !cJSON_IsNull(reserve_1))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_hour_data_dto->reserve_usd
    cJSON *reserve_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "reserve_usd");
    if (reserve_usd) { 
    if(!cJSON_IsString(reserve_usd) && !cJSON_IsNull(reserve_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_hour_data_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0) && !cJSON_IsNull(volume_token_0))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_hour_data_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1) && !cJSON_IsNull(volume_token_1))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_hour_data_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_hour_data_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count) && !cJSON_IsNull(tx_count))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_hour_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_hour_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    sushiswap_pair_hour_data_dto_local_var = sushiswap_pair_hour_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        date ? date->valuedouble : 0,
        pair && !cJSON_IsNull(pair) ? strdup(pair->valuestring) : NULL,
        reserve_0 && !cJSON_IsNull(reserve_0) ? strdup(reserve_0->valuestring) : NULL,
        reserve_1 && !cJSON_IsNull(reserve_1) ? strdup(reserve_1->valuestring) : NULL,
        reserve_usd && !cJSON_IsNull(reserve_usd) ? strdup(reserve_usd->valuestring) : NULL,
        volume_token_0 && !cJSON_IsNull(volume_token_0) ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 && !cJSON_IsNull(volume_token_1) ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        tx_count && !cJSON_IsNull(tx_count) ? strdup(tx_count->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return sushiswap_pair_hour_data_dto_local_var;
end:
    return NULL;

}
