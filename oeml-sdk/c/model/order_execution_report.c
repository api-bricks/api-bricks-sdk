#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_execution_report.h"


char* sideorder_execution_report_ToString(oeml___rest_api_order_execution_report__e side) {
    char* sideArray[] =  { "NULL", "BUY", "SELL" };
	return sideArray[side];
}

oeml___rest_api_order_execution_report__e sideorder_execution_report_FromString(char* side){
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
char* order_typeorder_execution_report_ToString(oeml___rest_api_order_execution_report__e order_type) {
    char* order_typeArray[] =  { "NULL", "LIMIT" };
	return order_typeArray[order_type];
}

oeml___rest_api_order_execution_report__e order_typeorder_execution_report_FromString(char* order_type){
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
char* time_in_forceorder_execution_report_ToString(oeml___rest_api_order_execution_report__e time_in_force) {
    char* time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL" };
	return time_in_forceArray[time_in_force];
}

oeml___rest_api_order_execution_report__e time_in_forceorder_execution_report_FromString(char* time_in_force){
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
char* exec_instorder_execution_report_ToString(oeml___rest_api_order_execution_report_EXECINST_e exec_inst) {
	char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
	return exec_instArray[exec_inst - 1];
}

oeml___rest_api_order_execution_report_EXECINST_e exec_instorder_execution_report_FromString(char* exec_inst) {
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
char* statusorder_execution_report_ToString(oeml___rest_api_order_execution_report__e status) {
    char* statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
	return statusArray[status];
}

oeml___rest_api_order_execution_report__e statusorder_execution_report_FromString(char* status){
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

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
    ) {
    order_execution_report_t *order_execution_report_local_var = malloc(sizeof(order_execution_report_t));
    if (!order_execution_report_local_var) {
        return NULL;
    }
    order_execution_report_local_var->exchange_id = exchange_id;
    order_execution_report_local_var->client_order_id = client_order_id;
    order_execution_report_local_var->symbol_id_exchange = symbol_id_exchange;
    order_execution_report_local_var->symbol_id_coinapi = symbol_id_coinapi;
    order_execution_report_local_var->amount_order = amount_order;
    order_execution_report_local_var->price = price;
    order_execution_report_local_var->side = side;
    order_execution_report_local_var->order_type = order_type;
    order_execution_report_local_var->time_in_force = time_in_force;
    order_execution_report_local_var->expire_time = expire_time;
    order_execution_report_local_var->exec_inst = exec_inst;
    order_execution_report_local_var->client_order_id_format_exchange = client_order_id_format_exchange;
    order_execution_report_local_var->exchange_order_id = exchange_order_id;
    order_execution_report_local_var->amount_open = amount_open;
    order_execution_report_local_var->amount_filled = amount_filled;
    order_execution_report_local_var->avg_px = avg_px;
    order_execution_report_local_var->status = status;
    order_execution_report_local_var->status_history = status_history;
    order_execution_report_local_var->error_message = error_message;
    order_execution_report_local_var->fills = fills;

    return order_execution_report_local_var;
}


void order_execution_report_free(order_execution_report_t *order_execution_report) {
    if(NULL == order_execution_report){
        return ;
    }
    listEntry_t *listEntry;
    if (order_execution_report->exchange_id) {
        free(order_execution_report->exchange_id);
        order_execution_report->exchange_id = NULL;
    }
    if (order_execution_report->client_order_id) {
        free(order_execution_report->client_order_id);
        order_execution_report->client_order_id = NULL;
    }
    if (order_execution_report->symbol_id_exchange) {
        free(order_execution_report->symbol_id_exchange);
        order_execution_report->symbol_id_exchange = NULL;
    }
    if (order_execution_report->symbol_id_coinapi) {
        free(order_execution_report->symbol_id_coinapi);
        order_execution_report->symbol_id_coinapi = NULL;
    }
    if (order_execution_report->exec_inst) {
        list_ForEach(listEntry, order_execution_report->exec_inst) {
            free(listEntry->data);
        }
        list_free(order_execution_report->exec_inst);
        order_execution_report->exec_inst = NULL;
    }
    if (order_execution_report->client_order_id_format_exchange) {
        free(order_execution_report->client_order_id_format_exchange);
        order_execution_report->client_order_id_format_exchange = NULL;
    }
    if (order_execution_report->exchange_order_id) {
        free(order_execution_report->exchange_order_id);
        order_execution_report->exchange_order_id = NULL;
    }
    if (order_execution_report->status_history) {
        list_ForEach(listEntry, order_execution_report->status_history) {
            free(listEntry->data);
        }
        list_free(order_execution_report->status_history);
        order_execution_report->status_history = NULL;
    }
    if (order_execution_report->error_message) {
        free(order_execution_report->error_message);
        order_execution_report->error_message = NULL;
    }
    if (order_execution_report->fills) {
        list_ForEach(listEntry, order_execution_report->fills) {
            fills_free(listEntry->data);
        }
        list_free(order_execution_report->fills);
        order_execution_report->fills = NULL;
    }
    free(order_execution_report);
}

cJSON *order_execution_report_convertToJSON(order_execution_report_t *order_execution_report) {
    cJSON *item = cJSON_CreateObject();

    // order_execution_report->exchange_id
    if (!order_execution_report->exchange_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "exchange_id", order_execution_report->exchange_id) == NULL) {
    goto fail; //String
    }


    // order_execution_report->client_order_id
    if (!order_execution_report->client_order_id) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "client_order_id", order_execution_report->client_order_id) == NULL) {
    goto fail; //String
    }


    // order_execution_report->symbol_id_exchange
    if(order_execution_report->symbol_id_exchange) { 
    if(cJSON_AddStringToObject(item, "symbol_id_exchange", order_execution_report->symbol_id_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // order_execution_report->symbol_id_coinapi
    if(order_execution_report->symbol_id_coinapi) { 
    if(cJSON_AddStringToObject(item, "symbol_id_coinapi", order_execution_report->symbol_id_coinapi) == NULL) {
    goto fail; //String
    }
     } 


    // order_execution_report->amount_order
    if (!order_execution_report->amount_order) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "amount_order", order_execution_report->amount_order) == NULL) {
    goto fail; //Numeric
    }


    // order_execution_report->price
    if (!order_execution_report->price) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "price", order_execution_report->price) == NULL) {
    goto fail; //Numeric
    }


    // order_execution_report->side
    


    // order_execution_report->order_type
    


    // order_execution_report->time_in_force
    


    // order_execution_report->expire_time
    if(order_execution_report->expire_time) { 
     } 


    // order_execution_report->exec_inst
    
    cJSON *exec_inst = cJSON_AddArrayToObject(item, "exec_inst");
    if(exec_inst == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *exec_instListEntry;
    list_ForEach(exec_instListEntry, order_execution_report->exec_inst) {
    if(cJSON_AddStringToObject(exec_inst, "", (char*)exec_instListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    


    // order_execution_report->client_order_id_format_exchange
    if (!order_execution_report->client_order_id_format_exchange) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "client_order_id_format_exchange", order_execution_report->client_order_id_format_exchange) == NULL) {
    goto fail; //String
    }


    // order_execution_report->exchange_order_id
    if(order_execution_report->exchange_order_id) { 
    if(cJSON_AddStringToObject(item, "exchange_order_id", order_execution_report->exchange_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // order_execution_report->amount_open
    if (!order_execution_report->amount_open) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "amount_open", order_execution_report->amount_open) == NULL) {
    goto fail; //Numeric
    }


    // order_execution_report->amount_filled
    if (!order_execution_report->amount_filled) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "amount_filled", order_execution_report->amount_filled) == NULL) {
    goto fail; //Numeric
    }


    // order_execution_report->avg_px
    if(order_execution_report->avg_px) { 
    if(cJSON_AddNumberToObject(item, "avg_px", order_execution_report->avg_px) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_execution_report->status
    


    // order_execution_report->status_history
    if(order_execution_report->status_history) { 
    cJSON *status_history = cJSON_AddArrayToObject(item, "status_history");
    if(status_history == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *status_historyListEntry;
    list_ForEach(status_historyListEntry, order_execution_report->status_history) {
    }
     } 


    // order_execution_report->error_message
    if(order_execution_report->error_message) { 
    if(cJSON_AddStringToObject(item, "error_message", order_execution_report->error_message) == NULL) {
    goto fail; //String
    }
     } 


    // order_execution_report->fills
    if(order_execution_report->fills) { 
    cJSON *fills = cJSON_AddArrayToObject(item, "fills");
    if(fills == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *fillsListEntry;
    if (order_execution_report->fills) {
    list_ForEach(fillsListEntry, order_execution_report->fills) {
    cJSON *itemLocal = fills_convertToJSON(fillsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(fills, itemLocal);
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

order_execution_report_t *order_execution_report_parseFromJSON(cJSON *order_execution_reportJSON){

    order_execution_report_t *order_execution_report_local_var = NULL;

    // order_execution_report->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "exchange_id");
    if (!exchange_id) {
        goto end;
    }

    
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }

    // order_execution_report->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "client_order_id");
    if (!client_order_id) {
        goto end;
    }

    
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }

    // order_execution_report->symbol_id_exchange
    cJSON *symbol_id_exchange = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "symbol_id_exchange");
    if (symbol_id_exchange) { 
    if(!cJSON_IsString(symbol_id_exchange))
    {
    goto end; //String
    }
    }

    // order_execution_report->symbol_id_coinapi
    cJSON *symbol_id_coinapi = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "symbol_id_coinapi");
    if (symbol_id_coinapi) { 
    if(!cJSON_IsString(symbol_id_coinapi))
    {
    goto end; //String
    }
    }

    // order_execution_report->amount_order
    cJSON *amount_order = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "amount_order");
    if (!amount_order) {
        goto end;
    }

    
    if(!cJSON_IsNumber(amount_order))
    {
    goto end; //Numeric
    }

    // order_execution_report->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "price");
    if (!price) {
        goto end;
    }

    
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }

    // order_execution_report->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "side");
    if (!side) {
        goto end;
    }


    // order_execution_report->order_type
    cJSON *order_type = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "order_type");
    if (!order_type) {
        goto end;
    }


    // order_execution_report->time_in_force
    cJSON *time_in_force = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "time_in_force");
    if (!time_in_force) {
        goto end;
    }


    // order_execution_report->expire_time
    cJSON *expire_time = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "expire_time");
    }

    // order_execution_report->exec_inst
    cJSON *exec_inst = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "exec_inst");
    list_t *exec_instList;
    if (exec_inst) { 
    cJSON *exec_inst_local;
    if(!cJSON_IsArray(exec_inst)) {
        goto end;//primitive container
    }
    exec_instList = list_create();

    cJSON_ArrayForEach(exec_inst_local, exec_inst)
    {
        if(!cJSON_IsString(exec_inst_local))
        {
            goto end;
        }
        list_addElement(exec_instList , strdup(exec_inst_local->valuestring));
    }
    }

    // order_execution_report->client_order_id_format_exchange
    cJSON *client_order_id_format_exchange = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "client_order_id_format_exchange");
    if (!client_order_id_format_exchange) {
        goto end;
    }

    
    if(!cJSON_IsString(client_order_id_format_exchange))
    {
    goto end; //String
    }

    // order_execution_report->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "exchange_order_id");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // order_execution_report->amount_open
    cJSON *amount_open = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "amount_open");
    if (!amount_open) {
        goto end;
    }

    
    if(!cJSON_IsNumber(amount_open))
    {
    goto end; //Numeric
    }

    // order_execution_report->amount_filled
    cJSON *amount_filled = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "amount_filled");
    if (!amount_filled) {
        goto end;
    }

    
    if(!cJSON_IsNumber(amount_filled))
    {
    goto end; //Numeric
    }

    // order_execution_report->avg_px
    cJSON *avg_px = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "avg_px");
    if (avg_px) { 
    if(!cJSON_IsNumber(avg_px))
    {
    goto end; //Numeric
    }
    }

    // order_execution_report->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "status");
    if (!status) {
        goto end;
    }


    // order_execution_report->status_history
    cJSON *status_history = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "status_history");
    list_t *status_historyList;
    if (status_history) { 
    cJSON *status_history_local;
    if(!cJSON_IsArray(status_history)) {
        goto end;//primitive container
    }
    status_historyList = list_create();

    cJSON_ArrayForEach(status_history_local, status_history)
    {
    }
    }

    // order_execution_report->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "error_message");
    if (error_message) { 
    if(!cJSON_IsString(error_message))
    {
    goto end; //String
    }
    }

    // order_execution_report->fills
    cJSON *fills = cJSON_GetObjectItemCaseSensitive(order_execution_reportJSON, "fills");
    list_t *fillsList;
    if (fills) { 
    cJSON *fills_local_nonprimitive;
    if(!cJSON_IsArray(fills)){
        goto end; //nonprimitive container
    }

    fillsList = list_create();

    cJSON_ArrayForEach(fills_local_nonprimitive,fills )
    {
        if(!cJSON_IsObject(fills_local_nonprimitive)){
            goto end;
        }
        fills_t *fillsItem = fills_parseFromJSON(fills_local_nonprimitive);

        list_addElement(fillsList, fillsItem);
    }
    }


    order_execution_report_local_var = order_execution_report_create (
        strdup(exchange_id->valuestring),
        strdup(client_order_id->valuestring),
        symbol_id_exchange ? strdup(symbol_id_exchange->valuestring) : NULL,
        symbol_id_coinapi ? strdup(symbol_id_coinapi->valuestring) : NULL,
        amount_order->valuedouble,
        price->valuedouble,
        exec_inst ? exec_instList : NULL,
        strdup(client_order_id_format_exchange->valuestring),
        exchange_order_id ? strdup(exchange_order_id->valuestring) : NULL,
        amount_open->valuedouble,
        amount_filled->valuedouble,
        avg_px ? avg_px->valuedouble : 0,
        status_history ? status_historyList : NULL,
        error_message ? strdup(error_message->valuestring) : NULL,
        fills ? fillsList : NULL
        );

    return order_execution_report_local_var;
end:
    return NULL;

}
