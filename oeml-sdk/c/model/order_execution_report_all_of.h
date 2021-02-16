/*
 * order_execution_report_all_of.h
 *
 * The order execution report message.
 */

#ifndef _order_execution_report_all_of_H_
#define _order_execution_report_all_of_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_execution_report_all_of_t order_execution_report_all_of_t;

#include "fills.h"
#include "ord_status.h"

// Enum  for order_execution_report_all_of

typedef enum  { oeml___rest_api_order_execution_report_all_of__NULL = 0, oeml___rest_api_order_execution_report_all_of__RECEIVED, oeml___rest_api_order_execution_report_all_of__ROUTING, oeml___rest_api_order_execution_report_all_of__ROUTED, oeml___rest_api_order_execution_report_all_of__NEW, oeml___rest_api_order_execution_report_all_of__PENDING_CANCEL, oeml___rest_api_order_execution_report_all_of__PARTIALLY_FILLED, oeml___rest_api_order_execution_report_all_of__FILLED, oeml___rest_api_order_execution_report_all_of__CANCELED, oeml___rest_api_order_execution_report_all_of__REJECTED } oeml___rest_api_order_execution_report_all_of__e;

char* order_execution_report_all_of_status_ToString(oeml___rest_api_order_execution_report_all_of__e status);

oeml___rest_api_order_execution_report_all_of__e order_execution_report_all_of_status_FromString(char* status);



typedef struct order_execution_report_all_of_t {
    char *client_order_id_format_exchange; // string
    char *exchange_order_id; // string
    double amount_open; //numeric
    double amount_filled; //numeric
    double avg_px; //numeric
    list_t *status_history; //primitive container
    char *error_message; // string
    list_t *fills; //nonprimitive container

} order_execution_report_all_of_t;

order_execution_report_all_of_t *order_execution_report_all_of_create(
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    double avg_px,
    list_t *status_history,
    char *error_message,
    list_t *fills
);

void order_execution_report_all_of_free(order_execution_report_all_of_t *order_execution_report_all_of);

order_execution_report_all_of_t *order_execution_report_all_of_parseFromJSON(cJSON *order_execution_report_all_ofJSON);

cJSON *order_execution_report_all_of_convertToJSON(order_execution_report_all_of_t *order_execution_report_all_of);

#endif /* _order_execution_report_all_of_H_ */

