/*
 * ord_side.h
 *
 * Side of order. 
 */

#ifndef _ord_side_H_
#define _ord_side_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ord_side_t ord_side_t;


// Enum  for ord_side

typedef enum { ems___rest_api_ord_side__NULL = 0, ems___rest_api_ord_side__BUY, ems___rest_api_ord_side__SELL } ems___rest_api_ord_side__e;

char* ord_side_ord_side_ToString(ems___rest_api_ord_side__e ord_side);

ems___rest_api_ord_side__e ord_side_ord_side_FromString(char* ord_side);

//cJSON *ord_side_ord_side_convertToJSON(ems___rest_api_ord_side__e ord_side);

//ems___rest_api_ord_side__e ord_side_ord_side_parseFromJSON(cJSON *ord_sideJSON);

#endif /* _ord_side_H_ */

