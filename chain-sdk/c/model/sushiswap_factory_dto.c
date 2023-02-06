#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_factory_dto.h"



sushiswap_factory_dto_t *sushiswap_factory_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *pair_count,
    char *volume_usd,
    char *volume_eth,
    char *untracked_volume_usd,
    char *liquidity_usd,
    char *liquidity_eth,
    char *tx_count,
    char *token_count,
    char *user_count,
    long vid
    ) {
    sushiswap_factory_dto_t *sushiswap_factory_dto_local_var = malloc(sizeof(sushiswap_factory_dto_t));
    if (!sushiswap_factory_dto_local_var) {
        return NULL;
    }
    sushiswap_factory_dto_local_var->entry_time = entry_time;
    sushiswap_factory_dto_local_var->recv_time = recv_time;
    sushiswap_factory_dto_local_var->block_number = block_number;
    sushiswap_factory_dto_local_var->id = id;
    sushiswap_factory_dto_local_var->pair_count = pair_count;
    sushiswap_factory_dto_local_var->volume_usd = volume_usd;
    sushiswap_factory_dto_local_var->volume_eth = volume_eth;
    sushiswap_factory_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    sushiswap_factory_dto_local_var->liquidity_usd = liquidity_usd;
    sushiswap_factory_dto_local_var->liquidity_eth = liquidity_eth;
    sushiswap_factory_dto_local_var->tx_count = tx_count;
    sushiswap_factory_dto_local_var->token_count = token_count;
    sushiswap_factory_dto_local_var->user_count = user_count;
    sushiswap_factory_dto_local_var->vid = vid;

    return sushiswap_factory_dto_local_var;
}


void sushiswap_factory_dto_free(sushiswap_factory_dto_t *sushiswap_factory_dto) {
    if(NULL == sushiswap_factory_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_factory_dto->entry_time) {
        free(sushiswap_factory_dto->entry_time);
        sushiswap_factory_dto->entry_time = NULL;
    }
    if (sushiswap_factory_dto->recv_time) {
        free(sushiswap_factory_dto->recv_time);
        sushiswap_factory_dto->recv_time = NULL;
    }
    if (sushiswap_factory_dto->id) {
        free(sushiswap_factory_dto->id);
        sushiswap_factory_dto->id = NULL;
    }
    if (sushiswap_factory_dto->pair_count) {
        free(sushiswap_factory_dto->pair_count);
        sushiswap_factory_dto->pair_count = NULL;
    }
    if (sushiswap_factory_dto->volume_usd) {
        free(sushiswap_factory_dto->volume_usd);
        sushiswap_factory_dto->volume_usd = NULL;
    }
    if (sushiswap_factory_dto->volume_eth) {
        free(sushiswap_factory_dto->volume_eth);
        sushiswap_factory_dto->volume_eth = NULL;
    }
    if (sushiswap_factory_dto->untracked_volume_usd) {
        free(sushiswap_factory_dto->untracked_volume_usd);
        sushiswap_factory_dto->untracked_volume_usd = NULL;
    }
    if (sushiswap_factory_dto->liquidity_usd) {
        free(sushiswap_factory_dto->liquidity_usd);
        sushiswap_factory_dto->liquidity_usd = NULL;
    }
    if (sushiswap_factory_dto->liquidity_eth) {
        free(sushiswap_factory_dto->liquidity_eth);
        sushiswap_factory_dto->liquidity_eth = NULL;
    }
    if (sushiswap_factory_dto->tx_count) {
        free(sushiswap_factory_dto->tx_count);
        sushiswap_factory_dto->tx_count = NULL;
    }
    if (sushiswap_factory_dto->token_count) {
        free(sushiswap_factory_dto->token_count);
        sushiswap_factory_dto->token_count = NULL;
    }
    if (sushiswap_factory_dto->user_count) {
        free(sushiswap_factory_dto->user_count);
        sushiswap_factory_dto->user_count = NULL;
    }
    free(sushiswap_factory_dto);
}

cJSON *sushiswap_factory_dto_convertToJSON(sushiswap_factory_dto_t *sushiswap_factory_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_factory_dto->entry_time
    if(sushiswap_factory_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_factory_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_factory_dto->recv_time
    if(sushiswap_factory_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_factory_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_factory_dto->block_number
    if(sushiswap_factory_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_factory_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_factory_dto->id
    if(sushiswap_factory_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_factory_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->pair_count
    if(sushiswap_factory_dto->pair_count) {
    if(cJSON_AddStringToObject(item, "pair_count", sushiswap_factory_dto->pair_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->volume_usd
    if(sushiswap_factory_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", sushiswap_factory_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->volume_eth
    if(sushiswap_factory_dto->volume_eth) {
    if(cJSON_AddStringToObject(item, "volume_eth", sushiswap_factory_dto->volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->untracked_volume_usd
    if(sushiswap_factory_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", sushiswap_factory_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->liquidity_usd
    if(sushiswap_factory_dto->liquidity_usd) {
    if(cJSON_AddStringToObject(item, "liquidity_usd", sushiswap_factory_dto->liquidity_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->liquidity_eth
    if(sushiswap_factory_dto->liquidity_eth) {
    if(cJSON_AddStringToObject(item, "liquidity_eth", sushiswap_factory_dto->liquidity_eth) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->tx_count
    if(sushiswap_factory_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", sushiswap_factory_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->token_count
    if(sushiswap_factory_dto->token_count) {
    if(cJSON_AddStringToObject(item, "token_count", sushiswap_factory_dto->token_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->user_count
    if(sushiswap_factory_dto->user_count) {
    if(cJSON_AddStringToObject(item, "user_count", sushiswap_factory_dto->user_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_factory_dto->vid
    if(sushiswap_factory_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_factory_dto->vid) == NULL) {
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

sushiswap_factory_dto_t *sushiswap_factory_dto_parseFromJSON(cJSON *sushiswap_factory_dtoJSON){

    sushiswap_factory_dto_t *sushiswap_factory_dto_local_var = NULL;

    // sushiswap_factory_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_factory_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_factory_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_factory_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->pair_count
    cJSON *pair_count = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "pair_count");
    if (pair_count) { 
    if(!cJSON_IsString(pair_count) && !cJSON_IsNull(pair_count))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->volume_eth
    cJSON *volume_eth = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "volume_eth");
    if (volume_eth) { 
    if(!cJSON_IsString(volume_eth) && !cJSON_IsNull(volume_eth))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd) && !cJSON_IsNull(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->liquidity_usd
    cJSON *liquidity_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "liquidity_usd");
    if (liquidity_usd) { 
    if(!cJSON_IsString(liquidity_usd) && !cJSON_IsNull(liquidity_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->liquidity_eth
    cJSON *liquidity_eth = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "liquidity_eth");
    if (liquidity_eth) { 
    if(!cJSON_IsString(liquidity_eth) && !cJSON_IsNull(liquidity_eth))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count) && !cJSON_IsNull(tx_count))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->token_count
    cJSON *token_count = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "token_count");
    if (token_count) { 
    if(!cJSON_IsString(token_count) && !cJSON_IsNull(token_count))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->user_count
    cJSON *user_count = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "user_count");
    if (user_count) { 
    if(!cJSON_IsString(user_count) && !cJSON_IsNull(user_count))
    {
    goto end; //String
    }
    }

    // sushiswap_factory_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_factory_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    sushiswap_factory_dto_local_var = sushiswap_factory_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        pair_count && !cJSON_IsNull(pair_count) ? strdup(pair_count->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        volume_eth && !cJSON_IsNull(volume_eth) ? strdup(volume_eth->valuestring) : NULL,
        untracked_volume_usd && !cJSON_IsNull(untracked_volume_usd) ? strdup(untracked_volume_usd->valuestring) : NULL,
        liquidity_usd && !cJSON_IsNull(liquidity_usd) ? strdup(liquidity_usd->valuestring) : NULL,
        liquidity_eth && !cJSON_IsNull(liquidity_eth) ? strdup(liquidity_eth->valuestring) : NULL,
        tx_count && !cJSON_IsNull(tx_count) ? strdup(tx_count->valuestring) : NULL,
        token_count && !cJSON_IsNull(token_count) ? strdup(token_count->valuestring) : NULL,
        user_count && !cJSON_IsNull(user_count) ? strdup(user_count->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return sushiswap_factory_dto_local_var;
end:
    return NULL;

}
