#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "balance.h"



balance_t *balance_create(
    char *exchange_id,
    list_t *data
    ) {
    balance_t *balance_local_var = malloc(sizeof(balance_t));
    if (!balance_local_var) {
        return NULL;
    }
    balance_local_var->exchange_id = exchange_id;
    balance_local_var->data = data;

    return balance_local_var;
}


void balance_free(balance_t *balance) {
    if(NULL == balance){
        return ;
    }
    listEntry_t *listEntry;
    if (balance->exchange_id) {
        free(balance->exchange_id);
        balance->exchange_id = NULL;
    }
    if (balance->data) {
        list_ForEach(listEntry, balance->data) {
            balance_data_inner_free(listEntry->data);
        }
        list_freeList(balance->data);
        balance->data = NULL;
    }
    free(balance);
}

cJSON *balance_convertToJSON(balance_t *balance) {
    cJSON *item = cJSON_CreateObject();

    // balance->exchange_id
    if(balance->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", balance->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // balance->data
    if(balance->data) {
    cJSON *data = cJSON_AddArrayToObject(item, "data");
    if(data == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataListEntry;
    if (balance->data) {
    list_ForEach(dataListEntry, balance->data) {
    cJSON *itemLocal = balance_data_inner_convertToJSON(dataListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(data, itemLocal);
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

balance_t *balance_parseFromJSON(cJSON *balanceJSON){

    balance_t *balance_local_var = NULL;

    // define the local list for balance->data
    list_t *dataList = NULL;

    // balance->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(balanceJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // balance->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(balanceJSON, "data");
    if (data) { 
    cJSON *data_local_nonprimitive = NULL;
    if(!cJSON_IsArray(data)){
        goto end; //nonprimitive container
    }

    dataList = list_createList();

    cJSON_ArrayForEach(data_local_nonprimitive,data )
    {
        if(!cJSON_IsObject(data_local_nonprimitive)){
            goto end;
        }
        balance_data_inner_t *dataItem = balance_data_inner_parseFromJSON(data_local_nonprimitive);

        list_addElement(dataList, dataItem);
    }
    }


    balance_local_var = balance_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        data ? dataList : NULL
        );

    return balance_local_var;
end:
    if (dataList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, dataList) {
            balance_data_inner_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(dataList);
        dataList = NULL;
    }
    return NULL;

}
