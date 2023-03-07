/*
 * cryptopunks_user_dto.h
 *
 * 
 */

#ifndef _cryptopunks_user_dto_H_
#define _cryptopunks_user_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cryptopunks_user_dto_t cryptopunks_user_dto_t;




typedef struct cryptopunks_user_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *block_range; // string
    char *id; // string

} cryptopunks_user_dto_t;

cryptopunks_user_dto_t *cryptopunks_user_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *block_range,
    char *id
);

void cryptopunks_user_dto_free(cryptopunks_user_dto_t *cryptopunks_user_dto);

cryptopunks_user_dto_t *cryptopunks_user_dto_parseFromJSON(cJSON *cryptopunks_user_dtoJSON);

cJSON *cryptopunks_user_dto_convertToJSON(cryptopunks_user_dto_t *cryptopunks_user_dto);

#endif /* _cryptopunks_user_dto_H_ */

