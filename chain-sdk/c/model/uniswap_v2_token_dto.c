#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_token_dto.h"



uniswap_v2_token_dto_t *uniswap_v2_token_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *symbol,
    char *name,
    int decimals,
    numerics_big_integer_t *total_supply,
    char *trade_volume,
    char *trade_volume_usd,
    char *untracked_volume_usd,
    numerics_big_integer_t *tx_count,
    char *total_liquidity,
    char *derived_eth,
    char *token_symbol
    ) {
    uniswap_v2_token_dto_t *uniswap_v2_token_dto_local_var = malloc(sizeof(uniswap_v2_token_dto_t));
    if (!uniswap_v2_token_dto_local_var) {
        return NULL;
    }
    uniswap_v2_token_dto_local_var->entry_time = entry_time;
    uniswap_v2_token_dto_local_var->recv_time = recv_time;
    uniswap_v2_token_dto_local_var->block_number = block_number;
    uniswap_v2_token_dto_local_var->vid = vid;
    uniswap_v2_token_dto_local_var->id = id;
    uniswap_v2_token_dto_local_var->symbol = symbol;
    uniswap_v2_token_dto_local_var->name = name;
    uniswap_v2_token_dto_local_var->decimals = decimals;
    uniswap_v2_token_dto_local_var->total_supply = total_supply;
    uniswap_v2_token_dto_local_var->trade_volume = trade_volume;
    uniswap_v2_token_dto_local_var->trade_volume_usd = trade_volume_usd;
    uniswap_v2_token_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    uniswap_v2_token_dto_local_var->tx_count = tx_count;
    uniswap_v2_token_dto_local_var->total_liquidity = total_liquidity;
    uniswap_v2_token_dto_local_var->derived_eth = derived_eth;
    uniswap_v2_token_dto_local_var->token_symbol = token_symbol;

    return uniswap_v2_token_dto_local_var;
}


void uniswap_v2_token_dto_free(uniswap_v2_token_dto_t *uniswap_v2_token_dto) {
    if(NULL == uniswap_v2_token_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_token_dto->entry_time) {
        free(uniswap_v2_token_dto->entry_time);
        uniswap_v2_token_dto->entry_time = NULL;
    }
    if (uniswap_v2_token_dto->recv_time) {
        free(uniswap_v2_token_dto->recv_time);
        uniswap_v2_token_dto->recv_time = NULL;
    }
    if (uniswap_v2_token_dto->id) {
        free(uniswap_v2_token_dto->id);
        uniswap_v2_token_dto->id = NULL;
    }
    if (uniswap_v2_token_dto->symbol) {
        free(uniswap_v2_token_dto->symbol);
        uniswap_v2_token_dto->symbol = NULL;
    }
    if (uniswap_v2_token_dto->name) {
        free(uniswap_v2_token_dto->name);
        uniswap_v2_token_dto->name = NULL;
    }
    if (uniswap_v2_token_dto->total_supply) {
        numerics_big_integer_free(uniswap_v2_token_dto->total_supply);
        uniswap_v2_token_dto->total_supply = NULL;
    }
    if (uniswap_v2_token_dto->trade_volume) {
        free(uniswap_v2_token_dto->trade_volume);
        uniswap_v2_token_dto->trade_volume = NULL;
    }
    if (uniswap_v2_token_dto->trade_volume_usd) {
        free(uniswap_v2_token_dto->trade_volume_usd);
        uniswap_v2_token_dto->trade_volume_usd = NULL;
    }
    if (uniswap_v2_token_dto->untracked_volume_usd) {
        free(uniswap_v2_token_dto->untracked_volume_usd);
        uniswap_v2_token_dto->untracked_volume_usd = NULL;
    }
    if (uniswap_v2_token_dto->tx_count) {
        numerics_big_integer_free(uniswap_v2_token_dto->tx_count);
        uniswap_v2_token_dto->tx_count = NULL;
    }
    if (uniswap_v2_token_dto->total_liquidity) {
        free(uniswap_v2_token_dto->total_liquidity);
        uniswap_v2_token_dto->total_liquidity = NULL;
    }
    if (uniswap_v2_token_dto->derived_eth) {
        free(uniswap_v2_token_dto->derived_eth);
        uniswap_v2_token_dto->derived_eth = NULL;
    }
    if (uniswap_v2_token_dto->token_symbol) {
        free(uniswap_v2_token_dto->token_symbol);
        uniswap_v2_token_dto->token_symbol = NULL;
    }
    free(uniswap_v2_token_dto);
}

cJSON *uniswap_v2_token_dto_convertToJSON(uniswap_v2_token_dto_t *uniswap_v2_token_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_token_dto->entry_time
    if(uniswap_v2_token_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_token_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_token_dto->recv_time
    if(uniswap_v2_token_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_token_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_token_dto->block_number
    if(uniswap_v2_token_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_token_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_token_dto->vid
    if(uniswap_v2_token_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_token_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_token_dto->id
    if(uniswap_v2_token_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_token_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_token_dto->symbol
    if(uniswap_v2_token_dto->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", uniswap_v2_token_dto->symbol) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_token_dto->name
    if(uniswap_v2_token_dto->name) {
    if(cJSON_AddStringToObject(item, "name", uniswap_v2_token_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_token_dto->decimals
    if(uniswap_v2_token_dto->decimals) {
    if(cJSON_AddNumberToObject(item, "decimals", uniswap_v2_token_dto->decimals) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_token_dto->total_supply
    if(uniswap_v2_token_dto->total_supply) {
    cJSON *total_supply_local_JSON = numerics_big_integer_convertToJSON(uniswap_v2_token_dto->total_supply);
    if(total_supply_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "total_supply", total_supply_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v2_token_dto->trade_volume
    if(uniswap_v2_token_dto->trade_volume) {
    if(cJSON_AddStringToObject(item, "trade_volume", uniswap_v2_token_dto->trade_volume) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_token_dto->trade_volume_usd
    if(uniswap_v2_token_dto->trade_volume_usd) {
    if(cJSON_AddStringToObject(item, "trade_volume_usd", uniswap_v2_token_dto->trade_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_token_dto->untracked_volume_usd
    if(uniswap_v2_token_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", uniswap_v2_token_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_token_dto->tx_count
    if(uniswap_v2_token_dto->tx_count) {
    cJSON *tx_count_local_JSON = numerics_big_integer_convertToJSON(uniswap_v2_token_dto->tx_count);
    if(tx_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tx_count", tx_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // uniswap_v2_token_dto->total_liquidity
    if(uniswap_v2_token_dto->total_liquidity) {
    if(cJSON_AddStringToObject(item, "total_liquidity", uniswap_v2_token_dto->total_liquidity) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_token_dto->derived_eth
    if(uniswap_v2_token_dto->derived_eth) {
    if(cJSON_AddStringToObject(item, "derived_eth", uniswap_v2_token_dto->derived_eth) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_token_dto->token_symbol
    if(uniswap_v2_token_dto->token_symbol) {
    if(cJSON_AddStringToObject(item, "token_symbol", uniswap_v2_token_dto->token_symbol) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

uniswap_v2_token_dto_t *uniswap_v2_token_dto_parseFromJSON(cJSON *uniswap_v2_token_dtoJSON){

    uniswap_v2_token_dto_t *uniswap_v2_token_dto_local_var = NULL;

    // define the local variable for uniswap_v2_token_dto->total_supply
    numerics_big_integer_t *total_supply_local_nonprim = NULL;

    // define the local variable for uniswap_v2_token_dto->tx_count
    numerics_big_integer_t *tx_count_local_nonprim = NULL;

    // uniswap_v2_token_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_token_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_token_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_token_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_token_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_token_dto->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "symbol");
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // uniswap_v2_token_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // uniswap_v2_token_dto->decimals
    cJSON *decimals = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "decimals");
    if (decimals) { 
    if(!cJSON_IsNumber(decimals))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_token_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "total_supply");
    if (total_supply) { 
    total_supply_local_nonprim = numerics_big_integer_parseFromJSON(total_supply); //nonprimitive
    }

    // uniswap_v2_token_dto->trade_volume
    cJSON *trade_volume = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "trade_volume");
    if (trade_volume) { 
    if(!cJSON_IsString(trade_volume) && !cJSON_IsNull(trade_volume))
    {
    goto end; //String
    }
    }

    // uniswap_v2_token_dto->trade_volume_usd
    cJSON *trade_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "trade_volume_usd");
    if (trade_volume_usd) { 
    if(!cJSON_IsString(trade_volume_usd) && !cJSON_IsNull(trade_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_token_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd) && !cJSON_IsNull(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v2_token_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "tx_count");
    if (tx_count) { 
    tx_count_local_nonprim = numerics_big_integer_parseFromJSON(tx_count); //nonprimitive
    }

    // uniswap_v2_token_dto->total_liquidity
    cJSON *total_liquidity = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "total_liquidity");
    if (total_liquidity) { 
    if(!cJSON_IsString(total_liquidity) && !cJSON_IsNull(total_liquidity))
    {
    goto end; //String
    }
    }

    // uniswap_v2_token_dto->derived_eth
    cJSON *derived_eth = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "derived_eth");
    if (derived_eth) { 
    if(!cJSON_IsString(derived_eth) && !cJSON_IsNull(derived_eth))
    {
    goto end; //String
    }
    }

    // uniswap_v2_token_dto->token_symbol
    cJSON *token_symbol = cJSON_GetObjectItemCaseSensitive(uniswap_v2_token_dtoJSON, "token_symbol");
    if (token_symbol) { 
    if(!cJSON_IsString(token_symbol) && !cJSON_IsNull(token_symbol))
    {
    goto end; //String
    }
    }


    uniswap_v2_token_dto_local_var = uniswap_v2_token_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        decimals ? decimals->valuedouble : 0,
        total_supply ? total_supply_local_nonprim : NULL,
        trade_volume && !cJSON_IsNull(trade_volume) ? strdup(trade_volume->valuestring) : NULL,
        trade_volume_usd && !cJSON_IsNull(trade_volume_usd) ? strdup(trade_volume_usd->valuestring) : NULL,
        untracked_volume_usd && !cJSON_IsNull(untracked_volume_usd) ? strdup(untracked_volume_usd->valuestring) : NULL,
        tx_count ? tx_count_local_nonprim : NULL,
        total_liquidity && !cJSON_IsNull(total_liquidity) ? strdup(total_liquidity->valuestring) : NULL,
        derived_eth && !cJSON_IsNull(derived_eth) ? strdup(derived_eth->valuestring) : NULL,
        token_symbol && !cJSON_IsNull(token_symbol) ? strdup(token_symbol->valuestring) : NULL
        );

    return uniswap_v2_token_dto_local_var;
end:
    if (total_supply_local_nonprim) {
        numerics_big_integer_free(total_supply_local_nonprim);
        total_supply_local_nonprim = NULL;
    }
    if (tx_count_local_nonprim) {
        numerics_big_integer_free(tx_count_local_nonprim);
        tx_count_local_nonprim = NULL;
    }
    return NULL;

}
