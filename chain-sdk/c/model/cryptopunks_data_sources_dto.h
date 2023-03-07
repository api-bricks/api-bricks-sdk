/*
 * cryptopunks_data_sources_dto.h
 *
 * 
 */

#ifndef _cryptopunks_data_sources_dto_H_
#define _cryptopunks_data_sources_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cryptopunks_data_sources_dto_t cryptopunks_data_sources_dto_t;




typedef struct cryptopunks_data_sources_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    int vid; //numeric
    char *block_range; // string
    int causality_region; //numeric
    int manifest_idx; //numeric
    int parent; //numeric
    char *id; // string
    char *param; // string
    char *context; // string
    int done_at; //numeric

} cryptopunks_data_sources_dto_t;

cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    int vid,
    char *block_range,
    int causality_region,
    int manifest_idx,
    int parent,
    char *id,
    char *param,
    char *context,
    int done_at
);

void cryptopunks_data_sources_dto_free(cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto);

cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto_parseFromJSON(cJSON *cryptopunks_data_sources_dtoJSON);

cJSON *cryptopunks_data_sources_dto_convertToJSON(cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto);

#endif /* _cryptopunks_data_sources_dto_H_ */

