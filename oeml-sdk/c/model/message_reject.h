/*
 * message_reject.h
 *
 * 
 */

#ifndef _message_reject_H_
#define _message_reject_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct message_reject_t message_reject_t;

#include "reject_reason.h"

// Enum  for message_reject

typedef enum  { oeml___rest_api_message_reject__NULL = 0, oeml___rest_api_message_reject__OTHER, oeml___rest_api_message_reject__EXCHANGE_UNREACHABLE, oeml___rest_api_message_reject__EXCHANGE_RESPONSE_TIMEOUT, oeml___rest_api_message_reject__ORDER_ID_NOT_FOUND, oeml___rest_api_message_reject__INVALID_TYPE, oeml___rest_api_message_reject__METHOD_NOT_SUPPORTED, oeml___rest_api_message_reject__JSON_ERROR } oeml___rest_api_message_reject__e;

char* message_reject_reject_reason_ToString(oeml___rest_api_message_reject__e reject_reason);

oeml___rest_api_message_reject__e message_reject_reject_reason_FromString(char* reject_reason);



typedef struct message_reject_t {
    char *type; // string
    char *exchange_id; // string
    char *message; // string
    char *rejected_message; // string

} message_reject_t;

message_reject_t *message_reject_create(
    char *type,
    char *exchange_id,
    char *message,
    char *rejected_message
);

void message_reject_free(message_reject_t *message_reject);

message_reject_t *message_reject_parseFromJSON(cJSON *message_rejectJSON);

cJSON *message_reject_convertToJSON(message_reject_t *message_reject);

#endif /* _message_reject_H_ */

