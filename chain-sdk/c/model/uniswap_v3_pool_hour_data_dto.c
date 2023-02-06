#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_pool_hour_data_dto.h"



uniswap_v3_pool_hour_data_dto_t *uniswap_v3_pool_hour_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int period_start_unix,
    char *pool,
    char *liquidity,
    char *sqrt_price,
    char *token_0_price,
    char *token_1_price,
    char *tick,
    char *fee_growth_global_0x128,
    char *fee_growth_global_1x128,
    char *tvl_usd,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *fees_usd,
    char *tx_count,
    char *open,
    char *high,
    char *low,
    char *close,
    long vid
    ) {
    uniswap_v3_pool_hour_data_dto_t *uniswap_v3_pool_hour_data_dto_local_var = malloc(sizeof(uniswap_v3_pool_hour_data_dto_t));
    if (!uniswap_v3_pool_hour_data_dto_local_var) {
        return NULL;
    }
    uniswap_v3_pool_hour_data_dto_local_var->entry_time = entry_time;
    uniswap_v3_pool_hour_data_dto_local_var->recv_time = recv_time;
    uniswap_v3_pool_hour_data_dto_local_var->block_number = block_number;
    uniswap_v3_pool_hour_data_dto_local_var->id = id;
    uniswap_v3_pool_hour_data_dto_local_var->period_start_unix = period_start_unix;
    uniswap_v3_pool_hour_data_dto_local_var->pool = pool;
    uniswap_v3_pool_hour_data_dto_local_var->liquidity = liquidity;
    uniswap_v3_pool_hour_data_dto_local_var->sqrt_price = sqrt_price;
    uniswap_v3_pool_hour_data_dto_local_var->token_0_price = token_0_price;
    uniswap_v3_pool_hour_data_dto_local_var->token_1_price = token_1_price;
    uniswap_v3_pool_hour_data_dto_local_var->tick = tick;
    uniswap_v3_pool_hour_data_dto_local_var->fee_growth_global_0x128 = fee_growth_global_0x128;
    uniswap_v3_pool_hour_data_dto_local_var->fee_growth_global_1x128 = fee_growth_global_1x128;
    uniswap_v3_pool_hour_data_dto_local_var->tvl_usd = tvl_usd;
    uniswap_v3_pool_hour_data_dto_local_var->volume_token_0 = volume_token_0;
    uniswap_v3_pool_hour_data_dto_local_var->volume_token_1 = volume_token_1;
    uniswap_v3_pool_hour_data_dto_local_var->volume_usd = volume_usd;
    uniswap_v3_pool_hour_data_dto_local_var->fees_usd = fees_usd;
    uniswap_v3_pool_hour_data_dto_local_var->tx_count = tx_count;
    uniswap_v3_pool_hour_data_dto_local_var->open = open;
    uniswap_v3_pool_hour_data_dto_local_var->high = high;
    uniswap_v3_pool_hour_data_dto_local_var->low = low;
    uniswap_v3_pool_hour_data_dto_local_var->close = close;
    uniswap_v3_pool_hour_data_dto_local_var->vid = vid;

    return uniswap_v3_pool_hour_data_dto_local_var;
}


void uniswap_v3_pool_hour_data_dto_free(uniswap_v3_pool_hour_data_dto_t *uniswap_v3_pool_hour_data_dto) {
    if(NULL == uniswap_v3_pool_hour_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_pool_hour_data_dto->entry_time) {
        free(uniswap_v3_pool_hour_data_dto->entry_time);
        uniswap_v3_pool_hour_data_dto->entry_time = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->recv_time) {
        free(uniswap_v3_pool_hour_data_dto->recv_time);
        uniswap_v3_pool_hour_data_dto->recv_time = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->id) {
        free(uniswap_v3_pool_hour_data_dto->id);
        uniswap_v3_pool_hour_data_dto->id = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->pool) {
        free(uniswap_v3_pool_hour_data_dto->pool);
        uniswap_v3_pool_hour_data_dto->pool = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->liquidity) {
        free(uniswap_v3_pool_hour_data_dto->liquidity);
        uniswap_v3_pool_hour_data_dto->liquidity = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->sqrt_price) {
        free(uniswap_v3_pool_hour_data_dto->sqrt_price);
        uniswap_v3_pool_hour_data_dto->sqrt_price = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->token_0_price) {
        free(uniswap_v3_pool_hour_data_dto->token_0_price);
        uniswap_v3_pool_hour_data_dto->token_0_price = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->token_1_price) {
        free(uniswap_v3_pool_hour_data_dto->token_1_price);
        uniswap_v3_pool_hour_data_dto->token_1_price = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->tick) {
        free(uniswap_v3_pool_hour_data_dto->tick);
        uniswap_v3_pool_hour_data_dto->tick = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->fee_growth_global_0x128) {
        free(uniswap_v3_pool_hour_data_dto->fee_growth_global_0x128);
        uniswap_v3_pool_hour_data_dto->fee_growth_global_0x128 = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->fee_growth_global_1x128) {
        free(uniswap_v3_pool_hour_data_dto->fee_growth_global_1x128);
        uniswap_v3_pool_hour_data_dto->fee_growth_global_1x128 = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->tvl_usd) {
        free(uniswap_v3_pool_hour_data_dto->tvl_usd);
        uniswap_v3_pool_hour_data_dto->tvl_usd = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->volume_token_0) {
        free(uniswap_v3_pool_hour_data_dto->volume_token_0);
        uniswap_v3_pool_hour_data_dto->volume_token_0 = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->volume_token_1) {
        free(uniswap_v3_pool_hour_data_dto->volume_token_1);
        uniswap_v3_pool_hour_data_dto->volume_token_1 = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->volume_usd) {
        free(uniswap_v3_pool_hour_data_dto->volume_usd);
        uniswap_v3_pool_hour_data_dto->volume_usd = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->fees_usd) {
        free(uniswap_v3_pool_hour_data_dto->fees_usd);
        uniswap_v3_pool_hour_data_dto->fees_usd = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->tx_count) {
        free(uniswap_v3_pool_hour_data_dto->tx_count);
        uniswap_v3_pool_hour_data_dto->tx_count = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->open) {
        free(uniswap_v3_pool_hour_data_dto->open);
        uniswap_v3_pool_hour_data_dto->open = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->high) {
        free(uniswap_v3_pool_hour_data_dto->high);
        uniswap_v3_pool_hour_data_dto->high = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->low) {
        free(uniswap_v3_pool_hour_data_dto->low);
        uniswap_v3_pool_hour_data_dto->low = NULL;
    }
    if (uniswap_v3_pool_hour_data_dto->close) {
        free(uniswap_v3_pool_hour_data_dto->close);
        uniswap_v3_pool_hour_data_dto->close = NULL;
    }
    free(uniswap_v3_pool_hour_data_dto);
}

cJSON *uniswap_v3_pool_hour_data_dto_convertToJSON(uniswap_v3_pool_hour_data_dto_t *uniswap_v3_pool_hour_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_pool_hour_data_dto->entry_time
    if(uniswap_v3_pool_hour_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_pool_hour_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_pool_hour_data_dto->recv_time
    if(uniswap_v3_pool_hour_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_pool_hour_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_pool_hour_data_dto->block_number
    if(uniswap_v3_pool_hour_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_pool_hour_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_pool_hour_data_dto->id
    if(uniswap_v3_pool_hour_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_pool_hour_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->period_start_unix
    if(uniswap_v3_pool_hour_data_dto->period_start_unix) {
    if(cJSON_AddNumberToObject(item, "period_start_unix", uniswap_v3_pool_hour_data_dto->period_start_unix) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_pool_hour_data_dto->pool
    if(uniswap_v3_pool_hour_data_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", uniswap_v3_pool_hour_data_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->liquidity
    if(uniswap_v3_pool_hour_data_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", uniswap_v3_pool_hour_data_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->sqrt_price
    if(uniswap_v3_pool_hour_data_dto->sqrt_price) {
    if(cJSON_AddStringToObject(item, "sqrt_price", uniswap_v3_pool_hour_data_dto->sqrt_price) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->token_0_price
    if(uniswap_v3_pool_hour_data_dto->token_0_price) {
    if(cJSON_AddStringToObject(item, "token_0_price", uniswap_v3_pool_hour_data_dto->token_0_price) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->token_1_price
    if(uniswap_v3_pool_hour_data_dto->token_1_price) {
    if(cJSON_AddStringToObject(item, "token_1_price", uniswap_v3_pool_hour_data_dto->token_1_price) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->tick
    if(uniswap_v3_pool_hour_data_dto->tick) {
    if(cJSON_AddStringToObject(item, "tick", uniswap_v3_pool_hour_data_dto->tick) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->fee_growth_global_0x128
    if(uniswap_v3_pool_hour_data_dto->fee_growth_global_0x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_global_0x128", uniswap_v3_pool_hour_data_dto->fee_growth_global_0x128) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->fee_growth_global_1x128
    if(uniswap_v3_pool_hour_data_dto->fee_growth_global_1x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_global_1x128", uniswap_v3_pool_hour_data_dto->fee_growth_global_1x128) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->tvl_usd
    if(uniswap_v3_pool_hour_data_dto->tvl_usd) {
    if(cJSON_AddStringToObject(item, "tvl_usd", uniswap_v3_pool_hour_data_dto->tvl_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->volume_token_0
    if(uniswap_v3_pool_hour_data_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", uniswap_v3_pool_hour_data_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->volume_token_1
    if(uniswap_v3_pool_hour_data_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", uniswap_v3_pool_hour_data_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->volume_usd
    if(uniswap_v3_pool_hour_data_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", uniswap_v3_pool_hour_data_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->fees_usd
    if(uniswap_v3_pool_hour_data_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", uniswap_v3_pool_hour_data_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->tx_count
    if(uniswap_v3_pool_hour_data_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", uniswap_v3_pool_hour_data_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->open
    if(uniswap_v3_pool_hour_data_dto->open) {
    if(cJSON_AddStringToObject(item, "open", uniswap_v3_pool_hour_data_dto->open) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->high
    if(uniswap_v3_pool_hour_data_dto->high) {
    if(cJSON_AddStringToObject(item, "high", uniswap_v3_pool_hour_data_dto->high) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->low
    if(uniswap_v3_pool_hour_data_dto->low) {
    if(cJSON_AddStringToObject(item, "low", uniswap_v3_pool_hour_data_dto->low) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->close
    if(uniswap_v3_pool_hour_data_dto->close) {
    if(cJSON_AddStringToObject(item, "close", uniswap_v3_pool_hour_data_dto->close) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_hour_data_dto->vid
    if(uniswap_v3_pool_hour_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_pool_hour_data_dto->vid) == NULL) {
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

uniswap_v3_pool_hour_data_dto_t *uniswap_v3_pool_hour_data_dto_parseFromJSON(cJSON *uniswap_v3_pool_hour_data_dtoJSON){

    uniswap_v3_pool_hour_data_dto_t *uniswap_v3_pool_hour_data_dto_local_var = NULL;

    // uniswap_v3_pool_hour_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_pool_hour_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_pool_hour_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_pool_hour_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->period_start_unix
    cJSON *period_start_unix = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "period_start_unix");
    if (period_start_unix) { 
    if(!cJSON_IsNumber(period_start_unix))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_pool_hour_data_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity) && !cJSON_IsNull(liquidity))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->sqrt_price
    cJSON *sqrt_price = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "sqrt_price");
    if (sqrt_price) { 
    if(!cJSON_IsString(sqrt_price) && !cJSON_IsNull(sqrt_price))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->token_0_price
    cJSON *token_0_price = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "token_0_price");
    if (token_0_price) { 
    if(!cJSON_IsString(token_0_price) && !cJSON_IsNull(token_0_price))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->token_1_price
    cJSON *token_1_price = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "token_1_price");
    if (token_1_price) { 
    if(!cJSON_IsString(token_1_price) && !cJSON_IsNull(token_1_price))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->tick
    cJSON *tick = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "tick");
    if (tick) { 
    if(!cJSON_IsString(tick) && !cJSON_IsNull(tick))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->fee_growth_global_0x128
    cJSON *fee_growth_global_0x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "fee_growth_global_0x128");
    if (fee_growth_global_0x128) { 
    if(!cJSON_IsString(fee_growth_global_0x128) && !cJSON_IsNull(fee_growth_global_0x128))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->fee_growth_global_1x128
    cJSON *fee_growth_global_1x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "fee_growth_global_1x128");
    if (fee_growth_global_1x128) { 
    if(!cJSON_IsString(fee_growth_global_1x128) && !cJSON_IsNull(fee_growth_global_1x128))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->tvl_usd
    cJSON *tvl_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "tvl_usd");
    if (tvl_usd) { 
    if(!cJSON_IsString(tvl_usd) && !cJSON_IsNull(tvl_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0) && !cJSON_IsNull(volume_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1) && !cJSON_IsNull(volume_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd) && !cJSON_IsNull(fees_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count) && !cJSON_IsNull(tx_count))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->open
    cJSON *open = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "open");
    if (open) { 
    if(!cJSON_IsString(open) && !cJSON_IsNull(open))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->high
    cJSON *high = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "high");
    if (high) { 
    if(!cJSON_IsString(high) && !cJSON_IsNull(high))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->low
    cJSON *low = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "low");
    if (low) { 
    if(!cJSON_IsString(low) && !cJSON_IsNull(low))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->close
    cJSON *close = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "close");
    if (close) { 
    if(!cJSON_IsString(close) && !cJSON_IsNull(close))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_hour_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_hour_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v3_pool_hour_data_dto_local_var = uniswap_v3_pool_hour_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        period_start_unix ? period_start_unix->valuedouble : 0,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        liquidity && !cJSON_IsNull(liquidity) ? strdup(liquidity->valuestring) : NULL,
        sqrt_price && !cJSON_IsNull(sqrt_price) ? strdup(sqrt_price->valuestring) : NULL,
        token_0_price && !cJSON_IsNull(token_0_price) ? strdup(token_0_price->valuestring) : NULL,
        token_1_price && !cJSON_IsNull(token_1_price) ? strdup(token_1_price->valuestring) : NULL,
        tick && !cJSON_IsNull(tick) ? strdup(tick->valuestring) : NULL,
        fee_growth_global_0x128 && !cJSON_IsNull(fee_growth_global_0x128) ? strdup(fee_growth_global_0x128->valuestring) : NULL,
        fee_growth_global_1x128 && !cJSON_IsNull(fee_growth_global_1x128) ? strdup(fee_growth_global_1x128->valuestring) : NULL,
        tvl_usd && !cJSON_IsNull(tvl_usd) ? strdup(tvl_usd->valuestring) : NULL,
        volume_token_0 && !cJSON_IsNull(volume_token_0) ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 && !cJSON_IsNull(volume_token_1) ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        fees_usd && !cJSON_IsNull(fees_usd) ? strdup(fees_usd->valuestring) : NULL,
        tx_count && !cJSON_IsNull(tx_count) ? strdup(tx_count->valuestring) : NULL,
        open && !cJSON_IsNull(open) ? strdup(open->valuestring) : NULL,
        high && !cJSON_IsNull(high) ? strdup(high->valuestring) : NULL,
        low && !cJSON_IsNull(low) ? strdup(low->valuestring) : NULL,
        close && !cJSON_IsNull(close) ? strdup(close->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v3_pool_hour_data_dto_local_var;
end:
    return NULL;

}
