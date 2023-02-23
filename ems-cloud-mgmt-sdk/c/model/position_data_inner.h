/*
 * position_data_inner.h
 *
 * The Position object.
 */

#ifndef _position_data_inner_H_
#define _position_data_inner_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct position_data_inner_t position_data_inner_t;

#include "object.h"
#include "ord_side.h"

// Enum  for position_data_inner

typedef enum  { ems___rest_api_position_data_inner__NULL = 0, ems___rest_api_position_data_inner__BUY, ems___rest_api_position_data_inner__SELL } ems___rest_api_position_data_inner__e;

char* position_data_inner_side_ToString(ems___rest_api_position_data_inner__e side);

ems___rest_api_position_data_inner__e position_data_inner_side_FromString(char* side);



typedef struct position_data_inner_t {
    char *symbol_id_exchange; // string
    char *symbol_id_coinapi; // string
    double avg_entry_price; //numeric
    double quantity; //numeric
    ord_side_t *side; // custom
    double unrealized_pnl; //numeric
    double leverage; //numeric
    int cross_margin; //boolean
    double liquidation_price; //numeric
    object_t *raw_data; //object

} position_data_inner_t;

position_data_inner_t *position_data_inner_create(
    char *symbol_id_exchange,
    char *symbol_id_coinapi,
    double avg_entry_price,
    double quantity,
    ord_side_t *side,
    double unrealized_pnl,
    double leverage,
    int cross_margin,
    double liquidation_price,
    object_t *raw_data
);

void position_data_inner_free(position_data_inner_t *position_data_inner);

position_data_inner_t *position_data_inner_parseFromJSON(cJSON *position_data_innerJSON);

cJSON *position_data_inner_convertToJSON(position_data_inner_t *position_data_inner);

#endif /* _position_data_inner_H_ */

