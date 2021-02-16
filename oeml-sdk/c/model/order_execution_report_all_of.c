#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_execution_report_all_of.h"


char* statusorder_execution_report_all_of_ToString(oeml___rest_api_order_execution_report_all_of__e status) {
    char* statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
	return statusArray[status];
}

oeml___rest_api_order_execution_report_all_of__e statusorder_execution_report_all_of_FromString(char* status){
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

order_execution_report_all_of_t *order_execution_report_all_of_create(
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    double avg_px,
    list_t *status_history,
    char *error_message,
    list_t *fills
    ) {
    order_execution_report_all_of_t *order_execution_report_all_of_local_var = malloc(sizeof(order_execution_report_all_of_t));
    if (!order_execution_report_all_of_local_var) {
        return NULL;
    }
    order_execution_report_all_of_local_var->client_order_id_format_exchange = client_order_id_format_exchange;
    order_execution_report_all_of_local_var->exchange_order_id = exchange_order_id;
    order_execution_report_all_of_local_var->amount_open = amount_open;
    order_execution_report_all_of_local_var->amount_filled = amount_filled;
    order_execution_report_all_of_local_var->avg_px = avg_px;
    order_execution_report_all_of_local_var->status = status;
    order_execution_report_all_of_local_var->status_history = status_history;
    order_execution_report_all_of_local_var->error_message = error_message;
    order_execution_report_all_of_local_var->fills = fills;

    return order_execution_report_all_of_local_var;
}


void order_execution_report_all_of_free(order_execution_report_all_of_t *order_execution_report_all_of) {
    if(NULL == order_execution_report_all_of){
        return ;
    }
    listEntry_t *listEntry;
    if (order_execution_report_all_of->client_order_id_format_exchange) {
        free(order_execution_report_all_of->client_order_id_format_exchange);
        order_execution_report_all_of->client_order_id_format_exchange = NULL;
    }
    if (order_execution_report_all_of->exchange_order_id) {
        free(order_execution_report_all_of->exchange_order_id);
        order_execution_report_all_of->exchange_order_id = NULL;
    }
    if (order_execution_report_all_of->status_history) {
        list_ForEach(listEntry, order_execution_report_all_of->status_history) {
            free(listEntry->data);
        }
        list_free(order_execution_report_all_of->status_history);
        order_execution_report_all_of->status_history = NULL;
    }
    if (order_execution_report_all_of->error_message) {
        free(order_execution_report_all_of->error_message);
        order_execution_report_all_of->error_message = NULL;
    }
    if (order_execution_report_all_of->fills) {
        list_ForEach(listEntry, order_execution_report_all_of->fills) {
            fills_free(listEntry->data);
        }
        list_free(order_execution_report_all_of->fills);
        order_execution_report_all_of->fills = NULL;
    }
    free(order_execution_report_all_of);
}

cJSON *order_execution_report_all_of_convertToJSON(order_execution_report_all_of_t *order_execution_report_all_of) {
    cJSON *item = cJSON_CreateObject();

    // order_execution_report_all_of->client_order_id_format_exchange
    if (!order_execution_report_all_of->client_order_id_format_exchange) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "client_order_id_format_exchange", order_execution_report_all_of->client_order_id_format_exchange) == NULL) {
    goto fail; //String
    }


    // order_execution_report_all_of->exchange_order_id
    if(order_execution_report_all_of->exchange_order_id) { 
    if(cJSON_AddStringToObject(item, "exchange_order_id", order_execution_report_all_of->exchange_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // order_execution_report_all_of->amount_open
    if (!order_execution_report_all_of->amount_open) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "amount_open", order_execution_report_all_of->amount_open) == NULL) {
    goto fail; //Numeric
    }


    // order_execution_report_all_of->amount_filled
    if (!order_execution_report_all_of->amount_filled) {
        goto fail;
    }
    
    if(cJSON_AddNumberToObject(item, "amount_filled", order_execution_report_all_of->amount_filled) == NULL) {
    goto fail; //Numeric
    }


    // order_execution_report_all_of->avg_px
    if(order_execution_report_all_of->avg_px) { 
    if(cJSON_AddNumberToObject(item, "avg_px", order_execution_report_all_of->avg_px) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_execution_report_all_of->status
    


    // order_execution_report_all_of->status_history
    if(order_execution_report_all_of->status_history) { 
    cJSON *status_history = cJSON_AddArrayToObject(item, "status_history");
    if(status_history == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *status_historyListEntry;
    list_ForEach(status_historyListEntry, order_execution_report_all_of->status_history) {
    }
     } 


    // order_execution_report_all_of->error_message
    if(order_execution_report_all_of->error_message) { 
    if(cJSON_AddStringToObject(item, "error_message", order_execution_report_all_of->error_message) == NULL) {
    goto fail; //String
    }
     } 


    // order_execution_report_all_of->fills
    if(order_execution_report_all_of->fills) { 
    cJSON *fills = cJSON_AddArrayToObject(item, "fills");
    if(fills == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *fillsListEntry;
    if (order_execution_report_all_of->fills) {
    list_ForEach(fillsListEntry, order_execution_report_all_of->fills) {
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

order_execution_report_all_of_t *order_execution_report_all_of_parseFromJSON(cJSON *order_execution_report_all_ofJSON){

    order_execution_report_all_of_t *order_execution_report_all_of_local_var = NULL;

    // order_execution_report_all_of->client_order_id_format_exchange
    cJSON *client_order_id_format_exchange = cJSON_GetObjectItemCaseSensitive(order_execution_report_all_ofJSON, "client_order_id_format_exchange");
    if (!client_order_id_format_exchange) {
        goto end;
    }

    
    if(!cJSON_IsString(client_order_id_format_exchange))
    {
    goto end; //String
    }

    // order_execution_report_all_of->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(order_execution_report_all_ofJSON, "exchange_order_id");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // order_execution_report_all_of->amount_open
    cJSON *amount_open = cJSON_GetObjectItemCaseSensitive(order_execution_report_all_ofJSON, "amount_open");
    if (!amount_open) {
        goto end;
    }

    
    if(!cJSON_IsNumber(amount_open))
    {
    goto end; //Numeric
    }

    // order_execution_report_all_of->amount_filled
    cJSON *amount_filled = cJSON_GetObjectItemCaseSensitive(order_execution_report_all_ofJSON, "amount_filled");
    if (!amount_filled) {
        goto end;
    }

    
    if(!cJSON_IsNumber(amount_filled))
    {
    goto end; //Numeric
    }

    // order_execution_report_all_of->avg_px
    cJSON *avg_px = cJSON_GetObjectItemCaseSensitive(order_execution_report_all_ofJSON, "avg_px");
    if (avg_px) { 
    if(!cJSON_IsNumber(avg_px))
    {
    goto end; //Numeric
    }
    }

    // order_execution_report_all_of->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(order_execution_report_all_ofJSON, "status");
    if (!status) {
        goto end;
    }


    // order_execution_report_all_of->status_history
    cJSON *status_history = cJSON_GetObjectItemCaseSensitive(order_execution_report_all_ofJSON, "status_history");
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

    // order_execution_report_all_of->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(order_execution_report_all_ofJSON, "error_message");
    if (error_message) { 
    if(!cJSON_IsString(error_message))
    {
    goto end; //String
    }
    }

    // order_execution_report_all_of->fills
    cJSON *fills = cJSON_GetObjectItemCaseSensitive(order_execution_report_all_ofJSON, "fills");
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


    order_execution_report_all_of_local_var = order_execution_report_all_of_create (
        strdup(client_order_id_format_exchange->valuestring),
        exchange_order_id ? strdup(exchange_order_id->valuestring) : NULL,
        amount_open->valuedouble,
        amount_filled->valuedouble,
        avg_px ? avg_px->valuedouble : 0,
        status_history ? status_historyList : NULL,
        error_message ? strdup(error_message->valuestring) : NULL,
        fills ? fillsList : NULL
        );

    return order_execution_report_all_of_local_var;
end:
    return NULL;

}
