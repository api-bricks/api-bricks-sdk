/*
 * order_history.h
 *
 * 
 */

#ifndef _order_history_H_
#define _order_history_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_history_t order_history_t;




typedef struct order_history_t {
    char *apikey; // string
    char *exchange_id; // string
    char *client_order_id; // string
    char *symbol_id_exchange; // string
    char *symbol_id_coinapi; // string
    double amount_order; //numeric
    double price; //numeric
    double side; //numeric
    char *order_type; // string
    char *time_in_force; // string
    list_t *exec_inst; //primitive container
    char *client_order_id_format_exchange; // string
    char *exchange_order_id; // string
    double amount_open; //numeric
    double amount_filled; //numeric
    double avg_px; //numeric
    char *status; // string
    list_t *status_history_status; //primitive container
    list_t *status_history_time; //primitive container
    char *error_message_result; // string
    char *error_message_reason; // string
    char *error_message_message; // string
    list_t *fills_time; //primitive container
    list_t *fills_price; //primitive container
    list_t *fills_amount; //primitive container

} order_history_t;

order_history_t *order_history_create(
    char *apikey,
    char *exchange_id,
    char *client_order_id,
    char *symbol_id_exchange,
    char *symbol_id_coinapi,
    double amount_order,
    double price,
    double side,
    char *order_type,
    char *time_in_force,
    list_t *exec_inst,
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    double avg_px,
    char *status,
    list_t *status_history_status,
    list_t *status_history_time,
    char *error_message_result,
    char *error_message_reason,
    char *error_message_message,
    list_t *fills_time,
    list_t *fills_price,
    list_t *fills_amount,
);

void order_history_free(order_history_t *order_history);

order_history_t *order_history_parseFromJSON(cJSON *order_historyJSON);

cJSON *order_history_convertToJSON(order_history_t *order_history);

#endif /* _order_history_H_ */

