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
#include "time_in_force.h"

// Enum  for order_execution_report

typedef enum  { ems___rest_api_order_execution_report__NULL = 0, ems___rest_api_order_execution_report__BUY, ems___rest_api_order_execution_report__SELL } ems___rest_api_order_execution_report__e;

char* order_execution_report_side_ToString(ems___rest_api_order_execution_report__e side);

ems___rest_api_order_execution_report__e order_execution_report_side_FromString(char* side);

// Enum  for order_execution_report

typedef enum  { ems___rest_api_order_execution_report__NULL = 0, ems___rest_api_order_execution_report__LIMIT } ems___rest_api_order_execution_report__e;

char* order_execution_report_order_type_ToString(ems___rest_api_order_execution_report__e order_type);

ems___rest_api_order_execution_report__e order_execution_report_order_type_FromString(char* order_type);

// Enum  for order_execution_report

typedef enum  { ems___rest_api_order_execution_report__NULL = 0, ems___rest_api_order_execution_report__GOOD_TILL_CANCEL, ems___rest_api_order_execution_report__GOOD_TILL_TIME_EXCHANGE, ems___rest_api_order_execution_report__GOOD_TILL_TIME_OMS, ems___rest_api_order_execution_report__FILL_OR_KILL, ems___rest_api_order_execution_report__IMMEDIATE_OR_CANCEL } ems___rest_api_order_execution_report__e;

char* order_execution_report_time_in_force_ToString(ems___rest_api_order_execution_report__e time_in_force);

ems___rest_api_order_execution_report__e order_execution_report_time_in_force_FromString(char* time_in_force);

// Enum EXECINST for order_execution_report

typedef enum  { ems___rest_api_order_execution_report_EXECINST_NULL = 0, ems___rest_api_order_execution_report_EXECINST_MAKER_OR_CANCEL, ems___rest_api_order_execution_report_EXECINST_AUCTION_ONLY, ems___rest_api_order_execution_report_EXECINST_INDICATION_OF_INTEREST } ems___rest_api_order_execution_report_EXECINST_e;

char* order_execution_report_exec_inst_ToString(ems___rest_api_order_execution_report_EXECINST_e exec_inst);

ems___rest_api_order_execution_report_EXECINST_e order_execution_report_exec_inst_FromString(char* exec_inst);

// Enum  for order_execution_report

typedef enum  { ems___rest_api_order_execution_report__NULL = 0, ems___rest_api_order_execution_report__RECEIVED, ems___rest_api_order_execution_report__ROUTING, ems___rest_api_order_execution_report__ROUTED, ems___rest_api_order_execution_report___NEW, ems___rest_api_order_execution_report__PENDING_CANCEL, ems___rest_api_order_execution_report__PARTIALLY_FILLED, ems___rest_api_order_execution_report__FILLED, ems___rest_api_order_execution_report__CANCELED, ems___rest_api_order_execution_report__REJECTED } ems___rest_api_order_execution_report__e;

char* order_execution_report_status_ToString(ems___rest_api_order_execution_report__e status);

ems___rest_api_order_execution_report__e order_execution_report_status_FromString(char* status);



typedef struct order_execution_report_t {
    char *exchange_id; // string
    char *client_order_id; // string
    char *symbol_id_exchange; // string
    char *symbol_id_coinapi; // string
    double amount_order; //numeric
    double price; //numeric
    ord_side_t *side; // custom
    ord_type_t *order_type; // custom
    time_in_force_t *time_in_force; // custom
    list_t *exec_inst; //primitive container
    char *client_order_id_format_exchange; // string
    char *exchange_order_id; // string
    double amount_open; //numeric
    double amount_filled; //numeric
    double avg_px; //numeric
    ord_status_t *status; // custom
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
    ord_side_t *side,
    ord_type_t *order_type,
    time_in_force_t *time_in_force,
    list_t *exec_inst,
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    double avg_px,
    ord_status_t *status,
    list_t *status_history,
    char *error_message,
    list_t *fills
);

void order_execution_report_free(order_execution_report_t *order_execution_report);

order_execution_report_t *order_execution_report_parseFromJSON(cJSON *order_execution_reportJSON);

cJSON *order_execution_report_convertToJSON(order_execution_report_t *order_execution_report);

#endif /* _order_execution_report_H_ */

