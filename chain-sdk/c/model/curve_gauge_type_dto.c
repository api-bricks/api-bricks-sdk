#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_gauge_type_dto.h"



curve_gauge_type_dto_t *curve_gauge_type_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *name,
    char *gauge_count,
    long vid
    ) {
    curve_gauge_type_dto_t *curve_gauge_type_dto_local_var = malloc(sizeof(curve_gauge_type_dto_t));
    if (!curve_gauge_type_dto_local_var) {
        return NULL;
    }
    curve_gauge_type_dto_local_var->entry_time = entry_time;
    curve_gauge_type_dto_local_var->recv_time = recv_time;
    curve_gauge_type_dto_local_var->block_number = block_number;
    curve_gauge_type_dto_local_var->id = id;
    curve_gauge_type_dto_local_var->name = name;
    curve_gauge_type_dto_local_var->gauge_count = gauge_count;
    curve_gauge_type_dto_local_var->vid = vid;

    return curve_gauge_type_dto_local_var;
}


void curve_gauge_type_dto_free(curve_gauge_type_dto_t *curve_gauge_type_dto) {
    if(NULL == curve_gauge_type_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_gauge_type_dto->entry_time) {
        free(curve_gauge_type_dto->entry_time);
        curve_gauge_type_dto->entry_time = NULL;
    }
    if (curve_gauge_type_dto->recv_time) {
        free(curve_gauge_type_dto->recv_time);
        curve_gauge_type_dto->recv_time = NULL;
    }
    if (curve_gauge_type_dto->id) {
        free(curve_gauge_type_dto->id);
        curve_gauge_type_dto->id = NULL;
    }
    if (curve_gauge_type_dto->name) {
        free(curve_gauge_type_dto->name);
        curve_gauge_type_dto->name = NULL;
    }
    if (curve_gauge_type_dto->gauge_count) {
        free(curve_gauge_type_dto->gauge_count);
        curve_gauge_type_dto->gauge_count = NULL;
    }
    free(curve_gauge_type_dto);
}

cJSON *curve_gauge_type_dto_convertToJSON(curve_gauge_type_dto_t *curve_gauge_type_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_gauge_type_dto->entry_time
    if(curve_gauge_type_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_gauge_type_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_type_dto->recv_time
    if(curve_gauge_type_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_gauge_type_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_type_dto->block_number
    if(curve_gauge_type_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_gauge_type_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_gauge_type_dto->id
    if(curve_gauge_type_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_gauge_type_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_type_dto->name
    if(curve_gauge_type_dto->name) {
    if(cJSON_AddStringToObject(item, "name", curve_gauge_type_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_type_dto->gauge_count
    if(curve_gauge_type_dto->gauge_count) {
    if(cJSON_AddStringToObject(item, "gauge_count", curve_gauge_type_dto->gauge_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_type_dto->vid
    if(curve_gauge_type_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_gauge_type_dto->vid) == NULL) {
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

curve_gauge_type_dto_t *curve_gauge_type_dto_parseFromJSON(cJSON *curve_gauge_type_dtoJSON){

    curve_gauge_type_dto_t *curve_gauge_type_dto_local_var = NULL;

    // curve_gauge_type_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_type_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_type_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_type_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_type_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_gauge_type_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_gauge_type_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_gauge_type_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_gauge_type_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(curve_gauge_type_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // curve_gauge_type_dto->gauge_count
    cJSON *gauge_count = cJSON_GetObjectItemCaseSensitive(curve_gauge_type_dtoJSON, "gauge_count");
    if (gauge_count) { 
    if(!cJSON_IsString(gauge_count) && !cJSON_IsNull(gauge_count))
    {
    goto end; //String
    }
    }

    // curve_gauge_type_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_gauge_type_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_gauge_type_dto_local_var = curve_gauge_type_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        gauge_count && !cJSON_IsNull(gauge_count) ? strdup(gauge_count->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_gauge_type_dto_local_var;
end:
    return NULL;

}
