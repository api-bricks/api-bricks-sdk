/*
 * order_cancel_single_request.h
 *
 * Cancel single order request object.
 */

#ifndef _order_cancel_single_request_H_
#define _order_cancel_single_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_cancel_single_request_t order_cancel_single_request_t;




typedef struct order_cancel_single_request_t {
    char *exchange_id; // string
    char *exchange_order_id; // string
    char *client_order_id; // string

} order_cancel_single_request_t;

order_cancel_single_request_t *order_cancel_single_request_create(
    char *exchange_id,
    char *exchange_order_id,
    char *client_order_id
);

void order_cancel_single_request_free(order_cancel_single_request_t *order_cancel_single_request);

order_cancel_single_request_t *order_cancel_single_request_parseFromJSON(cJSON *order_cancel_single_requestJSON);

cJSON *order_cancel_single_request_convertToJSON(order_cancel_single_request_t *order_cancel_single_request);

#endif /* _order_cancel_single_request_H_ */

