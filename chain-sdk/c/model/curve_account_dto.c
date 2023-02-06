#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_account_dto.h"



curve_account_dto_t *curve_account_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *address,
    long vid
    ) {
    curve_account_dto_t *curve_account_dto_local_var = malloc(sizeof(curve_account_dto_t));
    if (!curve_account_dto_local_var) {
        return NULL;
    }
    curve_account_dto_local_var->entry_time = entry_time;
    curve_account_dto_local_var->recv_time = recv_time;
    curve_account_dto_local_var->block_number = block_number;
    curve_account_dto_local_var->id = id;
    curve_account_dto_local_var->address = address;
    curve_account_dto_local_var->vid = vid;

    return curve_account_dto_local_var;
}


void curve_account_dto_free(curve_account_dto_t *curve_account_dto) {
    if(NULL == curve_account_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_account_dto->entry_time) {
        free(curve_account_dto->entry_time);
        curve_account_dto->entry_time = NULL;
    }
    if (curve_account_dto->recv_time) {
        free(curve_account_dto->recv_time);
        curve_account_dto->recv_time = NULL;
    }
    if (curve_account_dto->id) {
        free(curve_account_dto->id);
        curve_account_dto->id = NULL;
    }
    if (curve_account_dto->address) {
        free(curve_account_dto->address);
        curve_account_dto->address = NULL;
    }
    free(curve_account_dto);
}

cJSON *curve_account_dto_convertToJSON(curve_account_dto_t *curve_account_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_account_dto->entry_time
    if(curve_account_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_account_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_account_dto->recv_time
    if(curve_account_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_account_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_account_dto->block_number
    if(curve_account_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_account_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_account_dto->id
    if(curve_account_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_account_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_account_dto->address
    if(curve_account_dto->address) {
    if(cJSON_AddStringToObject(item, "address", curve_account_dto->address) == NULL) {
    goto fail; //String
    }
    }


    // curve_account_dto->vid
    if(curve_account_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_account_dto->vid) == NULL) {
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

curve_account_dto_t *curve_account_dto_parseFromJSON(cJSON *curve_account_dtoJSON){

    curve_account_dto_t *curve_account_dto_local_var = NULL;

    // curve_account_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_account_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_account_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_account_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_account_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_account_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_account_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_account_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_account_dto->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(curve_account_dtoJSON, "address");
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // curve_account_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_account_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_account_dto_local_var = curve_account_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_account_dto_local_var;
end:
    return NULL;

}
