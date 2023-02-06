#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_gauge_dto.h"



curve_gauge_dto_t *curve_gauge_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *address,
    char *type,
    char *pool,
    char *created,
    char *created_at_block,
    char *created_at_transaction,
    long vid
    ) {
    curve_gauge_dto_t *curve_gauge_dto_local_var = malloc(sizeof(curve_gauge_dto_t));
    if (!curve_gauge_dto_local_var) {
        return NULL;
    }
    curve_gauge_dto_local_var->entry_time = entry_time;
    curve_gauge_dto_local_var->recv_time = recv_time;
    curve_gauge_dto_local_var->block_number = block_number;
    curve_gauge_dto_local_var->id = id;
    curve_gauge_dto_local_var->address = address;
    curve_gauge_dto_local_var->type = type;
    curve_gauge_dto_local_var->pool = pool;
    curve_gauge_dto_local_var->created = created;
    curve_gauge_dto_local_var->created_at_block = created_at_block;
    curve_gauge_dto_local_var->created_at_transaction = created_at_transaction;
    curve_gauge_dto_local_var->vid = vid;

    return curve_gauge_dto_local_var;
}


void curve_gauge_dto_free(curve_gauge_dto_t *curve_gauge_dto) {
    if(NULL == curve_gauge_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_gauge_dto->entry_time) {
        free(curve_gauge_dto->entry_time);
        curve_gauge_dto->entry_time = NULL;
    }
    if (curve_gauge_dto->recv_time) {
        free(curve_gauge_dto->recv_time);
        curve_gauge_dto->recv_time = NULL;
    }
    if (curve_gauge_dto->id) {
        free(curve_gauge_dto->id);
        curve_gauge_dto->id = NULL;
    }
    if (curve_gauge_dto->address) {
        free(curve_gauge_dto->address);
        curve_gauge_dto->address = NULL;
    }
    if (curve_gauge_dto->type) {
        free(curve_gauge_dto->type);
        curve_gauge_dto->type = NULL;
    }
    if (curve_gauge_dto->pool) {
        free(curve_gauge_dto->pool);
        curve_gauge_dto->pool = NULL;
    }
    if (curve_gauge_dto->created) {
        free(curve_gauge_dto->created);
        curve_gauge_dto->created = NULL;
    }
    if (curve_gauge_dto->created_at_block) {
        free(curve_gauge_dto->created_at_block);
        curve_gauge_dto->created_at_block = NULL;
    }
    if (curve_gauge_dto->created_at_transaction) {
        free(curve_gauge_dto->created_at_transaction);
        curve_gauge_dto->created_at_transaction = NULL;
    }
    free(curve_gauge_dto);
}

cJSON *curve_gauge_dto_convertToJSON(curve_gauge_dto_t *curve_gauge_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_gauge_dto->entry_time
    if(curve_gauge_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_gauge_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_dto->recv_time
    if(curve_gauge_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_gauge_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_dto->block_number
    if(curve_gauge_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_gauge_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_gauge_dto->id
    if(curve_gauge_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_gauge_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_dto->address
    if(curve_gauge_dto->address) {
    if(cJSON_AddStringToObject(item, "address", curve_gauge_dto->address) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_dto->type
    if(curve_gauge_dto->type) {
    if(cJSON_AddStringToObject(item, "type", curve_gauge_dto->type) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_dto->pool
    if(curve_gauge_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", curve_gauge_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_dto->created
    if(curve_gauge_dto->created) {
    if(cJSON_AddStringToObject(item, "created", curve_gauge_dto->created) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_dto->created_at_block
    if(curve_gauge_dto->created_at_block) {
    if(cJSON_AddStringToObject(item, "created_at_block", curve_gauge_dto->created_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_dto->created_at_transaction
    if(curve_gauge_dto->created_at_transaction) {
    if(cJSON_AddStringToObject(item, "created_at_transaction", curve_gauge_dto->created_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_dto->vid
    if(curve_gauge_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_gauge_dto->vid) == NULL) {
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

curve_gauge_dto_t *curve_gauge_dto_parseFromJSON(cJSON *curve_gauge_dtoJSON){

    curve_gauge_dto_t *curve_gauge_dto_local_var = NULL;

    // curve_gauge_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_gauge_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_gauge_dto->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "address");
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // curve_gauge_dto->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // curve_gauge_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // curve_gauge_dto->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "created");
    if (created) { 
    if(!cJSON_IsString(created) && !cJSON_IsNull(created))
    {
    goto end; //String
    }
    }

    // curve_gauge_dto->created_at_block
    cJSON *created_at_block = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "created_at_block");
    if (created_at_block) { 
    if(!cJSON_IsString(created_at_block) && !cJSON_IsNull(created_at_block))
    {
    goto end; //String
    }
    }

    // curve_gauge_dto->created_at_transaction
    cJSON *created_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "created_at_transaction");
    if (created_at_transaction) { 
    if(!cJSON_IsString(created_at_transaction) && !cJSON_IsNull(created_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_gauge_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_gauge_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_gauge_dto_local_var = curve_gauge_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        created && !cJSON_IsNull(created) ? strdup(created->valuestring) : NULL,
        created_at_block && !cJSON_IsNull(created_at_block) ? strdup(created_at_block->valuestring) : NULL,
        created_at_transaction && !cJSON_IsNull(created_at_transaction) ? strdup(created_at_transaction->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_gauge_dto_local_var;
end:
    return NULL;

}
