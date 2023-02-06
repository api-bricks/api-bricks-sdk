#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_tick_day_data_dto.h"



uniswap_v3_tick_day_data_dto_t *uniswap_v3_tick_day_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int date,
    char *pool,
    char *tick,
    char *liquidity_gross,
    char *liquidity_net,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *fees_usd,
    char *fee_growth_outside_0x128,
    char *fee_growth_outside_1x128,
    long vid
    ) {
    uniswap_v3_tick_day_data_dto_t *uniswap_v3_tick_day_data_dto_local_var = malloc(sizeof(uniswap_v3_tick_day_data_dto_t));
    if (!uniswap_v3_tick_day_data_dto_local_var) {
        return NULL;
    }
    uniswap_v3_tick_day_data_dto_local_var->entry_time = entry_time;
    uniswap_v3_tick_day_data_dto_local_var->recv_time = recv_time;
    uniswap_v3_tick_day_data_dto_local_var->block_number = block_number;
    uniswap_v3_tick_day_data_dto_local_var->id = id;
    uniswap_v3_tick_day_data_dto_local_var->date = date;
    uniswap_v3_tick_day_data_dto_local_var->pool = pool;
    uniswap_v3_tick_day_data_dto_local_var->tick = tick;
    uniswap_v3_tick_day_data_dto_local_var->liquidity_gross = liquidity_gross;
    uniswap_v3_tick_day_data_dto_local_var->liquidity_net = liquidity_net;
    uniswap_v3_tick_day_data_dto_local_var->volume_token_0 = volume_token_0;
    uniswap_v3_tick_day_data_dto_local_var->volume_token_1 = volume_token_1;
    uniswap_v3_tick_day_data_dto_local_var->volume_usd = volume_usd;
    uniswap_v3_tick_day_data_dto_local_var->fees_usd = fees_usd;
    uniswap_v3_tick_day_data_dto_local_var->fee_growth_outside_0x128 = fee_growth_outside_0x128;
    uniswap_v3_tick_day_data_dto_local_var->fee_growth_outside_1x128 = fee_growth_outside_1x128;
    uniswap_v3_tick_day_data_dto_local_var->vid = vid;

    return uniswap_v3_tick_day_data_dto_local_var;
}


void uniswap_v3_tick_day_data_dto_free(uniswap_v3_tick_day_data_dto_t *uniswap_v3_tick_day_data_dto) {
    if(NULL == uniswap_v3_tick_day_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_tick_day_data_dto->entry_time) {
        free(uniswap_v3_tick_day_data_dto->entry_time);
        uniswap_v3_tick_day_data_dto->entry_time = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->recv_time) {
        free(uniswap_v3_tick_day_data_dto->recv_time);
        uniswap_v3_tick_day_data_dto->recv_time = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->id) {
        free(uniswap_v3_tick_day_data_dto->id);
        uniswap_v3_tick_day_data_dto->id = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->pool) {
        free(uniswap_v3_tick_day_data_dto->pool);
        uniswap_v3_tick_day_data_dto->pool = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->tick) {
        free(uniswap_v3_tick_day_data_dto->tick);
        uniswap_v3_tick_day_data_dto->tick = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->liquidity_gross) {
        free(uniswap_v3_tick_day_data_dto->liquidity_gross);
        uniswap_v3_tick_day_data_dto->liquidity_gross = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->liquidity_net) {
        free(uniswap_v3_tick_day_data_dto->liquidity_net);
        uniswap_v3_tick_day_data_dto->liquidity_net = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->volume_token_0) {
        free(uniswap_v3_tick_day_data_dto->volume_token_0);
        uniswap_v3_tick_day_data_dto->volume_token_0 = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->volume_token_1) {
        free(uniswap_v3_tick_day_data_dto->volume_token_1);
        uniswap_v3_tick_day_data_dto->volume_token_1 = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->volume_usd) {
        free(uniswap_v3_tick_day_data_dto->volume_usd);
        uniswap_v3_tick_day_data_dto->volume_usd = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->fees_usd) {
        free(uniswap_v3_tick_day_data_dto->fees_usd);
        uniswap_v3_tick_day_data_dto->fees_usd = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->fee_growth_outside_0x128) {
        free(uniswap_v3_tick_day_data_dto->fee_growth_outside_0x128);
        uniswap_v3_tick_day_data_dto->fee_growth_outside_0x128 = NULL;
    }
    if (uniswap_v3_tick_day_data_dto->fee_growth_outside_1x128) {
        free(uniswap_v3_tick_day_data_dto->fee_growth_outside_1x128);
        uniswap_v3_tick_day_data_dto->fee_growth_outside_1x128 = NULL;
    }
    free(uniswap_v3_tick_day_data_dto);
}

cJSON *uniswap_v3_tick_day_data_dto_convertToJSON(uniswap_v3_tick_day_data_dto_t *uniswap_v3_tick_day_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_tick_day_data_dto->entry_time
    if(uniswap_v3_tick_day_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_tick_day_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_tick_day_data_dto->recv_time
    if(uniswap_v3_tick_day_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_tick_day_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_tick_day_data_dto->block_number
    if(uniswap_v3_tick_day_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_tick_day_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_tick_day_data_dto->id
    if(uniswap_v3_tick_day_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_tick_day_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->date
    if(uniswap_v3_tick_day_data_dto->date) {
    if(cJSON_AddNumberToObject(item, "date", uniswap_v3_tick_day_data_dto->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_tick_day_data_dto->pool
    if(uniswap_v3_tick_day_data_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", uniswap_v3_tick_day_data_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->tick
    if(uniswap_v3_tick_day_data_dto->tick) {
    if(cJSON_AddStringToObject(item, "tick", uniswap_v3_tick_day_data_dto->tick) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->liquidity_gross
    if(uniswap_v3_tick_day_data_dto->liquidity_gross) {
    if(cJSON_AddStringToObject(item, "liquidity_gross", uniswap_v3_tick_day_data_dto->liquidity_gross) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->liquidity_net
    if(uniswap_v3_tick_day_data_dto->liquidity_net) {
    if(cJSON_AddStringToObject(item, "liquidity_net", uniswap_v3_tick_day_data_dto->liquidity_net) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->volume_token_0
    if(uniswap_v3_tick_day_data_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", uniswap_v3_tick_day_data_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->volume_token_1
    if(uniswap_v3_tick_day_data_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", uniswap_v3_tick_day_data_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->volume_usd
    if(uniswap_v3_tick_day_data_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", uniswap_v3_tick_day_data_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->fees_usd
    if(uniswap_v3_tick_day_data_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", uniswap_v3_tick_day_data_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->fee_growth_outside_0x128
    if(uniswap_v3_tick_day_data_dto->fee_growth_outside_0x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_outside_0x128", uniswap_v3_tick_day_data_dto->fee_growth_outside_0x128) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->fee_growth_outside_1x128
    if(uniswap_v3_tick_day_data_dto->fee_growth_outside_1x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_outside_1x128", uniswap_v3_tick_day_data_dto->fee_growth_outside_1x128) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_tick_day_data_dto->vid
    if(uniswap_v3_tick_day_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_tick_day_data_dto->vid) == NULL) {
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

uniswap_v3_tick_day_data_dto_t *uniswap_v3_tick_day_data_dto_parseFromJSON(cJSON *uniswap_v3_tick_day_data_dtoJSON){

    uniswap_v3_tick_day_data_dto_t *uniswap_v3_tick_day_data_dto_local_var = NULL;

    // uniswap_v3_tick_day_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_tick_day_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_tick_day_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_tick_day_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "date");
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_tick_day_data_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->tick
    cJSON *tick = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "tick");
    if (tick) { 
    if(!cJSON_IsString(tick) && !cJSON_IsNull(tick))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->liquidity_gross
    cJSON *liquidity_gross = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "liquidity_gross");
    if (liquidity_gross) { 
    if(!cJSON_IsString(liquidity_gross) && !cJSON_IsNull(liquidity_gross))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->liquidity_net
    cJSON *liquidity_net = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "liquidity_net");
    if (liquidity_net) { 
    if(!cJSON_IsString(liquidity_net) && !cJSON_IsNull(liquidity_net))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0) && !cJSON_IsNull(volume_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1) && !cJSON_IsNull(volume_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd) && !cJSON_IsNull(fees_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->fee_growth_outside_0x128
    cJSON *fee_growth_outside_0x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "fee_growth_outside_0x128");
    if (fee_growth_outside_0x128) { 
    if(!cJSON_IsString(fee_growth_outside_0x128) && !cJSON_IsNull(fee_growth_outside_0x128))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->fee_growth_outside_1x128
    cJSON *fee_growth_outside_1x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "fee_growth_outside_1x128");
    if (fee_growth_outside_1x128) { 
    if(!cJSON_IsString(fee_growth_outside_1x128) && !cJSON_IsNull(fee_growth_outside_1x128))
    {
    goto end; //String
    }
    }

    // uniswap_v3_tick_day_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_tick_day_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v3_tick_day_data_dto_local_var = uniswap_v3_tick_day_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        date ? date->valuedouble : 0,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        tick && !cJSON_IsNull(tick) ? strdup(tick->valuestring) : NULL,
        liquidity_gross && !cJSON_IsNull(liquidity_gross) ? strdup(liquidity_gross->valuestring) : NULL,
        liquidity_net && !cJSON_IsNull(liquidity_net) ? strdup(liquidity_net->valuestring) : NULL,
        volume_token_0 && !cJSON_IsNull(volume_token_0) ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 && !cJSON_IsNull(volume_token_1) ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        fees_usd && !cJSON_IsNull(fees_usd) ? strdup(fees_usd->valuestring) : NULL,
        fee_growth_outside_0x128 && !cJSON_IsNull(fee_growth_outside_0x128) ? strdup(fee_growth_outside_0x128->valuestring) : NULL,
        fee_growth_outside_1x128 && !cJSON_IsNull(fee_growth_outside_1x128) ? strdup(fee_growth_outside_1x128->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v3_tick_day_data_dto_local_var;
end:
    return NULL;

}
