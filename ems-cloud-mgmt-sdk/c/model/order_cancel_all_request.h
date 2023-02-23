/*
 * order_cancel_all_request.h
 *
 * Cancel all orders request object.
 */

#ifndef _order_cancel_all_request_H_
#define _order_cancel_all_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_cancel_all_request_t order_cancel_all_request_t;




typedef struct order_cancel_all_request_t {
    char *exchange_id; // string

} order_cancel_all_request_t;

order_cancel_all_request_t *order_cancel_all_request_create(
    char *exchange_id
);

void order_cancel_all_request_free(order_cancel_all_request_t *order_cancel_all_request);

order_cancel_all_request_t *order_cancel_all_request_parseFromJSON(cJSON *order_cancel_all_requestJSON);

cJSON *order_cancel_all_request_convertToJSON(order_cancel_all_request_t *order_cancel_all_request);

#endif /* _order_cancel_all_request_H_ */

