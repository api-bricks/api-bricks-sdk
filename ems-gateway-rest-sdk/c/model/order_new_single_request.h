/*
 * order_new_single_request.h
 *
 * The new order message.
 */

#ifndef _order_new_single_request_H_
#define _order_new_single_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_new_single_request_t order_new_single_request_t;

#include "ord_side.h"
#include "ord_type.h"
#include "time_in_force.h"

// Enum  for order_new_single_request

typedef enum  { ems___rest_api_order_new_single_request__NULL = 0, ems___rest_api_order_new_single_request__BUY, ems___rest_api_order_new_single_request__SELL } ems___rest_api_order_new_single_request__e;

char* order_new_single_request_side_ToString(ems___rest_api_order_new_single_request__e side);

ems___rest_api_order_new_single_request__e order_new_single_request_side_FromString(char* side);

// Enum  for order_new_single_request

typedef enum  { ems___rest_api_order_new_single_request__NULL = 0, ems___rest_api_order_new_single_request__LIMIT } ems___rest_api_order_new_single_request__e;

char* order_new_single_request_order_type_ToString(ems___rest_api_order_new_single_request__e order_type);

ems___rest_api_order_new_single_request__e order_new_single_request_order_type_FromString(char* order_type);

// Enum  for order_new_single_request

typedef enum  { ems___rest_api_order_new_single_request__NULL = 0, ems___rest_api_order_new_single_request__GOOD_TILL_CANCEL, ems___rest_api_order_new_single_request__GOOD_TILL_TIME_EXCHANGE, ems___rest_api_order_new_single_request__GOOD_TILL_TIME_OMS, ems___rest_api_order_new_single_request__FILL_OR_KILL, ems___rest_api_order_new_single_request__IMMEDIATE_OR_CANCEL } ems___rest_api_order_new_single_request__e;

char* order_new_single_request_time_in_force_ToString(ems___rest_api_order_new_single_request__e time_in_force);

ems___rest_api_order_new_single_request__e order_new_single_request_time_in_force_FromString(char* time_in_force);

// Enum EXECINST for order_new_single_request

typedef enum  { ems___rest_api_order_new_single_request_EXECINST_NULL = 0, ems___rest_api_order_new_single_request_EXECINST_MAKER_OR_CANCEL, ems___rest_api_order_new_single_request_EXECINST_AUCTION_ONLY, ems___rest_api_order_new_single_request_EXECINST_INDICATION_OF_INTEREST } ems___rest_api_order_new_single_request_EXECINST_e;

char* order_new_single_request_exec_inst_ToString(ems___rest_api_order_new_single_request_EXECINST_e exec_inst);

ems___rest_api_order_new_single_request_EXECINST_e order_new_single_request_exec_inst_FromString(char* exec_inst);



typedef struct order_new_single_request_t {
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

} order_new_single_request_t;

order_new_single_request_t *order_new_single_request_create(
    char *exchange_id,
    char *client_order_id,
    char *symbol_id_exchange,
    char *symbol_id_coinapi,
    double amount_order,
    double price,
    ord_side_t *side,
    ord_type_t *order_type,
    time_in_force_t *time_in_force,
    list_t *exec_inst
);

void order_new_single_request_free(order_new_single_request_t *order_new_single_request);

order_new_single_request_t *order_new_single_request_parseFromJSON(cJSON *order_new_single_requestJSON);

cJSON *order_new_single_request_convertToJSON(order_new_single_request_t *order_new_single_request);

#endif /* _order_new_single_request_H_ */

