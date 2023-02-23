/*
 * message_error.h
 *
 * 
 */

#ifndef _message_error_H_
#define _message_error_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct message_error_t message_error_t;




typedef struct message_error_t {
    char *message; // string

} message_error_t;

message_error_t *message_error_create(
    char *message
);

void message_error_free(message_error_t *message_error);

message_error_t *message_error_parseFromJSON(cJSON *message_errorJSON);

cJSON *message_error_convertToJSON(message_error_t *message_error);

#endif /* _message_error_H_ */

