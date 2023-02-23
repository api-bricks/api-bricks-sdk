#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_cancel_single_request.h"



order_cancel_single_request_t *order_cancel_single_request_create(
    char *exchange_id,
    char *exchange_order_id,
    char *client_order_id
    ) {
    order_cancel_single_request_t *order_cancel_single_request_local_var = malloc(sizeof(order_cancel_single_request_t));
    if (!order_cancel_single_request_local_var) {
        return NULL;
    }
    order_cancel_single_request_local_var->exchange_id = exchange_id;
    order_cancel_single_request_local_var->exchange_order_id = exchange_order_id;
    order_cancel_single_request_local_var->client_order_id = client_order_id;

    return order_cancel_single_request_local_var;
}


void order_cancel_single_request_free(order_cancel_single_request_t *order_cancel_single_request) {
    if(NULL == order_cancel_single_request){
        return ;
    }
    listEntry_t *listEntry;
    if (order_cancel_single_request->exchange_id) {
        free(order_cancel_single_request->exchange_id);
        order_cancel_single_request->exchange_id = NULL;
    }
    if (order_cancel_single_request->exchange_order_id) {
        free(order_cancel_single_request->exchange_order_id);
        order_cancel_single_request->exchange_order_id = NULL;
    }
    if (order_cancel_single_request->client_order_id) {
        free(order_cancel_single_request->client_order_id);
        order_cancel_single_request->client_order_id = NULL;
    }
    free(order_cancel_single_request);
}

cJSON *order_cancel_single_request_convertToJSON(order_cancel_single_request_t *order_cancel_single_request) {
    cJSON *item = cJSON_CreateObject();

    // order_cancel_single_request->exchange_id
    if (!order_cancel_single_request->exchange_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "exchange_id", order_cancel_single_request->exchange_id) == NULL) {
    goto fail; //String
    }


    // order_cancel_single_request->exchange_order_id
    if(order_cancel_single_request->exchange_order_id) {
    if(cJSON_AddStringToObject(item, "exchange_order_id", order_cancel_single_request->exchange_order_id) == NULL) {
    goto fail; //String
    }
    }


    // order_cancel_single_request->client_order_id
    if(order_cancel_single_request->client_order_id) {
    if(cJSON_AddStringToObject(item, "client_order_id", order_cancel_single_request->client_order_id) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

order_cancel_single_request_t *order_cancel_single_request_parseFromJSON(cJSON *order_cancel_single_requestJSON){

    order_cancel_single_request_t *order_cancel_single_request_local_var = NULL;

    // order_cancel_single_request->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(order_cancel_single_requestJSON, "exchange_id");
    if (!exchange_id) {
        goto end;
    }

    
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }

    // order_cancel_single_request->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(order_cancel_single_requestJSON, "exchange_order_id");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // order_cancel_single_request->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(order_cancel_single_requestJSON, "client_order_id");
    if (client_order_id) { 
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }
    }


    order_cancel_single_request_local_var = order_cancel_single_request_create (
        strdup(exchange_id->valuestring),
        exchange_order_id ? strdup(exchange_order_id->valuestring) : NULL,
        client_order_id ? strdup(client_order_id->valuestring) : NULL
        );

    return order_cancel_single_request_local_var;
end:
    return NULL;

}
