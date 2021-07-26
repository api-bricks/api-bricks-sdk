/*
 * reject_reason.h
 *
 * Cause of rejection.
 */

#ifndef _reject_reason_H_
#define _reject_reason_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct reject_reason_t reject_reason_t;


// Enum  for reject_reason

typedef enum { oeml___rest_api_reject_reason__NULL = 0, oeml___rest_api_reject_reason__OTHER, oeml___rest_api_reject_reason__EXCHANGE_UNREACHABLE, oeml___rest_api_reject_reason__EXCHANGE_RESPONSE_TIMEOUT, oeml___rest_api_reject_reason__ORDER_ID_NOT_FOUND, oeml___rest_api_reject_reason__INVALID_TYPE, oeml___rest_api_reject_reason__METHOD_NOT_SUPPORTED, oeml___rest_api_reject_reason__JSON_ERROR } oeml___rest_api_reject_reason__e;

char* reject_reason_reject_reason_ToString(oeml___rest_api_reject_reason__e reject_reason);

oeml___rest_api_reject_reason__e reject_reason_reject_reason_FromString(char* reject_reason);

//cJSON *reject_reason_reject_reason_convertToJSON(oeml___rest_api_reject_reason__e reject_reason);

//oeml___rest_api_reject_reason__e reject_reason_reject_reason_parseFromJSON(cJSON *reject_reasonJSON);

#endif /* _reject_reason_H_ */

