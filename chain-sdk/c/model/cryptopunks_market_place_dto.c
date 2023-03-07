#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cryptopunks_market_place_dto.h"



cryptopunks_market_place_dto_t *cryptopunks_market_place_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *block_range,
    char *id,
    char *name,
    char *slug,
    char *schema_version,
    char *subgraph_version,
    char *methodology_version,
    int collection_count,
    int trade_count,
    char *cumulative_trade_volume_eth,
    char *marketplace_revenue_eth,
    char *creator_revenue_eth,
    char *total_revenue_eth,
    int cumulative_unique_traders
    ) {
    cryptopunks_market_place_dto_t *cryptopunks_market_place_dto_local_var = malloc(sizeof(cryptopunks_market_place_dto_t));
    if (!cryptopunks_market_place_dto_local_var) {
        return NULL;
    }
    cryptopunks_market_place_dto_local_var->entry_time = entry_time;
    cryptopunks_market_place_dto_local_var->recv_time = recv_time;
    cryptopunks_market_place_dto_local_var->block_number = block_number;
    cryptopunks_market_place_dto_local_var->vid = vid;
    cryptopunks_market_place_dto_local_var->block_range = block_range;
    cryptopunks_market_place_dto_local_var->id = id;
    cryptopunks_market_place_dto_local_var->name = name;
    cryptopunks_market_place_dto_local_var->slug = slug;
    cryptopunks_market_place_dto_local_var->schema_version = schema_version;
    cryptopunks_market_place_dto_local_var->subgraph_version = subgraph_version;
    cryptopunks_market_place_dto_local_var->methodology_version = methodology_version;
    cryptopunks_market_place_dto_local_var->collection_count = collection_count;
    cryptopunks_market_place_dto_local_var->trade_count = trade_count;
    cryptopunks_market_place_dto_local_var->cumulative_trade_volume_eth = cumulative_trade_volume_eth;
    cryptopunks_market_place_dto_local_var->marketplace_revenue_eth = marketplace_revenue_eth;
    cryptopunks_market_place_dto_local_var->creator_revenue_eth = creator_revenue_eth;
    cryptopunks_market_place_dto_local_var->total_revenue_eth = total_revenue_eth;
    cryptopunks_market_place_dto_local_var->cumulative_unique_traders = cumulative_unique_traders;

    return cryptopunks_market_place_dto_local_var;
}


void cryptopunks_market_place_dto_free(cryptopunks_market_place_dto_t *cryptopunks_market_place_dto) {
    if(NULL == cryptopunks_market_place_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cryptopunks_market_place_dto->entry_time) {
        free(cryptopunks_market_place_dto->entry_time);
        cryptopunks_market_place_dto->entry_time = NULL;
    }
    if (cryptopunks_market_place_dto->recv_time) {
        free(cryptopunks_market_place_dto->recv_time);
        cryptopunks_market_place_dto->recv_time = NULL;
    }
    if (cryptopunks_market_place_dto->block_range) {
        free(cryptopunks_market_place_dto->block_range);
        cryptopunks_market_place_dto->block_range = NULL;
    }
    if (cryptopunks_market_place_dto->id) {
        free(cryptopunks_market_place_dto->id);
        cryptopunks_market_place_dto->id = NULL;
    }
    if (cryptopunks_market_place_dto->name) {
        free(cryptopunks_market_place_dto->name);
        cryptopunks_market_place_dto->name = NULL;
    }
    if (cryptopunks_market_place_dto->slug) {
        free(cryptopunks_market_place_dto->slug);
        cryptopunks_market_place_dto->slug = NULL;
    }
    if (cryptopunks_market_place_dto->schema_version) {
        free(cryptopunks_market_place_dto->schema_version);
        cryptopunks_market_place_dto->schema_version = NULL;
    }
    if (cryptopunks_market_place_dto->subgraph_version) {
        free(cryptopunks_market_place_dto->subgraph_version);
        cryptopunks_market_place_dto->subgraph_version = NULL;
    }
    if (cryptopunks_market_place_dto->methodology_version) {
        free(cryptopunks_market_place_dto->methodology_version);
        cryptopunks_market_place_dto->methodology_version = NULL;
    }
    if (cryptopunks_market_place_dto->cumulative_trade_volume_eth) {
        free(cryptopunks_market_place_dto->cumulative_trade_volume_eth);
        cryptopunks_market_place_dto->cumulative_trade_volume_eth = NULL;
    }
    if (cryptopunks_market_place_dto->marketplace_revenue_eth) {
        free(cryptopunks_market_place_dto->marketplace_revenue_eth);
        cryptopunks_market_place_dto->marketplace_revenue_eth = NULL;
    }
    if (cryptopunks_market_place_dto->creator_revenue_eth) {
        free(cryptopunks_market_place_dto->creator_revenue_eth);
        cryptopunks_market_place_dto->creator_revenue_eth = NULL;
    }
    if (cryptopunks_market_place_dto->total_revenue_eth) {
        free(cryptopunks_market_place_dto->total_revenue_eth);
        cryptopunks_market_place_dto->total_revenue_eth = NULL;
    }
    free(cryptopunks_market_place_dto);
}

cJSON *cryptopunks_market_place_dto_convertToJSON(cryptopunks_market_place_dto_t *cryptopunks_market_place_dto) {
    cJSON *item = cJSON_CreateObject();

    // cryptopunks_market_place_dto->entry_time
    if(cryptopunks_market_place_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cryptopunks_market_place_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_market_place_dto->recv_time
    if(cryptopunks_market_place_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cryptopunks_market_place_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_market_place_dto->block_number
    if(cryptopunks_market_place_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", cryptopunks_market_place_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_market_place_dto->vid
    if(cryptopunks_market_place_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cryptopunks_market_place_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_market_place_dto->block_range
    if(cryptopunks_market_place_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", cryptopunks_market_place_dto->block_range) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->id
    if(cryptopunks_market_place_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cryptopunks_market_place_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->name
    if(cryptopunks_market_place_dto->name) {
    if(cJSON_AddStringToObject(item, "name", cryptopunks_market_place_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->slug
    if(cryptopunks_market_place_dto->slug) {
    if(cJSON_AddStringToObject(item, "slug", cryptopunks_market_place_dto->slug) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->schema_version
    if(cryptopunks_market_place_dto->schema_version) {
    if(cJSON_AddStringToObject(item, "schema_version", cryptopunks_market_place_dto->schema_version) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->subgraph_version
    if(cryptopunks_market_place_dto->subgraph_version) {
    if(cJSON_AddStringToObject(item, "subgraph_version", cryptopunks_market_place_dto->subgraph_version) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->methodology_version
    if(cryptopunks_market_place_dto->methodology_version) {
    if(cJSON_AddStringToObject(item, "methodology_version", cryptopunks_market_place_dto->methodology_version) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->collection_count
    if(cryptopunks_market_place_dto->collection_count) {
    if(cJSON_AddNumberToObject(item, "collection_count", cryptopunks_market_place_dto->collection_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_market_place_dto->trade_count
    if(cryptopunks_market_place_dto->trade_count) {
    if(cJSON_AddNumberToObject(item, "trade_count", cryptopunks_market_place_dto->trade_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_market_place_dto->cumulative_trade_volume_eth
    if(cryptopunks_market_place_dto->cumulative_trade_volume_eth) {
    if(cJSON_AddStringToObject(item, "cumulative_trade_volume_eth", cryptopunks_market_place_dto->cumulative_trade_volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->marketplace_revenue_eth
    if(cryptopunks_market_place_dto->marketplace_revenue_eth) {
    if(cJSON_AddStringToObject(item, "marketplace_revenue_eth", cryptopunks_market_place_dto->marketplace_revenue_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->creator_revenue_eth
    if(cryptopunks_market_place_dto->creator_revenue_eth) {
    if(cJSON_AddStringToObject(item, "creator_revenue_eth", cryptopunks_market_place_dto->creator_revenue_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->total_revenue_eth
    if(cryptopunks_market_place_dto->total_revenue_eth) {
    if(cJSON_AddStringToObject(item, "total_revenue_eth", cryptopunks_market_place_dto->total_revenue_eth) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_market_place_dto->cumulative_unique_traders
    if(cryptopunks_market_place_dto->cumulative_unique_traders) {
    if(cJSON_AddNumberToObject(item, "cumulative_unique_traders", cryptopunks_market_place_dto->cumulative_unique_traders) == NULL) {
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

cryptopunks_market_place_dto_t *cryptopunks_market_place_dto_parseFromJSON(cJSON *cryptopunks_market_place_dtoJSON){

    cryptopunks_market_place_dto_t *cryptopunks_market_place_dto_local_var = NULL;

    // cryptopunks_market_place_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_market_place_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_market_place_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_market_place_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_market_place_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->slug
    cJSON *slug = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "slug");
    if (slug) { 
    if(!cJSON_IsString(slug) && !cJSON_IsNull(slug))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->schema_version
    cJSON *schema_version = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "schema_version");
    if (schema_version) { 
    if(!cJSON_IsString(schema_version) && !cJSON_IsNull(schema_version))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->subgraph_version
    cJSON *subgraph_version = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "subgraph_version");
    if (subgraph_version) { 
    if(!cJSON_IsString(subgraph_version) && !cJSON_IsNull(subgraph_version))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->methodology_version
    cJSON *methodology_version = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "methodology_version");
    if (methodology_version) { 
    if(!cJSON_IsString(methodology_version) && !cJSON_IsNull(methodology_version))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->collection_count
    cJSON *collection_count = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "collection_count");
    if (collection_count) { 
    if(!cJSON_IsNumber(collection_count))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_market_place_dto->trade_count
    cJSON *trade_count = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "trade_count");
    if (trade_count) { 
    if(!cJSON_IsNumber(trade_count))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_market_place_dto->cumulative_trade_volume_eth
    cJSON *cumulative_trade_volume_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "cumulative_trade_volume_eth");
    if (cumulative_trade_volume_eth) { 
    if(!cJSON_IsString(cumulative_trade_volume_eth) && !cJSON_IsNull(cumulative_trade_volume_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->marketplace_revenue_eth
    cJSON *marketplace_revenue_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "marketplace_revenue_eth");
    if (marketplace_revenue_eth) { 
    if(!cJSON_IsString(marketplace_revenue_eth) && !cJSON_IsNull(marketplace_revenue_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->creator_revenue_eth
    cJSON *creator_revenue_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "creator_revenue_eth");
    if (creator_revenue_eth) { 
    if(!cJSON_IsString(creator_revenue_eth) && !cJSON_IsNull(creator_revenue_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->total_revenue_eth
    cJSON *total_revenue_eth = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "total_revenue_eth");
    if (total_revenue_eth) { 
    if(!cJSON_IsString(total_revenue_eth) && !cJSON_IsNull(total_revenue_eth))
    {
    goto end; //String
    }
    }

    // cryptopunks_market_place_dto->cumulative_unique_traders
    cJSON *cumulative_unique_traders = cJSON_GetObjectItemCaseSensitive(cryptopunks_market_place_dtoJSON, "cumulative_unique_traders");
    if (cumulative_unique_traders) { 
    if(!cJSON_IsNumber(cumulative_unique_traders))
    {
    goto end; //Numeric
    }
    }


    cryptopunks_market_place_dto_local_var = cryptopunks_market_place_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        slug && !cJSON_IsNull(slug) ? strdup(slug->valuestring) : NULL,
        schema_version && !cJSON_IsNull(schema_version) ? strdup(schema_version->valuestring) : NULL,
        subgraph_version && !cJSON_IsNull(subgraph_version) ? strdup(subgraph_version->valuestring) : NULL,
        methodology_version && !cJSON_IsNull(methodology_version) ? strdup(methodology_version->valuestring) : NULL,
        collection_count ? collection_count->valuedouble : 0,
        trade_count ? trade_count->valuedouble : 0,
        cumulative_trade_volume_eth && !cJSON_IsNull(cumulative_trade_volume_eth) ? strdup(cumulative_trade_volume_eth->valuestring) : NULL,
        marketplace_revenue_eth && !cJSON_IsNull(marketplace_revenue_eth) ? strdup(marketplace_revenue_eth->valuestring) : NULL,
        creator_revenue_eth && !cJSON_IsNull(creator_revenue_eth) ? strdup(creator_revenue_eth->valuestring) : NULL,
        total_revenue_eth && !cJSON_IsNull(total_revenue_eth) ? strdup(total_revenue_eth->valuestring) : NULL,
        cumulative_unique_traders ? cumulative_unique_traders->valuedouble : 0
        );

    return cryptopunks_market_place_dto_local_var;
end:
    return NULL;

}
