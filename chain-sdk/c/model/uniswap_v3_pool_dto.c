#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_pool_dto.h"



uniswap_v3_pool_dto_t *uniswap_v3_pool_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *created_at_timestamp,
    char *token_0,
    char *token_1,
    numerics_big_integer_t *fee_tier,
    numerics_big_integer_t *liquidity,
    numerics_big_integer_t *sqrt_price,
    numerics_big_integer_t *fee_growth_global_0x128,
    numerics_big_integer_t *fee_growth_global_1x128,
    char *token_0_price,
    char *token_1_price,
    numerics_big_integer_t *tick,
    numerics_big_integer_t *observation_index,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *untracked_volume_usd,
    char *fees_usd,
    numerics_big_integer_t *tx_count,
    char *collected_fees_token_0,
    char *collected_fees_token_1,
    char *collected_fees_usd,
    char *total_value_locked_token_0,
    char *total_value_locked_token_1,
    char *total_value_locked_eth,
    char *total_value_locked_usd,
    char *total_value_locked_usd_untracked,
    char *liquidity_provider_count,
    double evaluated_ask
    ) {
    uniswap_v3_pool_dto_t *uniswap_v3_pool_dto_local_var = malloc(sizeof(uniswap_v3_pool_dto_t));
    if (!uniswap_v3_pool_dto_local_var) {
        return NULL;
    }
    uniswap_v3_pool_dto_local_var->entry_time = entry_time;
    uniswap_v3_pool_dto_local_var->recv_time = recv_time;
    uniswap_v3_pool_dto_local_var->block_number = block_number;
    uniswap_v3_pool_dto_local_var->vid = vid;
    uniswap_v3_pool_dto_local_var->id = id;
    uniswap_v3_pool_dto_local_var->created_at_timestamp = created_at_timestamp;
    uniswap_v3_pool_dto_local_var->token_0 = token_0;
    uniswap_v3_pool_dto_local_var->token_1 = token_1;
    uniswap_v3_pool_dto_local_var->fee_tier = fee_tier;
    uniswap_v3_pool_dto_local_var->liquidity = liquidity;
    uniswap_v3_pool_dto_local_var->sqrt_price = sqrt_price;
    uniswap_v3_pool_dto_local_var->fee_growth_global_0x128 = fee_growth_global_0x128;
    uniswap_v3_pool_dto_local_var->fee_growth_global_1x128 = fee_growth_global_1x128;
    uniswap_v3_pool_dto_local_var->token_0_price = token_0_price;
    uniswap_v3_pool_dto_local_var->token_1_price = token_1_price;
    uniswap_v3_pool_dto_local_var->tick = tick;
    uniswap_v3_pool_dto_local_var->observation_index = observation_index;
    uniswap_v3_pool_dto_local_var->volume_token_0 = volume_token_0;
    uniswap_v3_pool_dto_local_var->volume_token_1 = volume_token_1;
    uniswap_v3_pool_dto_local_var->volume_usd = volume_usd;
    uniswap_v3_pool_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    uniswap_v3_pool_dto_local_var->fees_usd = fees_usd;
    uniswap_v3_pool_dto_local_var->tx_count = tx_count;
    uniswap_v3_pool_dto_local_var->collected_fees_token_0 = collected_fees_token_0;
    uniswap_v3_pool_dto_local_var->collected_fees_token_1 = collected_fees_token_1;
    uniswap_v3_pool_dto_local_var->collected_fees_usd = collected_fees_usd;
    uniswap_v3_pool_dto_local_var->total_value_locked_token_0 = total_value_locked_token_0;
    uniswap_v3_pool_dto_local_var->total_value_locked_token_1 = total_value_locked_token_1;
    uniswap_v3_pool_dto_local_var->total_value_locked_eth = total_value_locked_eth;
    uniswap_v3_pool_dto_local_var->total_value_locked_usd = total_value_locked_usd;
    uniswap_v3_pool_dto_local_var->total_value_locked_usd_untracked = total_value_locked_usd_untracked;
    uniswap_v3_pool_dto_local_var->liquidity_provider_count = liquidity_provider_count;
    uniswap_v3_pool_dto_local_var->evaluated_ask = evaluated_ask;

    return uniswap_v3_pool_dto_local_var;
}


void uniswap_v3_pool_dto_free(uniswap_v3_pool_dto_t *uniswap_v3_pool_dto) {
    if(NULL == uniswap_v3_pool_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_pool_dto->entry_time) {
        free(uniswap_v3_pool_dto->entry_time);
        uniswap_v3_pool_dto->entry_time = NULL;
    }
    if (uniswap_v3_pool_dto->recv_time) {
        free(uniswap_v3_pool_dto->recv_time);
        uniswap_v3_pool_dto->recv_time = NULL;
    }
    if (uniswap_v3_pool_dto->id) {
        free(uniswap_v3_pool_dto->id);
        uniswap_v3_pool_dto->id = NULL;
    }
    if (uniswap_v3_pool_dto->created_at_timestamp) {
        free(uniswap_v3_pool_dto->created_at_timestamp);
        uniswap_v3_pool_dto->created_at_timestamp = NULL;
    }
    if (uniswap_v3_pool_dto->token_0) {
        free(uniswap_v3_pool_dto->token_0);
        uniswap_v3_pool_dto->token_0 = NULL;
    }
    if (uniswap_v3_pool_dto->token_1) {
        free(uniswap_v3_pool_dto->token_1);
        uniswap_v3_pool_dto->token_1 = NULL;
    }
    if (uniswap_v3_pool_dto->fee_tier) {
        numerics_big_integer_free(uniswap_v3_pool_dto->fee_tier);
        uniswap_v3_pool_dto->fee_tier = NULL;
    }
    if (uniswap_v3_pool_dto->liquidity) {
        numerics_big_integer_free(uniswap_v3_pool_dto->liquidity);
        uniswap_v3_pool_dto->liquidity = NULL;
    }
    if (uniswap_v3_pool_dto->sqrt_price) {
        numerics_big_integer_free(uniswap_v3_pool_dto->sqrt_price);
        uniswap_v3_pool_dto->sqrt_price = NULL;
    }
    if (uniswap_v3_pool_dto->fee_growth_global_0x128) {
        numerics_big_integer_free(uniswap_v3_pool_dto->fee_growth_global_0x128);
        uniswap_v3_pool_dto->fee_growth_global_0x128 = NULL;
    }
    if (uniswap_v3_pool_dto->fee_growth_global_1x128) {
        numerics_big_integer_free(uniswap_v3_pool_dto->fee_growth_global_1x128);
        uniswap_v3_pool_dto->fee_growth_global_1x128 = NULL;
    }
    if (uniswap_v3_pool_dto->token_0_price) {
        free(uniswap_v3_pool_dto->token_0_price);
        uniswap_v3_pool_dto->token_0_price = NULL;
    }
    if (uniswap_v3_pool_dto->token_1_price) {
        free(uniswap_v3_pool_dto->token_1_price);
        uniswap_v3_pool_dto->token_1_price = NULL;
    }
    if (uniswap_v3_pool_dto->tick) {
        numerics_big_integer_free(uniswap_v3_pool_dto->tick);
        uniswap_v3_pool_dto->tick = NULL;
    }
    if (uniswap_v3_pool_dto->observation_index) {
        numerics_big_integer_free(uniswap_v3_pool_dto->observation_index);
        uniswap_v3_pool_dto->observation_index = NULL;
    }
    if (uniswap_v3_pool_dto->volume_token_0) {
        free(uniswap_v3_pool_dto->volume_token_0);
        uniswap_v3_pool_dto->volume_token_0 = NULL;
    }
    if (uniswap_v3_pool_dto->volume_token_1) {
        free(uniswap_v3_pool_dto->volume_token_1);
        uniswap_v3_pool_dto->volume_token_1 = NULL;
    }
    if (uniswap_v3_pool_dto->volume_usd) {
        free(uniswap_v3_pool_dto->volume_usd);
        uniswap_v3_pool_dto->volume_usd = NULL;
    }
    if (uniswap_v3_pool_dto->untracked_volume_usd) {
        free(uniswap_v3_pool_dto->untracked_volume_usd);
        uniswap_v3_pool_dto->untracked_volume_usd = NULL;
    }
    if (uniswap_v3_pool_dto->fees_usd) {
        free(uniswap_v3_pool_dto->fees_usd);
        uniswap_v3_pool_dto->fees_usd = NULL;
    }
    if (uniswap_v3_pool_dto->tx_count) {
        numerics_big_integer_free(uniswap_v3_pool_dto->tx_count);
        uniswap_v3_pool_dto->tx_count = NULL;
    }
    if (uniswap_v3_pool_dto->collected_fees_token_0) {
        free(uniswap_v3_pool_dto->collected_fees_token_0);
        uniswap_v3_pool_dto->collected_fees_token_0 = NULL;
    }
    if (uniswap_v3_pool_dto->collected_fees_token_1) {
        free(uniswap_v3_pool_dto->collected_fees_token_1);
        uniswap_v3_pool_dto->collected_fees_token_1 = NULL;
    }
    if (uniswap_v3_pool_dto->collected_fees_usd) {
        free(uniswap_v3_pool_dto->collected_fees_usd);
        uniswap_v3_pool_dto->collected_fees_usd = NULL;
    }
    if (uniswap_v3_pool_dto->total_value_locked_token_0) {
        free(uniswap_v3_pool_dto->total_value_locked_token_0);
        uniswap_v3_pool_dto->total_value_locked_token_0 = NULL;
    }
    if (uniswap_v3_pool_dto->total_value_locked_token_1) {
        free(uniswap_v3_pool_dto->total_value_locked_token_1);
        uniswap_v3_pool_dto->total_value_locked_token_1 = NULL;
    }
    if (uniswap_v3_pool_dto->total_value_locked_eth) {
        free(uniswap_v3_pool_dto->total_value_locked_eth);
        uniswap_v3_pool_dto->total_value_locked_eth = NULL;
    }
    if (uniswap_v3_pool_dto->total_value_locked_usd) {
        free(uniswap_v3_pool_dto->total_value_locked_usd);
        uniswap_v3_pool_dto->total_value_locked_usd = NULL;
    }
    if (uniswap_v3_pool_dto->total_value_locked_usd_untracked) {
        free(uniswap_v3_pool_dto->total_value_locked_usd_untracked);
        uniswap_v3_pool_dto->total_value_locked_usd_untracked = NULL;
    }
    if (uniswap_v3_pool_dto->liquidity_provider_count) {
        free(uniswap_v3_pool_dto->liquidity_provider_count);
        uniswap_v3_pool_dto->liquidity_provider_count = NULL;
    }
    free(uniswap_v3_pool_dto);
}

cJSON *uniswap_v3_pool_dto_convertToJSON(uniswap_v3_pool_dto_t *uniswap_v3_pool_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_pool_dto->entry_time
    if(uniswap_v3_pool_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_pool_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_pool_dto->recv_time
    if(uniswap_v3_pool_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_pool_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_pool_dto->block_number
    if(uniswap_v3_pool_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_pool_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_pool_dto->vid
    if(uniswap_v3_pool_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_pool_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_pool_dto->id
    if(uniswap_v3_pool_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_pool_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->created_at_timestamp
    if(uniswap_v3_pool_dto->created_at_timestamp) {
    if(cJSON_AddStringToObject(item, "created_at_timestamp", uniswap_v3_pool_dto->created_at_timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_pool_dto->token_0
    if(uniswap_v3_pool_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", uniswap_v3_pool_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->token_1
    if(uniswap_v3_pool_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", uniswap_v3_pool_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->fee_tier
    if(uniswap_v3_pool_dto->fee_tier) {
    cJSON *fee_tier_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_pool_dto->fee_tier);
    if(fee_tier_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_tier", fee_tier_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_pool_dto->liquidity
    if(uniswap_v3_pool_dto->liquidity) {
    cJSON *liquidity_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_pool_dto->liquidity);
    if(liquidity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "liquidity", liquidity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_pool_dto->sqrt_price
    if(uniswap_v3_pool_dto->sqrt_price) {
    cJSON *sqrt_price_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_pool_dto->sqrt_price);
    if(sqrt_price_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "sqrt_price", sqrt_price_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_pool_dto->fee_growth_global_0x128
    if(uniswap_v3_pool_dto->fee_growth_global_0x128) {
    cJSON *fee_growth_global_0x128_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_pool_dto->fee_growth_global_0x128);
    if(fee_growth_global_0x128_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_growth_global_0x128", fee_growth_global_0x128_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_pool_dto->fee_growth_global_1x128
    if(uniswap_v3_pool_dto->fee_growth_global_1x128) {
    cJSON *fee_growth_global_1x128_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_pool_dto->fee_growth_global_1x128);
    if(fee_growth_global_1x128_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_growth_global_1x128", fee_growth_global_1x128_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_pool_dto->token_0_price
    if(uniswap_v3_pool_dto->token_0_price) {
    if(cJSON_AddStringToObject(item, "token_0_price", uniswap_v3_pool_dto->token_0_price) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->token_1_price
    if(uniswap_v3_pool_dto->token_1_price) {
    if(cJSON_AddStringToObject(item, "token_1_price", uniswap_v3_pool_dto->token_1_price) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->tick
    if(uniswap_v3_pool_dto->tick) {
    cJSON *tick_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_pool_dto->tick);
    if(tick_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tick", tick_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_pool_dto->observation_index
    if(uniswap_v3_pool_dto->observation_index) {
    cJSON *observation_index_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_pool_dto->observation_index);
    if(observation_index_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "observation_index", observation_index_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_pool_dto->volume_token_0
    if(uniswap_v3_pool_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", uniswap_v3_pool_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->volume_token_1
    if(uniswap_v3_pool_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", uniswap_v3_pool_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->volume_usd
    if(uniswap_v3_pool_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", uniswap_v3_pool_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->untracked_volume_usd
    if(uniswap_v3_pool_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", uniswap_v3_pool_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->fees_usd
    if(uniswap_v3_pool_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", uniswap_v3_pool_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->tx_count
    if(uniswap_v3_pool_dto->tx_count) {
    cJSON *tx_count_local_JSON = numerics_big_integer_convertToJSON(uniswap_v3_pool_dto->tx_count);
    if(tx_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tx_count", tx_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v3_pool_dto->collected_fees_token_0
    if(uniswap_v3_pool_dto->collected_fees_token_0) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_0", uniswap_v3_pool_dto->collected_fees_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->collected_fees_token_1
    if(uniswap_v3_pool_dto->collected_fees_token_1) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_1", uniswap_v3_pool_dto->collected_fees_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->collected_fees_usd
    if(uniswap_v3_pool_dto->collected_fees_usd) {
    if(cJSON_AddStringToObject(item, "collected_fees_usd", uniswap_v3_pool_dto->collected_fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->total_value_locked_token_0
    if(uniswap_v3_pool_dto->total_value_locked_token_0) {
    if(cJSON_AddStringToObject(item, "total_value_locked_token_0", uniswap_v3_pool_dto->total_value_locked_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->total_value_locked_token_1
    if(uniswap_v3_pool_dto->total_value_locked_token_1) {
    if(cJSON_AddStringToObject(item, "total_value_locked_token_1", uniswap_v3_pool_dto->total_value_locked_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->total_value_locked_eth
    if(uniswap_v3_pool_dto->total_value_locked_eth) {
    if(cJSON_AddStringToObject(item, "total_value_locked_eth", uniswap_v3_pool_dto->total_value_locked_eth) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->total_value_locked_usd
    if(uniswap_v3_pool_dto->total_value_locked_usd) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd", uniswap_v3_pool_dto->total_value_locked_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->total_value_locked_usd_untracked
    if(uniswap_v3_pool_dto->total_value_locked_usd_untracked) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd_untracked", uniswap_v3_pool_dto->total_value_locked_usd_untracked) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->liquidity_provider_count
    if(uniswap_v3_pool_dto->liquidity_provider_count) {
    if(cJSON_AddStringToObject(item, "liquidity_provider_count", uniswap_v3_pool_dto->liquidity_provider_count) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_pool_dto->evaluated_ask
    if(uniswap_v3_pool_dto->evaluated_ask) {
    if(cJSON_AddNumberToObject(item, "evaluated_ask", uniswap_v3_pool_dto->evaluated_ask) == NULL) {
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

uniswap_v3_pool_dto_t *uniswap_v3_pool_dto_parseFromJSON(cJSON *uniswap_v3_pool_dtoJSON){

    uniswap_v3_pool_dto_t *uniswap_v3_pool_dto_local_var = NULL;

    // define the local variable for uniswap_v3_pool_dto->fee_tier
    numerics_big_integer_t *fee_tier_local_nonprim = NULL;

    // define the local variable for uniswap_v3_pool_dto->liquidity
    numerics_big_integer_t *liquidity_local_nonprim = NULL;

    // define the local variable for uniswap_v3_pool_dto->sqrt_price
    numerics_big_integer_t *sqrt_price_local_nonprim = NULL;

    // define the local variable for uniswap_v3_pool_dto->fee_growth_global_0x128
    numerics_big_integer_t *fee_growth_global_0x128_local_nonprim = NULL;

    // define the local variable for uniswap_v3_pool_dto->fee_growth_global_1x128
    numerics_big_integer_t *fee_growth_global_1x128_local_nonprim = NULL;

    // define the local variable for uniswap_v3_pool_dto->tick
    numerics_big_integer_t *tick_local_nonprim = NULL;

    // define the local variable for uniswap_v3_pool_dto->observation_index
    numerics_big_integer_t *observation_index_local_nonprim = NULL;

    // define the local variable for uniswap_v3_pool_dto->tx_count
    numerics_big_integer_t *tx_count_local_nonprim = NULL;

    // uniswap_v3_pool_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_pool_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_pool_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_pool_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_pool_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->created_at_timestamp
    cJSON *created_at_timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "created_at_timestamp");
    if (created_at_timestamp) { 
    if(!cJSON_IsString(created_at_timestamp) && !cJSON_IsNull(created_at_timestamp))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_pool_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0) && !cJSON_IsNull(token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1) && !cJSON_IsNull(token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->fee_tier
    cJSON *fee_tier = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "fee_tier");
    if (fee_tier) { 
    fee_tier_local_nonprim = numerics_big_integer_parseFromJSON(fee_tier); //nonprimitive
    }

    // uniswap_v3_pool_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "liquidity");
    if (liquidity) { 
    liquidity_local_nonprim = numerics_big_integer_parseFromJSON(liquidity); //nonprimitive
    }

    // uniswap_v3_pool_dto->sqrt_price
    cJSON *sqrt_price = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "sqrt_price");
    if (sqrt_price) { 
    sqrt_price_local_nonprim = numerics_big_integer_parseFromJSON(sqrt_price); //nonprimitive
    }

    // uniswap_v3_pool_dto->fee_growth_global_0x128
    cJSON *fee_growth_global_0x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "fee_growth_global_0x128");
    if (fee_growth_global_0x128) { 
    fee_growth_global_0x128_local_nonprim = numerics_big_integer_parseFromJSON(fee_growth_global_0x128); //nonprimitive
    }

    // uniswap_v3_pool_dto->fee_growth_global_1x128
    cJSON *fee_growth_global_1x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "fee_growth_global_1x128");
    if (fee_growth_global_1x128) { 
    fee_growth_global_1x128_local_nonprim = numerics_big_integer_parseFromJSON(fee_growth_global_1x128); //nonprimitive
    }

    // uniswap_v3_pool_dto->token_0_price
    cJSON *token_0_price = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "token_0_price");
    if (token_0_price) { 
    if(!cJSON_IsString(token_0_price) && !cJSON_IsNull(token_0_price))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->token_1_price
    cJSON *token_1_price = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "token_1_price");
    if (token_1_price) { 
    if(!cJSON_IsString(token_1_price) && !cJSON_IsNull(token_1_price))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->tick
    cJSON *tick = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "tick");
    if (tick) { 
    tick_local_nonprim = numerics_big_integer_parseFromJSON(tick); //nonprimitive
    }

    // uniswap_v3_pool_dto->observation_index
    cJSON *observation_index = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "observation_index");
    if (observation_index) { 
    observation_index_local_nonprim = numerics_big_integer_parseFromJSON(observation_index); //nonprimitive
    }

    // uniswap_v3_pool_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0) && !cJSON_IsNull(volume_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1) && !cJSON_IsNull(volume_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd) && !cJSON_IsNull(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd) && !cJSON_IsNull(fees_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "tx_count");
    if (tx_count) { 
    tx_count_local_nonprim = numerics_big_integer_parseFromJSON(tx_count); //nonprimitive
    }

    // uniswap_v3_pool_dto->collected_fees_token_0
    cJSON *collected_fees_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "collected_fees_token_0");
    if (collected_fees_token_0) { 
    if(!cJSON_IsString(collected_fees_token_0) && !cJSON_IsNull(collected_fees_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->collected_fees_token_1
    cJSON *collected_fees_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "collected_fees_token_1");
    if (collected_fees_token_1) { 
    if(!cJSON_IsString(collected_fees_token_1) && !cJSON_IsNull(collected_fees_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->collected_fees_usd
    cJSON *collected_fees_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "collected_fees_usd");
    if (collected_fees_usd) { 
    if(!cJSON_IsString(collected_fees_usd) && !cJSON_IsNull(collected_fees_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->total_value_locked_token_0
    cJSON *total_value_locked_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "total_value_locked_token_0");
    if (total_value_locked_token_0) { 
    if(!cJSON_IsString(total_value_locked_token_0) && !cJSON_IsNull(total_value_locked_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->total_value_locked_token_1
    cJSON *total_value_locked_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "total_value_locked_token_1");
    if (total_value_locked_token_1) { 
    if(!cJSON_IsString(total_value_locked_token_1) && !cJSON_IsNull(total_value_locked_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->total_value_locked_eth
    cJSON *total_value_locked_eth = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "total_value_locked_eth");
    if (total_value_locked_eth) { 
    if(!cJSON_IsString(total_value_locked_eth) && !cJSON_IsNull(total_value_locked_eth))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->total_value_locked_usd
    cJSON *total_value_locked_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "total_value_locked_usd");
    if (total_value_locked_usd) { 
    if(!cJSON_IsString(total_value_locked_usd) && !cJSON_IsNull(total_value_locked_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->total_value_locked_usd_untracked
    cJSON *total_value_locked_usd_untracked = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "total_value_locked_usd_untracked");
    if (total_value_locked_usd_untracked) { 
    if(!cJSON_IsString(total_value_locked_usd_untracked) && !cJSON_IsNull(total_value_locked_usd_untracked))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->liquidity_provider_count
    cJSON *liquidity_provider_count = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "liquidity_provider_count");
    if (liquidity_provider_count) { 
    if(!cJSON_IsString(liquidity_provider_count) && !cJSON_IsNull(liquidity_provider_count))
    {
    goto end; //String
    }
    }

    // uniswap_v3_pool_dto->evaluated_ask
    cJSON *evaluated_ask = cJSON_GetObjectItemCaseSensitive(uniswap_v3_pool_dtoJSON, "evaluated_ask");
    if (evaluated_ask) { 
    if(!cJSON_IsNumber(evaluated_ask))
    {
    goto end; //Numeric
    }
    }


    uniswap_v3_pool_dto_local_var = uniswap_v3_pool_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        created_at_timestamp && !cJSON_IsNull(created_at_timestamp) ? strdup(created_at_timestamp->valuestring) : NULL,
        token_0 && !cJSON_IsNull(token_0) ? strdup(token_0->valuestring) : NULL,
        token_1 && !cJSON_IsNull(token_1) ? strdup(token_1->valuestring) : NULL,
        fee_tier ? fee_tier_local_nonprim : NULL,
        liquidity ? liquidity_local_nonprim : NULL,
        sqrt_price ? sqrt_price_local_nonprim : NULL,
        fee_growth_global_0x128 ? fee_growth_global_0x128_local_nonprim : NULL,
        fee_growth_global_1x128 ? fee_growth_global_1x128_local_nonprim : NULL,
        token_0_price && !cJSON_IsNull(token_0_price) ? strdup(token_0_price->valuestring) : NULL,
        token_1_price && !cJSON_IsNull(token_1_price) ? strdup(token_1_price->valuestring) : NULL,
        tick ? tick_local_nonprim : NULL,
        observation_index ? observation_index_local_nonprim : NULL,
        volume_token_0 && !cJSON_IsNull(volume_token_0) ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 && !cJSON_IsNull(volume_token_1) ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd && !cJSON_IsNull(untracked_volume_usd) ? strdup(untracked_volume_usd->valuestring) : NULL,
        fees_usd && !cJSON_IsNull(fees_usd) ? strdup(fees_usd->valuestring) : NULL,
        tx_count ? tx_count_local_nonprim : NULL,
        collected_fees_token_0 && !cJSON_IsNull(collected_fees_token_0) ? strdup(collected_fees_token_0->valuestring) : NULL,
        collected_fees_token_1 && !cJSON_IsNull(collected_fees_token_1) ? strdup(collected_fees_token_1->valuestring) : NULL,
        collected_fees_usd && !cJSON_IsNull(collected_fees_usd) ? strdup(collected_fees_usd->valuestring) : NULL,
        total_value_locked_token_0 && !cJSON_IsNull(total_value_locked_token_0) ? strdup(total_value_locked_token_0->valuestring) : NULL,
        total_value_locked_token_1 && !cJSON_IsNull(total_value_locked_token_1) ? strdup(total_value_locked_token_1->valuestring) : NULL,
        total_value_locked_eth && !cJSON_IsNull(total_value_locked_eth) ? strdup(total_value_locked_eth->valuestring) : NULL,
        total_value_locked_usd && !cJSON_IsNull(total_value_locked_usd) ? strdup(total_value_locked_usd->valuestring) : NULL,
        total_value_locked_usd_untracked && !cJSON_IsNull(total_value_locked_usd_untracked) ? strdup(total_value_locked_usd_untracked->valuestring) : NULL,
        liquidity_provider_count && !cJSON_IsNull(liquidity_provider_count) ? strdup(liquidity_provider_count->valuestring) : NULL,
        evaluated_ask ? evaluated_ask->valuedouble : 0
        );

    return uniswap_v3_pool_dto_local_var;
end:
    if (fee_tier_local_nonprim) {
        numerics_big_integer_free(fee_tier_local_nonprim);
        fee_tier_local_nonprim = NULL;
    }
    if (liquidity_local_nonprim) {
        numerics_big_integer_free(liquidity_local_nonprim);
        liquidity_local_nonprim = NULL;
    }
    if (sqrt_price_local_nonprim) {
        numerics_big_integer_free(sqrt_price_local_nonprim);
        sqrt_price_local_nonprim = NULL;
    }
    if (fee_growth_global_0x128_local_nonprim) {
        numerics_big_integer_free(fee_growth_global_0x128_local_nonprim);
        fee_growth_global_0x128_local_nonprim = NULL;
    }
    if (fee_growth_global_1x128_local_nonprim) {
        numerics_big_integer_free(fee_growth_global_1x128_local_nonprim);
        fee_growth_global_1x128_local_nonprim = NULL;
    }
    if (tick_local_nonprim) {
        numerics_big_integer_free(tick_local_nonprim);
        tick_local_nonprim = NULL;
    }
    if (observation_index_local_nonprim) {
        numerics_big_integer_free(observation_index_local_nonprim);
        observation_index_local_nonprim = NULL;
    }
    if (tx_count_local_nonprim) {
        numerics_big_integer_free(tx_count_local_nonprim);
        tx_count_local_nonprim = NULL;
    }
    return NULL;

}
