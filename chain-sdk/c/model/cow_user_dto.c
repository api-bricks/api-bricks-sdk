#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cow_user_dto.h"



cow_user_dto_t *cow_user_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *address,
    char *first_trade_timestamp,
    int is_solver,
    long vid
    ) {
    cow_user_dto_t *cow_user_dto_local_var = malloc(sizeof(cow_user_dto_t));
    if (!cow_user_dto_local_var) {
        return NULL;
    }
    cow_user_dto_local_var->entry_time = entry_time;
    cow_user_dto_local_var->recv_time = recv_time;
    cow_user_dto_local_var->block_number = block_number;
    cow_user_dto_local_var->id = id;
    cow_user_dto_local_var->address = address;
    cow_user_dto_local_var->first_trade_timestamp = first_trade_timestamp;
    cow_user_dto_local_var->is_solver = is_solver;
    cow_user_dto_local_var->vid = vid;

    return cow_user_dto_local_var;
}


void cow_user_dto_free(cow_user_dto_t *cow_user_dto) {
    if(NULL == cow_user_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cow_user_dto->entry_time) {
        free(cow_user_dto->entry_time);
        cow_user_dto->entry_time = NULL;
    }
    if (cow_user_dto->recv_time) {
        free(cow_user_dto->recv_time);
        cow_user_dto->recv_time = NULL;
    }
    if (cow_user_dto->id) {
        free(cow_user_dto->id);
        cow_user_dto->id = NULL;
    }
    if (cow_user_dto->address) {
        free(cow_user_dto->address);
        cow_user_dto->address = NULL;
    }
    if (cow_user_dto->first_trade_timestamp) {
        free(cow_user_dto->first_trade_timestamp);
        cow_user_dto->first_trade_timestamp = NULL;
    }
    free(cow_user_dto);
}

cJSON *cow_user_dto_convertToJSON(cow_user_dto_t *cow_user_dto) {
    cJSON *item = cJSON_CreateObject();

    // cow_user_dto->entry_time
    if(cow_user_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cow_user_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_user_dto->recv_time
    if(cow_user_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cow_user_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_user_dto->block_number
    if(cow_user_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", cow_user_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_user_dto->id
    if(cow_user_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cow_user_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cow_user_dto->address
    if(cow_user_dto->address) {
    if(cJSON_AddStringToObject(item, "address", cow_user_dto->address) == NULL) {
    goto fail; //String
    }
    }


    // cow_user_dto->first_trade_timestamp
    if(cow_user_dto->first_trade_timestamp) {
    if(cJSON_AddStringToObject(item, "first_trade_timestamp", cow_user_dto->first_trade_timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cow_user_dto->is_solver
    if(cow_user_dto->is_solver) {
    if(cJSON_AddBoolToObject(item, "is_solver", cow_user_dto->is_solver) == NULL) {
    goto fail; //Bool
    }
    }


    // cow_user_dto->vid
    if(cow_user_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cow_user_dto->vid) == NULL) {
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

cow_user_dto_t *cow_user_dto_parseFromJSON(cJSON *cow_user_dtoJSON){

    cow_user_dto_t *cow_user_dto_local_var = NULL;

    // cow_user_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cow_user_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cow_user_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cow_user_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cow_user_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cow_user_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // cow_user_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cow_user_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cow_user_dto->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(cow_user_dtoJSON, "address");
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // cow_user_dto->first_trade_timestamp
    cJSON *first_trade_timestamp = cJSON_GetObjectItemCaseSensitive(cow_user_dtoJSON, "first_trade_timestamp");
    if (first_trade_timestamp) { 
    if(!cJSON_IsString(first_trade_timestamp) && !cJSON_IsNull(first_trade_timestamp))
    {
    goto end; //String
    }
    }

    // cow_user_dto->is_solver
    cJSON *is_solver = cJSON_GetObjectItemCaseSensitive(cow_user_dtoJSON, "is_solver");
    if (is_solver) { 
    if(!cJSON_IsBool(is_solver))
    {
    goto end; //Bool
    }
    }

    // cow_user_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cow_user_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    cow_user_dto_local_var = cow_user_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL,
        first_trade_timestamp && !cJSON_IsNull(first_trade_timestamp) ? strdup(first_trade_timestamp->valuestring) : NULL,
        is_solver ? is_solver->valueint : 0,
        vid ? vid->valuedouble : 0
        );

    return cow_user_dto_local_var;
end:
    return NULL;

}
