#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_lp_token_dto.h"



curve_lp_token_dto_t *curve_lp_token_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *address,
    char *decimals,
    char *name,
    char *symbol,
    char *gauge,
    char *pool,
    long vid
    ) {
    curve_lp_token_dto_t *curve_lp_token_dto_local_var = malloc(sizeof(curve_lp_token_dto_t));
    if (!curve_lp_token_dto_local_var) {
        return NULL;
    }
    curve_lp_token_dto_local_var->entry_time = entry_time;
    curve_lp_token_dto_local_var->recv_time = recv_time;
    curve_lp_token_dto_local_var->block_number = block_number;
    curve_lp_token_dto_local_var->id = id;
    curve_lp_token_dto_local_var->address = address;
    curve_lp_token_dto_local_var->decimals = decimals;
    curve_lp_token_dto_local_var->name = name;
    curve_lp_token_dto_local_var->symbol = symbol;
    curve_lp_token_dto_local_var->gauge = gauge;
    curve_lp_token_dto_local_var->pool = pool;
    curve_lp_token_dto_local_var->vid = vid;

    return curve_lp_token_dto_local_var;
}


void curve_lp_token_dto_free(curve_lp_token_dto_t *curve_lp_token_dto) {
    if(NULL == curve_lp_token_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_lp_token_dto->entry_time) {
        free(curve_lp_token_dto->entry_time);
        curve_lp_token_dto->entry_time = NULL;
    }
    if (curve_lp_token_dto->recv_time) {
        free(curve_lp_token_dto->recv_time);
        curve_lp_token_dto->recv_time = NULL;
    }
    if (curve_lp_token_dto->id) {
        free(curve_lp_token_dto->id);
        curve_lp_token_dto->id = NULL;
    }
    if (curve_lp_token_dto->address) {
        free(curve_lp_token_dto->address);
        curve_lp_token_dto->address = NULL;
    }
    if (curve_lp_token_dto->decimals) {
        free(curve_lp_token_dto->decimals);
        curve_lp_token_dto->decimals = NULL;
    }
    if (curve_lp_token_dto->name) {
        free(curve_lp_token_dto->name);
        curve_lp_token_dto->name = NULL;
    }
    if (curve_lp_token_dto->symbol) {
        free(curve_lp_token_dto->symbol);
        curve_lp_token_dto->symbol = NULL;
    }
    if (curve_lp_token_dto->gauge) {
        free(curve_lp_token_dto->gauge);
        curve_lp_token_dto->gauge = NULL;
    }
    if (curve_lp_token_dto->pool) {
        free(curve_lp_token_dto->pool);
        curve_lp_token_dto->pool = NULL;
    }
    free(curve_lp_token_dto);
}

cJSON *curve_lp_token_dto_convertToJSON(curve_lp_token_dto_t *curve_lp_token_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_lp_token_dto->entry_time
    if(curve_lp_token_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_lp_token_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_lp_token_dto->recv_time
    if(curve_lp_token_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_lp_token_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_lp_token_dto->block_number
    if(curve_lp_token_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_lp_token_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_lp_token_dto->id
    if(curve_lp_token_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_lp_token_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_lp_token_dto->address
    if(curve_lp_token_dto->address) {
    if(cJSON_AddStringToObject(item, "address", curve_lp_token_dto->address) == NULL) {
    goto fail; //String
    }
    }


    // curve_lp_token_dto->decimals
    if(curve_lp_token_dto->decimals) {
    if(cJSON_AddStringToObject(item, "decimals", curve_lp_token_dto->decimals) == NULL) {
    goto fail; //String
    }
    }


    // curve_lp_token_dto->name
    if(curve_lp_token_dto->name) {
    if(cJSON_AddStringToObject(item, "name", curve_lp_token_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // curve_lp_token_dto->symbol
    if(curve_lp_token_dto->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", curve_lp_token_dto->symbol) == NULL) {
    goto fail; //String
    }
    }


    // curve_lp_token_dto->gauge
    if(curve_lp_token_dto->gauge) {
    if(cJSON_AddStringToObject(item, "gauge", curve_lp_token_dto->gauge) == NULL) {
    goto fail; //String
    }
    }


    // curve_lp_token_dto->pool
    if(curve_lp_token_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", curve_lp_token_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // curve_lp_token_dto->vid
    if(curve_lp_token_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_lp_token_dto->vid) == NULL) {
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

curve_lp_token_dto_t *curve_lp_token_dto_parseFromJSON(cJSON *curve_lp_token_dtoJSON){

    curve_lp_token_dto_t *curve_lp_token_dto_local_var = NULL;

    // curve_lp_token_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_lp_token_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_lp_token_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_lp_token_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_lp_token_dto->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "address");
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // curve_lp_token_dto->decimals
    cJSON *decimals = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "decimals");
    if (decimals) { 
    if(!cJSON_IsString(decimals) && !cJSON_IsNull(decimals))
    {
    goto end; //String
    }
    }

    // curve_lp_token_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // curve_lp_token_dto->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "symbol");
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // curve_lp_token_dto->gauge
    cJSON *gauge = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "gauge");
    if (gauge) { 
    if(!cJSON_IsString(gauge) && !cJSON_IsNull(gauge))
    {
    goto end; //String
    }
    }

    // curve_lp_token_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // curve_lp_token_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_lp_token_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_lp_token_dto_local_var = curve_lp_token_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL,
        decimals && !cJSON_IsNull(decimals) ? strdup(decimals->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        gauge && !cJSON_IsNull(gauge) ? strdup(gauge->valuestring) : NULL,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_lp_token_dto_local_var;
end:
    return NULL;

}
