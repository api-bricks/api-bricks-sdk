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

typedef enum { ems___rest_api_reject_reason__NULL = 0, ems___rest_api_reject_reason__OTHER, ems___rest_api_reject_reason__EXCHANGE_UNREACHABLE, ems___rest_api_reject_reason__EXCHANGE_RESPONSE_TIMEOUT, ems___rest_api_reject_reason__ORDER_ID_NOT_FOUND, ems___rest_api_reject_reason__INVALID_TYPE, ems___rest_api_reject_reason__METHOD_NOT_SUPPORTED, ems___rest_api_reject_reason__JSON_ERROR } ems___rest_api_reject_reason__e;

char* reject_reason_reject_reason_ToString(ems___rest_api_reject_reason__e reject_reason);

ems___rest_api_reject_reason__e reject_reason_reject_reason_FromString(char* reject_reason);

//cJSON *reject_reason_reject_reason_convertToJSON(ems___rest_api_reject_reason__e reject_reason);

//ems___rest_api_reject_reason__e reject_reason_reject_reason_parseFromJSON(cJSON *reject_reasonJSON);

#endif /* _reject_reason_H_ */

