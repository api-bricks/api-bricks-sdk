#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cryptopunks_data_sources_dto.h"



cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    int vid,
    char *block_range,
    int causality_region,
    int manifest_idx,
    int parent,
    char *id,
    char *param,
    char *context,
    int done_at
    ) {
    cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto_local_var = malloc(sizeof(cryptopunks_data_sources_dto_t));
    if (!cryptopunks_data_sources_dto_local_var) {
        return NULL;
    }
    cryptopunks_data_sources_dto_local_var->entry_time = entry_time;
    cryptopunks_data_sources_dto_local_var->recv_time = recv_time;
    cryptopunks_data_sources_dto_local_var->block_number = block_number;
    cryptopunks_data_sources_dto_local_var->vid = vid;
    cryptopunks_data_sources_dto_local_var->block_range = block_range;
    cryptopunks_data_sources_dto_local_var->causality_region = causality_region;
    cryptopunks_data_sources_dto_local_var->manifest_idx = manifest_idx;
    cryptopunks_data_sources_dto_local_var->parent = parent;
    cryptopunks_data_sources_dto_local_var->id = id;
    cryptopunks_data_sources_dto_local_var->param = param;
    cryptopunks_data_sources_dto_local_var->context = context;
    cryptopunks_data_sources_dto_local_var->done_at = done_at;

    return cryptopunks_data_sources_dto_local_var;
}


void cryptopunks_data_sources_dto_free(cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto) {
    if(NULL == cryptopunks_data_sources_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cryptopunks_data_sources_dto->entry_time) {
        free(cryptopunks_data_sources_dto->entry_time);
        cryptopunks_data_sources_dto->entry_time = NULL;
    }
    if (cryptopunks_data_sources_dto->recv_time) {
        free(cryptopunks_data_sources_dto->recv_time);
        cryptopunks_data_sources_dto->recv_time = NULL;
    }
    if (cryptopunks_data_sources_dto->block_range) {
        free(cryptopunks_data_sources_dto->block_range);
        cryptopunks_data_sources_dto->block_range = NULL;
    }
    if (cryptopunks_data_sources_dto->id) {
        free(cryptopunks_data_sources_dto->id);
        cryptopunks_data_sources_dto->id = NULL;
    }
    if (cryptopunks_data_sources_dto->param) {
        free(cryptopunks_data_sources_dto->param);
        cryptopunks_data_sources_dto->param = NULL;
    }
    if (cryptopunks_data_sources_dto->context) {
        free(cryptopunks_data_sources_dto->context);
        cryptopunks_data_sources_dto->context = NULL;
    }
    free(cryptopunks_data_sources_dto);
}

cJSON *cryptopunks_data_sources_dto_convertToJSON(cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto) {
    cJSON *item = cJSON_CreateObject();

    // cryptopunks_data_sources_dto->entry_time
    if(cryptopunks_data_sources_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cryptopunks_data_sources_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_data_sources_dto->recv_time
    if(cryptopunks_data_sources_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cryptopunks_data_sources_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_data_sources_dto->block_number
    if(cryptopunks_data_sources_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", cryptopunks_data_sources_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_data_sources_dto->vid
    if(cryptopunks_data_sources_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cryptopunks_data_sources_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_data_sources_dto->block_range
    if(cryptopunks_data_sources_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", cryptopunks_data_sources_dto->block_range) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_data_sources_dto->causality_region
    if(cryptopunks_data_sources_dto->causality_region) {
    if(cJSON_AddNumberToObject(item, "causality_region", cryptopunks_data_sources_dto->causality_region) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_data_sources_dto->manifest_idx
    if(cryptopunks_data_sources_dto->manifest_idx) {
    if(cJSON_AddNumberToObject(item, "manifest_idx", cryptopunks_data_sources_dto->manifest_idx) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_data_sources_dto->parent
    if(cryptopunks_data_sources_dto->parent) {
    if(cJSON_AddNumberToObject(item, "parent", cryptopunks_data_sources_dto->parent) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_data_sources_dto->id
    if(cryptopunks_data_sources_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cryptopunks_data_sources_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_data_sources_dto->param
    if(cryptopunks_data_sources_dto->param) {
    if(cJSON_AddStringToObject(item, "param", cryptopunks_data_sources_dto->param) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_data_sources_dto->context
    if(cryptopunks_data_sources_dto->context) {
    if(cJSON_AddStringToObject(item, "context", cryptopunks_data_sources_dto->context) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_data_sources_dto->done_at
    if(cryptopunks_data_sources_dto->done_at) {
    if(cJSON_AddNumberToObject(item, "done_at", cryptopunks_data_sources_dto->done_at) == NULL) {
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

cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto_parseFromJSON(cJSON *cryptopunks_data_sources_dtoJSON){

    cryptopunks_data_sources_dto_t *cryptopunks_data_sources_dto_local_var = NULL;

    // cryptopunks_data_sources_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_data_sources_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_data_sources_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_data_sources_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_data_sources_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }

    // cryptopunks_data_sources_dto->causality_region
    cJSON *causality_region = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "causality_region");
    if (causality_region) { 
    if(!cJSON_IsNumber(causality_region))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_data_sources_dto->manifest_idx
    cJSON *manifest_idx = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "manifest_idx");
    if (manifest_idx) { 
    if(!cJSON_IsNumber(manifest_idx))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_data_sources_dto->parent
    cJSON *parent = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "parent");
    if (parent) { 
    if(!cJSON_IsNumber(parent))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_data_sources_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cryptopunks_data_sources_dto->param
    cJSON *param = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "param");
    if (param) { 
    if(!cJSON_IsString(param) && !cJSON_IsNull(param))
    {
    goto end; //String
    }
    }

    // cryptopunks_data_sources_dto->context
    cJSON *context = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "context");
    if (context) { 
    if(!cJSON_IsString(context) && !cJSON_IsNull(context))
    {
    goto end; //String
    }
    }

    // cryptopunks_data_sources_dto->done_at
    cJSON *done_at = cJSON_GetObjectItemCaseSensitive(cryptopunks_data_sources_dtoJSON, "done_at");
    if (done_at) { 
    if(!cJSON_IsNumber(done_at))
    {
    goto end; //Numeric
    }
    }


    cryptopunks_data_sources_dto_local_var = cryptopunks_data_sources_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL,
        causality_region ? causality_region->valuedouble : 0,
        manifest_idx ? manifest_idx->valuedouble : 0,
        parent ? parent->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        param && !cJSON_IsNull(param) ? strdup(param->valuestring) : NULL,
        context && !cJSON_IsNull(context) ? strdup(context->valuestring) : NULL,
        done_at ? done_at->valuedouble : 0
        );

    return cryptopunks_data_sources_dto_local_var;
end:
    return NULL;

}
