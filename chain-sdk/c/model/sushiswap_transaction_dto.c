#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_transaction_dto.h"



sushiswap_transaction_dto_t *sushiswap_transaction_dto_create(
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
    sushiswap_transaction_dto_t *sushiswap_transaction_dto_local_var = malloc(sizeof(sushiswap_transaction_dto_t));
    if (!sushiswap_transaction_dto_local_var) {
        return NULL;
    }
    sushiswap_transaction_dto_local_var->entry_time = entry_time;
    sushiswap_transaction_dto_local_var->recv_time = recv_time;
    sushiswap_transaction_dto_local_var->block_number = block_number;
    sushiswap_transaction_dto_local_var->id = id;
    sushiswap_transaction_dto_local_var->timestamp = timestamp;
    sushiswap_transaction_dto_local_var->mints = mints;
    sushiswap_transaction_dto_local_var->burns = burns;
    sushiswap_transaction_dto_local_var->swaps = swaps;
    sushiswap_transaction_dto_local_var->vid = vid;

    return sushiswap_transaction_dto_local_var;
}


void sushiswap_transaction_dto_free(sushiswap_transaction_dto_t *sushiswap_transaction_dto) {
    if(NULL == sushiswap_transaction_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_transaction_dto->entry_time) {
        free(sushiswap_transaction_dto->entry_time);
        sushiswap_transaction_dto->entry_time = NULL;
    }
    if (sushiswap_transaction_dto->recv_time) {
        free(sushiswap_transaction_dto->recv_time);
        sushiswap_transaction_dto->recv_time = NULL;
    }
    if (sushiswap_transaction_dto->id) {
        free(sushiswap_transaction_dto->id);
        sushiswap_transaction_dto->id = NULL;
    }
    if (sushiswap_transaction_dto->timestamp) {
        free(sushiswap_transaction_dto->timestamp);
        sushiswap_transaction_dto->timestamp = NULL;
    }
    if (sushiswap_transaction_dto->mints) {
        list_ForEach(listEntry, sushiswap_transaction_dto->mints) {
            free(listEntry->data);
        }
        list_freeList(sushiswap_transaction_dto->mints);
        sushiswap_transaction_dto->mints = NULL;
    }
    if (sushiswap_transaction_dto->burns) {
        list_ForEach(listEntry, sushiswap_transaction_dto->burns) {
            free(listEntry->data);
        }
        list_freeList(sushiswap_transaction_dto->burns);
        sushiswap_transaction_dto->burns = NULL;
    }
    if (sushiswap_transaction_dto->swaps) {
        list_ForEach(listEntry, sushiswap_transaction_dto->swaps) {
            free(listEntry->data);
        }
        list_freeList(sushiswap_transaction_dto->swaps);
        sushiswap_transaction_dto->swaps = NULL;
    }
    free(sushiswap_transaction_dto);
}

cJSON *sushiswap_transaction_dto_convertToJSON(sushiswap_transaction_dto_t *sushiswap_transaction_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_transaction_dto->entry_time
    if(sushiswap_transaction_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_transaction_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_transaction_dto->recv_time
    if(sushiswap_transaction_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_transaction_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_transaction_dto->block_number
    if(sushiswap_transaction_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_transaction_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_transaction_dto->id
    if(sushiswap_transaction_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_transaction_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_transaction_dto->timestamp
    if(sushiswap_transaction_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", sushiswap_transaction_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_transaction_dto->mints
    if(sushiswap_transaction_dto->mints) {
    cJSON *mints = cJSON_AddArrayToObject(item, "mints");
    if(mints == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *mintsListEntry;
    list_ForEach(mintsListEntry, sushiswap_transaction_dto->mints) {
    if(cJSON_AddStringToObject(mints, "", (char*)mintsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // sushiswap_transaction_dto->burns
    if(sushiswap_transaction_dto->burns) {
    cJSON *burns = cJSON_AddArrayToObject(item, "burns");
    if(burns == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *burnsListEntry;
    list_ForEach(burnsListEntry, sushiswap_transaction_dto->burns) {
    if(cJSON_AddStringToObject(burns, "", (char*)burnsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // sushiswap_transaction_dto->swaps
    if(sushiswap_transaction_dto->swaps) {
    cJSON *swaps = cJSON_AddArrayToObject(item, "swaps");
    if(swaps == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *swapsListEntry;
    list_ForEach(swapsListEntry, sushiswap_transaction_dto->swaps) {
    if(cJSON_AddStringToObject(swaps, "", (char*)swapsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // sushiswap_transaction_dto->vid
    if(sushiswap_transaction_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_transaction_dto->vid) == NULL) {
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

sushiswap_transaction_dto_t *sushiswap_transaction_dto_parseFromJSON(cJSON *sushiswap_transaction_dtoJSON){

    sushiswap_transaction_dto_t *sushiswap_transaction_dto_local_var = NULL;

    // define the local list for sushiswap_transaction_dto->mints
    list_t *mintsList = NULL;

    // define the local list for sushiswap_transaction_dto->burns
    list_t *burnsList = NULL;

    // define the local list for sushiswap_transaction_dto->swaps
    list_t *swapsList = NULL;

    // sushiswap_transaction_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_transaction_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_transaction_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_transaction_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_transaction_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_transaction_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_transaction_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_transaction_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_transaction_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(sushiswap_transaction_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // sushiswap_transaction_dto->mints
    cJSON *mints = cJSON_GetObjectItemCaseSensitive(sushiswap_transaction_dtoJSON, "mints");
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

    // sushiswap_transaction_dto->burns
    cJSON *burns = cJSON_GetObjectItemCaseSensitive(sushiswap_transaction_dtoJSON, "burns");
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

    // sushiswap_transaction_dto->swaps
    cJSON *swaps = cJSON_GetObjectItemCaseSensitive(sushiswap_transaction_dtoJSON, "swaps");
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

    // sushiswap_transaction_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_transaction_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    sushiswap_transaction_dto_local_var = sushiswap_transaction_dto_create (
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

    return sushiswap_transaction_dto_local_var;
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
