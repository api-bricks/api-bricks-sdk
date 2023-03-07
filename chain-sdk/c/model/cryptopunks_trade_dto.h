/*
 * cryptopunks_trade_dto.h
 *
 * 
 */

#ifndef _cryptopunks_trade_dto_H_
#define _cryptopunks_trade_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cryptopunks_trade_dto_t cryptopunks_trade_dto_t;




typedef struct cryptopunks_trade_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    char *block_number; // string
    long vid; //numeric
    char *block_range; // string
    char *id; // string
    char *transaction_hash; // string
    int log_index; //numeric
    char *timestamp; // string
    int is_bundle; //boolean
    char *collection; // string
    char *token_id; // string
    char *amount; // string
    char *price_eth; // string
    char *buyer; // string
    char *seller; // string

} cryptopunks_trade_dto_t;

cryptopunks_trade_dto_t *cryptopunks_trade_dto_create(
    char *entry_time,
    char *recv_time,
    char *block_number,
    long vid,
    char *block_range,
    char *id,
    char *transaction_hash,
    int log_index,
    char *timestamp,
    int is_bundle,
    char *collection,
    char *token_id,
    char *amount,
    char *price_eth,
    char *buyer,
    char *seller
);

void cryptopunks_trade_dto_free(cryptopunks_trade_dto_t *cryptopunks_trade_dto);

cryptopunks_trade_dto_t *cryptopunks_trade_dto_parseFromJSON(cJSON *cryptopunks_trade_dtoJSON);

cJSON *cryptopunks_trade_dto_convertToJSON(cryptopunks_trade_dto_t *cryptopunks_trade_dto);

#endif /* _cryptopunks_trade_dto_H_ */

