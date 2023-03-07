/*
 * cryptopunks_item_dto.h
 *
 * 
 */

#ifndef _cryptopunks_item_dto_H_
#define _cryptopunks_item_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cryptopunks_item_dto_t cryptopunks_item_dto_t;




typedef struct cryptopunks_item_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *block_range; // string
    char *id; // string

} cryptopunks_item_dto_t;

cryptopunks_item_dto_t *cryptopunks_item_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *block_range,
    char *id
);

void cryptopunks_item_dto_free(cryptopunks_item_dto_t *cryptopunks_item_dto);

cryptopunks_item_dto_t *cryptopunks_item_dto_parseFromJSON(cJSON *cryptopunks_item_dtoJSON);

cJSON *cryptopunks_item_dto_convertToJSON(cryptopunks_item_dto_t *cryptopunks_item_dto);

#endif /* _cryptopunks_item_dto_H_ */

