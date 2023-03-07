/*
 * cryptopunks_marketplace_daily_snapshot_dto.h
 *
 * 
 */

#ifndef _cryptopunks_marketplace_daily_snapshot_dto_H_
#define _cryptopunks_marketplace_daily_snapshot_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cryptopunks_marketplace_daily_snapshot_dto_t cryptopunks_marketplace_daily_snapshot_dto_t;




typedef struct cryptopunks_marketplace_daily_snapshot_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    char *block_number; // string
    long vid; //numeric
    char *block_range; // string
    char *id; // string
    char *marketplace; // string
    char *timestamp; // string
    int collection_count; //numeric
    char *cumulative_trade_volume_eth; // string
    char *marketplace_revenue_eth; // string
    char *creator_revenue_eth; // string
    char *total_revenue_eth; // string
    int trade_count; //numeric
    int cumulative_unique_traders; //numeric
    int daily_active_traders; //numeric
    int daily_traded_collection_count; //numeric
    int daily_traded_item_count; //numeric

} cryptopunks_marketplace_daily_snapshot_dto_t;

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
);

void cryptopunks_marketplace_daily_snapshot_dto_free(cryptopunks_marketplace_daily_snapshot_dto_t *cryptopunks_marketplace_daily_snapshot_dto);

cryptopunks_marketplace_daily_snapshot_dto_t *cryptopunks_marketplace_daily_snapshot_dto_parseFromJSON(cJSON *cryptopunks_marketplace_daily_snapshot_dtoJSON);

cJSON *cryptopunks_marketplace_daily_snapshot_dto_convertToJSON(cryptopunks_marketplace_daily_snapshot_dto_t *cryptopunks_marketplace_daily_snapshot_dto);

#endif /* _cryptopunks_marketplace_daily_snapshot_dto_H_ */

