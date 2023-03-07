#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cryptopunks_collection_dto.h"



cryptopunks_collection_dto_t *cryptopunks_collection_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *block_range,
    char *id,
    char *name,
    char *symbol,
    char *total_supply,
    char *royalty_fee,
    char *cumulative_trade_volume_eth,
    char *marketplace_revenue_eth,
    char *creator_revenue_eth,
    char *total_revenue_eth,
    int trade_count,
    int buyer_count,
    int seller_count
    ) {
    cryptopunks_collection_dto_t *cryptopunks_collection_dto_local_var = malloc(sizeof(cryptopunks_collection_dto_t));
    if (!cryptopunks_collection_dto_local_var) {
        return NULL;
    }
    cryptopunks_collection_dto_local_var->entry_time = entry_time;
    cryptopunks_collection_dto_local_var->recv_time = recv_time;
    cryptopunks_collection_dto_local_var->block_number = block_number;
    cryptopunks_collection_dto_local_var->vid = vid;
    cryptopunks_collection_dto_local_var->block_range = block_range;
    cryptopunks_collection_dto_local_var->id = id;
    cryptopunks_collection_dto_local_var->name = name;
    cryptopunks_collection_dto_local_var->symbol = symbol;
    cryptopunks_collection_dto_local_var->total_supply = total_supply;
    cryptopunks_collection_dto_local_var->royalty_fee = royalty_fee;
    cryptopunks_collection_dto_local_var->cumulative_trade_volume_eth = cumulative_trade_volume_eth;
    cryptopunks_collection_dto_local_var->marketplace_revenue_eth = marketplace_revenue_eth;
    cryptopunks_collection_dto_local_var->creator_revenue_eth = creator_revenue_eth;
    cryptopunks_collection_dto_local_var->total_revenue_eth = total_revenue_eth;
    cryptopunks_collection_dto_local_var->trade_count = trade_count;
    cryptopunks_collection_dto_local_var->buyer_count = buyer_count;
    cryptopunks_collection_dto_local_var->seller_count = seller_count;

    return cryptopunks_collection_dto_local_var;
}


void cryptopunks_collection_dto_free(cryptopunks_collection_dto_t *cryptopunks_collection_dto) {
    if(NULL == cryptopunks_collection_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cryptopunks_collection_dto->entry_time) {
        free(cryptopunks_collection_dto->entry_time);
        cryptopunks_collection_dto->entry_time = NULL;
    }
    if (cryptopunks_collection_dto->recv_time) {
        free(cryptopunks_collection_dto->recv_time);
        cryptopunks_collection_dto->recv_time = NULL;
    }
    if (cryptopunks_collection_dto->block_range) {
        free(cryptopunks_collection_dto->block_range);
        cryptopunks_collection_dto->block_range = NULL;
    }
    if (cryptopunks_collection_dto->id) {
        free(cryptopunks_collection_dto->id);
        cryptopunks_collection_dto->id = NULL;
    }
    if (cryptopunks_collection_dto->name) {
        free(cryptopunks_collection_dto->name);
        cryptopunks_collection_dto->name = NULL;
    }
    if (cryptopunks_collection_dto->symbol) {
        free(cryptopunks_collection_dto->symbol);
        cryptopunks_collection_dto->symbol = NULL;
    }
    if (cryptopunks_collection_dto->total_supply) {
        free(cryptopunks_collection_dto->total_supply);
        cryptopunks_collection_dto->total_supply = NULL;
    }
    if (cryptopunks_collection_dto->royalty_fee) {
        free(cryptopunks_collection_dto->royalty_fee);
        cryptopunks_collection_dto->royalty_fee = NULL;
    }
    if (cryptopunks_collection_dto->cumulative_trade_volume_eth) {
        free(cryptopunks_collection_dto->cumulative_trade_volume_eth);
        cryptopunks_collection_dto->cumulative_trade_volume_eth = NULL;
    }
    if (cryptopunks_collection_dto->marketplace_revenue_eth) {
        free(cryptopunks_collection_dto->marketplace_revenue_eth);
        cryptopunks_collection_dto->marketplace_revenue_eth = NULL;
    }
    if (cryptopunks_collection_dto->creator_revenue_eth) {
        free(cryptopunks_collection_dto->creator_revenue_eth);
        cryptopunks_collection_dto->creator_revenue_eth = NULL;
    }
    if (cryptopunks_collection_dto->total_revenue_eth) {
        free(cryptopunks_collection_dto->total_revenue_eth);
        cryptopunks_collection_dto->total_revenue_eth = NULL;
    }
    free(cryptopunks_collection_dto);
}

cJSON *cryptopunks_collection_dto_convertToJSON(cryptopunks_collection_dto_t *cryptopunks_collection_dto) {
    cJSON *item = cJSON_CreateObject();

    // cryptopunks_collection_dto->entry_time
    if(cryptopunks_collection_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cryptopunks_collection_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_collection_dto->recv_time
    if(cryptopunks_collection_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cryptopunks_collection_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_collection_dto->block_number
    if(cryptopunks_collection_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", cryptopunks_collection_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_collection_dto->vid
    if(cryptopunks_collection_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cryptopunks_collection_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_collection_dto->block_range
    if(cryptopunks_collection_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", cryptopunks_collection_dto->block_range) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->id
    if(cryptopunks_collection_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cryptopunks_collection_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->name
    if(cryptopunks_collection_dto->name) {
    if(cJSON_AddStringToObject(item, "name", cryptopunks_collection_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->symbol
    if(cryptopunks_collection_dto->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", cryptopunks_collection_dto->symbol) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->total_supply
    if(cryptopunks_collection_dto->total_supply) {
    if(cJSON_AddStringToObject(item, "total_supply", cryptopunks_collection_dto->total_supply) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->royalty_fee
    if(cryptopunks_collection_dto->royalty_fee) {
    if(cJSON_AddStringToObject(item, "royalty_fee", cryptopunks_collection_dto->royalty_fee) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->cumulative_trade_volume_eth
    if(cryptopunks_collection_dto->cumulative_trade_volume_eth) {
    if(cJSON_AddStringToObject(item, "cumulative_trade_volume_eth", cryptopunks_collection_dto->cumulative_trade_volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->marketplace_revenue_eth
    if(cryptopunks_collection_dto->marketplace_revenue_eth) {
    if(cJSON_AddStringToObject(item, "marketplace_revenue_eth", cryptopunks_collection_dto->marketplace_revenue_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->creator_revenue_eth
    if(cryptopunks_collection_dto->creator_revenue_eth) {
    if(cJSON_AddStringToObject(item, "creator_revenue_eth", cryptopunks_collection_dto->creator_revenue_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->total_revenue_eth
    if(cryptopunks_collection_dto->total_revenue_eth) {
    if(cJSON_AddStringToObject(item, "total_revenue_eth", cryptopunks_collection_dto->total_revenue_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_collection_dto->trade_count
    if(cryptopunks_collection_dto->trade_count) {
    if(cJSON_AddNumberToObject(item, "trade_count", cryptopunks_collection_dto->trade_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_collection_dto->buyer_count
    if(cryptopunks_collection_dto->buyer_count) {
    if(cJSON_AddNumberToObject(item, "buyer_count", cryptopunks_collection_dto->buyer_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_collection_dto->seller_count
    if(cryptopunks_collection_dto->seller_count) {
    if(cJSON_AddNumberToObject(item, "seller_count", cryptopunks_collection_dto->seller_count) == NULL) {
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

cryptopunks_collection_dto_t *cryptopunks_collection_dto_parseFromJSON(cJSON *cryptopunks_collection_dtoJSON){

    cryptopunks_collection_dto_t *cryptopunks_collection_dto_local_var = NULL;

    // cryptopunks_collection_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_collection_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_collection_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_collection_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_collection_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "symbol");
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "total_supply");
    if (total_supply) { 
    if(!cJSON_IsString(total_supply) && !cJSON_IsNull(total_supply))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->royalty_fee
    cJSON *royalty_fee = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "royalty_fee");
    if (royalty_fee) { 
    if(!cJSON_IsString(royalty_fee) && !cJSON_IsNull(royalty_fee))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->cumulative_trade_volume_eth
    cJSON *cumulative_trade_volume_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "cumulative_trade_volume_eth");
    if (cumulative_trade_volume_eth) { 
    if(!cJSON_IsString(cumulative_trade_volume_eth) && !cJSON_IsNull(cumulative_trade_volume_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->marketplace_revenue_eth
    cJSON *marketplace_revenue_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "marketplace_revenue_eth");
    if (marketplace_revenue_eth) { 
    if(!cJSON_IsString(marketplace_revenue_eth) && !cJSON_IsNull(marketplace_revenue_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->creator_revenue_eth
    cJSON *creator_revenue_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "creator_revenue_eth");
    if (creator_revenue_eth) { 
    if(!cJSON_IsString(creator_revenue_eth) && !cJSON_IsNull(creator_revenue_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->total_revenue_eth
    cJSON *total_revenue_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "total_revenue_eth");
    if (total_revenue_eth) { 
    if(!cJSON_IsString(total_revenue_eth) && !cJSON_IsNull(total_revenue_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_collection_dto->trade_count
    cJSON *trade_count = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "trade_count");
    if (trade_count) { 
    if(!cJSON_IsNumber(trade_count))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_collection_dto->buyer_count
    cJSON *buyer_count = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "buyer_count");
    if (buyer_count) { 
    if(!cJSON_IsNumber(buyer_count))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_collection_dto->seller_count
    cJSON *seller_count = cJSON_GetObjectItemCaseSensitive(cryptopunks_collection_dtoJSON, "seller_count");
    if (seller_count) { 
    if(!cJSON_IsNumber(seller_count))
    {
    goto end; //Numeric
    }
    }


    cryptopunks_collection_dto_local_var = cryptopunks_collection_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        total_supply && !cJSON_IsNull(total_supply) ? strdup(total_supply->valuestring) : NULL,
        royalty_fee && !cJSON_IsNull(royalty_fee) ? strdup(royalty_fee->valuestring) : NULL,
        cumulative_trade_volume_eth && !cJSON_IsNull(cumulative_trade_volume_eth) ? strdup(cumulative_trade_volume_eth->valuestring) : NULL,
        marketplace_revenue_eth && !cJSON_IsNull(marketplace_revenue_eth) ? strdup(marketplace_revenue_eth->valuestring) : NULL,
        creator_revenue_eth && !cJSON_IsNull(creator_revenue_eth) ? strdup(creator_revenue_eth->valuestring) : NULL,
        total_revenue_eth && !cJSON_IsNull(total_revenue_eth) ? strdup(total_revenue_eth->valuestring) : NULL,
        trade_count ? trade_count->valuedouble : 0,
        buyer_count ? buyer_count->valuedouble : 0,
        seller_count ? seller_count->valuedouble : 0
        );

    return cryptopunks_collection_dto_local_var;
end:
    return NULL;

}
