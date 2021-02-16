#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "balance_data.h"


char* last_updated_bybalance_data_ToString(oeml___rest_api_balance_data_LASTUPDATEDBY_e last_updated_by) {
    char* last_updated_byArray[] =  { "NULL", "INITIALIZATION", "BALANCE_MANAGER", "EXCHANGE" };
	return last_updated_byArray[last_updated_by];
}

oeml___rest_api_balance_data_LASTUPDATEDBY_e last_updated_bybalance_data_FromString(char* last_updated_by){
    int stringToReturn = 0;
    char *last_updated_byArray[] =  { "NULL", "INITIALIZATION", "BALANCE_MANAGER", "EXCHANGE" };
    size_t sizeofArray = sizeof(last_updated_byArray) / sizeof(last_updated_byArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(last_updated_by, last_updated_byArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

balance_data_t *balance_data_create(
    char *asset_id_exchange,
    char *asset_id_coinapi,
    float balance,
    float available,
    float locked,
    oeml___rest_api_balance_data_LASTUPDATEDBY_e last_updated_by,
    float rate_usd,
    float traded
    ) {
    balance_data_t *balance_data_local_var = malloc(sizeof(balance_data_t));
    if (!balance_data_local_var) {
        return NULL;
    }
    balance_data_local_var->asset_id_exchange = asset_id_exchange;
    balance_data_local_var->asset_id_coinapi = asset_id_coinapi;
    balance_data_local_var->balance = balance;
    balance_data_local_var->available = available;
    balance_data_local_var->locked = locked;
    balance_data_local_var->last_updated_by = last_updated_by;
    balance_data_local_var->rate_usd = rate_usd;
    balance_data_local_var->traded = traded;

    return balance_data_local_var;
}


void balance_data_free(balance_data_t *balance_data) {
    if(NULL == balance_data){
        return ;
    }
    listEntry_t *listEntry;
    if (balance_data->asset_id_exchange) {
        free(balance_data->asset_id_exchange);
        balance_data->asset_id_exchange = NULL;
    }
    if (balance_data->asset_id_coinapi) {
        free(balance_data->asset_id_coinapi);
        balance_data->asset_id_coinapi = NULL;
    }
    free(balance_data);
}

cJSON *balance_data_convertToJSON(balance_data_t *balance_data) {
    cJSON *item = cJSON_CreateObject();

    // balance_data->asset_id_exchange
    if(balance_data->asset_id_exchange) { 
    if(cJSON_AddStringToObject(item, "asset_id_exchange", balance_data->asset_id_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // balance_data->asset_id_coinapi
    if(balance_data->asset_id_coinapi) { 
    if(cJSON_AddStringToObject(item, "asset_id_coinapi", balance_data->asset_id_coinapi) == NULL) {
    goto fail; //String
    }
     } 


    // balance_data->balance
    if(balance_data->balance) { 
    if(cJSON_AddNumberToObject(item, "balance", balance_data->balance) == NULL) {
    goto fail; //Numeric
    }
     } 


    // balance_data->available
    if(balance_data->available) { 
    if(cJSON_AddNumberToObject(item, "available", balance_data->available) == NULL) {
    goto fail; //Numeric
    }
     } 


    // balance_data->locked
    if(balance_data->locked) { 
    if(cJSON_AddNumberToObject(item, "locked", balance_data->locked) == NULL) {
    goto fail; //Numeric
    }
     } 


    // balance_data->last_updated_by
    
    if(cJSON_AddStringToObject(item, "last_updated_by", last_updated_bybalance_data_ToString(balance_data->last_updated_by)) == NULL)
    {
    goto fail; //Enum
    }
    


    // balance_data->rate_usd
    if(balance_data->rate_usd) { 
    if(cJSON_AddNumberToObject(item, "rate_usd", balance_data->rate_usd) == NULL) {
    goto fail; //Numeric
    }
     } 


    // balance_data->traded
    if(balance_data->traded) { 
    if(cJSON_AddNumberToObject(item, "traded", balance_data->traded) == NULL) {
    goto fail; //Numeric
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

balance_data_t *balance_data_parseFromJSON(cJSON *balance_dataJSON){

    balance_data_t *balance_data_local_var = NULL;

    // balance_data->asset_id_exchange
    cJSON *asset_id_exchange = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "asset_id_exchange");
    if (asset_id_exchange) { 
    if(!cJSON_IsString(asset_id_exchange))
    {
    goto end; //String
    }
    }

    // balance_data->asset_id_coinapi
    cJSON *asset_id_coinapi = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "asset_id_coinapi");
    if (asset_id_coinapi) { 
    if(!cJSON_IsString(asset_id_coinapi))
    {
    goto end; //String
    }
    }

    // balance_data->balance
    cJSON *balance = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "balance");
    if (balance) { 
    if(!cJSON_IsNumber(balance))
    {
    goto end; //Numeric
    }
    }

    // balance_data->available
    cJSON *available = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "available");
    if (available) { 
    if(!cJSON_IsNumber(available))
    {
    goto end; //Numeric
    }
    }

    // balance_data->locked
    cJSON *locked = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "locked");
    if (locked) { 
    if(!cJSON_IsNumber(locked))
    {
    goto end; //Numeric
    }
    }

    // balance_data->last_updated_by
    cJSON *last_updated_by = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "last_updated_by");
    oeml___rest_api_balance_data_LASTUPDATEDBY_e last_updated_byVariable;
    if (last_updated_by) { 
    if(!cJSON_IsString(last_updated_by))
    {
    goto end; //Enum
    }
    last_updated_byVariable = last_updated_bybalance_data_FromString(last_updated_by->valuestring);
    }

    // balance_data->rate_usd
    cJSON *rate_usd = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "rate_usd");
    if (rate_usd) { 
    if(!cJSON_IsNumber(rate_usd))
    {
    goto end; //Numeric
    }
    }

    // balance_data->traded
    cJSON *traded = cJSON_GetObjectItemCaseSensitive(balance_dataJSON, "traded");
    if (traded) { 
    if(!cJSON_IsNumber(traded))
    {
    goto end; //Numeric
    }
    }


    balance_data_local_var = balance_data_create (
        asset_id_exchange ? strdup(asset_id_exchange->valuestring) : NULL,
        asset_id_coinapi ? strdup(asset_id_coinapi->valuestring) : NULL,
        balance ? balance->valuedouble : 0,
        available ? available->valuedouble : 0,
        locked ? locked->valuedouble : 0,
        last_updated_by ? last_updated_byVariable : -1,
        rate_usd ? rate_usd->valuedouble : 0,
        traded ? traded->valuedouble : 0
        );

    return balance_data_local_var;
end:
    return NULL;

}
