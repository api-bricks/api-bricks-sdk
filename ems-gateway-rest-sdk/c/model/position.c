#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "position.h"



position_t *position_create(
    char *exchange_id,
    list_t *data
    ) {
    position_t *position_local_var = malloc(sizeof(position_t));
    if (!position_local_var) {
        return NULL;
    }
    position_local_var->exchange_id = exchange_id;
    position_local_var->data = data;

    return position_local_var;
}


void position_free(position_t *position) {
    if(NULL == position){
        return ;
    }
    listEntry_t *listEntry;
    if (position->exchange_id) {
        free(position->exchange_id);
        position->exchange_id = NULL;
    }
    if (position->data) {
        list_ForEach(listEntry, position->data) {
            position_data_inner_free(listEntry->data);
        }
        list_freeList(position->data);
        position->data = NULL;
    }
    free(position);
}

cJSON *position_convertToJSON(position_t *position) {
    cJSON *item = cJSON_CreateObject();

    // position->exchange_id
    if(position->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", position->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // position->data
    if(position->data) {
    cJSON *data = cJSON_AddArrayToObject(item, "data");
    if(data == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataListEntry;
    if (position->data) {
    list_ForEach(dataListEntry, position->data) {
    cJSON *itemLocal = position_data_inner_convertToJSON(dataListEntry->data);
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

position_t *position_parseFromJSON(cJSON *positionJSON){

    position_t *position_local_var = NULL;

    // define the local list for position->data
    list_t *dataList = NULL;

    // position->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(positionJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // position->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(positionJSON, "data");
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
        position_data_inner_t *dataItem = position_data_inner_parseFromJSON(data_local_nonprimitive);

        list_addElement(dataList, dataItem);
    }
    }


    position_local_var = position_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        data ? dataList : NULL
        );

    return position_local_var;
end:
    if (dataList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, dataList) {
            position_data_inner_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(dataList);
        dataList = NULL;
    }
    return NULL;

}
