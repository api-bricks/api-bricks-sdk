#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_hour_data_dto.h"



sushiswap_hour_data_dto_t *sushiswap_hour_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int date,
    char *factory,
    char *volume_eth,
    char *volume_usd,
    char *untracked_volume,
    char *liquidity_eth,
    char *liquidity_usd,
    char *tx_count,
    long vid
    ) {
    sushiswap_hour_data_dto_t *sushiswap_hour_data_dto_local_var = malloc(sizeof(sushiswap_hour_data_dto_t));
    if (!sushiswap_hour_data_dto_local_var) {
        return NULL;
    }
    sushiswap_hour_data_dto_local_var->entry_time = entry_time;
    sushiswap_hour_data_dto_local_var->recv_time = recv_time;
    sushiswap_hour_data_dto_local_var->block_number = block_number;
    sushiswap_hour_data_dto_local_var->id = id;
    sushiswap_hour_data_dto_local_var->date = date;
    sushiswap_hour_data_dto_local_var->factory = factory;
    sushiswap_hour_data_dto_local_var->volume_eth = volume_eth;
    sushiswap_hour_data_dto_local_var->volume_usd = volume_usd;
    sushiswap_hour_data_dto_local_var->untracked_volume = untracked_volume;
    sushiswap_hour_data_dto_local_var->liquidity_eth = liquidity_eth;
    sushiswap_hour_data_dto_local_var->liquidity_usd = liquidity_usd;
    sushiswap_hour_data_dto_local_var->tx_count = tx_count;
    sushiswap_hour_data_dto_local_var->vid = vid;

    return sushiswap_hour_data_dto_local_var;
}


void sushiswap_hour_data_dto_free(sushiswap_hour_data_dto_t *sushiswap_hour_data_dto) {
    if(NULL == sushiswap_hour_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_hour_data_dto->entry_time) {
        free(sushiswap_hour_data_dto->entry_time);
        sushiswap_hour_data_dto->entry_time = NULL;
    }
    if (sushiswap_hour_data_dto->recv_time) {
        free(sushiswap_hour_data_dto->recv_time);
        sushiswap_hour_data_dto->recv_time = NULL;
    }
    if (sushiswap_hour_data_dto->id) {
        free(sushiswap_hour_data_dto->id);
        sushiswap_hour_data_dto->id = NULL;
    }
    if (sushiswap_hour_data_dto->factory) {
        free(sushiswap_hour_data_dto->factory);
        sushiswap_hour_data_dto->factory = NULL;
    }
    if (sushiswap_hour_data_dto->volume_eth) {
        free(sushiswap_hour_data_dto->volume_eth);
        sushiswap_hour_data_dto->volume_eth = NULL;
    }
    if (sushiswap_hour_data_dto->volume_usd) {
        free(sushiswap_hour_data_dto->volume_usd);
        sushiswap_hour_data_dto->volume_usd = NULL;
    }
    if (sushiswap_hour_data_dto->untracked_volume) {
        free(sushiswap_hour_data_dto->untracked_volume);
        sushiswap_hour_data_dto->untracked_volume = NULL;
    }
    if (sushiswap_hour_data_dto->liquidity_eth) {
        free(sushiswap_hour_data_dto->liquidity_eth);
        sushiswap_hour_data_dto->liquidity_eth = NULL;
    }
    if (sushiswap_hour_data_dto->liquidity_usd) {
        free(sushiswap_hour_data_dto->liquidity_usd);
        sushiswap_hour_data_dto->liquidity_usd = NULL;
    }
    if (sushiswap_hour_data_dto->tx_count) {
        free(sushiswap_hour_data_dto->tx_count);
        sushiswap_hour_data_dto->tx_count = NULL;
    }
    free(sushiswap_hour_data_dto);
}

cJSON *sushiswap_hour_data_dto_convertToJSON(sushiswap_hour_data_dto_t *sushiswap_hour_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_hour_data_dto->entry_time
    if(sushiswap_hour_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_hour_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_hour_data_dto->recv_time
    if(sushiswap_hour_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_hour_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_hour_data_dto->block_number
    if(sushiswap_hour_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_hour_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_hour_data_dto->id
    if(sushiswap_hour_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_hour_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_hour_data_dto->date
    if(sushiswap_hour_data_dto->date) {
    if(cJSON_AddNumberToObject(item, "date", sushiswap_hour_data_dto->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_hour_data_dto->factory
    if(sushiswap_hour_data_dto->factory) {
    if(cJSON_AddStringToObject(item, "factory", sushiswap_hour_data_dto->factory) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_hour_data_dto->volume_eth
    if(sushiswap_hour_data_dto->volume_eth) {
    if(cJSON_AddStringToObject(item, "volume_eth", sushiswap_hour_data_dto->volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_hour_data_dto->volume_usd
    if(sushiswap_hour_data_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", sushiswap_hour_data_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_hour_data_dto->untracked_volume
    if(sushiswap_hour_data_dto->untracked_volume) {
    if(cJSON_AddStringToObject(item, "untracked_volume", sushiswap_hour_data_dto->untracked_volume) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_hour_data_dto->liquidity_eth
    if(sushiswap_hour_data_dto->liquidity_eth) {
    if(cJSON_AddStringToObject(item, "liquidity_eth", sushiswap_hour_data_dto->liquidity_eth) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_hour_data_dto->liquidity_usd
    if(sushiswap_hour_data_dto->liquidity_usd) {
    if(cJSON_AddStringToObject(item, "liquidity_usd", sushiswap_hour_data_dto->liquidity_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_hour_data_dto->tx_count
    if(sushiswap_hour_data_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", sushiswap_hour_data_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_hour_data_dto->vid
    if(sushiswap_hour_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_hour_data_dto->vid) == NULL) {
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

sushiswap_hour_data_dto_t *sushiswap_hour_data_dto_parseFromJSON(cJSON *sushiswap_hour_data_dtoJSON){

    sushiswap_hour_data_dto_t *sushiswap_hour_data_dto_local_var = NULL;

    // sushiswap_hour_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_hour_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_hour_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_hour_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_hour_data_dto->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "date");
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_hour_data_dto->factory
    cJSON *factory = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "factory");
    if (factory) { 
    if(!cJSON_IsString(factory) && !cJSON_IsNull(factory))
    {
    goto end; //String
    }
    }

    // sushiswap_hour_data_dto->volume_eth
    cJSON *volume_eth = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "volume_eth");
    if (volume_eth) { 
    if(!cJSON_IsString(volume_eth) && !cJSON_IsNull(volume_eth))
    {
    goto end; //String
    }
    }

    // sushiswap_hour_data_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_hour_data_dto->untracked_volume
    cJSON *untracked_volume = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "untracked_volume");
    if (untracked_volume) { 
    if(!cJSON_IsString(untracked_volume) && !cJSON_IsNull(untracked_volume))
    {
    goto end; //String
    }
    }

    // sushiswap_hour_data_dto->liquidity_eth
    cJSON *liquidity_eth = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "liquidity_eth");
    if (liquidity_eth) { 
    if(!cJSON_IsString(liquidity_eth) && !cJSON_IsNull(liquidity_eth))
    {
    goto end; //String
    }
    }

    // sushiswap_hour_data_dto->liquidity_usd
    cJSON *liquidity_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "liquidity_usd");
    if (liquidity_usd) { 
    if(!cJSON_IsString(liquidity_usd) && !cJSON_IsNull(liquidity_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_hour_data_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count) && !cJSON_IsNull(tx_count))
    {
    goto end; //String
    }
    }

    // sushiswap_hour_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_hour_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    sushiswap_hour_data_dto_local_var = sushiswap_hour_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        date ? date->valuedouble : 0,
        factory && !cJSON_IsNull(factory) ? strdup(factory->valuestring) : NULL,
        volume_eth && !cJSON_IsNull(volume_eth) ? strdup(volume_eth->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume && !cJSON_IsNull(untracked_volume) ? strdup(untracked_volume->valuestring) : NULL,
        liquidity_eth && !cJSON_IsNull(liquidity_eth) ? strdup(liquidity_eth->valuestring) : NULL,
        liquidity_usd && !cJSON_IsNull(liquidity_usd) ? strdup(liquidity_usd->valuestring) : NULL,
        tx_count && !cJSON_IsNull(tx_count) ? strdup(tx_count->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return sushiswap_hour_data_dto_local_var;
end:
    return NULL;

}
