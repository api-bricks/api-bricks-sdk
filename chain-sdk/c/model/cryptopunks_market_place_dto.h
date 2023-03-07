/*
 * cryptopunks_market_place_dto.h
 *
 * 
 */

#ifndef _cryptopunks_market_place_dto_H_
#define _cryptopunks_market_place_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cryptopunks_market_place_dto_t cryptopunks_market_place_dto_t;




typedef struct cryptopunks_market_place_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *block_range; // string
    char *id; // string
    char *name; // string
    char *slug; // string
    char *schema_version; // string
    char *subgraph_version; // string
    char *methodology_version; // string
    int collection_count; //numeric
    int trade_count; //numeric
    char *cumulative_trade_volume_eth; // string
    char *marketplace_revenue_eth; // string
    char *creator_revenue_eth; // string
    char *total_revenue_eth; // string
    int cumulative_unique_traders; //numeric

} cryptopunks_market_place_dto_t;

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
);

void cryptopunks_market_place_dto_free(cryptopunks_market_place_dto_t *cryptopunks_market_place_dto);

cryptopunks_market_place_dto_t *cryptopunks_market_place_dto_parseFromJSON(cJSON *cryptopunks_market_place_dtoJSON);

cJSON *cryptopunks_market_place_dto_convertToJSON(cryptopunks_market_place_dto_t *cryptopunks_market_place_dto);

#endif /* _cryptopunks_market_place_dto_H_ */

