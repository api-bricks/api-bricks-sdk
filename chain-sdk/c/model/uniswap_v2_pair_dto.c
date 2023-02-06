#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_pair_dto.h"



uniswap_v2_pair_dto_t *uniswap_v2_pair_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
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
    numerics_big_integer_t *tx_count,
    char *created_at_timestamp,
    char *liquidity_provider_count,
    double evaluated_ask
    ) {
    uniswap_v2_pair_dto_t *uniswap_v2_pair_dto_local_var = malloc(sizeof(uniswap_v2_pair_dto_t));
    if (!uniswap_v2_pair_dto_local_var) {
        return NULL;
    }
    uniswap_v2_pair_dto_local_var->entry_time = entry_time;
    uniswap_v2_pair_dto_local_var->recv_time = recv_time;
    uniswap_v2_pair_dto_local_var->block_number = block_number;
    uniswap_v2_pair_dto_local_var->vid = vid;
    uniswap_v2_pair_dto_local_var->id = id;
    uniswap_v2_pair_dto_local_var->token_0 = token_0;
    uniswap_v2_pair_dto_local_var->token_1 = token_1;
    uniswap_v2_pair_dto_local_var->reserve_0 = reserve_0;
    uniswap_v2_pair_dto_local_var->reserve_1 = reserve_1;
    uniswap_v2_pair_dto_local_var->total_supply = total_supply;
    uniswap_v2_pair_dto_local_var->reserve_eth = reserve_eth;
    uniswap_v2_pair_dto_local_var->reserve_usd = reserve_usd;
    uniswap_v2_pair_dto_local_var->tracked_reserve_eth = tracked_reserve_eth;
    uniswap_v2_pair_dto_local_var->token_0_price = token_0_price;
    uniswap_v2_pair_dto_local_var->token_1_price = token_1_price;
    uniswap_v2_pair_dto_local_var->volume_token_0 = volume_token_0;
    uniswap_v2_pair_dto_local_var->volume_token_1 = volume_token_1;
    uniswap_v2_pair_dto_local_var->volume_usd = volume_usd;
    uniswap_v2_pair_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    uniswap_v2_pair_dto_local_var->tx_count = tx_count;
    uniswap_v2_pair_dto_local_var->created_at_timestamp = created_at_timestamp;
    uniswap_v2_pair_dto_local_var->liquidity_provider_count = liquidity_provider_count;
    uniswap_v2_pair_dto_local_var->evaluated_ask = evaluated_ask;

    return uniswap_v2_pair_dto_local_var;
}


void uniswap_v2_pair_dto_free(uniswap_v2_pair_dto_t *uniswap_v2_pair_dto) {
    if(NULL == uniswap_v2_pair_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_pair_dto->entry_time) {
        free(uniswap_v2_pair_dto->entry_time);
        uniswap_v2_pair_dto->entry_time = NULL;
    }
    if (uniswap_v2_pair_dto->recv_time) {
        free(uniswap_v2_pair_dto->recv_time);
        uniswap_v2_pair_dto->recv_time = NULL;
    }
    if (uniswap_v2_pair_dto->id) {
        free(uniswap_v2_pair_dto->id);
        uniswap_v2_pair_dto->id = NULL;
    }
    if (uniswap_v2_pair_dto->token_0) {
        free(uniswap_v2_pair_dto->token_0);
        uniswap_v2_pair_dto->token_0 = NULL;
    }
    if (uniswap_v2_pair_dto->token_1) {
        free(uniswap_v2_pair_dto->token_1);
        uniswap_v2_pair_dto->token_1 = NULL;
    }
    if (uniswap_v2_pair_dto->reserve_0) {
        free(uniswap_v2_pair_dto->reserve_0);
        uniswap_v2_pair_dto->reserve_0 = NULL;
    }
    if (uniswap_v2_pair_dto->reserve_1) {
        free(uniswap_v2_pair_dto->reserve_1);
        uniswap_v2_pair_dto->reserve_1 = NULL;
    }
    if (uniswap_v2_pair_dto->total_supply) {
        free(uniswap_v2_pair_dto->total_supply);
        uniswap_v2_pair_dto->total_supply = NULL;
    }
    if (uniswap_v2_pair_dto->reserve_eth) {
        free(uniswap_v2_pair_dto->reserve_eth);
        uniswap_v2_pair_dto->reserve_eth = NULL;
    }
    if (uniswap_v2_pair_dto->reserve_usd) {
        free(uniswap_v2_pair_dto->reserve_usd);
        uniswap_v2_pair_dto->reserve_usd = NULL;
    }
    if (uniswap_v2_pair_dto->tracked_reserve_eth) {
        free(uniswap_v2_pair_dto->tracked_reserve_eth);
        uniswap_v2_pair_dto->tracked_reserve_eth = NULL;
    }
    if (uniswap_v2_pair_dto->token_0_price) {
        free(uniswap_v2_pair_dto->token_0_price);
        uniswap_v2_pair_dto->token_0_price = NULL;
    }
    if (uniswap_v2_pair_dto->token_1_price) {
        free(uniswap_v2_pair_dto->token_1_price);
        uniswap_v2_pair_dto->token_1_price = NULL;
    }
    if (uniswap_v2_pair_dto->volume_token_0) {
        free(uniswap_v2_pair_dto->volume_token_0);
        uniswap_v2_pair_dto->volume_token_0 = NULL;
    }
    if (uniswap_v2_pair_dto->volume_token_1) {
        free(uniswap_v2_pair_dto->volume_token_1);
        uniswap_v2_pair_dto->volume_token_1 = NULL;
    }
    if (uniswap_v2_pair_dto->volume_usd) {
        free(uniswap_v2_pair_dto->volume_usd);
        uniswap_v2_pair_dto->volume_usd = NULL;
    }
    if (uniswap_v2_pair_dto->untracked_volume_usd) {
        free(uniswap_v2_pair_dto->untracked_volume_usd);
        uniswap_v2_pair_dto->untracked_volume_usd = NULL;
    }
    if (uniswap_v2_pair_dto->tx_count) {
        numerics_big_integer_free(uniswap_v2_pair_dto->tx_count);
        uniswap_v2_pair_dto->tx_count = NULL;
    }
    if (uniswap_v2_pair_dto->created_at_timestamp) {
        free(uniswap_v2_pair_dto->created_at_timestamp);
        uniswap_v2_pair_dto->created_at_timestamp = NULL;
    }
    if (uniswap_v2_pair_dto->liquidity_provider_count) {
        free(uniswap_v2_pair_dto->liquidity_provider_count);
        uniswap_v2_pair_dto->liquidity_provider_count = NULL;
    }
    free(uniswap_v2_pair_dto);
}

cJSON *uniswap_v2_pair_dto_convertToJSON(uniswap_v2_pair_dto_t *uniswap_v2_pair_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_pair_dto->entry_time
    if(uniswap_v2_pair_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_pair_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_pair_dto->recv_time
    if(uniswap_v2_pair_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_pair_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_pair_dto->block_number
    if(uniswap_v2_pair_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_pair_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_pair_dto->vid
    if(uniswap_v2_pair_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_pair_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_pair_dto->id
    if(uniswap_v2_pair_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_pair_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->token_0
    if(uniswap_v2_pair_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", uniswap_v2_pair_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->token_1
    if(uniswap_v2_pair_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", uniswap_v2_pair_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->reserve_0
    if(uniswap_v2_pair_dto->reserve_0) {
    if(cJSON_AddStringToObject(item, "reserve_0", uniswap_v2_pair_dto->reserve_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->reserve_1
    if(uniswap_v2_pair_dto->reserve_1) {
    if(cJSON_AddStringToObject(item, "reserve_1", uniswap_v2_pair_dto->reserve_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->total_supply
    if(uniswap_v2_pair_dto->total_supply) {
    if(cJSON_AddStringToObject(item, "total_supply", uniswap_v2_pair_dto->total_supply) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->reserve_eth
    if(uniswap_v2_pair_dto->reserve_eth) {
    if(cJSON_AddStringToObject(item, "reserve_eth", uniswap_v2_pair_dto->reserve_eth) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->reserve_usd
    if(uniswap_v2_pair_dto->reserve_usd) {
    if(cJSON_AddStringToObject(item, "reserve_usd", uniswap_v2_pair_dto->reserve_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->tracked_reserve_eth
    if(uniswap_v2_pair_dto->tracked_reserve_eth) {
    if(cJSON_AddStringToObject(item, "tracked_reserve_eth", uniswap_v2_pair_dto->tracked_reserve_eth) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->token_0_price
    if(uniswap_v2_pair_dto->token_0_price) {
    if(cJSON_AddStringToObject(item, "token_0_price", uniswap_v2_pair_dto->token_0_price) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->token_1_price
    if(uniswap_v2_pair_dto->token_1_price) {
    if(cJSON_AddStringToObject(item, "token_1_price", uniswap_v2_pair_dto->token_1_price) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->volume_token_0
    if(uniswap_v2_pair_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", uniswap_v2_pair_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->volume_token_1
    if(uniswap_v2_pair_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", uniswap_v2_pair_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->volume_usd
    if(uniswap_v2_pair_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", uniswap_v2_pair_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->untracked_volume_usd
    if(uniswap_v2_pair_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", uniswap_v2_pair_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->tx_count
    if(uniswap_v2_pair_dto->tx_count) {
    cJSON *tx_count_local_JSON = numerics_big_integer_convertToJSON(uniswap_v2_pair_dto->tx_count);
    if(tx_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tx_count", tx_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v2_pair_dto->created_at_timestamp
    if(uniswap_v2_pair_dto->created_at_timestamp) {
    if(cJSON_AddStringToObject(item, "created_at_timestamp", uniswap_v2_pair_dto->created_at_timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_pair_dto->liquidity_provider_count
    if(uniswap_v2_pair_dto->liquidity_provider_count) {
    if(cJSON_AddStringToObject(item, "liquidity_provider_count", uniswap_v2_pair_dto->liquidity_provider_count) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_pair_dto->evaluated_ask
    if(uniswap_v2_pair_dto->evaluated_ask) {
    if(cJSON_AddNumberToObject(item, "evaluated_ask", uniswap_v2_pair_dto->evaluated_ask) == NULL) {
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

uniswap_v2_pair_dto_t *uniswap_v2_pair_dto_parseFromJSON(cJSON *uniswap_v2_pair_dtoJSON){

    uniswap_v2_pair_dto_t *uniswap_v2_pair_dto_local_var = NULL;

    // define the local variable for uniswap_v2_pair_dto->tx_count
    numerics_big_integer_t *tx_count_local_nonprim = NULL;

    // uniswap_v2_pair_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_pair_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_pair_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_pair_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_pair_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0) && !cJSON_IsNull(token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1) && !cJSON_IsNull(token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->reserve_0
    cJSON *reserve_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "reserve_0");
    if (reserve_0) { 
    if(!cJSON_IsString(reserve_0) && !cJSON_IsNull(reserve_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->reserve_1
    cJSON *reserve_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "reserve_1");
    if (reserve_1) { 
    if(!cJSON_IsString(reserve_1) && !cJSON_IsNull(reserve_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "total_supply");
    if (total_supply) { 
    if(!cJSON_IsString(total_supply) && !cJSON_IsNull(total_supply))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->reserve_eth
    cJSON *reserve_eth = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "reserve_eth");
    if (reserve_eth) { 
    if(!cJSON_IsString(reserve_eth) && !cJSON_IsNull(reserve_eth))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->reserve_usd
    cJSON *reserve_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "reserve_usd");
    if (reserve_usd) { 
    if(!cJSON_IsString(reserve_usd) && !cJSON_IsNull(reserve_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->tracked_reserve_eth
    cJSON *tracked_reserve_eth = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "tracked_reserve_eth");
    if (tracked_reserve_eth) { 
    if(!cJSON_IsString(tracked_reserve_eth) && !cJSON_IsNull(tracked_reserve_eth))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->token_0_price
    cJSON *token_0_price = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "token_0_price");
    if (token_0_price) { 
    if(!cJSON_IsString(token_0_price) && !cJSON_IsNull(token_0_price))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->token_1_price
    cJSON *token_1_price = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "token_1_price");
    if (token_1_price) { 
    if(!cJSON_IsString(token_1_price) && !cJSON_IsNull(token_1_price))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0) && !cJSON_IsNull(volume_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1) && !cJSON_IsNull(volume_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd) && !cJSON_IsNull(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "tx_count");
    if (tx_count) { 
    tx_count_local_nonprim = numerics_big_integer_parseFromJSON(tx_count); //nonprimitive
    }

    // uniswap_v2_pair_dto->created_at_timestamp
    cJSON *created_at_timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "created_at_timestamp");
    if (created_at_timestamp) { 
    if(!cJSON_IsString(created_at_timestamp) && !cJSON_IsNull(created_at_timestamp))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_pair_dto->liquidity_provider_count
    cJSON *liquidity_provider_count = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "liquidity_provider_count");
    if (liquidity_provider_count) { 
    if(!cJSON_IsString(liquidity_provider_count) && !cJSON_IsNull(liquidity_provider_count))
    {
    goto end; //String
    }
    }

    // uniswap_v2_pair_dto->evaluated_ask
    cJSON *evaluated_ask = cJSON_GetObjectItemCaseSensitive(uniswap_v2_pair_dtoJSON, "evaluated_ask");
    if (evaluated_ask) { 
    if(!cJSON_IsNumber(evaluated_ask))
    {
    goto end; //Numeric
    }
    }


    uniswap_v2_pair_dto_local_var = uniswap_v2_pair_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
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
        tx_count ? tx_count_local_nonprim : NULL,
        created_at_timestamp && !cJSON_IsNull(created_at_timestamp) ? strdup(created_at_timestamp->valuestring) : NULL,
        liquidity_provider_count && !cJSON_IsNull(liquidity_provider_count) ? strdup(liquidity_provider_count->valuestring) : NULL,
        evaluated_ask ? evaluated_ask->valuedouble : 0
        );

    return uniswap_v2_pair_dto_local_var;
end:
    if (tx_count_local_nonprim) {
        numerics_big_integer_free(tx_count_local_nonprim);
        tx_count_local_nonprim = NULL;
    }
    return NULL;

}
