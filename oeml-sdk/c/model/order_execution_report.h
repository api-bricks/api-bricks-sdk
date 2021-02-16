/*
 * order_execution_report.h
 *
 * The order execution report object.
 */

#ifndef _order_execution_report_H_
#define _order_execution_report_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_execution_report_t order_execution_report_t;

#include "fills.h"
#include "ord_side.h"
#include "ord_status.h"
#include "ord_type.h"
#include "order_execution_report_all_of.h"
#include "order_new_single_request.h"
#include "time_in_force.h"

// Enum  for order_execution_report

typedef enum  { oeml___rest_api_order_execution_report__NULL = 0, oeml___rest_api_order_execution_report__BUY, oeml___rest_api_order_execution_report__SELL } oeml___rest_api_order_execution_report__e;

char* order_execution_report_side_ToString(oeml___rest_api_order_execution_report__e side);

oeml___rest_api_order_execution_report__e order_execution_report_side_FromString(char* side);

// Enum  for order_execution_report

typedef enum  { oeml___rest_api_order_execution_report__NULL = 0, oeml___rest_api_order_execution_report__LIMIT } oeml___rest_api_order_execution_report__e;

char* order_execution_report_order_type_ToString(oeml___rest_api_order_execution_report__e order_type);

oeml___rest_api_order_execution_report__e order_execution_report_order_type_FromString(char* order_type);

// Enum  for order_execution_report

typedef enum  { oeml___rest_api_order_execution_report__NULL = 0, oeml___rest_api_order_execution_report__GOOD_TILL_CANCEL, oeml___rest_api_order_execution_report__GOOD_TILL_TIME_EXCHANGE, oeml___rest_api_order_execution_report__GOOD_TILL_TIME_OMS, oeml___rest_api_order_execution_report__FILL_OR_KILL, oeml___rest_api_order_execution_report__IMMEDIATE_OR_CANCEL } oeml___rest_api_order_execution_report__e;

char* order_execution_report_time_in_force_ToString(oeml___rest_api_order_execution_report__e time_in_force);

oeml___rest_api_order_execution_report__e order_execution_report_time_in_force_FromString(char* time_in_force);

// Enum EXECINST for order_execution_report

typedef enum  { oeml___rest_api_order_execution_report_EXECINST_NULL = 0, oeml___rest_api_order_execution_report_EXECINST_MAKER_OR_CANCEL, oeml___rest_api_order_execution_report_EXECINST_AUCTION_ONLY, oeml___rest_api_order_execution_report_EXECINST_INDICATION_OF_INTEREST } oeml___rest_api_order_execution_report_EXECINST_e;

char* order_execution_report_exec_inst_ToString(oeml___rest_api_order_execution_report_EXECINST_e exec_inst);

oeml___rest_api_order_execution_report_EXECINST_e order_execution_report_exec_inst_FromString(char* exec_inst);

// Enum  for order_execution_report

typedef enum  { oeml___rest_api_order_execution_report__NULL = 0, oeml___rest_api_order_execution_report__RECEIVED, oeml___rest_api_order_execution_report__ROUTING, oeml___rest_api_order_execution_report__ROUTED, oeml___rest_api_order_execution_report__NEW, oeml___rest_api_order_execution_report__PENDING_CANCEL, oeml___rest_api_order_execution_report__PARTIALLY_FILLED, oeml___rest_api_order_execution_report__FILLED, oeml___rest_api_order_execution_report__CANCELED, oeml___rest_api_order_execution_report__REJECTED } oeml___rest_api_order_execution_report__e;

char* order_execution_report_status_ToString(oeml___rest_api_order_execution_report__e status);

oeml___rest_api_order_execution_report__e order_execution_report_status_FromString(char* status);



typedef struct order_execution_report_t {
    char *exchange_id; // string
    char *client_order_id; // string
    char *symbol_id_exchange; // string
    char *symbol_id_coinapi; // string
    double amount_order; //numeric
    double price; //numeric
    list_t *exec_inst; //primitive container
    char *client_order_id_format_exchange; // string
    char *exchange_order_id; // string
    double amount_open; //numeric
    double amount_filled; //numeric
    double avg_px; //numeric
    list_t *status_history; //primitive container
    char *error_message; // string
    list_t *fills; //nonprimitive container

} order_execution_report_t;

order_execution_report_t *order_execution_report_create(
    char *exchange_id,
    char *client_order_id,
    char *symbol_id_exchange,
    char *symbol_id_coinapi,
    double amount_order,
    double price,
    list_t *exec_inst,
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    double avg_px,
    list_t *status_history,
    char *error_message,
    list_t *fills
);

void order_execution_report_free(order_execution_report_t *order_execution_report);

order_execution_report_t *order_execution_report_parseFromJSON(cJSON *order_execution_reportJSON);

cJSON *order_execution_report_convertToJSON(order_execution_report_t *order_execution_report);

#endif /* _order_execution_report_H_ */

