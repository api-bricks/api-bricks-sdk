#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_history.h"



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
    ) {
    order_history_t *order_history_local_var = malloc(sizeof(order_history_t));
    if (!order_history_local_var) {
        return NULL;
    }
    order_history_local_var->apikey = apikey;
    order_history_local_var->exchange_id = exchange_id;
    order_history_local_var->client_order_id = client_order_id;
    order_history_local_var->symbol_id_exchange = symbol_id_exchange;
    order_history_local_var->symbol_id_coinapi = symbol_id_coinapi;
    order_history_local_var->amount_order = amount_order;
    order_history_local_var->price = price;
    order_history_local_var->side = side;
    order_history_local_var->order_type = order_type;
    order_history_local_var->time_in_force = time_in_force;
    order_history_local_var->expire_time = expire_time;
    order_history_local_var->exec_inst = exec_inst;
    order_history_local_var->client_order_id_format_exchange = client_order_id_format_exchange;
    order_history_local_var->exchange_order_id = exchange_order_id;
    order_history_local_var->amount_open = amount_open;
    order_history_local_var->amount_filled = amount_filled;
    order_history_local_var->avg_px = avg_px;
    order_history_local_var->status = status;
    order_history_local_var->status_history_status = status_history_status;
    order_history_local_var->status_history_time = status_history_time;
    order_history_local_var->error_message_result = error_message_result;
    order_history_local_var->error_message_reason = error_message_reason;
    order_history_local_var->error_message_message = error_message_message;
    order_history_local_var->fills_time = fills_time;
    order_history_local_var->fills_price = fills_price;
    order_history_local_var->fills_amount = fills_amount;
    order_history_local_var->created_time = created_time;

    return order_history_local_var;
}


void order_history_free(order_history_t *order_history) {
    if(NULL == order_history){
        return ;
    }
    listEntry_t *listEntry;
    if (order_history->apikey) {
        free(order_history->apikey);
        order_history->apikey = NULL;
    }
    if (order_history->exchange_id) {
        free(order_history->exchange_id);
        order_history->exchange_id = NULL;
    }
    if (order_history->client_order_id) {
        free(order_history->client_order_id);
        order_history->client_order_id = NULL;
    }
    if (order_history->symbol_id_exchange) {
        free(order_history->symbol_id_exchange);
        order_history->symbol_id_exchange = NULL;
    }
    if (order_history->symbol_id_coinapi) {
        free(order_history->symbol_id_coinapi);
        order_history->symbol_id_coinapi = NULL;
    }
    if (order_history->order_type) {
        free(order_history->order_type);
        order_history->order_type = NULL;
    }
    if (order_history->time_in_force) {
        free(order_history->time_in_force);
        order_history->time_in_force = NULL;
    }
    if (order_history->exec_inst) {
        list_ForEach(listEntry, order_history->exec_inst) {
            free(listEntry->data);
        }
        list_freeList(order_history->exec_inst);
        order_history->exec_inst = NULL;
    }
    if (order_history->client_order_id_format_exchange) {
        free(order_history->client_order_id_format_exchange);
        order_history->client_order_id_format_exchange = NULL;
    }
    if (order_history->exchange_order_id) {
        free(order_history->exchange_order_id);
        order_history->exchange_order_id = NULL;
    }
    if (order_history->status) {
        free(order_history->status);
        order_history->status = NULL;
    }
    if (order_history->status_history_status) {
        list_ForEach(listEntry, order_history->status_history_status) {
            free(listEntry->data);
        }
        list_freeList(order_history->status_history_status);
        order_history->status_history_status = NULL;
    }
    if (order_history->status_history_time) {
        list_ForEach(listEntry, order_history->status_history_time) {
            free(listEntry->data);
        }
        list_freeList(order_history->status_history_time);
        order_history->status_history_time = NULL;
    }
    if (order_history->error_message_result) {
        free(order_history->error_message_result);
        order_history->error_message_result = NULL;
    }
    if (order_history->error_message_reason) {
        free(order_history->error_message_reason);
        order_history->error_message_reason = NULL;
    }
    if (order_history->error_message_message) {
        free(order_history->error_message_message);
        order_history->error_message_message = NULL;
    }
    if (order_history->fills_time) {
        list_ForEach(listEntry, order_history->fills_time) {
            free(listEntry->data);
        }
        list_freeList(order_history->fills_time);
        order_history->fills_time = NULL;
    }
    if (order_history->fills_price) {
        list_ForEach(listEntry, order_history->fills_price) {
            free(listEntry->data);
        }
        list_freeList(order_history->fills_price);
        order_history->fills_price = NULL;
    }
    if (order_history->fills_amount) {
        list_ForEach(listEntry, order_history->fills_amount) {
            free(listEntry->data);
        }
        list_freeList(order_history->fills_amount);
        order_history->fills_amount = NULL;
    }
    free(order_history);
}

cJSON *order_history_convertToJSON(order_history_t *order_history) {
    cJSON *item = cJSON_CreateObject();

    // order_history->apikey
    if(order_history->apikey) {
    if(cJSON_AddStringToObject(item, "apikey", order_history->apikey) == NULL) {
    goto fail; //String
    }
    }


    // order_history->exchange_id
    if(order_history->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchangeId", order_history->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // order_history->client_order_id
    if(order_history->client_order_id) {
    if(cJSON_AddStringToObject(item, "clientOrderId", order_history->client_order_id) == NULL) {
    goto fail; //String
    }
    }


    // order_history->symbol_id_exchange
    if(order_history->symbol_id_exchange) {
    if(cJSON_AddStringToObject(item, "symbolIdExchange", order_history->symbol_id_exchange) == NULL) {
    goto fail; //String
    }
    }


    // order_history->symbol_id_coinapi
    if(order_history->symbol_id_coinapi) {
    if(cJSON_AddStringToObject(item, "symbolIdCoinapi", order_history->symbol_id_coinapi) == NULL) {
    goto fail; //String
    }
    }


    // order_history->amount_order
    if(order_history->amount_order) {
    if(cJSON_AddNumberToObject(item, "amountOrder", order_history->amount_order) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_history->price
    if(order_history->price) {
    if(cJSON_AddNumberToObject(item, "price", order_history->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_history->side
    if(order_history->side) {
    if(cJSON_AddNumberToObject(item, "side", order_history->side) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_history->order_type
    if(order_history->order_type) {
    if(cJSON_AddStringToObject(item, "orderType", order_history->order_type) == NULL) {
    goto fail; //String
    }
    }


    // order_history->time_in_force
    if(order_history->time_in_force) {
    if(cJSON_AddStringToObject(item, "timeInForce", order_history->time_in_force) == NULL) {
    goto fail; //String
    }
    }


    // order_history->expire_time
    if(order_history->expire_time) {
    }


    // order_history->exec_inst
    if(order_history->exec_inst) {
    cJSON *exec_inst = cJSON_AddArrayToObject(item, "execInst");
    if(exec_inst == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *exec_instListEntry;
    list_ForEach(exec_instListEntry, order_history->exec_inst) {
    if(cJSON_AddStringToObject(exec_inst, "", (char*)exec_instListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // order_history->client_order_id_format_exchange
    if(order_history->client_order_id_format_exchange) {
    if(cJSON_AddStringToObject(item, "clientOrderIdFormatExchange", order_history->client_order_id_format_exchange) == NULL) {
    goto fail; //String
    }
    }


    // order_history->exchange_order_id
    if(order_history->exchange_order_id) {
    if(cJSON_AddStringToObject(item, "exchangeOrderId", order_history->exchange_order_id) == NULL) {
    goto fail; //String
    }
    }


    // order_history->amount_open
    if(order_history->amount_open) {
    if(cJSON_AddNumberToObject(item, "amountOpen", order_history->amount_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_history->amount_filled
    if(order_history->amount_filled) {
    if(cJSON_AddNumberToObject(item, "amountFilled", order_history->amount_filled) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_history->avg_px
    if(order_history->avg_px) {
    if(cJSON_AddNumberToObject(item, "avgPx", order_history->avg_px) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_history->status
    if(order_history->status) {
    if(cJSON_AddStringToObject(item, "status", order_history->status) == NULL) {
    goto fail; //String
    }
    }


    // order_history->status_history_status
    if(order_history->status_history_status) {
    cJSON *status_history_status = cJSON_AddArrayToObject(item, "statusHistoryStatus");
    if(status_history_status == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *status_history_statusListEntry;
    list_ForEach(status_history_statusListEntry, order_history->status_history_status) {
    if(cJSON_AddStringToObject(status_history_status, "", (char*)status_history_statusListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // order_history->status_history_time
    if(order_history->status_history_time) {
    cJSON *status_history_time = cJSON_AddArrayToObject(item, "statusHistoryTime");
    if(status_history_time == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *status_history_timeListEntry;
    list_ForEach(status_history_timeListEntry, order_history->status_history_time) {
    }
    }


    // order_history->error_message_result
    if(order_history->error_message_result) {
    if(cJSON_AddStringToObject(item, "errorMessageResult", order_history->error_message_result) == NULL) {
    goto fail; //String
    }
    }


    // order_history->error_message_reason
    if(order_history->error_message_reason) {
    if(cJSON_AddStringToObject(item, "errorMessageReason", order_history->error_message_reason) == NULL) {
    goto fail; //String
    }
    }


    // order_history->error_message_message
    if(order_history->error_message_message) {
    if(cJSON_AddStringToObject(item, "errorMessageMessage", order_history->error_message_message) == NULL) {
    goto fail; //String
    }
    }


    // order_history->fills_time
    if(order_history->fills_time) {
    cJSON *fills_time = cJSON_AddArrayToObject(item, "fillsTime");
    if(fills_time == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *fills_timeListEntry;
    list_ForEach(fills_timeListEntry, order_history->fills_time) {
    }
    }


    // order_history->fills_price
    if(order_history->fills_price) {
    cJSON *fills_price = cJSON_AddArrayToObject(item, "fillsPrice");
    if(fills_price == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *fills_priceListEntry;
    list_ForEach(fills_priceListEntry, order_history->fills_price) {
    if(cJSON_AddNumberToObject(fills_price, "", *(double *)fills_priceListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // order_history->fills_amount
    if(order_history->fills_amount) {
    cJSON *fills_amount = cJSON_AddArrayToObject(item, "fillsAmount");
    if(fills_amount == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *fills_amountListEntry;
    list_ForEach(fills_amountListEntry, order_history->fills_amount) {
    if(cJSON_AddNumberToObject(fills_amount, "", *(double *)fills_amountListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // order_history->created_time
    if(order_history->created_time) {
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

order_history_t *order_history_parseFromJSON(cJSON *order_historyJSON){

    order_history_t *order_history_local_var = NULL;

    // define the local list for order_history->exec_inst
    list_t *exec_instList = NULL;

    // define the local list for order_history->status_history_status
    list_t *status_history_statusList = NULL;

    // define the local list for order_history->status_history_time
    list_t *status_history_timeList = NULL;

    // define the local list for order_history->fills_time
    list_t *fills_timeList = NULL;

    // define the local list for order_history->fills_price
    list_t *fills_priceList = NULL;

    // define the local list for order_history->fills_amount
    list_t *fills_amountList = NULL;

    // order_history->apikey
    cJSON *apikey = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "apikey");
    if (apikey) { 
    if(!cJSON_IsString(apikey))
    {
    goto end; //String
    }
    }

    // order_history->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "exchangeId");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // order_history->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "clientOrderId");
    if (client_order_id) { 
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }
    }

    // order_history->symbol_id_exchange
    cJSON *symbol_id_exchange = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "symbolIdExchange");
    if (symbol_id_exchange) { 
    if(!cJSON_IsString(symbol_id_exchange))
    {
    goto end; //String
    }
    }

    // order_history->symbol_id_coinapi
    cJSON *symbol_id_coinapi = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "symbolIdCoinapi");
    if (symbol_id_coinapi) { 
    if(!cJSON_IsString(symbol_id_coinapi))
    {
    goto end; //String
    }
    }

    // order_history->amount_order
    cJSON *amount_order = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "amountOrder");
    if (amount_order) { 
    if(!cJSON_IsNumber(amount_order))
    {
    goto end; //Numeric
    }
    }

    // order_history->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "price");
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // order_history->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "side");
    if (side) { 
    if(!cJSON_IsNumber(side))
    {
    goto end; //Numeric
    }
    }

    // order_history->order_type
    cJSON *order_type = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "orderType");
    if (order_type) { 
    if(!cJSON_IsString(order_type))
    {
    goto end; //String
    }
    }

    // order_history->time_in_force
    cJSON *time_in_force = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "timeInForce");
    if (time_in_force) { 
    if(!cJSON_IsString(time_in_force))
    {
    goto end; //String
    }
    }

    // order_history->expire_time
    cJSON *expire_time = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "expireTime");
    }

    // order_history->exec_inst
    cJSON *exec_inst = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "execInst");
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

    // order_history->client_order_id_format_exchange
    cJSON *client_order_id_format_exchange = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "clientOrderIdFormatExchange");
    if (client_order_id_format_exchange) { 
    if(!cJSON_IsString(client_order_id_format_exchange))
    {
    goto end; //String
    }
    }

    // order_history->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "exchangeOrderId");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // order_history->amount_open
    cJSON *amount_open = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "amountOpen");
    if (amount_open) { 
    if(!cJSON_IsNumber(amount_open))
    {
    goto end; //Numeric
    }
    }

    // order_history->amount_filled
    cJSON *amount_filled = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "amountFilled");
    if (amount_filled) { 
    if(!cJSON_IsNumber(amount_filled))
    {
    goto end; //Numeric
    }
    }

    // order_history->avg_px
    cJSON *avg_px = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "avgPx");
    if (avg_px) { 
    if(!cJSON_IsNumber(avg_px))
    {
    goto end; //Numeric
    }
    }

    // order_history->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "status");
    if (status) { 
    if(!cJSON_IsString(status))
    {
    goto end; //String
    }
    }

    // order_history->status_history_status
    cJSON *status_history_status = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "statusHistoryStatus");
    if (status_history_status) { 
    cJSON *status_history_status_local = NULL;
    if(!cJSON_IsArray(status_history_status)) {
        goto end;//primitive container
    }
    status_history_statusList = list_createList();

    cJSON_ArrayForEach(status_history_status_local, status_history_status)
    {
        if(!cJSON_IsString(status_history_status_local))
        {
            goto end;
        }
        list_addElement(status_history_statusList , strdup(status_history_status_local->valuestring));
    }
    }

    // order_history->status_history_time
    cJSON *status_history_time = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "statusHistoryTime");
    if (status_history_time) { 
    cJSON *status_history_time_local = NULL;
    if(!cJSON_IsArray(status_history_time)) {
        goto end;//primitive container
    }
    status_history_timeList = list_createList();

    cJSON_ArrayForEach(status_history_time_local, status_history_time)
    {
    }
    }

    // order_history->error_message_result
    cJSON *error_message_result = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "errorMessageResult");
    if (error_message_result) { 
    if(!cJSON_IsString(error_message_result))
    {
    goto end; //String
    }
    }

    // order_history->error_message_reason
    cJSON *error_message_reason = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "errorMessageReason");
    if (error_message_reason) { 
    if(!cJSON_IsString(error_message_reason))
    {
    goto end; //String
    }
    }

    // order_history->error_message_message
    cJSON *error_message_message = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "errorMessageMessage");
    if (error_message_message) { 
    if(!cJSON_IsString(error_message_message))
    {
    goto end; //String
    }
    }

    // order_history->fills_time
    cJSON *fills_time = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "fillsTime");
    if (fills_time) { 
    cJSON *fills_time_local = NULL;
    if(!cJSON_IsArray(fills_time)) {
        goto end;//primitive container
    }
    fills_timeList = list_createList();

    cJSON_ArrayForEach(fills_time_local, fills_time)
    {
    }
    }

    // order_history->fills_price
    cJSON *fills_price = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "fillsPrice");
    if (fills_price) { 
    cJSON *fills_price_local = NULL;
    if(!cJSON_IsArray(fills_price)) {
        goto end;//primitive container
    }
    fills_priceList = list_createList();

    cJSON_ArrayForEach(fills_price_local, fills_price)
    {
        if(!cJSON_IsNumber(fills_price_local))
        {
            goto end;
        }
        double *fills_price_local_value = (double *)calloc(1, sizeof(double));
        if(!fills_price_local_value)
        {
            goto end;
        }
        *fills_price_local_value = fills_price_local->valuedouble;
        list_addElement(fills_priceList , fills_price_local_value);
    }
    }

    // order_history->fills_amount
    cJSON *fills_amount = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "fillsAmount");
    if (fills_amount) { 
    cJSON *fills_amount_local = NULL;
    if(!cJSON_IsArray(fills_amount)) {
        goto end;//primitive container
    }
    fills_amountList = list_createList();

    cJSON_ArrayForEach(fills_amount_local, fills_amount)
    {
        if(!cJSON_IsNumber(fills_amount_local))
        {
            goto end;
        }
        double *fills_amount_local_value = (double *)calloc(1, sizeof(double));
        if(!fills_amount_local_value)
        {
            goto end;
        }
        *fills_amount_local_value = fills_amount_local->valuedouble;
        list_addElement(fills_amountList , fills_amount_local_value);
    }
    }

    // order_history->created_time
    cJSON *created_time = cJSON_GetObjectItemCaseSensitive(order_historyJSON, "createdTime");
    }


    order_history_local_var = order_history_create (
        apikey ? strdup(apikey->valuestring) : NULL,
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        client_order_id ? strdup(client_order_id->valuestring) : NULL,
        symbol_id_exchange ? strdup(symbol_id_exchange->valuestring) : NULL,
        symbol_id_coinapi ? strdup(symbol_id_coinapi->valuestring) : NULL,
        amount_order ? amount_order->valuedouble : 0,
        price ? price->valuedouble : 0,
        side ? side->valuedouble : 0,
        order_type ? strdup(order_type->valuestring) : NULL,
        time_in_force ? strdup(time_in_force->valuestring) : NULL,
        exec_inst ? exec_instList : NULL,
        client_order_id_format_exchange ? strdup(client_order_id_format_exchange->valuestring) : NULL,
        exchange_order_id ? strdup(exchange_order_id->valuestring) : NULL,
        amount_open ? amount_open->valuedouble : 0,
        amount_filled ? amount_filled->valuedouble : 0,
        avg_px ? avg_px->valuedouble : 0,
        status ? strdup(status->valuestring) : NULL,
        status_history_status ? status_history_statusList : NULL,
        status_history_time ? status_history_timeList : NULL,
        error_message_result ? strdup(error_message_result->valuestring) : NULL,
        error_message_reason ? strdup(error_message_reason->valuestring) : NULL,
        error_message_message ? strdup(error_message_message->valuestring) : NULL,
        fills_time ? fills_timeList : NULL,
        fills_price ? fills_priceList : NULL,
        fills_amount ? fills_amountList : NULL,
        );

    return order_history_local_var;
end:
    if (exec_instList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, exec_instList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(exec_instList);
        exec_instList = NULL;
    }
    if (status_history_statusList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, status_history_statusList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(status_history_statusList);
        status_history_statusList = NULL;
    }
    if (status_history_timeList) {
        list_freeList(status_history_timeList);
        status_history_timeList = NULL;
    }
    if (fills_timeList) {
        list_freeList(fills_timeList);
        fills_timeList = NULL;
    }
    if (fills_priceList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, fills_priceList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(fills_priceList);
        fills_priceList = NULL;
    }
    if (fills_amountList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, fills_amountList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(fills_amountList);
        fills_amountList = NULL;
    }
    return NULL;

}
