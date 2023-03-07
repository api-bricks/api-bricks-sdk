/*
 * cryptopunks_collection_dto.h
 *
 * 
 */

#ifndef _cryptopunks_collection_dto_H_
#define _cryptopunks_collection_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cryptopunks_collection_dto_t cryptopunks_collection_dto_t;




typedef struct cryptopunks_collection_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *block_range; // string
    char *id; // string
    char *name; // string
    char *symbol; // string
    char *total_supply; // string
    char *royalty_fee; // string
    char *cumulative_trade_volume_eth; // string
    char *marketplace_revenue_eth; // string
    char *creator_revenue_eth; // string
    char *total_revenue_eth; // string
    int trade_count; //numeric
    int buyer_count; //numeric
    int seller_count; //numeric

} cryptopunks_collection_dto_t;

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
);

void cryptopunks_collection_dto_free(cryptopunks_collection_dto_t *cryptopunks_collection_dto);

cryptopunks_collection_dto_t *cryptopunks_collection_dto_parseFromJSON(cJSON *cryptopunks_collection_dtoJSON);

cJSON *cryptopunks_collection_dto_convertToJSON(cryptopunks_collection_dto_t *cryptopunks_collection_dto);

#endif /* _cryptopunks_collection_dto_H_ */

