/*
 * balance_data_inner.h
 *
 * 
 */

#ifndef _balance_data_inner_H_
#define _balance_data_inner_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct balance_data_inner_t balance_data_inner_t;


// Enum LASTUPDATEDBY for balance_data_inner

typedef enum  { ems___rest_api_balance_data_inner_LASTUPDATEDBY_NULL = 0, ems___rest_api_balance_data_inner_LASTUPDATEDBY_INITIALIZATION, ems___rest_api_balance_data_inner_LASTUPDATEDBY_BALANCE_MANAGER, ems___rest_api_balance_data_inner_LASTUPDATEDBY_EXCHANGE } ems___rest_api_balance_data_inner_LASTUPDATEDBY_e;

char* balance_data_inner_last_updated_by_ToString(ems___rest_api_balance_data_inner_LASTUPDATEDBY_e last_updated_by);

ems___rest_api_balance_data_inner_LASTUPDATEDBY_e balance_data_inner_last_updated_by_FromString(char* last_updated_by);



typedef struct balance_data_inner_t {
    char *asset_id_exchange; // string
    char *asset_id_coinapi; // string
    double balance; //numeric
    double available; //numeric
    double locked; //numeric
    ems___rest_api_balance_data_inner_LASTUPDATEDBY_e last_updated_by; //enum
    double rate_usd; //numeric
    double traded; //numeric

} balance_data_inner_t;

balance_data_inner_t *balance_data_inner_create(
    char *asset_id_exchange,
    char *asset_id_coinapi,
    double balance,
    double available,
    double locked,
    ems___rest_api_balance_data_inner_LASTUPDATEDBY_e last_updated_by,
    double rate_usd,
    double traded
);

void balance_data_inner_free(balance_data_inner_t *balance_data_inner);

balance_data_inner_t *balance_data_inner_parseFromJSON(cJSON *balance_data_innerJSON);

cJSON *balance_data_inner_convertToJSON(balance_data_inner_t *balance_data_inner);

#endif /* _balance_data_inner_H_ */

