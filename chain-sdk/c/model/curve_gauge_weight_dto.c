#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_gauge_weight_dto.h"



curve_gauge_weight_dto_t *curve_gauge_weight_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *gauge,
    char *time,
    char *weight,
    long vid
    ) {
    curve_gauge_weight_dto_t *curve_gauge_weight_dto_local_var = malloc(sizeof(curve_gauge_weight_dto_t));
    if (!curve_gauge_weight_dto_local_var) {
        return NULL;
    }
    curve_gauge_weight_dto_local_var->entry_time = entry_time;
    curve_gauge_weight_dto_local_var->recv_time = recv_time;
    curve_gauge_weight_dto_local_var->block_number = block_number;
    curve_gauge_weight_dto_local_var->id = id;
    curve_gauge_weight_dto_local_var->gauge = gauge;
    curve_gauge_weight_dto_local_var->time = time;
    curve_gauge_weight_dto_local_var->weight = weight;
    curve_gauge_weight_dto_local_var->vid = vid;

    return curve_gauge_weight_dto_local_var;
}


void curve_gauge_weight_dto_free(curve_gauge_weight_dto_t *curve_gauge_weight_dto) {
    if(NULL == curve_gauge_weight_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_gauge_weight_dto->entry_time) {
        free(curve_gauge_weight_dto->entry_time);
        curve_gauge_weight_dto->entry_time = NULL;
    }
    if (curve_gauge_weight_dto->recv_time) {
        free(curve_gauge_weight_dto->recv_time);
        curve_gauge_weight_dto->recv_time = NULL;
    }
    if (curve_gauge_weight_dto->id) {
        free(curve_gauge_weight_dto->id);
        curve_gauge_weight_dto->id = NULL;
    }
    if (curve_gauge_weight_dto->gauge) {
        free(curve_gauge_weight_dto->gauge);
        curve_gauge_weight_dto->gauge = NULL;
    }
    if (curve_gauge_weight_dto->time) {
        free(curve_gauge_weight_dto->time);
        curve_gauge_weight_dto->time = NULL;
    }
    if (curve_gauge_weight_dto->weight) {
        free(curve_gauge_weight_dto->weight);
        curve_gauge_weight_dto->weight = NULL;
    }
    free(curve_gauge_weight_dto);
}

cJSON *curve_gauge_weight_dto_convertToJSON(curve_gauge_weight_dto_t *curve_gauge_weight_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_gauge_weight_dto->entry_time
    if(curve_gauge_weight_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_gauge_weight_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_weight_dto->recv_time
    if(curve_gauge_weight_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_gauge_weight_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_weight_dto->block_number
    if(curve_gauge_weight_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_gauge_weight_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_gauge_weight_dto->id
    if(curve_gauge_weight_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_gauge_weight_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_weight_dto->gauge
    if(curve_gauge_weight_dto->gauge) {
    if(cJSON_AddStringToObject(item, "gauge", curve_gauge_weight_dto->gauge) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_weight_dto->time
    if(curve_gauge_weight_dto->time) {
    if(cJSON_AddStringToObject(item, "time", curve_gauge_weight_dto->time) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_weight_dto->weight
    if(curve_gauge_weight_dto->weight) {
    if(cJSON_AddStringToObject(item, "weight", curve_gauge_weight_dto->weight) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_weight_dto->vid
    if(curve_gauge_weight_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_gauge_weight_dto->vid) == NULL) {
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

curve_gauge_weight_dto_t *curve_gauge_weight_dto_parseFromJSON(cJSON *curve_gauge_weight_dtoJSON){

    curve_gauge_weight_dto_t *curve_gauge_weight_dto_local_var = NULL;

    // curve_gauge_weight_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_weight_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_weight_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_weight_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_weight_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_gauge_weight_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_gauge_weight_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_gauge_weight_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_gauge_weight_dto->gauge
    cJSON *gauge = cJSON_GetObjectItemCaseSensitive(curve_gauge_weight_dtoJSON, "gauge");
    if (gauge) { 
    if(!cJSON_IsString(gauge) && !cJSON_IsNull(gauge))
    {
    goto end; //String
    }
    }

    // curve_gauge_weight_dto->time
    cJSON *time = cJSON_GetObjectItemCaseSensitive(curve_gauge_weight_dtoJSON, "time");
    if (time) { 
    if(!cJSON_IsString(time) && !cJSON_IsNull(time))
    {
    goto end; //String
    }
    }

    // curve_gauge_weight_dto->weight
    cJSON *weight = cJSON_GetObjectItemCaseSensitive(curve_gauge_weight_dtoJSON, "weight");
    if (weight) { 
    if(!cJSON_IsString(weight) && !cJSON_IsNull(weight))
    {
    goto end; //String
    }
    }

    // curve_gauge_weight_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_gauge_weight_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_gauge_weight_dto_local_var = curve_gauge_weight_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        gauge && !cJSON_IsNull(gauge) ? strdup(gauge->valuestring) : NULL,
        time && !cJSON_IsNull(time) ? strdup(time->valuestring) : NULL,
        weight && !cJSON_IsNull(weight) ? strdup(weight->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_gauge_weight_dto_local_var;
end:
    return NULL;

}
