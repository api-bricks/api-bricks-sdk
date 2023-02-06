#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_token_day_data_dto.h"



sushiswap_token_day_data_dto_t *sushiswap_token_day_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int date,
    char *token,
    char *volume,
    char *volume_eth,
    char *volume_usd,
    char *tx_count,
    char *liquidity,
    char *liquidity_eth,
    char *liquidity_usd,
    char *price_usd,
    long vid
    ) {
    sushiswap_token_day_data_dto_t *sushiswap_token_day_data_dto_local_var = malloc(sizeof(sushiswap_token_day_data_dto_t));
    if (!sushiswap_token_day_data_dto_local_var) {
        return NULL;
    }
    sushiswap_token_day_data_dto_local_var->entry_time = entry_time;
    sushiswap_token_day_data_dto_local_var->recv_time = recv_time;
    sushiswap_token_day_data_dto_local_var->block_number = block_number;
    sushiswap_token_day_data_dto_local_var->id = id;
    sushiswap_token_day_data_dto_local_var->date = date;
    sushiswap_token_day_data_dto_local_var->token = token;
    sushiswap_token_day_data_dto_local_var->volume = volume;
    sushiswap_token_day_data_dto_local_var->volume_eth = volume_eth;
    sushiswap_token_day_data_dto_local_var->volume_usd = volume_usd;
    sushiswap_token_day_data_dto_local_var->tx_count = tx_count;
    sushiswap_token_day_data_dto_local_var->liquidity = liquidity;
    sushiswap_token_day_data_dto_local_var->liquidity_eth = liquidity_eth;
    sushiswap_token_day_data_dto_local_var->liquidity_usd = liquidity_usd;
    sushiswap_token_day_data_dto_local_var->price_usd = price_usd;
    sushiswap_token_day_data_dto_local_var->vid = vid;

    return sushiswap_token_day_data_dto_local_var;
}


void sushiswap_token_day_data_dto_free(sushiswap_token_day_data_dto_t *sushiswap_token_day_data_dto) {
    if(NULL == sushiswap_token_day_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_token_day_data_dto->entry_time) {
        free(sushiswap_token_day_data_dto->entry_time);
        sushiswap_token_day_data_dto->entry_time = NULL;
    }
    if (sushiswap_token_day_data_dto->recv_time) {
        free(sushiswap_token_day_data_dto->recv_time);
        sushiswap_token_day_data_dto->recv_time = NULL;
    }
    if (sushiswap_token_day_data_dto->id) {
        free(sushiswap_token_day_data_dto->id);
        sushiswap_token_day_data_dto->id = NULL;
    }
    if (sushiswap_token_day_data_dto->token) {
        free(sushiswap_token_day_data_dto->token);
        sushiswap_token_day_data_dto->token = NULL;
    }
    if (sushiswap_token_day_data_dto->volume) {
        free(sushiswap_token_day_data_dto->volume);
        sushiswap_token_day_data_dto->volume = NULL;
    }
    if (sushiswap_token_day_data_dto->volume_eth) {
        free(sushiswap_token_day_data_dto->volume_eth);
        sushiswap_token_day_data_dto->volume_eth = NULL;
    }
    if (sushiswap_token_day_data_dto->volume_usd) {
        free(sushiswap_token_day_data_dto->volume_usd);
        sushiswap_token_day_data_dto->volume_usd = NULL;
    }
    if (sushiswap_token_day_data_dto->tx_count) {
        free(sushiswap_token_day_data_dto->tx_count);
        sushiswap_token_day_data_dto->tx_count = NULL;
    }
    if (sushiswap_token_day_data_dto->liquidity) {
        free(sushiswap_token_day_data_dto->liquidity);
        sushiswap_token_day_data_dto->liquidity = NULL;
    }
    if (sushiswap_token_day_data_dto->liquidity_eth) {
        free(sushiswap_token_day_data_dto->liquidity_eth);
        sushiswap_token_day_data_dto->liquidity_eth = NULL;
    }
    if (sushiswap_token_day_data_dto->liquidity_usd) {
        free(sushiswap_token_day_data_dto->liquidity_usd);
        sushiswap_token_day_data_dto->liquidity_usd = NULL;
    }
    if (sushiswap_token_day_data_dto->price_usd) {
        free(sushiswap_token_day_data_dto->price_usd);
        sushiswap_token_day_data_dto->price_usd = NULL;
    }
    free(sushiswap_token_day_data_dto);
}

cJSON *sushiswap_token_day_data_dto_convertToJSON(sushiswap_token_day_data_dto_t *sushiswap_token_day_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_token_day_data_dto->entry_time
    if(sushiswap_token_day_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_token_day_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_token_day_data_dto->recv_time
    if(sushiswap_token_day_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_token_day_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_token_day_data_dto->block_number
    if(sushiswap_token_day_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_token_day_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_token_day_data_dto->id
    if(sushiswap_token_day_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_token_day_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->date
    if(sushiswap_token_day_data_dto->date) {
    if(cJSON_AddNumberToObject(item, "date", sushiswap_token_day_data_dto->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_token_day_data_dto->token
    if(sushiswap_token_day_data_dto->token) {
    if(cJSON_AddStringToObject(item, "token", sushiswap_token_day_data_dto->token) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->volume
    if(sushiswap_token_day_data_dto->volume) {
    if(cJSON_AddStringToObject(item, "volume", sushiswap_token_day_data_dto->volume) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->volume_eth
    if(sushiswap_token_day_data_dto->volume_eth) {
    if(cJSON_AddStringToObject(item, "volume_eth", sushiswap_token_day_data_dto->volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->volume_usd
    if(sushiswap_token_day_data_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", sushiswap_token_day_data_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->tx_count
    if(sushiswap_token_day_data_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", sushiswap_token_day_data_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->liquidity
    if(sushiswap_token_day_data_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", sushiswap_token_day_data_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->liquidity_eth
    if(sushiswap_token_day_data_dto->liquidity_eth) {
    if(cJSON_AddStringToObject(item, "liquidity_eth", sushiswap_token_day_data_dto->liquidity_eth) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->liquidity_usd
    if(sushiswap_token_day_data_dto->liquidity_usd) {
    if(cJSON_AddStringToObject(item, "liquidity_usd", sushiswap_token_day_data_dto->liquidity_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->price_usd
    if(sushiswap_token_day_data_dto->price_usd) {
    if(cJSON_AddStringToObject(item, "price_usd", sushiswap_token_day_data_dto->price_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_day_data_dto->vid
    if(sushiswap_token_day_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_token_day_data_dto->vid) == NULL) {
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

sushiswap_token_day_data_dto_t *sushiswap_token_day_data_dto_parseFromJSON(cJSON *sushiswap_token_day_data_dtoJSON){

    sushiswap_token_day_data_dto_t *sushiswap_token_day_data_dto_local_var = NULL;

    // sushiswap_token_day_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_token_day_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_token_day_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_token_day_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "date");
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_token_day_data_dto->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "token");
    if (token) { 
    if(!cJSON_IsString(token) && !cJSON_IsNull(token))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "volume");
    if (volume) { 
    if(!cJSON_IsString(volume) && !cJSON_IsNull(volume))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->volume_eth
    cJSON *volume_eth = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "volume_eth");
    if (volume_eth) { 
    if(!cJSON_IsString(volume_eth) && !cJSON_IsNull(volume_eth))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count) && !cJSON_IsNull(tx_count))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity) && !cJSON_IsNull(liquidity))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->liquidity_eth
    cJSON *liquidity_eth = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "liquidity_eth");
    if (liquidity_eth) { 
    if(!cJSON_IsString(liquidity_eth) && !cJSON_IsNull(liquidity_eth))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->liquidity_usd
    cJSON *liquidity_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "liquidity_usd");
    if (liquidity_usd) { 
    if(!cJSON_IsString(liquidity_usd) && !cJSON_IsNull(liquidity_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->price_usd
    cJSON *price_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "price_usd");
    if (price_usd) { 
    if(!cJSON_IsString(price_usd) && !cJSON_IsNull(price_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_token_day_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_token_day_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    sushiswap_token_day_data_dto_local_var = sushiswap_token_day_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        date ? date->valuedouble : 0,
        token && !cJSON_IsNull(token) ? strdup(token->valuestring) : NULL,
        volume && !cJSON_IsNull(volume) ? strdup(volume->valuestring) : NULL,
        volume_eth && !cJSON_IsNull(volume_eth) ? strdup(volume_eth->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        tx_count && !cJSON_IsNull(tx_count) ? strdup(tx_count->valuestring) : NULL,
        liquidity && !cJSON_IsNull(liquidity) ? strdup(liquidity->valuestring) : NULL,
        liquidity_eth && !cJSON_IsNull(liquidity_eth) ? strdup(liquidity_eth->valuestring) : NULL,
        liquidity_usd && !cJSON_IsNull(liquidity_usd) ? strdup(liquidity_usd->valuestring) : NULL,
        price_usd && !cJSON_IsNull(price_usd) ? strdup(price_usd->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return sushiswap_token_day_data_dto_local_var;
end:
    return NULL;

}
