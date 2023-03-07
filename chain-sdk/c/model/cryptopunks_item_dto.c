#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cryptopunks_item_dto.h"



cryptopunks_item_dto_t *cryptopunks_item_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *block_range,
    char *id
    ) {
    cryptopunks_item_dto_t *cryptopunks_item_dto_local_var = malloc(sizeof(cryptopunks_item_dto_t));
    if (!cryptopunks_item_dto_local_var) {
        return NULL;
    }
    cryptopunks_item_dto_local_var->entry_time = entry_time;
    cryptopunks_item_dto_local_var->recv_time = recv_time;
    cryptopunks_item_dto_local_var->block_number = block_number;
    cryptopunks_item_dto_local_var->vid = vid;
    cryptopunks_item_dto_local_var->block_range = block_range;
    cryptopunks_item_dto_local_var->id = id;

    return cryptopunks_item_dto_local_var;
}


void cryptopunks_item_dto_free(cryptopunks_item_dto_t *cryptopunks_item_dto) {
    if(NULL == cryptopunks_item_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cryptopunks_item_dto->entry_time) {
        free(cryptopunks_item_dto->entry_time);
        cryptopunks_item_dto->entry_time = NULL;
    }
    if (cryptopunks_item_dto->recv_time) {
        free(cryptopunks_item_dto->recv_time);
        cryptopunks_item_dto->recv_time = NULL;
    }
    if (cryptopunks_item_dto->block_range) {
        free(cryptopunks_item_dto->block_range);
        cryptopunks_item_dto->block_range = NULL;
    }
    if (cryptopunks_item_dto->id) {
        free(cryptopunks_item_dto->id);
        cryptopunks_item_dto->id = NULL;
    }
    free(cryptopunks_item_dto);
}

cJSON *cryptopunks_item_dto_convertToJSON(cryptopunks_item_dto_t *cryptopunks_item_dto) {
    cJSON *item = cJSON_CreateObject();

    // cryptopunks_item_dto->entry_time
    if(cryptopunks_item_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cryptopunks_item_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_item_dto->recv_time
    if(cryptopunks_item_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cryptopunks_item_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_item_dto->block_number
    if(cryptopunks_item_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", cryptopunks_item_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_item_dto->vid
    if(cryptopunks_item_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cryptopunks_item_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_item_dto->block_range
    if(cryptopunks_item_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", cryptopunks_item_dto->block_range) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_item_dto->id
    if(cryptopunks_item_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cryptopunks_item_dto->id) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cryptopunks_item_dto_t *cryptopunks_item_dto_parseFromJSON(cJSON *cryptopunks_item_dtoJSON){

    cryptopunks_item_dto_t *cryptopunks_item_dto_local_var = NULL;

    // cryptopunks_item_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_item_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_item_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_item_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_item_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cryptopunks_item_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_item_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cryptopunks_item_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_item_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(cryptopunks_item_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }

    // cryptopunks_item_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cryptopunks_item_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }


    cryptopunks_item_dto_local_var = cryptopunks_item_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL
        );

    return cryptopunks_item_dto_local_var;
end:
    return NULL;

}
