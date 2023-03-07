#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cryptopunks_marketplace_daily_snapshot_dto.h"



cryptopunks_marketplace_daily_snapshot_dto_t *cryptopunks_marketplace_daily_snapshot_dto_create(
    char *entry_time,
    char *recv_time,
    char *block_number,
    long vid,
    char *block_range,
    char *id,
    char *marketplace,
    char *timestamp,
    int collection_count,
    char *cumulative_trade_volume_eth,
    char *marketplace_revenue_eth,
    char *creator_revenue_eth,
    char *total_revenue_eth,
    int trade_count,
    int cumulative_unique_traders,
    int daily_active_traders,
    int daily_traded_collection_count,
    int daily_traded_item_count
    ) {
    cryptopunks_marketplace_daily_snapshot_dto_t *cryptopunks_marketplace_daily_snapshot_dto_local_var = malloc(sizeof(cryptopunks_marketplace_daily_snapshot_dto_t));
    if (!cryptopunks_marketplace_daily_snapshot_dto_local_var) {
        return NULL;
    }
    cryptopunks_marketplace_daily_snapshot_dto_local_var->entry_time = entry_time;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->recv_time = recv_time;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->block_number = block_number;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->vid = vid;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->block_range = block_range;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->id = id;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->marketplace = marketplace;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->timestamp = timestamp;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->collection_count = collection_count;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->cumulative_trade_volume_eth = cumulative_trade_volume_eth;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->marketplace_revenue_eth = marketplace_revenue_eth;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->creator_revenue_eth = creator_revenue_eth;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->total_revenue_eth = total_revenue_eth;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->trade_count = trade_count;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->cumulative_unique_traders = cumulative_unique_traders;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->daily_active_traders = daily_active_traders;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->daily_traded_collection_count = daily_traded_collection_count;
    cryptopunks_marketplace_daily_snapshot_dto_local_var->daily_traded_item_count = daily_traded_item_count;

    return cryptopunks_marketplace_daily_snapshot_dto_local_var;
}


void cryptopunks_marketplace_daily_snapshot_dto_free(cryptopunks_marketplace_daily_snapshot_dto_t *cryptopunks_marketplace_daily_snapshot_dto) {
    if(NULL == cryptopunks_marketplace_daily_snapshot_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cryptopunks_marketplace_daily_snapshot_dto->entry_time) {
        free(cryptopunks_marketplace_daily_snapshot_dto->entry_time);
        cryptopunks_marketplace_daily_snapshot_dto->entry_time = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->recv_time) {
        free(cryptopunks_marketplace_daily_snapshot_dto->recv_time);
        cryptopunks_marketplace_daily_snapshot_dto->recv_time = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->block_number) {
        free(cryptopunks_marketplace_daily_snapshot_dto->block_number);
        cryptopunks_marketplace_daily_snapshot_dto->block_number = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->block_range) {
        free(cryptopunks_marketplace_daily_snapshot_dto->block_range);
        cryptopunks_marketplace_daily_snapshot_dto->block_range = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->id) {
        free(cryptopunks_marketplace_daily_snapshot_dto->id);
        cryptopunks_marketplace_daily_snapshot_dto->id = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->marketplace) {
        free(cryptopunks_marketplace_daily_snapshot_dto->marketplace);
        cryptopunks_marketplace_daily_snapshot_dto->marketplace = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->timestamp) {
        free(cryptopunks_marketplace_daily_snapshot_dto->timestamp);
        cryptopunks_marketplace_daily_snapshot_dto->timestamp = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->cumulative_trade_volume_eth) {
        free(cryptopunks_marketplace_daily_snapshot_dto->cumulative_trade_volume_eth);
        cryptopunks_marketplace_daily_snapshot_dto->cumulative_trade_volume_eth = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->marketplace_revenue_eth) {
        free(cryptopunks_marketplace_daily_snapshot_dto->marketplace_revenue_eth);
        cryptopunks_marketplace_daily_snapshot_dto->marketplace_revenue_eth = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->creator_revenue_eth) {
        free(cryptopunks_marketplace_daily_snapshot_dto->creator_revenue_eth);
        cryptopunks_marketplace_daily_snapshot_dto->creator_revenue_eth = NULL;
    }
    if (cryptopunks_marketplace_daily_snapshot_dto->total_revenue_eth) {
        free(cryptopunks_marketplace_daily_snapshot_dto->total_revenue_eth);
        cryptopunks_marketplace_daily_snapshot_dto->total_revenue_eth = NULL;
    }
    free(cryptopunks_marketplace_daily_snapshot_dto);
}

cJSON *cryptopunks_marketplace_daily_snapshot_dto_convertToJSON(cryptopunks_marketplace_daily_snapshot_dto_t *cryptopunks_marketplace_daily_snapshot_dto) {
    cJSON *item = cJSON_CreateObject();

    // cryptopunks_marketplace_daily_snapshot_dto->entry_time
    if(cryptopunks_marketplace_daily_snapshot_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cryptopunks_marketplace_daily_snapshot_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->recv_time
    if(cryptopunks_marketplace_daily_snapshot_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cryptopunks_marketplace_daily_snapshot_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->block_number
    if(cryptopunks_marketplace_daily_snapshot_dto->block_number) {
    if(cJSON_AddStringToObject(item, "block_number", cryptopunks_marketplace_daily_snapshot_dto->block_number) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->vid
    if(cryptopunks_marketplace_daily_snapshot_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cryptopunks_marketplace_daily_snapshot_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->block_range
    if(cryptopunks_marketplace_daily_snapshot_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", cryptopunks_marketplace_daily_snapshot_dto->block_range) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->id
    if(cryptopunks_marketplace_daily_snapshot_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cryptopunks_marketplace_daily_snapshot_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->marketplace
    if(cryptopunks_marketplace_daily_snapshot_dto->marketplace) {
    if(cJSON_AddStringToObject(item, "marketplace", cryptopunks_marketplace_daily_snapshot_dto->marketplace) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->timestamp
    if(cryptopunks_marketplace_daily_snapshot_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", cryptopunks_marketplace_daily_snapshot_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->collection_count
    if(cryptopunks_marketplace_daily_snapshot_dto->collection_count) {
    if(cJSON_AddNumberToObject(item, "collection_count", cryptopunks_marketplace_daily_snapshot_dto->collection_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->cumulative_trade_volume_eth
    if(cryptopunks_marketplace_daily_snapshot_dto->cumulative_trade_volume_eth) {
    if(cJSON_AddStringToObject(item, "cumulative_trade_volume_eth", cryptopunks_marketplace_daily_snapshot_dto->cumulative_trade_volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->marketplace_revenue_eth
    if(cryptopunks_marketplace_daily_snapshot_dto->marketplace_revenue_eth) {
    if(cJSON_AddStringToObject(item, "marketplace_revenue_eth", cryptopunks_marketplace_daily_snapshot_dto->marketplace_revenue_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->creator_revenue_eth
    if(cryptopunks_marketplace_daily_snapshot_dto->creator_revenue_eth) {
    if(cJSON_AddStringToObject(item, "creator_revenue_eth", cryptopunks_marketplace_daily_snapshot_dto->creator_revenue_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->total_revenue_eth
    if(cryptopunks_marketplace_daily_snapshot_dto->total_revenue_eth) {
    if(cJSON_AddStringToObject(item, "total_revenue_eth", cryptopunks_marketplace_daily_snapshot_dto->total_revenue_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->trade_count
    if(cryptopunks_marketplace_daily_snapshot_dto->trade_count) {
    if(cJSON_AddNumberToObject(item, "trade_count", cryptopunks_marketplace_daily_snapshot_dto->trade_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->cumulative_unique_traders
    if(cryptopunks_marketplace_daily_snapshot_dto->cumulative_unique_traders) {
    if(cJSON_AddNumberToObject(item, "cumulative_unique_traders", cryptopunks_marketplace_daily_snapshot_dto->cumulative_unique_traders) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->daily_active_traders
    if(cryptopunks_marketplace_daily_snapshot_dto->daily_active_traders) {
    if(cJSON_AddNumberToObject(item, "daily_active_traders", cryptopunks_marketplace_daily_snapshot_dto->daily_active_traders) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->daily_traded_collection_count
    if(cryptopunks_marketplace_daily_snapshot_dto->daily_traded_collection_count) {
    if(cJSON_AddNumberToObject(item, "daily_traded_collection_count", cryptopunks_marketplace_daily_snapshot_dto->daily_traded_collection_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_marketplace_daily_snapshot_dto->daily_traded_item_count
    if(cryptopunks_marketplace_daily_snapshot_dto->daily_traded_item_count) {
    if(cJSON_AddNumberToObject(item, "daily_traded_item_count", cryptopunks_marketplace_daily_snapshot_dto->daily_traded_item_count) == NULL) {
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

cryptopunks_marketplace_daily_snapshot_dto_t *cryptopunks_marketplace_daily_snapshot_dto_parseFromJSON(cJSON *cryptopunks_marketplace_daily_snapshot_dtoJSON){

    cryptopunks_marketplace_daily_snapshot_dto_t *cryptopunks_marketplace_daily_snapshot_dto_local_var = NULL;

    // cryptopunks_marketplace_daily_snapshot_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsString(block_number) && !cJSON_IsNull(block_number))
    {
    goto end; //String
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->marketplace
    cJSON *marketplace = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "marketplace");
    if (marketplace) { 
    if(!cJSON_IsString(marketplace) && !cJSON_IsNull(marketplace))
    {
    goto end; //String
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->collection_count
    cJSON *collection_count = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "collection_count");
    if (collection_count) { 
    if(!cJSON_IsNumber(collection_count))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->cumulative_trade_volume_eth
    cJSON *cumulative_trade_volume_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "cumulative_trade_volume_eth");
    if (cumulative_trade_volume_eth) { 
    if(!cJSON_IsString(cumulative_trade_volume_eth) && !cJSON_IsNull(cumulative_trade_volume_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->marketplace_revenue_eth
    cJSON *marketplace_revenue_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "marketplace_revenue_eth");
    if (marketplace_revenue_eth) { 
    if(!cJSON_IsString(marketplace_revenue_eth) && !cJSON_IsNull(marketplace_revenue_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->creator_revenue_eth
    cJSON *creator_revenue_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "creator_revenue_eth");
    if (creator_revenue_eth) { 
    if(!cJSON_IsString(creator_revenue_eth) && !cJSON_IsNull(creator_revenue_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->total_revenue_eth
    cJSON *total_revenue_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "total_revenue_eth");
    if (total_revenue_eth) { 
    if(!cJSON_IsString(total_revenue_eth) && !cJSON_IsNull(total_revenue_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->trade_count
    cJSON *trade_count = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "trade_count");
    if (trade_count) { 
    if(!cJSON_IsNumber(trade_count))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->cumulative_unique_traders
    cJSON *cumulative_unique_traders = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "cumulative_unique_traders");
    if (cumulative_unique_traders) { 
    if(!cJSON_IsNumber(cumulative_unique_traders))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->daily_active_traders
    cJSON *daily_active_traders = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "daily_active_traders");
    if (daily_active_traders) { 
    if(!cJSON_IsNumber(daily_active_traders))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->daily_traded_collection_count
    cJSON *daily_traded_collection_count = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "daily_traded_collection_count");
    if (daily_traded_collection_count) { 
    if(!cJSON_IsNumber(daily_traded_collection_count))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_marketplace_daily_snapshot_dto->daily_traded_item_count
    cJSON *daily_traded_item_count = cJSON_GetObjectItemCaseSensitive(cryptopunks_marketplace_daily_snapshot_dtoJSON, "daily_traded_item_count");
    if (daily_traded_item_count) { 
    if(!cJSON_IsNumber(daily_traded_item_count))
    {
    goto end; //Numeric
    }
    }


    cryptopunks_marketplace_daily_snapshot_dto_local_var = cryptopunks_marketplace_daily_snapshot_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number && !cJSON_IsNull(block_number) ? strdup(block_number->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        marketplace && !cJSON_IsNull(marketplace) ? strdup(marketplace->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        collection_count ? collection_count->valuedouble : 0,
        cumulative_trade_volume_eth && !cJSON_IsNull(cumulative_trade_volume_eth) ? strdup(cumulative_trade_volume_eth->valuestring) : NULL,
        marketplace_revenue_eth && !cJSON_IsNull(marketplace_revenue_eth) ? strdup(marketplace_revenue_eth->valuestring) : NULL,
        creator_revenue_eth && !cJSON_IsNull(creator_revenue_eth) ? strdup(creator_revenue_eth->valuestring) : NULL,
        total_revenue_eth && !cJSON_IsNull(total_revenue_eth) ? strdup(total_revenue_eth->valuestring) : NULL,
        trade_count ? trade_count->valuedouble : 0,
        cumulative_unique_traders ? cumulative_unique_traders->valuedouble : 0,
        daily_active_traders ? daily_active_traders->valuedouble : 0,
        daily_traded_collection_count ? daily_traded_collection_count->valuedouble : 0,
        daily_traded_item_count ? daily_traded_item_count->valuedouble : 0
        );

    return cryptopunks_marketplace_daily_snapshot_dto_local_var;
end:
    return NULL;

}
