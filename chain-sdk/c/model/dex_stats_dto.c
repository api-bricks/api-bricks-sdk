#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dex_stats_dto.h"



dex_stats_dto_t *dex_stats_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *volume_in_owl,
    char *utility_in_owl,
    char *owl_burnt,
    int settled_batch_count,
    int settled_trade_count,
    int listed_tokens,
    long vid
    ) {
    dex_stats_dto_t *dex_stats_dto_local_var = malloc(sizeof(dex_stats_dto_t));
    if (!dex_stats_dto_local_var) {
        return NULL;
    }
    dex_stats_dto_local_var->entry_time = entry_time;
    dex_stats_dto_local_var->recv_time = recv_time;
    dex_stats_dto_local_var->block_number = block_number;
    dex_stats_dto_local_var->id = id;
    dex_stats_dto_local_var->volume_in_owl = volume_in_owl;
    dex_stats_dto_local_var->utility_in_owl = utility_in_owl;
    dex_stats_dto_local_var->owl_burnt = owl_burnt;
    dex_stats_dto_local_var->settled_batch_count = settled_batch_count;
    dex_stats_dto_local_var->settled_trade_count = settled_trade_count;
    dex_stats_dto_local_var->listed_tokens = listed_tokens;
    dex_stats_dto_local_var->vid = vid;

    return dex_stats_dto_local_var;
}


void dex_stats_dto_free(dex_stats_dto_t *dex_stats_dto) {
    if(NULL == dex_stats_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (dex_stats_dto->entry_time) {
        free(dex_stats_dto->entry_time);
        dex_stats_dto->entry_time = NULL;
    }
    if (dex_stats_dto->recv_time) {
        free(dex_stats_dto->recv_time);
        dex_stats_dto->recv_time = NULL;
    }
    if (dex_stats_dto->id) {
        free(dex_stats_dto->id);
        dex_stats_dto->id = NULL;
    }
    if (dex_stats_dto->volume_in_owl) {
        free(dex_stats_dto->volume_in_owl);
        dex_stats_dto->volume_in_owl = NULL;
    }
    if (dex_stats_dto->utility_in_owl) {
        free(dex_stats_dto->utility_in_owl);
        dex_stats_dto->utility_in_owl = NULL;
    }
    if (dex_stats_dto->owl_burnt) {
        free(dex_stats_dto->owl_burnt);
        dex_stats_dto->owl_burnt = NULL;
    }
    free(dex_stats_dto);
}

cJSON *dex_stats_dto_convertToJSON(dex_stats_dto_t *dex_stats_dto) {
    cJSON *item = cJSON_CreateObject();

    // dex_stats_dto->entry_time
    if(dex_stats_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", dex_stats_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_stats_dto->recv_time
    if(dex_stats_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", dex_stats_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_stats_dto->block_number
    if(dex_stats_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", dex_stats_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_stats_dto->id
    if(dex_stats_dto->id) {
    if(cJSON_AddStringToObject(item, "id", dex_stats_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // dex_stats_dto->volume_in_owl
    if(dex_stats_dto->volume_in_owl) {
    if(cJSON_AddStringToObject(item, "volume_in_owl", dex_stats_dto->volume_in_owl) == NULL) {
    goto fail; //String
    }
    }


    // dex_stats_dto->utility_in_owl
    if(dex_stats_dto->utility_in_owl) {
    if(cJSON_AddStringToObject(item, "utility_in_owl", dex_stats_dto->utility_in_owl) == NULL) {
    goto fail; //String
    }
    }


    // dex_stats_dto->owl_burnt
    if(dex_stats_dto->owl_burnt) {
    if(cJSON_AddStringToObject(item, "owl_burnt", dex_stats_dto->owl_burnt) == NULL) {
    goto fail; //String
    }
    }


    // dex_stats_dto->settled_batch_count
    if(dex_stats_dto->settled_batch_count) {
    if(cJSON_AddNumberToObject(item, "settled_batch_count", dex_stats_dto->settled_batch_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_stats_dto->settled_trade_count
    if(dex_stats_dto->settled_trade_count) {
    if(cJSON_AddNumberToObject(item, "settled_trade_count", dex_stats_dto->settled_trade_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_stats_dto->listed_tokens
    if(dex_stats_dto->listed_tokens) {
    if(cJSON_AddNumberToObject(item, "listed_tokens", dex_stats_dto->listed_tokens) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_stats_dto->vid
    if(dex_stats_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", dex_stats_dto->vid) == NULL) {
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

dex_stats_dto_t *dex_stats_dto_parseFromJSON(cJSON *dex_stats_dtoJSON){

    dex_stats_dto_t *dex_stats_dto_local_var = NULL;

    // dex_stats_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // dex_stats_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // dex_stats_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // dex_stats_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // dex_stats_dto->volume_in_owl
    cJSON *volume_in_owl = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "volume_in_owl");
    if (volume_in_owl) { 
    if(!cJSON_IsString(volume_in_owl) && !cJSON_IsNull(volume_in_owl))
    {
    goto end; //String
    }
    }

    // dex_stats_dto->utility_in_owl
    cJSON *utility_in_owl = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "utility_in_owl");
    if (utility_in_owl) { 
    if(!cJSON_IsString(utility_in_owl) && !cJSON_IsNull(utility_in_owl))
    {
    goto end; //String
    }
    }

    // dex_stats_dto->owl_burnt
    cJSON *owl_burnt = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "owl_burnt");
    if (owl_burnt) { 
    if(!cJSON_IsString(owl_burnt) && !cJSON_IsNull(owl_burnt))
    {
    goto end; //String
    }
    }

    // dex_stats_dto->settled_batch_count
    cJSON *settled_batch_count = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "settled_batch_count");
    if (settled_batch_count) { 
    if(!cJSON_IsNumber(settled_batch_count))
    {
    goto end; //Numeric
    }
    }

    // dex_stats_dto->settled_trade_count
    cJSON *settled_trade_count = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "settled_trade_count");
    if (settled_trade_count) { 
    if(!cJSON_IsNumber(settled_trade_count))
    {
    goto end; //Numeric
    }
    }

    // dex_stats_dto->listed_tokens
    cJSON *listed_tokens = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "listed_tokens");
    if (listed_tokens) { 
    if(!cJSON_IsNumber(listed_tokens))
    {
    goto end; //Numeric
    }
    }

    // dex_stats_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(dex_stats_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    dex_stats_dto_local_var = dex_stats_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        volume_in_owl && !cJSON_IsNull(volume_in_owl) ? strdup(volume_in_owl->valuestring) : NULL,
        utility_in_owl && !cJSON_IsNull(utility_in_owl) ? strdup(utility_in_owl->valuestring) : NULL,
        owl_burnt && !cJSON_IsNull(owl_burnt) ? strdup(owl_burnt->valuestring) : NULL,
        settled_batch_count ? settled_batch_count->valuedouble : 0,
        settled_trade_count ? settled_trade_count->valuedouble : 0,
        listed_tokens ? listed_tokens->valuedouble : 0,
        vid ? vid->valuedouble : 0
        );

    return dex_stats_dto_local_var;
end:
    return NULL;

}
