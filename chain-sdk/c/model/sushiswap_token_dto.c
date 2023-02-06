#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_token_dto.h"



sushiswap_token_dto_t *sushiswap_token_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *factory,
    char *symbol,
    char *name,
    char *decimals,
    char *total_supply,
    char *volume,
    char *volume_usd,
    char *untracked_volume_usd,
    char *tx_count,
    char *liquidity,
    char *derived_eth,
    list_t *whitelist_pairs,
    long vid,
    char *token_symbol
    ) {
    sushiswap_token_dto_t *sushiswap_token_dto_local_var = malloc(sizeof(sushiswap_token_dto_t));
    if (!sushiswap_token_dto_local_var) {
        return NULL;
    }
    sushiswap_token_dto_local_var->entry_time = entry_time;
    sushiswap_token_dto_local_var->recv_time = recv_time;
    sushiswap_token_dto_local_var->block_number = block_number;
    sushiswap_token_dto_local_var->id = id;
    sushiswap_token_dto_local_var->factory = factory;
    sushiswap_token_dto_local_var->symbol = symbol;
    sushiswap_token_dto_local_var->name = name;
    sushiswap_token_dto_local_var->decimals = decimals;
    sushiswap_token_dto_local_var->total_supply = total_supply;
    sushiswap_token_dto_local_var->volume = volume;
    sushiswap_token_dto_local_var->volume_usd = volume_usd;
    sushiswap_token_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    sushiswap_token_dto_local_var->tx_count = tx_count;
    sushiswap_token_dto_local_var->liquidity = liquidity;
    sushiswap_token_dto_local_var->derived_eth = derived_eth;
    sushiswap_token_dto_local_var->whitelist_pairs = whitelist_pairs;
    sushiswap_token_dto_local_var->vid = vid;
    sushiswap_token_dto_local_var->token_symbol = token_symbol;

    return sushiswap_token_dto_local_var;
}


void sushiswap_token_dto_free(sushiswap_token_dto_t *sushiswap_token_dto) {
    if(NULL == sushiswap_token_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_token_dto->entry_time) {
        free(sushiswap_token_dto->entry_time);
        sushiswap_token_dto->entry_time = NULL;
    }
    if (sushiswap_token_dto->recv_time) {
        free(sushiswap_token_dto->recv_time);
        sushiswap_token_dto->recv_time = NULL;
    }
    if (sushiswap_token_dto->id) {
        free(sushiswap_token_dto->id);
        sushiswap_token_dto->id = NULL;
    }
    if (sushiswap_token_dto->factory) {
        free(sushiswap_token_dto->factory);
        sushiswap_token_dto->factory = NULL;
    }
    if (sushiswap_token_dto->symbol) {
        free(sushiswap_token_dto->symbol);
        sushiswap_token_dto->symbol = NULL;
    }
    if (sushiswap_token_dto->name) {
        free(sushiswap_token_dto->name);
        sushiswap_token_dto->name = NULL;
    }
    if (sushiswap_token_dto->decimals) {
        free(sushiswap_token_dto->decimals);
        sushiswap_token_dto->decimals = NULL;
    }
    if (sushiswap_token_dto->total_supply) {
        free(sushiswap_token_dto->total_supply);
        sushiswap_token_dto->total_supply = NULL;
    }
    if (sushiswap_token_dto->volume) {
        free(sushiswap_token_dto->volume);
        sushiswap_token_dto->volume = NULL;
    }
    if (sushiswap_token_dto->volume_usd) {
        free(sushiswap_token_dto->volume_usd);
        sushiswap_token_dto->volume_usd = NULL;
    }
    if (sushiswap_token_dto->untracked_volume_usd) {
        free(sushiswap_token_dto->untracked_volume_usd);
        sushiswap_token_dto->untracked_volume_usd = NULL;
    }
    if (sushiswap_token_dto->tx_count) {
        free(sushiswap_token_dto->tx_count);
        sushiswap_token_dto->tx_count = NULL;
    }
    if (sushiswap_token_dto->liquidity) {
        free(sushiswap_token_dto->liquidity);
        sushiswap_token_dto->liquidity = NULL;
    }
    if (sushiswap_token_dto->derived_eth) {
        free(sushiswap_token_dto->derived_eth);
        sushiswap_token_dto->derived_eth = NULL;
    }
    if (sushiswap_token_dto->whitelist_pairs) {
        list_ForEach(listEntry, sushiswap_token_dto->whitelist_pairs) {
            free(listEntry->data);
        }
        list_freeList(sushiswap_token_dto->whitelist_pairs);
        sushiswap_token_dto->whitelist_pairs = NULL;
    }
    if (sushiswap_token_dto->token_symbol) {
        free(sushiswap_token_dto->token_symbol);
        sushiswap_token_dto->token_symbol = NULL;
    }
    free(sushiswap_token_dto);
}

cJSON *sushiswap_token_dto_convertToJSON(sushiswap_token_dto_t *sushiswap_token_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_token_dto->entry_time
    if(sushiswap_token_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_token_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_token_dto->recv_time
    if(sushiswap_token_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_token_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_token_dto->block_number
    if(sushiswap_token_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_token_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_token_dto->id
    if(sushiswap_token_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_token_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->factory
    if(sushiswap_token_dto->factory) {
    if(cJSON_AddStringToObject(item, "factory", sushiswap_token_dto->factory) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->symbol
    if(sushiswap_token_dto->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", sushiswap_token_dto->symbol) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->name
    if(sushiswap_token_dto->name) {
    if(cJSON_AddStringToObject(item, "name", sushiswap_token_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->decimals
    if(sushiswap_token_dto->decimals) {
    if(cJSON_AddStringToObject(item, "decimals", sushiswap_token_dto->decimals) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->total_supply
    if(sushiswap_token_dto->total_supply) {
    if(cJSON_AddStringToObject(item, "total_supply", sushiswap_token_dto->total_supply) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->volume
    if(sushiswap_token_dto->volume) {
    if(cJSON_AddStringToObject(item, "volume", sushiswap_token_dto->volume) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->volume_usd
    if(sushiswap_token_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", sushiswap_token_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->untracked_volume_usd
    if(sushiswap_token_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", sushiswap_token_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->tx_count
    if(sushiswap_token_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", sushiswap_token_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->liquidity
    if(sushiswap_token_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", sushiswap_token_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->derived_eth
    if(sushiswap_token_dto->derived_eth) {
    if(cJSON_AddStringToObject(item, "derived_eth", sushiswap_token_dto->derived_eth) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_token_dto->whitelist_pairs
    if(sushiswap_token_dto->whitelist_pairs) {
    cJSON *whitelist_pairs = cJSON_AddArrayToObject(item, "whitelist_pairs");
    if(whitelist_pairs == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *whitelist_pairsListEntry;
    list_ForEach(whitelist_pairsListEntry, sushiswap_token_dto->whitelist_pairs) {
    if(cJSON_AddStringToObject(whitelist_pairs, "", (char*)whitelist_pairsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // sushiswap_token_dto->vid
    if(sushiswap_token_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_token_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_token_dto->token_symbol
    if(sushiswap_token_dto->token_symbol) {
    if(cJSON_AddStringToObject(item, "token_symbol", sushiswap_token_dto->token_symbol) == NULL) {
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

sushiswap_token_dto_t *sushiswap_token_dto_parseFromJSON(cJSON *sushiswap_token_dtoJSON){

    sushiswap_token_dto_t *sushiswap_token_dto_local_var = NULL;

    // define the local list for sushiswap_token_dto->whitelist_pairs
    list_t *whitelist_pairsList = NULL;

    // sushiswap_token_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_token_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_token_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_token_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->factory
    cJSON *factory = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "factory");
    if (factory) { 
    if(!cJSON_IsString(factory) && !cJSON_IsNull(factory))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "symbol");
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->decimals
    cJSON *decimals = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "decimals");
    if (decimals) { 
    if(!cJSON_IsString(decimals) && !cJSON_IsNull(decimals))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "total_supply");
    if (total_supply) { 
    if(!cJSON_IsString(total_supply) && !cJSON_IsNull(total_supply))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "volume");
    if (volume) { 
    if(!cJSON_IsString(volume) && !cJSON_IsNull(volume))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd) && !cJSON_IsNull(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count) && !cJSON_IsNull(tx_count))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity) && !cJSON_IsNull(liquidity))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->derived_eth
    cJSON *derived_eth = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "derived_eth");
    if (derived_eth) { 
    if(!cJSON_IsString(derived_eth) && !cJSON_IsNull(derived_eth))
    {
    goto end; //String
    }
    }

    // sushiswap_token_dto->whitelist_pairs
    cJSON *whitelist_pairs = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "whitelist_pairs");
    if (whitelist_pairs) { 
    cJSON *whitelist_pairs_local = NULL;
    if(!cJSON_IsArray(whitelist_pairs)) {
        goto end;//primitive container
    }
    whitelist_pairsList = list_createList();

    cJSON_ArrayForEach(whitelist_pairs_local, whitelist_pairs)
    {
        if(!cJSON_IsString(whitelist_pairs_local))
        {
            goto end;
        }
        list_addElement(whitelist_pairsList , strdup(whitelist_pairs_local->valuestring));
    }
    }

    // sushiswap_token_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_token_dto->token_symbol
    cJSON *token_symbol = cJSON_GetObjectItemCaseSensitive(sushiswap_token_dtoJSON, "token_symbol");
    if (token_symbol) { 
    if(!cJSON_IsString(token_symbol) && !cJSON_IsNull(token_symbol))
    {
    goto end; //String
    }
    }


    sushiswap_token_dto_local_var = sushiswap_token_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        factory && !cJSON_IsNull(factory) ? strdup(factory->valuestring) : NULL,
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        decimals && !cJSON_IsNull(decimals) ? strdup(decimals->valuestring) : NULL,
        total_supply && !cJSON_IsNull(total_supply) ? strdup(total_supply->valuestring) : NULL,
        volume && !cJSON_IsNull(volume) ? strdup(volume->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd && !cJSON_IsNull(untracked_volume_usd) ? strdup(untracked_volume_usd->valuestring) : NULL,
        tx_count && !cJSON_IsNull(tx_count) ? strdup(tx_count->valuestring) : NULL,
        liquidity && !cJSON_IsNull(liquidity) ? strdup(liquidity->valuestring) : NULL,
        derived_eth && !cJSON_IsNull(derived_eth) ? strdup(derived_eth->valuestring) : NULL,
        whitelist_pairs ? whitelist_pairsList : NULL,
        vid ? vid->valuedouble : 0,
        token_symbol && !cJSON_IsNull(token_symbol) ? strdup(token_symbol->valuestring) : NULL
        );

    return sushiswap_token_dto_local_var;
end:
    if (whitelist_pairsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, whitelist_pairsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(whitelist_pairsList);
        whitelist_pairsList = NULL;
    }
    return NULL;

}
