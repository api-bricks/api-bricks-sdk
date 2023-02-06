#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dex_user_dto.h"



dex_user_dto_t *dex_user_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *from_batch_id,
    char *create_epoch,
    char *tx_hash,
    long vid
    ) {
    dex_user_dto_t *dex_user_dto_local_var = malloc(sizeof(dex_user_dto_t));
    if (!dex_user_dto_local_var) {
        return NULL;
    }
    dex_user_dto_local_var->entry_time = entry_time;
    dex_user_dto_local_var->recv_time = recv_time;
    dex_user_dto_local_var->block_number = block_number;
    dex_user_dto_local_var->id = id;
    dex_user_dto_local_var->from_batch_id = from_batch_id;
    dex_user_dto_local_var->create_epoch = create_epoch;
    dex_user_dto_local_var->tx_hash = tx_hash;
    dex_user_dto_local_var->vid = vid;

    return dex_user_dto_local_var;
}


void dex_user_dto_free(dex_user_dto_t *dex_user_dto) {
    if(NULL == dex_user_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (dex_user_dto->entry_time) {
        free(dex_user_dto->entry_time);
        dex_user_dto->entry_time = NULL;
    }
    if (dex_user_dto->recv_time) {
        free(dex_user_dto->recv_time);
        dex_user_dto->recv_time = NULL;
    }
    if (dex_user_dto->id) {
        free(dex_user_dto->id);
        dex_user_dto->id = NULL;
    }
    if (dex_user_dto->from_batch_id) {
        free(dex_user_dto->from_batch_id);
        dex_user_dto->from_batch_id = NULL;
    }
    if (dex_user_dto->create_epoch) {
        free(dex_user_dto->create_epoch);
        dex_user_dto->create_epoch = NULL;
    }
    if (dex_user_dto->tx_hash) {
        free(dex_user_dto->tx_hash);
        dex_user_dto->tx_hash = NULL;
    }
    free(dex_user_dto);
}

cJSON *dex_user_dto_convertToJSON(dex_user_dto_t *dex_user_dto) {
    cJSON *item = cJSON_CreateObject();

    // dex_user_dto->entry_time
    if(dex_user_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", dex_user_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_user_dto->recv_time
    if(dex_user_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", dex_user_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_user_dto->block_number
    if(dex_user_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", dex_user_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_user_dto->id
    if(dex_user_dto->id) {
    if(cJSON_AddStringToObject(item, "id", dex_user_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // dex_user_dto->from_batch_id
    if(dex_user_dto->from_batch_id) {
    if(cJSON_AddStringToObject(item, "from_batch_id", dex_user_dto->from_batch_id) == NULL) {
    goto fail; //String
    }
    }


    // dex_user_dto->create_epoch
    if(dex_user_dto->create_epoch) {
    if(cJSON_AddStringToObject(item, "create_epoch", dex_user_dto->create_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_user_dto->tx_hash
    if(dex_user_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", dex_user_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // dex_user_dto->vid
    if(dex_user_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", dex_user_dto->vid) == NULL) {
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

dex_user_dto_t *dex_user_dto_parseFromJSON(cJSON *dex_user_dtoJSON){

    dex_user_dto_t *dex_user_dto_local_var = NULL;

    // dex_user_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(dex_user_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // dex_user_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(dex_user_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // dex_user_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(dex_user_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // dex_user_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(dex_user_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // dex_user_dto->from_batch_id
    cJSON *from_batch_id = cJSON_GetObjectItemCaseSensitive(dex_user_dtoJSON, "from_batch_id");
    if (from_batch_id) { 
    if(!cJSON_IsString(from_batch_id) && !cJSON_IsNull(from_batch_id))
    {
    goto end; //String
    }
    }

    // dex_user_dto->create_epoch
    cJSON *create_epoch = cJSON_GetObjectItemCaseSensitive(dex_user_dtoJSON, "create_epoch");
    if (create_epoch) { 
    if(!cJSON_IsString(create_epoch) && !cJSON_IsNull(create_epoch))
    {
    goto end; //String
    }
    }

    // dex_user_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(dex_user_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // dex_user_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(dex_user_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    dex_user_dto_local_var = dex_user_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        from_batch_id && !cJSON_IsNull(from_batch_id) ? strdup(from_batch_id->valuestring) : NULL,
        create_epoch && !cJSON_IsNull(create_epoch) ? strdup(create_epoch->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return dex_user_dto_local_var;
end:
    return NULL;

}
