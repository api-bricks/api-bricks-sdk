#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_cancel_all_request.h"



order_cancel_all_request_t *order_cancel_all_request_create(
    char *exchange_id
    ) {
    order_cancel_all_request_t *order_cancel_all_request_local_var = malloc(sizeof(order_cancel_all_request_t));
    if (!order_cancel_all_request_local_var) {
        return NULL;
    }
    order_cancel_all_request_local_var->exchange_id = exchange_id;

    return order_cancel_all_request_local_var;
}


void order_cancel_all_request_free(order_cancel_all_request_t *order_cancel_all_request) {
    if(NULL == order_cancel_all_request){
        return ;
    }
    listEntry_t *listEntry;
    if (order_cancel_all_request->exchange_id) {
        free(order_cancel_all_request->exchange_id);
        order_cancel_all_request->exchange_id = NULL;
    }
    free(order_cancel_all_request);
}

cJSON *order_cancel_all_request_convertToJSON(order_cancel_all_request_t *order_cancel_all_request) {
    cJSON *item = cJSON_CreateObject();

    // order_cancel_all_request->exchange_id
    if (!order_cancel_all_request->exchange_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "exchange_id", order_cancel_all_request->exchange_id) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

order_cancel_all_request_t *order_cancel_all_request_parseFromJSON(cJSON *order_cancel_all_requestJSON){

    order_cancel_all_request_t *order_cancel_all_request_local_var = NULL;

    // order_cancel_all_request->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(order_cancel_all_requestJSON, "exchange_id");
    if (!exchange_id) {
        goto end;
    }

    
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }


    order_cancel_all_request_local_var = order_cancel_all_request_create (
        strdup(exchange_id->valuestring)
        );

    return order_cancel_all_request_local_var;
end:
    return NULL;

}
