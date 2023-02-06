#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_pair_dto.h"



sushiswap_pair_dto_t *sushiswap_pair_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *factory,
    char *name,
    char *token_0,
    char *token_1,
    char *reserve_0,
    char *reserve_1,
    char *total_supply,
    char *reserve_eth,
    char *reserve_usd,
    char *tracked_reserve_eth,
    char *token_0_price,
    char *token_1_price,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *untracked_volume_usd,
    char *tx_count,
    char *liquidity_provider_count,
    char *timestamp,
    char *block,
    long vid,
    double evaluated_ask
    ) {
    sushiswap_pair_dto_t *sushiswap_pair_dto_local_var = malloc(sizeof(sushiswap_pair_dto_t));
    if (!sushiswap_pair_dto_local_var) {
        return NULL;
    }
    sushiswap_pair_dto_local_var->entry_time = entry_time;
    sushiswap_pair_dto_local_var->recv_time = recv_time;
    sushiswap_pair_dto_local_var->block_number = block_number;
    sushiswap_pair_dto_local_var->id = id;
    sushiswap_pair_dto_local_var->factory = factory;
    sushiswap_pair_dto_local_var->name = name;
    sushiswap_pair_dto_local_var->token_0 = token_0;
    sushiswap_pair_dto_local_var->token_1 = token_1;
    sushiswap_pair_dto_local_var->reserve_0 = reserve_0;
    sushiswap_pair_dto_local_var->reserve_1 = reserve_1;
    sushiswap_pair_dto_local_var->total_supply = total_supply;
    sushiswap_pair_dto_local_var->reserve_eth = reserve_eth;
    sushiswap_pair_dto_local_var->reserve_usd = reserve_usd;
    sushiswap_pair_dto_local_var->tracked_reserve_eth = tracked_reserve_eth;
    sushiswap_pair_dto_local_var->token_0_price = token_0_price;
    sushiswap_pair_dto_local_var->token_1_price = token_1_price;
    sushiswap_pair_dto_local_var->volume_token_0 = volume_token_0;
    sushiswap_pair_dto_local_var->volume_token_1 = volume_token_1;
    sushiswap_pair_dto_local_var->volume_usd = volume_usd;
    sushiswap_pair_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    sushiswap_pair_dto_local_var->tx_count = tx_count;
    sushiswap_pair_dto_local_var->liquidity_provider_count = liquidity_provider_count;
    sushiswap_pair_dto_local_var->timestamp = timestamp;
    sushiswap_pair_dto_local_var->block = block;
    sushiswap_pair_dto_local_var->vid = vid;
    sushiswap_pair_dto_local_var->evaluated_ask = evaluated_ask;

    return sushiswap_pair_dto_local_var;
}


void sushiswap_pair_dto_free(sushiswap_pair_dto_t *sushiswap_pair_dto) {
    if(NULL == sushiswap_pair_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_pair_dto->entry_time) {
        free(sushiswap_pair_dto->entry_time);
        sushiswap_pair_dto->entry_time = NULL;
    }
    if (sushiswap_pair_dto->recv_time) {
        free(sushiswap_pair_dto->recv_time);
        sushiswap_pair_dto->recv_time = NULL;
    }
    if (sushiswap_pair_dto->id) {
        free(sushiswap_pair_dto->id);
        sushiswap_pair_dto->id = NULL;
    }
    if (sushiswap_pair_dto->factory) {
        free(sushiswap_pair_dto->factory);
        sushiswap_pair_dto->factory = NULL;
    }
    if (sushiswap_pair_dto->name) {
        free(sushiswap_pair_dto->name);
        sushiswap_pair_dto->name = NULL;
    }
    if (sushiswap_pair_dto->token_0) {
        free(sushiswap_pair_dto->token_0);
        sushiswap_pair_dto->token_0 = NULL;
    }
    if (sushiswap_pair_dto->token_1) {
        free(sushiswap_pair_dto->token_1);
        sushiswap_pair_dto->token_1 = NULL;
    }
    if (sushiswap_pair_dto->reserve_0) {
        free(sushiswap_pair_dto->reserve_0);
        sushiswap_pair_dto->reserve_0 = NULL;
    }
    if (sushiswap_pair_dto->reserve_1) {
        free(sushiswap_pair_dto->reserve_1);
        sushiswap_pair_dto->reserve_1 = NULL;
    }
    if (sushiswap_pair_dto->total_supply) {
        free(sushiswap_pair_dto->total_supply);
        sushiswap_pair_dto->total_supply = NULL;
    }
    if (sushiswap_pair_dto->reserve_eth) {
        free(sushiswap_pair_dto->reserve_eth);
        sushiswap_pair_dto->reserve_eth = NULL;
    }
    if (sushiswap_pair_dto->reserve_usd) {
        free(sushiswap_pair_dto->reserve_usd);
        sushiswap_pair_dto->reserve_usd = NULL;
    }
    if (sushiswap_pair_dto->tracked_reserve_eth) {
        free(sushiswap_pair_dto->tracked_reserve_eth);
        sushiswap_pair_dto->tracked_reserve_eth = NULL;
    }
    if (sushiswap_pair_dto->token_0_price) {
        free(sushiswap_pair_dto->token_0_price);
        sushiswap_pair_dto->token_0_price = NULL;
    }
    if (sushiswap_pair_dto->token_1_price) {
        free(sushiswap_pair_dto->token_1_price);
        sushiswap_pair_dto->token_1_price = NULL;
    }
    if (sushiswap_pair_dto->volume_token_0) {
        free(sushiswap_pair_dto->volume_token_0);
        sushiswap_pair_dto->volume_token_0 = NULL;
    }
    if (sushiswap_pair_dto->volume_token_1) {
        free(sushiswap_pair_dto->volume_token_1);
        sushiswap_pair_dto->volume_token_1 = NULL;
    }
    if (sushiswap_pair_dto->volume_usd) {
        free(sushiswap_pair_dto->volume_usd);
        sushiswap_pair_dto->volume_usd = NULL;
    }
    if (sushiswap_pair_dto->untracked_volume_usd) {
        free(sushiswap_pair_dto->untracked_volume_usd);
        sushiswap_pair_dto->untracked_volume_usd = NULL;
    }
    if (sushiswap_pair_dto->tx_count) {
        free(sushiswap_pair_dto->tx_count);
        sushiswap_pair_dto->tx_count = NULL;
    }
    if (sushiswap_pair_dto->liquidity_provider_count) {
        free(sushiswap_pair_dto->liquidity_provider_count);
        sushiswap_pair_dto->liquidity_provider_count = NULL;
    }
    if (sushiswap_pair_dto->timestamp) {
        free(sushiswap_pair_dto->timestamp);
        sushiswap_pair_dto->timestamp = NULL;
    }
    if (sushiswap_pair_dto->block) {
        free(sushiswap_pair_dto->block);
        sushiswap_pair_dto->block = NULL;
    }
    free(sushiswap_pair_dto);
}

cJSON *sushiswap_pair_dto_convertToJSON(sushiswap_pair_dto_t *sushiswap_pair_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_pair_dto->entry_time
    if(sushiswap_pair_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_pair_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_pair_dto->recv_time
    if(sushiswap_pair_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_pair_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_pair_dto->block_number
    if(sushiswap_pair_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_pair_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_pair_dto->id
    if(sushiswap_pair_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_pair_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->factory
    if(sushiswap_pair_dto->factory) {
    if(cJSON_AddStringToObject(item, "factory", sushiswap_pair_dto->factory) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->name
    if(sushiswap_pair_dto->name) {
    if(cJSON_AddStringToObject(item, "name", sushiswap_pair_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->token_0
    if(sushiswap_pair_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", sushiswap_pair_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->token_1
    if(sushiswap_pair_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", sushiswap_pair_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->reserve_0
    if(sushiswap_pair_dto->reserve_0) {
    if(cJSON_AddStringToObject(item, "reserve_0", sushiswap_pair_dto->reserve_0) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->reserve_1
    if(sushiswap_pair_dto->reserve_1) {
    if(cJSON_AddStringToObject(item, "reserve_1", sushiswap_pair_dto->reserve_1) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->total_supply
    if(sushiswap_pair_dto->total_supply) {
    if(cJSON_AddStringToObject(item, "total_supply", sushiswap_pair_dto->total_supply) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->reserve_eth
    if(sushiswap_pair_dto->reserve_eth) {
    if(cJSON_AddStringToObject(item, "reserve_eth", sushiswap_pair_dto->reserve_eth) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->reserve_usd
    if(sushiswap_pair_dto->reserve_usd) {
    if(cJSON_AddStringToObject(item, "reserve_usd", sushiswap_pair_dto->reserve_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->tracked_reserve_eth
    if(sushiswap_pair_dto->tracked_reserve_eth) {
    if(cJSON_AddStringToObject(item, "tracked_reserve_eth", sushiswap_pair_dto->tracked_reserve_eth) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->token_0_price
    if(sushiswap_pair_dto->token_0_price) {
    if(cJSON_AddStringToObject(item, "token_0_price", sushiswap_pair_dto->token_0_price) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->token_1_price
    if(sushiswap_pair_dto->token_1_price) {
    if(cJSON_AddStringToObject(item, "token_1_price", sushiswap_pair_dto->token_1_price) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->volume_token_0
    if(sushiswap_pair_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", sushiswap_pair_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->volume_token_1
    if(sushiswap_pair_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", sushiswap_pair_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->volume_usd
    if(sushiswap_pair_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", sushiswap_pair_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->untracked_volume_usd
    if(sushiswap_pair_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", sushiswap_pair_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->tx_count
    if(sushiswap_pair_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", sushiswap_pair_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->liquidity_provider_count
    if(sushiswap_pair_dto->liquidity_provider_count) {
    if(cJSON_AddStringToObject(item, "liquidity_provider_count", sushiswap_pair_dto->liquidity_provider_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->timestamp
    if(sushiswap_pair_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", sushiswap_pair_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->block
    if(sushiswap_pair_dto->block) {
    if(cJSON_AddStringToObject(item, "block", sushiswap_pair_dto->block) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_pair_dto->vid
    if(sushiswap_pair_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_pair_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_pair_dto->evaluated_ask
    if(sushiswap_pair_dto->evaluated_ask) {
    if(cJSON_AddNumberToObject(item, "evaluated_ask", sushiswap_pair_dto->evaluated_ask) == NULL) {
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

sushiswap_pair_dto_t *sushiswap_pair_dto_parseFromJSON(cJSON *sushiswap_pair_dtoJSON){

    sushiswap_pair_dto_t *sushiswap_pair_dto_local_var = NULL;

    // sushiswap_pair_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_pair_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_pair_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_pair_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->factory
    cJSON *factory = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "factory");
    if (factory) { 
    if(!cJSON_IsString(factory) && !cJSON_IsNull(factory))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0) && !cJSON_IsNull(token_0))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1) && !cJSON_IsNull(token_1))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->reserve_0
    cJSON *reserve_0 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "reserve_0");
    if (reserve_0) { 
    if(!cJSON_IsString(reserve_0) && !cJSON_IsNull(reserve_0))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->reserve_1
    cJSON *reserve_1 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "reserve_1");
    if (reserve_1) { 
    if(!cJSON_IsString(reserve_1) && !cJSON_IsNull(reserve_1))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "total_supply");
    if (total_supply) { 
    if(!cJSON_IsString(total_supply) && !cJSON_IsNull(total_supply))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->reserve_eth
    cJSON *reserve_eth = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "reserve_eth");
    if (reserve_eth) { 
    if(!cJSON_IsString(reserve_eth) && !cJSON_IsNull(reserve_eth))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->reserve_usd
    cJSON *reserve_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "reserve_usd");
    if (reserve_usd) { 
    if(!cJSON_IsString(reserve_usd) && !cJSON_IsNull(reserve_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->tracked_reserve_eth
    cJSON *tracked_reserve_eth = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "tracked_reserve_eth");
    if (tracked_reserve_eth) { 
    if(!cJSON_IsString(tracked_reserve_eth) && !cJSON_IsNull(tracked_reserve_eth))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->token_0_price
    cJSON *token_0_price = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "token_0_price");
    if (token_0_price) { 
    if(!cJSON_IsString(token_0_price) && !cJSON_IsNull(token_0_price))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->token_1_price
    cJSON *token_1_price = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "token_1_price");
    if (token_1_price) { 
    if(!cJSON_IsString(token_1_price) && !cJSON_IsNull(token_1_price))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0) && !cJSON_IsNull(volume_token_0))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1) && !cJSON_IsNull(volume_token_1))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd) && !cJSON_IsNull(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count) && !cJSON_IsNull(tx_count))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->liquidity_provider_count
    cJSON *liquidity_provider_count = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "liquidity_provider_count");
    if (liquidity_provider_count) { 
    if(!cJSON_IsString(liquidity_provider_count) && !cJSON_IsNull(liquidity_provider_count))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->block
    cJSON *block = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "block");
    if (block) { 
    if(!cJSON_IsString(block) && !cJSON_IsNull(block))
    {
    goto end; //String
    }
    }

    // sushiswap_pair_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_pair_dto->evaluated_ask
    cJSON *evaluated_ask = cJSON_GetObjectItemCaseSensitive(sushiswap_pair_dtoJSON, "evaluated_ask");
    if (evaluated_ask) { 
    if(!cJSON_IsNumber(evaluated_ask))
    {
    goto end; //Numeric
    }
    }


    sushiswap_pair_dto_local_var = sushiswap_pair_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        factory && !cJSON_IsNull(factory) ? strdup(factory->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        token_0 && !cJSON_IsNull(token_0) ? strdup(token_0->valuestring) : NULL,
        token_1 && !cJSON_IsNull(token_1) ? strdup(token_1->valuestring) : NULL,
        reserve_0 && !cJSON_IsNull(reserve_0) ? strdup(reserve_0->valuestring) : NULL,
        reserve_1 && !cJSON_IsNull(reserve_1) ? strdup(reserve_1->valuestring) : NULL,
        total_supply && !cJSON_IsNull(total_supply) ? strdup(total_supply->valuestring) : NULL,
        reserve_eth && !cJSON_IsNull(reserve_eth) ? strdup(reserve_eth->valuestring) : NULL,
        reserve_usd && !cJSON_IsNull(reserve_usd) ? strdup(reserve_usd->valuestring) : NULL,
        tracked_reserve_eth && !cJSON_IsNull(tracked_reserve_eth) ? strdup(tracked_reserve_eth->valuestring) : NULL,
        token_0_price && !cJSON_IsNull(token_0_price) ? strdup(token_0_price->valuestring) : NULL,
        token_1_price && !cJSON_IsNull(token_1_price) ? strdup(token_1_price->valuestring) : NULL,
        volume_token_0 && !cJSON_IsNull(volume_token_0) ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 && !cJSON_IsNull(volume_token_1) ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd && !cJSON_IsNull(untracked_volume_usd) ? strdup(untracked_volume_usd->valuestring) : NULL,
        tx_count && !cJSON_IsNull(tx_count) ? strdup(tx_count->valuestring) : NULL,
        liquidity_provider_count && !cJSON_IsNull(liquidity_provider_count) ? strdup(liquidity_provider_count->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        block && !cJSON_IsNull(block) ? strdup(block->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        evaluated_ask ? evaluated_ask->valuedouble : 0
        );

    return sushiswap_pair_dto_local_var;
end:
    return NULL;

}
