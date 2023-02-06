#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_tick_dto.h"



uniswap_v3_tick_dto_t *uniswap_v3_tick_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *pool_address,
    numerics_big_integer_t *tick_idx,
    char *pool,
    numerics_big_integer_t *liquidity_gross,
    numerics_big_integer_t *liquidity_net,
    char *price_0,
    char *price_1,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *untracked_volume_usd,
    char *fees_usd,
    char *collected_fees_token_0,
    char *collected_fees_token_1,
    char *collected_fees_usd,
    char *created_at_timestamp,
    numerics_big_integer_t *liquidity_provider_count,
    numerics_big_integer_t *fee_growth_outside_0x128,
    numerics_big_integer_t *fee_growth_outside_1x128
    ) {
    uniswap_v3_tick_dto_t *uniswap_v3_tick_dto_local_var = malloc(sizeof(uniswap_v3_tick_dto_t));
    if (!uniswap_v3_tick_dto_local_var) {
        return NULL;
    }
    uniswap_v3_tick_dto_local_var->entry_time = entry_time;
    uniswap_v3_tick_dto_local_var->recv_time = recv_time;
    uniswap_v3_tick_dto_local_var->block_number = block_number;
    uniswap_v3_tick_dto_local_var->vid = vid;
    uniswap_v3_tick_dto_local_var->id = id;
    uniswap_v3_tick_dto_local_var->pool_address = pool_address;
    uniswap_v3_tick_dto_local_var->tick_idx = tick_idx;
    uniswap_v3_tick_dto_local_var->pool = pool;
    uniswap_v3_tick_dto_local_var->liquidity_gross = liquidity_gross;
    uniswap_v3_tick_dto_local_var->liquidity_net = liquidity_net;
    uniswap_v3_tick_dto_local_var->price_0 = price_0;
    uniswap_v3_tick_dto_local_var->price_1 = price_1;
    uniswap_v3_tick_dto_local_var->volume_token_0 = volume_token_0;
    uniswap_v3_tick_dto_local_var->volume_token_1 = volume_token_1;
    uniswap_v3_tick_dto_local_var->volume_usd = volume_usd;
    uniswap_v3_tick_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    uniswap_v3_tick_dto_local_var->fees_usd = fees_usd;
    uniswap_v3_tick_dto_local_var->collected_fees_token_0 = collected_fees_token_0;
    uniswap_v3_tick_dto_local_var->collected_fees_token_1 = collected_fees_token_1;
    uniswap_v3_tick_dto_local_var->collected_fees_usd = collected_fees_usd;
    uniswap_v3_tick_dto_local_var->created_at_timestamp = created_at_timestamp;
    uniswap_v3_tick_dto_local_var->liquidity_provider_count = liquidity_provider_count;
    uniswap_v3_tick_dto_local_var->fee_growth_outside_0x128 = fee_growth_outside_0x128;
    uniswap_v3_tick_dto_local_var->fee_growth_outside_1x128 = fee_growth_outside_1x128;

    return uniswap_v3_tick_dto_local_var;
}


void uniswap_v3_tick_dto_free(uniswap_v3_tick_dto_t *uniswap_v3_tick_dto) {
    if(NULL == uniswap_v3_tick_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_tick_dto->entry_time) {
        free(uniswap_v3_tick_dto->entry_time);
        uniswap_v3_tick_dto->entry_time = NULL;
    }
    if (uniswap_v3_tick_dto->recv_time) {
        free(uniswap_v3_tick_dto->recv_time);
        uniswap_v3_tick_dto->recv_time = NULL;
    }
    if (uniswap_v3_tick_dto->id) {
        free(uniswap_v3_tick_dto->id);
        uniswap_v3_tick_dto->id = NULL;
    }
    if (uniswap_v3_tick_dto->pool_address) {
        free(uniswap_v3_tick_dto->pool_address);
        uniswap_v3_tick_dto->pool_address = NULL;
    }
    if (uniswap_v3_tick_dto->tick_idx) {
        numerics_big_integer_free(uniswap_v3_tick_dto->tick_idx);
        uniswap_v3_tick_dto->tick_idx = NULL;
    }
    if (uniswap_v3_tick_dto->pool) {
        free(uniswap_v3_tick_dto->pool);
        uniswap_v3_tick_dto->pool = NULL;
    }
    if (uniswap_v3_tick_dto->liquidity_gross) {
        numerics_big_integer_free(uniswap_v3_tick_dto->liquidity_gross);
        uniswap_v3_tick_dto->liquidity_gross = NULL;
    }
    if (uniswap_v3_tick_dto->liquidity_net) {
        numerics_big_integer_free(uniswap_v3_tick_dto->liquidity_net);
        uniswap_v3_tick_dto->liquidity_net = NULL;
    }
    if (uniswap_v3_tick_dto->price_0) {
        free(uniswap_v3_tick_dto->price_0);
        uniswap_v3_tick_dto->price_0 = NULL;
    }
    if (uniswap_v3_tick_dto->price_1) {
        free(uniswap_v3_tick_dto->price_1);
        uniswap_v3_tick_dto->price_1 = NULL;
    }
    if (uniswap_v3_tick_dto->volume_token_0) {
        free(uniswap_v3_tick_dto->volume_token_0);
        uniswap_v3_tick_dto->volume_token_0 = NULL;
    }
    if (uniswap_v3_tick_dto->volume_token_1) {
        free(uniswap_v3_tick_dto->volume_token_1);
        uniswap_v3_tick_dto->volume_token_1 = NULL;
    }
    if (uniswap_v3_tick_dto->volume_usd) {
        free(uniswap_v3_tick_dto->volume_usd);
        uniswap_v3_tick_dto->volume_usd = NULL;
    }
    if (uniswap_v3_tick_dto->untracked_volume_usd) {
        free(uniswap_v3_tick_dto->untracked_volume_usd);
        uniswap_v3_tick_dto->untracked_volume_usd = NULL;
    }
    if (uniswap_v3_tick_dto->fees_usd) {
        free(uniswap_v3_tick_dto->fees_usd);
        uniswap_v3_tick_dto->fees_usd = NULL;
    }
    if (uniswap_v3_tick_dto->collected_fees_token_0) {
        free(uniswap_v3_tick_dto->collected_fees_token_0);
        uniswap_v3_tick_dto->collected_fees_token_0 = NULL;
    }
    if (uniswap_v3_tick_dto->collected_fees_token_1) {
        free(uniswap_v3_tick_dto->collected_fees_token_1);
        uniswap_v3_tick_dto->collected_fees_token_1 = NULL;
    }
    if (uniswap_v3_tick_dto->collected_fees_usd) {
        free(uniswap_v3_tick_dto->collected_fees_usd);
        uniswap_v3_tick_dto->collected_fees_usd = NULL;
    }
    if (uniswap_v3_tick_dto->created_at_timestamp) {
        free(uniswap_v3_tick_dto->created_at_timestamp);
        uniswap_v3_tick_dto->created_at_timestamp = NULL;
    }
    if (uniswap_v3_tick_dto->liquidity_provider_count) {
        numerics_big_integer_free(uniswap_v3_tick_dto->liquidity_provider_count);
        uniswap_v3_tick_dto->liquidity_provider_count = NULL;
    }
    if (uniswap_v3_tick_dto->fee_growth_outside_0x128) {
        numerics_big_integer_free(uniswap_v3_tick_dto->fee_growth_outside_0x128);
        uniswap_v3_tick_dto->fee_growth_outside_0x128 = NULL;
    }
    if (uniswap_v3_tick_dto->fee_growth_outside_1x128) {
        numerics_big_integer_free(uniswap_v3_tick_dto->fee_growth_outside_1x128);
        uniswap_v3_tick_dto->fee_growth_outside_1x128 = NULL;
    }
    free(uniswap_v3_tick_dto);
}

cJSON *uniswap_v3_tick_dto_convertToJSON(uniswap_v3_tick_dto_t *uniswap_v3_tick_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_tick_dto->entry_time
    if(uniswap_v3_tick_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_tick_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_tick_dto->recv_time
    if(uniswap_v3_tick_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_tick_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_tick_dto->block_number
    if(uniswap_v3_tick_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_tick_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_tick_dto->vid
    if(uniswap_v3_tick_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_tick_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_tick_dto->id
    if(uniswap_v3_tick_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_tick_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->pool_address
    if(uniswap_v3_tick_dto->pool_address) {
    if(cJSON_AddStringToObject(item, "pool_address", uniswap_v3_tick_dto->pool_address) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->tick_idx
    if(uniswap_v3_tick_dto->tick_idx) {
    cJSON *tick_idx_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_tick_dto->tick_idx);
    if(tick_idx_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tick_idx", tick_idx_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_tick_dto->pool
    if(uniswap_v3_tick_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", uniswap_v3_tick_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->liquidity_gross
    if(uniswap_v3_tick_dto->liquidity_gross) {
    cJSON *liquidity_gross_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_tick_dto->liquidity_gross);
    if(liquidity_gross_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "liquidity_gross", liquidity_gross_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_tick_dto->liquidity_net
    if(uniswap_v3_tick_dto->liquidity_net) {
    cJSON *liquidity_net_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_tick_dto->liquidity_net);
    if(liquidity_net_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "liquidity_net", liquidity_net_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_tick_dto->price_0
    if(uniswap_v3_tick_dto->price_0) {
    if(cJSON_AddStringToObject(item, "price_0", uniswap_v3_tick_dto->price_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->price_1
    if(uniswap_v3_tick_dto->price_1) {
    if(cJSON_AddStringToObject(item, "price_1", uniswap_v3_tick_dto->price_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->volume_token_0
    if(uniswap_v3_tick_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", uniswap_v3_tick_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->volume_token_1
    if(uniswap_v3_tick_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", uniswap_v3_tick_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->volume_usd
    if(uniswap_v3_tick_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", uniswap_v3_tick_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->untracked_volume_usd
    if(uniswap_v3_tick_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", uniswap_v3_tick_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->fees_usd
    if(uniswap_v3_tick_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", uniswap_v3_tick_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->collected_fees_token_0
    if(uniswap_v3_tick_dto->collected_fees_token_0) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_0", uniswap_v3_tick_dto->collected_fees_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->collected_fees_token_1
    if(uniswap_v3_tick_dto->collected_fees_token_1) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_1", uniswap_v3_tick_dto->collected_fees_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->collected_fees_usd
    if(uniswap_v3_tick_dto->collected_fees_usd) {
    if(cJSON_AddStringToObject(item, "collected_fees_usd", uniswap_v3_tick_dto->collected_fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_dto->created_at_timestamp
    if(uniswap_v3_tick_dto->created_at_timestamp) {
    if(cJSON_AddStringToObject(item, "created_at_timestamp", uniswap_v3_tick_dto->created_at_timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_tick_dto->liquidity_provider_count
    if(uniswap_v3_tick_dto->liquidity_provider_count) {
    cJSON *liquidity_provider_count_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_tick_dto->liquidity_provider_count);
    if(liquidity_provider_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "liquidity_provider_count", liquidity_provider_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_tick_dto->fee_growth_outside_0x128
    if(uniswap_v3_tick_dto->fee_growth_outside_0x128) {
    cJSON *fee_growth_outside_0x128_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_tick_dto->fee_growth_outside_0x128);
    if(fee_growth_outside_0x128_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_growth_outside_0x128", fee_growth_outside_0x128_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_tick_dto->fee_growth_outside_1x128
    if(uniswap_v3_tick_dto->fee_growth_outside_1x128) {
    cJSON *fee_growth_outside_1x128_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_tick_dto->fee_growth_outside_1x128);
    if(fee_growth_outside_1x128_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_growth_outside_1x128", fee_growth_outside_1x128_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

uniswap_v3_tick_dto_t *uniswap_v3_tick_dto_parseFromJSON(cJSON *uniswap_v3_tick_dtoJSON){

    uniswap_v3_tick_dto_t *uniswap_v3_tick_dto_local_var = NULL;

    // define the local variable for uniswap_v3_tick_dto->tick_idx
    numerics_big_integer_t *tick_idx_local_nonprim = NULL;

    // define the local variable for uniswap_v3_tick_dto->liquidity_gross
    numerics_big_integer_t *liquidity_gross_local_nonprim = NULL;

    // define the local variable for uniswap_v3_tick_dto->liquidity_net
    numerics_big_integer_t *liquidity_net_local_nonprim = NULL;

    // define the local variable for uniswap_v3_tick_dto->liquidity_provider_count
    numerics_big_integer_t *liquidity_provider_count_local_nonprim = NULL;

    // define the local variable for uniswap_v3_tick_dto->fee_growth_outside_0x128
    numerics_big_integer_t *fee_growth_outside_0x128_local_nonprim = NULL;

    // define the local variable for uniswap_v3_tick_dto->fee_growth_outside_1x128
    numerics_big_integer_t *fee_growth_outside_1x128_local_nonprim = NULL;

    // uniswap_v3_tick_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_tick_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_tick_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_tick_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_tick_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->pool_address
    cJSON *pool_address = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "pool_address");
    if (pool_address) { 
    if(!cJSON_IsString(pool_address) && !cJSON_IsNull(pool_address))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->tick_idx
    cJSON *tick_idx = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "tick_idx");
    if (tick_idx) { 
    tick_idx_local_nonprim = numerics_big_integer_parseFromJSON(tick_idx); //nonprimitive
    }

    // uniswap_v3_tick_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->liquidity_gross
    cJSON *liquidity_gross = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "liquidity_gross");
    if (liquidity_gross) { 
    liquidity_gross_local_nonprim = numerics_big_integer_parseFromJSON(liquidity_gross); //nonprimitive
    }

    // uniswap_v3_tick_dto->liquidity_net
    cJSON *liquidity_net = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "liquidity_net");
    if (liquidity_net) { 
    liquidity_net_local_nonprim = numerics_big_integer_parseFromJSON(liquidity_net); //nonprimitive
    }

    // uniswap_v3_tick_dto->price_0
    cJSON *price_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "price_0");
    if (price_0) { 
    if(!cJSON_IsString(price_0) && !cJSON_IsNull(price_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->price_1
    cJSON *price_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "price_1");
    if (price_1) { 
    if(!cJSON_IsString(price_1) && !cJSON_IsNull(price_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0) && !cJSON_IsNull(volume_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1) && !cJSON_IsNull(volume_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd) && !cJSON_IsNull(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd) && !cJSON_IsNull(fees_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->collected_fees_token_0
    cJSON *collected_fees_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "collected_fees_token_0");
    if (collected_fees_token_0) { 
    if(!cJSON_IsString(collected_fees_token_0) && !cJSON_IsNull(collected_fees_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->collected_fees_token_1
    cJSON *collected_fees_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "collected_fees_token_1");
    if (collected_fees_token_1) { 
    if(!cJSON_IsString(collected_fees_token_1) && !cJSON_IsNull(collected_fees_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->collected_fees_usd
    cJSON *collected_fees_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "collected_fees_usd");
    if (collected_fees_usd) { 
    if(!cJSON_IsString(collected_fees_usd) && !cJSON_IsNull(collected_fees_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_dto->created_at_timestamp
    cJSON *created_at_timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "created_at_timestamp");
    if (created_at_timestamp) { 
    if(!cJSON_IsString(created_at_timestamp) && !cJSON_IsNull(created_at_timestamp))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_tick_dto->liquidity_provider_count
    cJSON *liquidity_provider_count = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "liquidity_provider_count");
    if (liquidity_provider_count) { 
    liquidity_provider_count_local_nonprim = numerics_big_integer_parseFromJSON(liquidity_provider_count); //nonprimitive
    }

    // uniswap_v3_tick_dto->fee_growth_outside_0x128
    cJSON *fee_growth_outside_0x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "fee_growth_outside_0x128");
    if (fee_growth_outside_0x128) { 
    fee_growth_outside_0x128_local_nonprim = numerics_big_integer_parseFromJSON(fee_growth_outside_0x128); //nonprimitive
    }

    // uniswap_v3_tick_dto->fee_growth_outside_1x128
    cJSON *fee_growth_outside_1x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_dtoJSON, "fee_growth_outside_1x128");
    if (fee_growth_outside_1x128) { 
    fee_growth_outside_1x128_local_nonprim = numerics_big_integer_parseFromJSON(fee_growth_outside_1x128); //nonprimitive
    }


    uniswap_v3_tick_dto_local_var = uniswap_v3_tick_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        pool_address && !cJSON_IsNull(pool_address) ? strdup(pool_address->valuestring) : NULL,
        tick_idx ? tick_idx_local_nonprim : NULL,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        liquidity_gross ? liquidity_gross_local_nonprim : NULL,
        liquidity_net ? liquidity_net_local_nonprim : NULL,
        price_0 && !cJSON_IsNull(price_0) ? strdup(price_0->valuestring) : NULL,
        price_1 && !cJSON_IsNull(price_1) ? strdup(price_1->valuestring) : NULL,
        volume_token_0 && !cJSON_IsNull(volume_token_0) ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 && !cJSON_IsNull(volume_token_1) ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd && !cJSON_IsNull(untracked_volume_usd) ? strdup(untracked_volume_usd->valuestring) : NULL,
        fees_usd && !cJSON_IsNull(fees_usd) ? strdup(fees_usd->valuestring) : NULL,
        collected_fees_token_0 && !cJSON_IsNull(collected_fees_token_0) ? strdup(collected_fees_token_0->valuestring) : NULL,
        collected_fees_token_1 && !cJSON_IsNull(collected_fees_token_1) ? strdup(collected_fees_token_1->valuestring) : NULL,
        collected_fees_usd && !cJSON_IsNull(collected_fees_usd) ? strdup(collected_fees_usd->valuestring) : NULL,
        created_at_timestamp && !cJSON_IsNull(created_at_timestamp) ? strdup(created_at_timestamp->valuestring) : NULL,
        liquidity_provider_count ? liquidity_provider_count_local_nonprim : NULL,
        fee_growth_outside_0x128 ? fee_growth_outside_0x128_local_nonprim : NULL,
        fee_growth_outside_1x128 ? fee_growth_outside_1x128_local_nonprim : NULL
        );

    return uniswap_v3_tick_dto_local_var;
end:
    if (tick_idx_local_nonprim) {
        numerics_big_integer_free(tick_idx_local_nonprim);
        tick_idx_local_nonprim = NULL;
    }
    if (liquidity_gross_local_nonprim) {
        numerics_big_integer_free(liquidity_gross_local_nonprim);
        liquidity_gross_local_nonprim = NULL;
    }
    if (liquidity_net_local_nonprim) {
        numerics_big_integer_free(liquidity_net_local_nonprim);
        liquidity_net_local_nonprim = NULL;
    }
    if (liquidity_provider_count_local_nonprim) {
        numerics_big_integer_free(liquidity_provider_count_local_nonprim);
        liquidity_provider_count_local_nonprim = NULL;
    }
    if (fee_growth_outside_0x128_local_nonprim) {
        numerics_big_integer_free(fee_growth_outside_0x128_local_nonprim);
        fee_growth_outside_0x128_local_nonprim = NULL;
    }
    if (fee_growth_outside_1x128_local_nonprim) {
        numerics_big_integer_free(fee_growth_outside_1x128_local_nonprim);
        fee_growth_outside_1x128_local_nonprim = NULL;
    }
    return NULL;

}
