#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v2_transaction_dto.h"



uniswap_v2_transaction_dto_t *uniswap_v2_transaction_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *timestamp,
    list_t *mints,
    list_t *burns,
    list_t *swaps,
    long vid
    ) {
    uniswap_v2_transaction_dto_t *uniswap_v2_transaction_dto_local_var = malloc(sizeof(uniswap_v2_transaction_dto_t));
    if (!uniswap_v2_transaction_dto_local_var) {
        return NULL;
    }
    uniswap_v2_transaction_dto_local_var->entry_time = entry_time;
    uniswap_v2_transaction_dto_local_var->recv_time = recv_time;
    uniswap_v2_transaction_dto_local_var->block_number = block_number;
    uniswap_v2_transaction_dto_local_var->id = id;
    uniswap_v2_transaction_dto_local_var->timestamp = timestamp;
    uniswap_v2_transaction_dto_local_var->mints = mints;
    uniswap_v2_transaction_dto_local_var->burns = burns;
    uniswap_v2_transaction_dto_local_var->swaps = swaps;
    uniswap_v2_transaction_dto_local_var->vid = vid;

    return uniswap_v2_transaction_dto_local_var;
}


void uniswap_v2_transaction_dto_free(uniswap_v2_transaction_dto_t *uniswap_v2_transaction_dto) {
    if(NULL == uniswap_v2_transaction_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v2_transaction_dto->entry_time) {
        free(uniswap_v2_transaction_dto->entry_time);
        uniswap_v2_transaction_dto->entry_time = NULL;
    }
    if (uniswap_v2_transaction_dto->recv_time) {
        free(uniswap_v2_transaction_dto->recv_time);
        uniswap_v2_transaction_dto->recv_time = NULL;
    }
    if (uniswap_v2_transaction_dto->id) {
        free(uniswap_v2_transaction_dto->id);
        uniswap_v2_transaction_dto->id = NULL;
    }
    if (uniswap_v2_transaction_dto->timestamp) {
        free(uniswap_v2_transaction_dto->timestamp);
        uniswap_v2_transaction_dto->timestamp = NULL;
    }
    if (uniswap_v2_transaction_dto->mints) {
        list_ForEach(listEntry, uniswap_v2_transaction_dto->mints) {
            free(listEntry->data);
        }
        list_freeList(uniswap_v2_transaction_dto->mints);
        uniswap_v2_transaction_dto->mints = NULL;
    }
    if (uniswap_v2_transaction_dto->burns) {
        list_ForEach(listEntry, uniswap_v2_transaction_dto->burns) {
            free(listEntry->data);
        }
        list_freeList(uniswap_v2_transaction_dto->burns);
        uniswap_v2_transaction_dto->burns = NULL;
    }
    if (uniswap_v2_transaction_dto->swaps) {
        list_ForEach(listEntry, uniswap_v2_transaction_dto->swaps) {
            free(listEntry->data);
        }
        list_freeList(uniswap_v2_transaction_dto->swaps);
        uniswap_v2_transaction_dto->swaps = NULL;
    }
    free(uniswap_v2_transaction_dto);
}

cJSON *uniswap_v2_transaction_dto_convertToJSON(uniswap_v2_transaction_dto_t *uniswap_v2_transaction_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v2_transaction_dto->entry_time
    if(uniswap_v2_transaction_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v2_transaction_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_transaction_dto->recv_time
    if(uniswap_v2_transaction_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v2_transaction_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v2_transaction_dto->block_number
    if(uniswap_v2_transaction_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v2_transaction_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v2_transaction_dto->id
    if(uniswap_v2_transaction_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v2_transaction_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_transaction_dto->timestamp
    if(uniswap_v2_transaction_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", uniswap_v2_transaction_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v2_transaction_dto->mints
    if(uniswap_v2_transaction_dto->mints) {
    cJSON *mints = cJSON_AddArrayToObject(item, "mints");
    if(mints == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *mintsListEntry;
    list_ForEach(mintsListEntry, uniswap_v2_transaction_dto->mints) {
    if(cJSON_AddStringToObject(mints, "", (char*)mintsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // uniswap_v2_transaction_dto->burns
    if(uniswap_v2_transaction_dto->burns) {
    cJSON *burns = cJSON_AddArrayToObject(item, "burns");
    if(burns == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *burnsListEntry;
    list_ForEach(burnsListEntry, uniswap_v2_transaction_dto->burns) {
    if(cJSON_AddStringToObject(burns, "", (char*)burnsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // uniswap_v2_transaction_dto->swaps
    if(uniswap_v2_transaction_dto->swaps) {
    cJSON *swaps = cJSON_AddArrayToObject(item, "swaps");
    if(swaps == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *swapsListEntry;
    list_ForEach(swapsListEntry, uniswap_v2_transaction_dto->swaps) {
    if(cJSON_AddStringToObject(swaps, "", (char*)swapsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // uniswap_v2_transaction_dto->vid
    if(uniswap_v2_transaction_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v2_transaction_dto->vid) == NULL) {
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

uniswap_v2_transaction_dto_t *uniswap_v2_transaction_dto_parseFromJSON(cJSON *uniswap_v2_transaction_dtoJSON){

    uniswap_v2_transaction_dto_t *uniswap_v2_transaction_dto_local_var = NULL;

    // define the local list for uniswap_v2_transaction_dto->mints
    list_t *mintsList = NULL;

    // define the local list for uniswap_v2_transaction_dto->burns
    list_t *burnsList = NULL;

    // define the local list for uniswap_v2_transaction_dto->swaps
    list_t *swapsList = NULL;

    // uniswap_v2_transaction_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_transaction_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_transaction_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v2_transaction_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v2_transaction_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v2_transaction_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v2_transaction_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v2_transaction_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v2_transaction_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v2_transaction_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // uniswap_v2_transaction_dto->mints
    cJSON *mints = cJSON_GetObjectItemCaseSensitive(uniswap_v2_transaction_dtoJSON, "mints");
    if (mints) { 
    cJSON *mints_local = NULL;
    if(!cJSON_IsArray(mints)) {
        goto end;//primitive container
    }
    mintsList = list_createList();

    cJSON_ArrayForEach(mints_local, mints)
    {
        if(!cJSON_IsString(mints_local))
        {
            goto end;
        }
        list_addElement(mintsList , strdup(mints_local->valuestring));
    }
    }

    // uniswap_v2_transaction_dto->burns
    cJSON *burns = cJSON_GetObjectItemCaseSensitive(uniswap_v2_transaction_dtoJSON, "burns");
    if (burns) { 
    cJSON *burns_local = NULL;
    if(!cJSON_IsArray(burns)) {
        goto end;//primitive container
    }
    burnsList = list_createList();

    cJSON_ArrayForEach(burns_local, burns)
    {
        if(!cJSON_IsString(burns_local))
        {
            goto end;
        }
        list_addElement(burnsList , strdup(burns_local->valuestring));
    }
    }

    // uniswap_v2_transaction_dto->swaps
    cJSON *swaps = cJSON_GetObjectItemCaseSensitive(uniswap_v2_transaction_dtoJSON, "swaps");
    if (swaps) { 
    cJSON *swaps_local = NULL;
    if(!cJSON_IsArray(swaps)) {
        goto end;//primitive container
    }
    swapsList = list_createList();

    cJSON_ArrayForEach(swaps_local, swaps)
    {
        if(!cJSON_IsString(swaps_local))
        {
            goto end;
        }
        list_addElement(swapsList , strdup(swaps_local->valuestring));
    }
    }

    // uniswap_v2_transaction_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v2_transaction_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v2_transaction_dto_local_var = uniswap_v2_transaction_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        mints ? mintsList : NULL,
        burns ? burnsList : NULL,
        swaps ? swapsList : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v2_transaction_dto_local_var;
end:
    if (mintsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, mintsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(mintsList);
        mintsList = NULL;
    }
    if (burnsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, burnsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(burnsList);
        burnsList = NULL;
    }
    if (swapsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, swapsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(swapsList);
        swapsList = NULL;
    }
    return NULL;

}
