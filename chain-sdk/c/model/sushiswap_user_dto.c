#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "sushiswap_user_dto.h"



sushiswap_user_dto_t *sushiswap_user_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    long vid
    ) {
    sushiswap_user_dto_t *sushiswap_user_dto_local_var = malloc(sizeof(sushiswap_user_dto_t));
    if (!sushiswap_user_dto_local_var) {
        return NULL;
    }
    sushiswap_user_dto_local_var->entry_time = entry_time;
    sushiswap_user_dto_local_var->recv_time = recv_time;
    sushiswap_user_dto_local_var->block_number = block_number;
    sushiswap_user_dto_local_var->id = id;
    sushiswap_user_dto_local_var->vid = vid;

    return sushiswap_user_dto_local_var;
}


void sushiswap_user_dto_free(sushiswap_user_dto_t *sushiswap_user_dto) {
    if(NULL == sushiswap_user_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (sushiswap_user_dto->entry_time) {
        free(sushiswap_user_dto->entry_time);
        sushiswap_user_dto->entry_time = NULL;
    }
    if (sushiswap_user_dto->recv_time) {
        free(sushiswap_user_dto->recv_time);
        sushiswap_user_dto->recv_time = NULL;
    }
    if (sushiswap_user_dto->id) {
        free(sushiswap_user_dto->id);
        sushiswap_user_dto->id = NULL;
    }
    free(sushiswap_user_dto);
}

cJSON *sushiswap_user_dto_convertToJSON(sushiswap_user_dto_t *sushiswap_user_dto) {
    cJSON *item = cJSON_CreateObject();

    // sushiswap_user_dto->entry_time
    if(sushiswap_user_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", sushiswap_user_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_user_dto->recv_time
    if(sushiswap_user_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", sushiswap_user_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // sushiswap_user_dto->block_number
    if(sushiswap_user_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", sushiswap_user_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // sushiswap_user_dto->id
    if(sushiswap_user_dto->id) {
    if(cJSON_AddStringToObject(item, "id", sushiswap_user_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // sushiswap_user_dto->vid
    if(sushiswap_user_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", sushiswap_user_dto->vid) == NULL) {
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

sushiswap_user_dto_t *sushiswap_user_dto_parseFromJSON(cJSON *sushiswap_user_dtoJSON){

    sushiswap_user_dto_t *sushiswap_user_dto_local_var = NULL;

    // sushiswap_user_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(sushiswap_user_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_user_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(sushiswap_user_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // sushiswap_user_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(sushiswap_user_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // sushiswap_user_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(sushiswap_user_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // sushiswap_user_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(sushiswap_user_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    sushiswap_user_dto_local_var = sushiswap_user_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return sushiswap_user_dto_local_var;
end:
    return NULL;

}
