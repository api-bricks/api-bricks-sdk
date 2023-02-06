#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dex_batch_dto.h"



dex_batch_dto_t *dex_batch_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *start_epoch,
    char *end_epoch,
    char *solution,
    char *first_solution_epoch,
    char *last_revert_epoch,
    char *tx_hash,
    long vid
    ) {
    dex_batch_dto_t *dex_batch_dto_local_var = malloc(sizeof(dex_batch_dto_t));
    if (!dex_batch_dto_local_var) {
        return NULL;
    }
    dex_batch_dto_local_var->entry_time = entry_time;
    dex_batch_dto_local_var->recv_time = recv_time;
    dex_batch_dto_local_var->block_number = block_number;
    dex_batch_dto_local_var->id = id;
    dex_batch_dto_local_var->start_epoch = start_epoch;
    dex_batch_dto_local_var->end_epoch = end_epoch;
    dex_batch_dto_local_var->solution = solution;
    dex_batch_dto_local_var->first_solution_epoch = first_solution_epoch;
    dex_batch_dto_local_var->last_revert_epoch = last_revert_epoch;
    dex_batch_dto_local_var->tx_hash = tx_hash;
    dex_batch_dto_local_var->vid = vid;

    return dex_batch_dto_local_var;
}


void dex_batch_dto_free(dex_batch_dto_t *dex_batch_dto) {
    if(NULL == dex_batch_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (dex_batch_dto->entry_time) {
        free(dex_batch_dto->entry_time);
        dex_batch_dto->entry_time = NULL;
    }
    if (dex_batch_dto->recv_time) {
        free(dex_batch_dto->recv_time);
        dex_batch_dto->recv_time = NULL;
    }
    if (dex_batch_dto->id) {
        free(dex_batch_dto->id);
        dex_batch_dto->id = NULL;
    }
    if (dex_batch_dto->start_epoch) {
        free(dex_batch_dto->start_epoch);
        dex_batch_dto->start_epoch = NULL;
    }
    if (dex_batch_dto->end_epoch) {
        free(dex_batch_dto->end_epoch);
        dex_batch_dto->end_epoch = NULL;
    }
    if (dex_batch_dto->solution) {
        free(dex_batch_dto->solution);
        dex_batch_dto->solution = NULL;
    }
    if (dex_batch_dto->first_solution_epoch) {
        free(dex_batch_dto->first_solution_epoch);
        dex_batch_dto->first_solution_epoch = NULL;
    }
    if (dex_batch_dto->last_revert_epoch) {
        free(dex_batch_dto->last_revert_epoch);
        dex_batch_dto->last_revert_epoch = NULL;
    }
    if (dex_batch_dto->tx_hash) {
        free(dex_batch_dto->tx_hash);
        dex_batch_dto->tx_hash = NULL;
    }
    free(dex_batch_dto);
}

cJSON *dex_batch_dto_convertToJSON(dex_batch_dto_t *dex_batch_dto) {
    cJSON *item = cJSON_CreateObject();

    // dex_batch_dto->entry_time
    if(dex_batch_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", dex_batch_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_batch_dto->recv_time
    if(dex_batch_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", dex_batch_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_batch_dto->block_number
    if(dex_batch_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", dex_batch_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_batch_dto->id
    if(dex_batch_dto->id) {
    if(cJSON_AddStringToObject(item, "id", dex_batch_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // dex_batch_dto->start_epoch
    if(dex_batch_dto->start_epoch) {
    if(cJSON_AddStringToObject(item, "start_epoch", dex_batch_dto->start_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_batch_dto->end_epoch
    if(dex_batch_dto->end_epoch) {
    if(cJSON_AddStringToObject(item, "end_epoch", dex_batch_dto->end_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_batch_dto->solution
    if(dex_batch_dto->solution) {
    if(cJSON_AddStringToObject(item, "solution", dex_batch_dto->solution) == NULL) {
    goto fail; //String
    }
    }


    // dex_batch_dto->first_solution_epoch
    if(dex_batch_dto->first_solution_epoch) {
    if(cJSON_AddStringToObject(item, "first_solution_epoch", dex_batch_dto->first_solution_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_batch_dto->last_revert_epoch
    if(dex_batch_dto->last_revert_epoch) {
    if(cJSON_AddStringToObject(item, "last_revert_epoch", dex_batch_dto->last_revert_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_batch_dto->tx_hash
    if(dex_batch_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", dex_batch_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // dex_batch_dto->vid
    if(dex_batch_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", dex_batch_dto->vid) == NULL) {
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

dex_batch_dto_t *dex_batch_dto_parseFromJSON(cJSON *dex_batch_dtoJSON){

    dex_batch_dto_t *dex_batch_dto_local_var = NULL;

    // dex_batch_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // dex_batch_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // dex_batch_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // dex_batch_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // dex_batch_dto->start_epoch
    cJSON *start_epoch = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "start_epoch");
    if (start_epoch) { 
    if(!cJSON_IsString(start_epoch) && !cJSON_IsNull(start_epoch))
    {
    goto end; //String
    }
    }

    // dex_batch_dto->end_epoch
    cJSON *end_epoch = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "end_epoch");
    if (end_epoch) { 
    if(!cJSON_IsString(end_epoch) && !cJSON_IsNull(end_epoch))
    {
    goto end; //String
    }
    }

    // dex_batch_dto->solution
    cJSON *solution = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "solution");
    if (solution) { 
    if(!cJSON_IsString(solution) && !cJSON_IsNull(solution))
    {
    goto end; //String
    }
    }

    // dex_batch_dto->first_solution_epoch
    cJSON *first_solution_epoch = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "first_solution_epoch");
    if (first_solution_epoch) { 
    if(!cJSON_IsString(first_solution_epoch) && !cJSON_IsNull(first_solution_epoch))
    {
    goto end; //String
    }
    }

    // dex_batch_dto->last_revert_epoch
    cJSON *last_revert_epoch = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "last_revert_epoch");
    if (last_revert_epoch) { 
    if(!cJSON_IsString(last_revert_epoch) && !cJSON_IsNull(last_revert_epoch))
    {
    goto end; //String
    }
    }

    // dex_batch_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // dex_batch_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(dex_batch_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    dex_batch_dto_local_var = dex_batch_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        start_epoch && !cJSON_IsNull(start_epoch) ? strdup(start_epoch->valuestring) : NULL,
        end_epoch && !cJSON_IsNull(end_epoch) ? strdup(end_epoch->valuestring) : NULL,
        solution && !cJSON_IsNull(solution) ? strdup(solution->valuestring) : NULL,
        first_solution_epoch && !cJSON_IsNull(first_solution_epoch) ? strdup(first_solution_epoch->valuestring) : NULL,
        last_revert_epoch && !cJSON_IsNull(last_revert_epoch) ? strdup(last_revert_epoch->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return dex_batch_dto_local_var;
end:
    return NULL;

}
