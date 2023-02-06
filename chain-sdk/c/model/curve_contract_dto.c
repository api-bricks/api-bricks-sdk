#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_contract_dto.h"



curve_contract_dto_t *curve_contract_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *description,
    char *added,
    char *added_at_block,
    char *added_at_transaction,
    char *modified,
    char *modified_at_block,
    char *modified_at_transaction,
    long vid
    ) {
    curve_contract_dto_t *curve_contract_dto_local_var = malloc(sizeof(curve_contract_dto_t));
    if (!curve_contract_dto_local_var) {
        return NULL;
    }
    curve_contract_dto_local_var->entry_time = entry_time;
    curve_contract_dto_local_var->recv_time = recv_time;
    curve_contract_dto_local_var->block_number = block_number;
    curve_contract_dto_local_var->id = id;
    curve_contract_dto_local_var->description = description;
    curve_contract_dto_local_var->added = added;
    curve_contract_dto_local_var->added_at_block = added_at_block;
    curve_contract_dto_local_var->added_at_transaction = added_at_transaction;
    curve_contract_dto_local_var->modified = modified;
    curve_contract_dto_local_var->modified_at_block = modified_at_block;
    curve_contract_dto_local_var->modified_at_transaction = modified_at_transaction;
    curve_contract_dto_local_var->vid = vid;

    return curve_contract_dto_local_var;
}


void curve_contract_dto_free(curve_contract_dto_t *curve_contract_dto) {
    if(NULL == curve_contract_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_contract_dto->entry_time) {
        free(curve_contract_dto->entry_time);
        curve_contract_dto->entry_time = NULL;
    }
    if (curve_contract_dto->recv_time) {
        free(curve_contract_dto->recv_time);
        curve_contract_dto->recv_time = NULL;
    }
    if (curve_contract_dto->id) {
        free(curve_contract_dto->id);
        curve_contract_dto->id = NULL;
    }
    if (curve_contract_dto->description) {
        free(curve_contract_dto->description);
        curve_contract_dto->description = NULL;
    }
    if (curve_contract_dto->added) {
        free(curve_contract_dto->added);
        curve_contract_dto->added = NULL;
    }
    if (curve_contract_dto->added_at_block) {
        free(curve_contract_dto->added_at_block);
        curve_contract_dto->added_at_block = NULL;
    }
    if (curve_contract_dto->added_at_transaction) {
        free(curve_contract_dto->added_at_transaction);
        curve_contract_dto->added_at_transaction = NULL;
    }
    if (curve_contract_dto->modified) {
        free(curve_contract_dto->modified);
        curve_contract_dto->modified = NULL;
    }
    if (curve_contract_dto->modified_at_block) {
        free(curve_contract_dto->modified_at_block);
        curve_contract_dto->modified_at_block = NULL;
    }
    if (curve_contract_dto->modified_at_transaction) {
        free(curve_contract_dto->modified_at_transaction);
        curve_contract_dto->modified_at_transaction = NULL;
    }
    free(curve_contract_dto);
}

cJSON *curve_contract_dto_convertToJSON(curve_contract_dto_t *curve_contract_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_contract_dto->entry_time
    if(curve_contract_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_contract_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_contract_dto->recv_time
    if(curve_contract_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_contract_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_contract_dto->block_number
    if(curve_contract_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_contract_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_contract_dto->id
    if(curve_contract_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_contract_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_contract_dto->description
    if(curve_contract_dto->description) {
    if(cJSON_AddStringToObject(item, "description", curve_contract_dto->description) == NULL) {
    goto fail; //String
    }
    }


    // curve_contract_dto->added
    if(curve_contract_dto->added) {
    if(cJSON_AddStringToObject(item, "added", curve_contract_dto->added) == NULL) {
    goto fail; //String
    }
    }


    // curve_contract_dto->added_at_block
    if(curve_contract_dto->added_at_block) {
    if(cJSON_AddStringToObject(item, "added_at_block", curve_contract_dto->added_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_contract_dto->added_at_transaction
    if(curve_contract_dto->added_at_transaction) {
    if(cJSON_AddStringToObject(item, "added_at_transaction", curve_contract_dto->added_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_contract_dto->modified
    if(curve_contract_dto->modified) {
    if(cJSON_AddStringToObject(item, "modified", curve_contract_dto->modified) == NULL) {
    goto fail; //String
    }
    }


    // curve_contract_dto->modified_at_block
    if(curve_contract_dto->modified_at_block) {
    if(cJSON_AddStringToObject(item, "modified_at_block", curve_contract_dto->modified_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_contract_dto->modified_at_transaction
    if(curve_contract_dto->modified_at_transaction) {
    if(cJSON_AddStringToObject(item, "modified_at_transaction", curve_contract_dto->modified_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_contract_dto->vid
    if(curve_contract_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_contract_dto->vid) == NULL) {
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

curve_contract_dto_t *curve_contract_dto_parseFromJSON(cJSON *curve_contract_dtoJSON){

    curve_contract_dto_t *curve_contract_dto_local_var = NULL;

    // curve_contract_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_contract_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_contract_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_contract_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_contract_dto->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "description");
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // curve_contract_dto->added
    cJSON *added = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "added");
    if (added) { 
    if(!cJSON_IsString(added) && !cJSON_IsNull(added))
    {
    goto end; //String
    }
    }

    // curve_contract_dto->added_at_block
    cJSON *added_at_block = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "added_at_block");
    if (added_at_block) { 
    if(!cJSON_IsString(added_at_block) && !cJSON_IsNull(added_at_block))
    {
    goto end; //String
    }
    }

    // curve_contract_dto->added_at_transaction
    cJSON *added_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "added_at_transaction");
    if (added_at_transaction) { 
    if(!cJSON_IsString(added_at_transaction) && !cJSON_IsNull(added_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_contract_dto->modified
    cJSON *modified = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "modified");
    if (modified) { 
    if(!cJSON_IsString(modified) && !cJSON_IsNull(modified))
    {
    goto end; //String
    }
    }

    // curve_contract_dto->modified_at_block
    cJSON *modified_at_block = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "modified_at_block");
    if (modified_at_block) { 
    if(!cJSON_IsString(modified_at_block) && !cJSON_IsNull(modified_at_block))
    {
    goto end; //String
    }
    }

    // curve_contract_dto->modified_at_transaction
    cJSON *modified_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "modified_at_transaction");
    if (modified_at_transaction) { 
    if(!cJSON_IsString(modified_at_transaction) && !cJSON_IsNull(modified_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_contract_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_contract_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_contract_dto_local_var = curve_contract_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        added && !cJSON_IsNull(added) ? strdup(added->valuestring) : NULL,
        added_at_block && !cJSON_IsNull(added_at_block) ? strdup(added_at_block->valuestring) : NULL,
        added_at_transaction && !cJSON_IsNull(added_at_transaction) ? strdup(added_at_transaction->valuestring) : NULL,
        modified && !cJSON_IsNull(modified) ? strdup(modified->valuestring) : NULL,
        modified_at_block && !cJSON_IsNull(modified_at_block) ? strdup(modified_at_block->valuestring) : NULL,
        modified_at_transaction && !cJSON_IsNull(modified_at_transaction) ? strdup(modified_at_transaction->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_contract_dto_local_var;
end:
    return NULL;

}
