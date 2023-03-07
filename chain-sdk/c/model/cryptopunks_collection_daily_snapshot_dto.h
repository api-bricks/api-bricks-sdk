/*
 * cryptopunks_collection_daily_snapshot_dto.h
 *
 * 
 */

#ifndef _cryptopunks_collection_daily_snapshot_dto_H_
#define _cryptopunks_collection_daily_snapshot_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cryptopunks_collection_daily_snapshot_dto_t cryptopunks_collection_daily_snapshot_dto_t;




typedef struct cryptopunks_collection_daily_snapshot_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    char *block_number; // string
    long vid; //numeric
    char *block_range; // string
    char *id; // string
    char *collection; // string
    char *timestamp; // string
    char *royalty_fee; // string
    char *daily_min_sale_price; // string
    char *daily_max_sale_price; // string
    char *cumulative_trade_volume_eth; // string
    char *daily_trade_volume_eth; // string
    char *marketplace_revenue_eth; // string
    char *creator_revenue_eth; // string
    char *total_revenue_eth; // string
    int trade_count; //numeric
    int daily_traded_item_count; //numeric

} cryptopunks_collection_daily_snapshot_dto_t;

cryptopunks_collection_daily_snapshot_dto_t *cryptopunks_collection_daily_snapshot_dto_create(
    char *entry_time,
    char *recv_time,
    char *block_number,
    long vid,
    char *block_range,
    char *id,
    char *collection,
    char *timestamp,
    char *royalty_fee,
    char *daily_min_sale_price,
    char *daily_max_sale_price,
    char *cumulative_trade_volume_eth,
    char *daily_trade_volume_eth,
    char *marketplace_revenue_eth,
    char *creator_revenue_eth,
    char *total_revenue_eth,
    int trade_count,
    int daily_traded_item_count
);

void cryptopunks_collection_daily_snapshot_dto_free(cryptopunks_collection_daily_snapshot_dto_t *cryptopunks_collection_daily_snapshot_dto);

cryptopunks_collection_daily_snapshot_dto_t *cryptopunks_collection_daily_snapshot_dto_parseFromJSON(cJSON *cryptopunks_collection_daily_snapshot_dtoJSON);

cJSON *cryptopunks_collection_daily_snapshot_dto_convertToJSON(cryptopunks_collection_daily_snapshot_dto_t *cryptopunks_collection_daily_snapshot_dto);

#endif /* _cryptopunks_collection_daily_snapshot_dto_H_ */

