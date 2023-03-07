/*
 * cryptopunks_bid_dto.h
 *
 * 
 */

#ifndef _cryptopunks_bid_dto_H_
#define _cryptopunks_bid_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cryptopunks_bid_dto_t cryptopunks_bid_dto_t;




typedef struct cryptopunks_bid_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    char *block_number; // string
    long vid; //numeric
    char *block_range; // string
    char *id; // string
    char *tokens_bid; // string
    char *token_id; // string
    char *timestamp; // string
    char *bidder; // string

} cryptopunks_bid_dto_t;

cryptopunks_bid_dto_t *cryptopunks_bid_dto_create(
    char *entry_time,
    char *recv_time,
    char *block_number,
    long vid,
    char *block_range,
    char *id,
    char *tokens_bid,
    char *token_id,
    char *timestamp,
    char *bidder
);

void cryptopunks_bid_dto_free(cryptopunks_bid_dto_t *cryptopunks_bid_dto);

cryptopunks_bid_dto_t *cryptopunks_bid_dto_parseFromJSON(cJSON *cryptopunks_bid_dtoJSON);

cJSON *cryptopunks_bid_dto_convertToJSON(cryptopunks_bid_dto_t *cryptopunks_bid_dto);

#endif /* _cryptopunks_bid_dto_H_ */

