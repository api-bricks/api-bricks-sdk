#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cow_order_dto.h"



cow_order_dto_t *cow_order_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *owner,
    char *trades_timestamp,
    char *invalidate_timestamp,
    char *presign_timestamp,
    int is_signed,
    int is_valid,
    long vid
    ) {
    cow_order_dto_t *cow_order_dto_local_var = malloc(sizeof(cow_order_dto_t));
    if (!cow_order_dto_local_var) {
        return NULL;
    }
    cow_order_dto_local_var->entry_time = entry_time;
    cow_order_dto_local_var->recv_time = recv_time;
    cow_order_dto_local_var->block_number = block_number;
    cow_order_dto_local_var->id = id;
    cow_order_dto_local_var->owner = owner;
    cow_order_dto_local_var->trades_timestamp = trades_timestamp;
    cow_order_dto_local_var->invalidate_timestamp = invalidate_timestamp;
    cow_order_dto_local_var->presign_timestamp = presign_timestamp;
    cow_order_dto_local_var->is_signed = is_signed;
    cow_order_dto_local_var->is_valid = is_valid;
    cow_order_dto_local_var->vid = vid;

    return cow_order_dto_local_var;
}


void cow_order_dto_free(cow_order_dto_t *cow_order_dto) {
    if(NULL == cow_order_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cow_order_dto->entry_time) {
        free(cow_order_dto->entry_time);
        cow_order_dto->entry_time = NULL;
    }
    if (cow_order_dto->recv_time) {
        free(cow_order_dto->recv_time);
        cow_order_dto->recv_time = NULL;
    }
    if (cow_order_dto->id) {
        free(cow_order_dto->id);
        cow_order_dto->id = NULL;
    }
    if (cow_order_dto->owner) {
        free(cow_order_dto->owner);
        cow_order_dto->owner = NULL;
    }
    if (cow_order_dto->trades_timestamp) {
        free(cow_order_dto->trades_timestamp);
        cow_order_dto->trades_timestamp = NULL;
    }
    if (cow_order_dto->invalidate_timestamp) {
        free(cow_order_dto->invalidate_timestamp);
        cow_order_dto->invalidate_timestamp = NULL;
    }
    if (cow_order_dto->presign_timestamp) {
        free(cow_order_dto->presign_timestamp);
        cow_order_dto->presign_timestamp = NULL;
    }
    free(cow_order_dto);
}

cJSON *cow_order_dto_convertToJSON(cow_order_dto_t *cow_order_dto) {
    cJSON *item = cJSON_CreateObject();

    // cow_order_dto->entry_time
    if(cow_order_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cow_order_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_order_dto->recv_time
    if(cow_order_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cow_order_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_order_dto->block_number
    if(cow_order_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", cow_order_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_order_dto->id
    if(cow_order_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cow_order_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cow_order_dto->owner
    if(cow_order_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", cow_order_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // cow_order_dto->trades_timestamp
    if(cow_order_dto->trades_timestamp) {
    if(cJSON_AddStringToObject(item, "trades_timestamp", cow_order_dto->trades_timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cow_order_dto->invalidate_timestamp
    if(cow_order_dto->invalidate_timestamp) {
    if(cJSON_AddStringToObject(item, "invalidate_timestamp", cow_order_dto->invalidate_timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cow_order_dto->presign_timestamp
    if(cow_order_dto->presign_timestamp) {
    if(cJSON_AddStringToObject(item, "presign_timestamp", cow_order_dto->presign_timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cow_order_dto->is_signed
    if(cow_order_dto->is_signed) {
    if(cJSON_AddBoolToObject(item, "is_signed", cow_order_dto->is_signed) == NULL) {
    goto fail; //Bool
    }
    }


    // cow_order_dto->is_valid
    if(cow_order_dto->is_valid) {
    if(cJSON_AddBoolToObject(item, "is_valid", cow_order_dto->is_valid) == NULL) {
    goto fail; //Bool
    }
    }


    // cow_order_dto->vid
    if(cow_order_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cow_order_dto->vid) == NULL) {
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

cow_order_dto_t *cow_order_dto_parseFromJSON(cJSON *cow_order_dtoJSON){

    cow_order_dto_t *cow_order_dto_local_var = NULL;

    // cow_order_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cow_order_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cow_order_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // cow_order_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cow_order_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner) && !cJSON_IsNull(owner))
    {
    goto end; //String
    }
    }

    // cow_order_dto->trades_timestamp
    cJSON *trades_timestamp = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "trades_timestamp");
    if (trades_timestamp) { 
    if(!cJSON_IsString(trades_timestamp) && !cJSON_IsNull(trades_timestamp))
    {
    goto end; //String
    }
    }

    // cow_order_dto->invalidate_timestamp
    cJSON *invalidate_timestamp = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "invalidate_timestamp");
    if (invalidate_timestamp) { 
    if(!cJSON_IsString(invalidate_timestamp) && !cJSON_IsNull(invalidate_timestamp))
    {
    goto end; //String
    }
    }

    // cow_order_dto->presign_timestamp
    cJSON *presign_timestamp = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "presign_timestamp");
    if (presign_timestamp) { 
    if(!cJSON_IsString(presign_timestamp) && !cJSON_IsNull(presign_timestamp))
    {
    goto end; //String
    }
    }

    // cow_order_dto->is_signed
    cJSON *is_signed = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "is_signed");
    if (is_signed) { 
    if(!cJSON_IsBool(is_signed))
    {
    goto end; //Bool
    }
    }

    // cow_order_dto->is_valid
    cJSON *is_valid = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "is_valid");
    if (is_valid) { 
    if(!cJSON_IsBool(is_valid))
    {
    goto end; //Bool
    }
    }

    // cow_order_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cow_order_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    cow_order_dto_local_var = cow_order_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        owner && !cJSON_IsNull(owner) ? strdup(owner->valuestring) : NULL,
        trades_timestamp && !cJSON_IsNull(trades_timestamp) ? strdup(trades_timestamp->valuestring) : NULL,
        invalidate_timestamp && !cJSON_IsNull(invalidate_timestamp) ? strdup(invalidate_timestamp->valuestring) : NULL,
        presign_timestamp && !cJSON_IsNull(presign_timestamp) ? strdup(presign_timestamp->valuestring) : NULL,
        is_signed ? is_signed->valueint : 0,
        is_valid ? is_valid->valueint : 0,
        vid ? vid->valuedouble : 0
        );

    return cow_order_dto_local_var;
end:
    return NULL;

}
