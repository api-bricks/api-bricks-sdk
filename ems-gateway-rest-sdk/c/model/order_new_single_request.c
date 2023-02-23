#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_new_single_request.h"


char* sideorder_new_single_request_ToString(ems___rest_api_order_new_single_request__e side) {
    char* sideArray[] =  { "NULL", "BUY", "SELL" };
	return sideArray[side];
}

ems___rest_api_order_new_single_request__e sideorder_new_single_request_FromString(char* side){
    int stringToReturn = 0;
    char *sideArray[] =  { "NULL", "BUY", "SELL" };
    size_t sizeofArray = sizeof(sideArray) / sizeof(sideArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(side, sideArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* order_typeorder_new_single_request_ToString(ems___rest_api_order_new_single_request__e order_type) {
    char* order_typeArray[] =  { "NULL", "LIMIT" };
	return order_typeArray[order_type];
}

ems___rest_api_order_new_single_request__e order_typeorder_new_single_request_FromString(char* order_type){
    int stringToReturn = 0;
    char *order_typeArray[] =  { "NULL", "LIMIT" };
    size_t sizeofArray = sizeof(order_typeArray) / sizeof(order_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(order_type, order_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* time_in_forceorder_new_single_request_ToString(ems___rest_api_order_new_single_request__e time_in_force) {
    char* time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL" };
	return time_in_forceArray[time_in_force];
}

ems___rest_api_order_new_single_request__e time_in_forceorder_new_single_request_FromString(char* time_in_force){
    int stringToReturn = 0;
    char *time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL" };
    size_t sizeofArray = sizeof(time_in_forceArray) / sizeof(time_in_forceArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(time_in_force, time_in_forceArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* exec_instorder_new_single_request_ToString(ems___rest_api_order_new_single_request_EXECINST_e exec_inst) {
	char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
	return exec_instArray[exec_inst - 1];
}

ems___rest_api_order_new_single_request_EXECINST_e exec_instorder_new_single_request_FromString(char* exec_inst) {
    int stringToReturn = 0;
    char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
    size_t sizeofArray = sizeof(exec_instArray) / sizeof(exec_instArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(exec_inst, exec_instArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

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
    ) {
    order_new_single_request_t *order_new_single_request_local_var = malloc(sizeof(order_new_single_request_t));
    if (!order_new_single_request_local_var) {
        return NULL;
    }
    order_new_single_request_local_var->exchange_id = exchange_id;
    order_new_single_request_local_var->client_order_id = client_order_id;
    order_new_single_request_local_var->symbol_id_exchange = symbol_id_exchange;
    order_new_single_request_local_var->symbol_id_coinapi = symbol_id_coinapi;
    order_new_single_request_local_var->amount_order = amount_order;
    order_new_single_request_local_var->price = price;
    order_new_single_request_local_var->side = side;
    order_new_single_request_local_var->order_type = order_type;
    order_new_single_request_local_var->time_in_force = time_in_force;
    order_new_single_request_local_var->expire_time = expire_time;
    order_new_single_request_local_var->exec_inst = exec_inst;

    return order_new_single_request_local_var;
}


void order_new_single_request_free(order_new_single_request_t *order_new_single_request) {
    if(NULL == order_new_single_request){
        return ;
    }
    listEntry_t *listEntry;
    if (order_new_single_request->exchange_id) {
        free(order_new_single_request->exchange_id);
        order_new_single_request->exchange_id = NULL;
    }
    if (order_new_single_request->client_order_id) {
        free(order_new_single_request->client_order_id);
        order_new_single_request->client_order_id = NULL;
    }
    if (order_new_single_request->symbol_id_exchange) {
        free(order_new_single_request->symbol_id_exchange);
        order_new_single_request->symbol_id_exchange = NULL;
    }
    if (order_new_single_request->symbol_id_coinapi) {
        free(order_new_single_request->symbol_id_coinapi);
        order_new_single_request->symbol_id_coinapi = NULL;
    }
    if (order_new_single_request->side) {
        ord_side_free(order_new_single_request->side);
        order_new_single_request->side = NULL;
    }
    if (order_new_single_request->order_type) {
        ord_type_free(order_new_single_request->order_type);
        order_new_single_request->order_type = NULL;
    }
    if (order_new_single_request->time_in_force) {
        time_in_force_free(order_new_single_request->time_in_force);
        order_new_single_request->time_in_force = NULL;
    }
    if (order_new_single_request->exec_inst) {
        list_ForEach(listEntry, order_new_single_request->exec_inst) {
            free(listEntry->data);
        }
        list_freeList(order_new_single_request->exec_inst);
        order_new_single_request->exec_inst = NULL;
    }
    free(order_new_single_request);
}

cJSON *order_new_single_request_convertToJSON(order_new_single_request_t *order_new_single_request) {
    cJSON *item = cJSON_CreateObject();

    // order_new_single_request->exchange_id
    if (!order_new_single_request->exchange_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "exchange_id", order_new_single_request->exchange_id) == NULL) {
    goto fail; //String
    }


    // order_new_single_request->client_order_id
    if (!order_new_single_request->client_order_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "client_order_id", order_new_single_request->client_order_id) == NULL) {
    goto fail; //String
    }


    // order_new_single_request->symbol_id_exchange
    if(order_new_single_request->symbol_id_exchange) {
    if(cJSON_AddStringToObject(item, "symbol_id_exchange", order_new_single_request->symbol_id_exchange) == NULL) {
    goto fail; //String
    }
    }


    // order_new_single_request->symbol_id_coinapi
    if(order_new_single_request->symbol_id_coinapi) {
    if(cJSON_AddStringToObject(item, "symbol_id_coinapi", order_new_single_request->symbol_id_coinapi) == NULL) {
    goto fail; //String
    }
    }


    // order_new_single_request->amount_order
    if (!order_new_single_request->amount_order) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "amount_order", order_new_single_request->amount_order) == NULL) {
    goto fail; //Numeric
    }


    // order_new_single_request->price
    if (!order_new_single_request->price) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "price", order_new_single_request->price) == NULL) {
    goto fail; //Numeric
    }


    // order_new_single_request->side
    if (ems___rest_api_order_new_single_request__NULL == order_new_single_request->side) {
        goto fail;
    }
    cJSON *side_local_JSON = ord_side_convertToJSON(order_new_single_request->side);
    if(side_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "side", side_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // order_new_single_request->order_type
    if (ems___rest_api_order_new_single_request__NULL == order_new_single_request->order_type) {
        goto fail;
    }
    cJSON *order_type_local_JSON = ord_type_convertToJSON(order_new_single_request->order_type);
    if(order_type_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "order_type", order_type_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // order_new_single_request->time_in_force
    if (ems___rest_api_order_new_single_request__NULL == order_new_single_request->time_in_force) {
        goto fail;
    }
    cJSON *time_in_force_local_JSON = time_in_force_convertToJSON(order_new_single_request->time_in_force);
    if(time_in_force_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "time_in_force", time_in_force_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // order_new_single_request->expire_time
    if(order_new_single_request->expire_time) {
    }


    // order_new_single_request->exec_inst
    if(order_new_single_request->exec_inst != ems___rest_api_order_new_single_request_EXECINST_NULL) {
    cJSON *exec_inst = cJSON_AddArrayToObject(item, "exec_inst");
    if(exec_inst == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *exec_instListEntry;
    list_ForEach(exec_instListEntry, order_new_single_request->exec_inst) {
    if(cJSON_AddStringToObject(exec_inst, "", (char*)exec_instListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

order_new_single_request_t *order_new_single_request_parseFromJSON(cJSON *order_new_single_requestJSON){

    order_new_single_request_t *order_new_single_request_local_var = NULL;

    // define the local variable for order_new_single_request->side
    ord_side_t *side_local_nonprim = NULL;

    // define the local variable for order_new_single_request->order_type
    ord_type_t *order_type_local_nonprim = NULL;

    // define the local variable for order_new_single_request->time_in_force
    time_in_force_t *time_in_force_local_nonprim = NULL;

    // define the local list for order_new_single_request->exec_inst
    list_t *exec_instList = NULL;

    // order_new_single_request->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "exchange_id");
    if (!exchange_id) {
        goto end;
    }

    
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }

    // order_new_single_request->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "client_order_id");
    if (!client_order_id) {
        goto end;
    }

    
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }

    // order_new_single_request->symbol_id_exchange
    cJSON *symbol_id_exchange = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "symbol_id_exchange");
    if (symbol_id_exchange) { 
    if(!cJSON_IsString(symbol_id_exchange))
    {
    goto end; //String
    }
    }

    // order_new_single_request->symbol_id_coinapi
    cJSON *symbol_id_coinapi = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "symbol_id_coinapi");
    if (symbol_id_coinapi) { 
    if(!cJSON_IsString(symbol_id_coinapi))
    {
    goto end; //String
    }
    }

    // order_new_single_request->amount_order
    cJSON *amount_order = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "amount_order");
    if (!amount_order) {
        goto end;
    }

    
    if(!cJSON_IsNumber(amount_order))
    {
    goto end; //Numeric
    }

    // order_new_single_request->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "price");
    if (!price) {
        goto end;
    }

    
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }

    // order_new_single_request->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "side");
    if (!side) {
        goto end;
    }

    
    side_local_nonprim = ord_side_parseFromJSON(side); //custom

    // order_new_single_request->order_type
    cJSON *order_type = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "order_type");
    if (!order_type) {
        goto end;
    }

    
    order_type_local_nonprim = ord_type_parseFromJSON(order_type); //custom

    // order_new_single_request->time_in_force
    cJSON *time_in_force = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "time_in_force");
    if (!time_in_force) {
        goto end;
    }

    
    time_in_force_local_nonprim = time_in_force_parseFromJSON(time_in_force); //custom

    // order_new_single_request->expire_time
    cJSON *expire_time = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "expire_time");
    }

    // order_new_single_request->exec_inst
    cJSON *exec_inst = cJSON_GetObjectItemCaseSensitive(order_new_single_requestJSON, "exec_inst");
    if (exec_inst) { 
    cJSON *exec_inst_local = NULL;
    if(!cJSON_IsArray(exec_inst)) {
        goto end;//primitive container
    }
    exec_instList = list_createList();

    cJSON_ArrayForEach(exec_inst_local, exec_inst)
    {
        if(!cJSON_IsString(exec_inst_local))
        {
            goto end;
        }
        list_addElement(exec_instList , strdup(exec_inst_local->valuestring));
    }
    }


    order_new_single_request_local_var = order_new_single_request_create (
        strdup(exchange_id->valuestring),
        strdup(client_order_id->valuestring),
        symbol_id_exchange ? strdup(symbol_id_exchange->valuestring) : NULL,
        symbol_id_coinapi ? strdup(symbol_id_coinapi->valuestring) : NULL,
        amount_order->valuedouble,
        price->valuedouble,
        side_local_nonprim,
        order_type_local_nonprim,
        time_in_force_local_nonprim,
        exec_inst ? exec_instList : NULL
        );

    return order_new_single_request_local_var;
end:
    if (side_local_nonprim) {
        ord_side_free(side_local_nonprim);
        side_local_nonprim = NULL;
    }
    if (order_type_local_nonprim) {
        ord_type_free(order_type_local_nonprim);
        order_type_local_nonprim = NULL;
    }
    if (time_in_force_local_nonprim) {
        time_in_force_free(time_in_force_local_nonprim);
        time_in_force_local_nonprim = NULL;
    }
    if (exec_instList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, exec_instList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(exec_instList);
        exec_instList = NULL;
    }
    return NULL;

}
