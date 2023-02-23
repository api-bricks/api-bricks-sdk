/*
 * position.h
 *
 * 
 */

#ifndef _position_H_
#define _position_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct position_t position_t;

#include "position_data_inner.h"



typedef struct position_t {
    char *exchange_id; // string
    list_t *data; //nonprimitive container

} position_t;

position_t *position_create(
    char *exchange_id,
    list_t *data
);

void position_free(position_t *position);

position_t *position_parseFromJSON(cJSON *positionJSON);

cJSON *position_convertToJSON(position_t *position);

#endif /* _position_H_ */

