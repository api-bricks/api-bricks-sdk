/*
 * validation_error.h
 *
 * 
 */

#ifndef _validation_error_H_
#define _validation_error_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct validation_error_t validation_error_t;




typedef struct validation_error_t {
    char *type; // string
    char *title; // string
    double status; //numeric
    char *trace_id; // string
    char *errors; // string

} validation_error_t;

validation_error_t *validation_error_create(
    char *type,
    char *title,
    double status,
    char *trace_id,
    char *errors
);

void validation_error_free(validation_error_t *validation_error);

validation_error_t *validation_error_parseFromJSON(cJSON *validation_errorJSON);

cJSON *validation_error_convertToJSON(validation_error_t *validation_error);

#endif /* _validation_error_H_ */

