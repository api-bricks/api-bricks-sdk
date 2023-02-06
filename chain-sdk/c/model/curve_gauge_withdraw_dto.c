#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_gauge_withdraw_dto.h"



curve_gauge_withdraw_dto_t *curve_gauge_withdraw_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *gauge,
    char *provider,
    char *value,
    long vid
    ) {
    curve_gauge_withdraw_dto_t *curve_gauge_withdraw_dto_local_var = malloc(sizeof(curve_gauge_withdraw_dto_t));
    if (!curve_gauge_withdraw_dto_local_var) {
        return NULL;
    }
    curve_gauge_withdraw_dto_local_var->entry_time = entry_time;
    curve_gauge_withdraw_dto_local_var->recv_time = recv_time;
    curve_gauge_withdraw_dto_local_var->block_number = block_number;
    curve_gauge_withdraw_dto_local_var->id = id;
    curve_gauge_withdraw_dto_local_var->gauge = gauge;
    curve_gauge_withdraw_dto_local_var->provider = provider;
    curve_gauge_withdraw_dto_local_var->value = value;
    curve_gauge_withdraw_dto_local_var->vid = vid;

    return curve_gauge_withdraw_dto_local_var;
}


void curve_gauge_withdraw_dto_free(curve_gauge_withdraw_dto_t *curve_gauge_withdraw_dto) {
    if(NULL == curve_gauge_withdraw_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_gauge_withdraw_dto->entry_time) {
        free(curve_gauge_withdraw_dto->entry_time);
        curve_gauge_withdraw_dto->entry_time = NULL;
    }
    if (curve_gauge_withdraw_dto->recv_time) {
        free(curve_gauge_withdraw_dto->recv_time);
        curve_gauge_withdraw_dto->recv_time = NULL;
    }
    if (curve_gauge_withdraw_dto->id) {
        free(curve_gauge_withdraw_dto->id);
        curve_gauge_withdraw_dto->id = NULL;
    }
    if (curve_gauge_withdraw_dto->gauge) {
        free(curve_gauge_withdraw_dto->gauge);
        curve_gauge_withdraw_dto->gauge = NULL;
    }
    if (curve_gauge_withdraw_dto->provider) {
        free(curve_gauge_withdraw_dto->provider);
        curve_gauge_withdraw_dto->provider = NULL;
    }
    if (curve_gauge_withdraw_dto->value) {
        free(curve_gauge_withdraw_dto->value);
        curve_gauge_withdraw_dto->value = NULL;
    }
    free(curve_gauge_withdraw_dto);
}

cJSON *curve_gauge_withdraw_dto_convertToJSON(curve_gauge_withdraw_dto_t *curve_gauge_withdraw_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_gauge_withdraw_dto->entry_time
    if(curve_gauge_withdraw_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_gauge_withdraw_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_withdraw_dto->recv_time
    if(curve_gauge_withdraw_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_gauge_withdraw_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_withdraw_dto->block_number
    if(curve_gauge_withdraw_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_gauge_withdraw_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_gauge_withdraw_dto->id
    if(curve_gauge_withdraw_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_gauge_withdraw_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_withdraw_dto->gauge
    if(curve_gauge_withdraw_dto->gauge) {
    if(cJSON_AddStringToObject(item, "gauge", curve_gauge_withdraw_dto->gauge) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_withdraw_dto->provider
    if(curve_gauge_withdraw_dto->provider) {
    if(cJSON_AddStringToObject(item, "provider", curve_gauge_withdraw_dto->provider) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_withdraw_dto->value
    if(curve_gauge_withdraw_dto->value) {
    if(cJSON_AddStringToObject(item, "value", curve_gauge_withdraw_dto->value) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_withdraw_dto->vid
    if(curve_gauge_withdraw_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_gauge_withdraw_dto->vid) == NULL) {
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

curve_gauge_withdraw_dto_t *curve_gauge_withdraw_dto_parseFromJSON(cJSON *curve_gauge_withdraw_dtoJSON){

    curve_gauge_withdraw_dto_t *curve_gauge_withdraw_dto_local_var = NULL;

    // curve_gauge_withdraw_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_withdraw_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_withdraw_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_withdraw_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_withdraw_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_gauge_withdraw_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_gauge_withdraw_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_gauge_withdraw_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_gauge_withdraw_dto->gauge
    cJSON *gauge = cJSON_GetObjectItemCaseSensitive(curve_gauge_withdraw_dtoJSON, "gauge");
    if (gauge) { 
    if(!cJSON_IsString(gauge) && !cJSON_IsNull(gauge))
    {
    goto end; //String
    }
    }

    // curve_gauge_withdraw_dto->provider
    cJSON *provider = cJSON_GetObjectItemCaseSensitive(curve_gauge_withdraw_dtoJSON, "provider");
    if (provider) { 
    if(!cJSON_IsString(provider) && !cJSON_IsNull(provider))
    {
    goto end; //String
    }
    }

    // curve_gauge_withdraw_dto->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(curve_gauge_withdraw_dtoJSON, "value");
    if (value) { 
    if(!cJSON_IsString(value) && !cJSON_IsNull(value))
    {
    goto end; //String
    }
    }

    // curve_gauge_withdraw_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_gauge_withdraw_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_gauge_withdraw_dto_local_var = curve_gauge_withdraw_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        gauge && !cJSON_IsNull(gauge) ? strdup(gauge->valuestring) : NULL,
        provider && !cJSON_IsNull(provider) ? strdup(provider->valuestring) : NULL,
        value && !cJSON_IsNull(value) ? strdup(value->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_gauge_withdraw_dto_local_var;
end:
    return NULL;

}
