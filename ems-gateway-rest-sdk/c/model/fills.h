/*
 * fills.h
 *
 * 
 */

#ifndef _fills_H_
#define _fills_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct fills_t fills_t;




typedef struct fills_t {
    double price; //numeric
    double amount; //numeric

} fills_t;

fills_t *fills_create(
    double price,
    double amount
);

void fills_free(fills_t *fills);

fills_t *fills_parseFromJSON(cJSON *fillsJSON);

cJSON *fills_convertToJSON(fills_t *fills);

#endif /* _fills_H_ */

