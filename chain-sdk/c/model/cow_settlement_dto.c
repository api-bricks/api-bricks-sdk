#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cow_settlement_dto.h"



cow_settlement_dto_t *cow_settlement_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *solver,
    char *tx_hash,
    char *first_trade_timestamp,
    long vid
    ) {
    cow_settlement_dto_t *cow_settlement_dto_local_var = malloc(sizeof(cow_settlement_dto_t));
    if (!cow_settlement_dto_local_var) {
        return NULL;
    }
    cow_settlement_dto_local_var->entry_time = entry_time;
    cow_settlement_dto_local_var->recv_time = recv_time;
    cow_settlement_dto_local_var->block_number = block_number;
    cow_settlement_dto_local_var->id = id;
    cow_settlement_dto_local_var->solver = solver;
    cow_settlement_dto_local_var->tx_hash = tx_hash;
    cow_settlement_dto_local_var->first_trade_timestamp = first_trade_timestamp;
    cow_settlement_dto_local_var->vid = vid;

    return cow_settlement_dto_local_var;
}


void cow_settlement_dto_free(cow_settlement_dto_t *cow_settlement_dto) {
    if(NULL == cow_settlement_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cow_settlement_dto->entry_time) {
        free(cow_settlement_dto->entry_time);
        cow_settlement_dto->entry_time = NULL;
    }
    if (cow_settlement_dto->recv_time) {
        free(cow_settlement_dto->recv_time);
        cow_settlement_dto->recv_time = NULL;
    }
    if (cow_settlement_dto->id) {
        free(cow_settlement_dto->id);
        cow_settlement_dto->id = NULL;
    }
    if (cow_settlement_dto->solver) {
        free(cow_settlement_dto->solver);
        cow_settlement_dto->solver = NULL;
    }
    if (cow_settlement_dto->tx_hash) {
        free(cow_settlement_dto->tx_hash);
        cow_settlement_dto->tx_hash = NULL;
    }
    if (cow_settlement_dto->first_trade_timestamp) {
        free(cow_settlement_dto->first_trade_timestamp);
        cow_settlement_dto->first_trade_timestamp = NULL;
    }
    free(cow_settlement_dto);
}

cJSON *cow_settlement_dto_convertToJSON(cow_settlement_dto_t *cow_settlement_dto) {
    cJSON *item = cJSON_CreateObject();

    // cow_settlement_dto->entry_time
    if(cow_settlement_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cow_settlement_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_settlement_dto->recv_time
    if(cow_settlement_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cow_settlement_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_settlement_dto->block_number
    if(cow_settlement_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", cow_settlement_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_settlement_dto->id
    if(cow_settlement_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cow_settlement_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cow_settlement_dto->solver
    if(cow_settlement_dto->solver) {
    if(cJSON_AddStringToObject(item, "solver", cow_settlement_dto->solver) == NULL) {
    goto fail; //String
    }
    }


    // cow_settlement_dto->tx_hash
    if(cow_settlement_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", cow_settlement_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // cow_settlement_dto->first_trade_timestamp
    if(cow_settlement_dto->first_trade_timestamp) {
    if(cJSON_AddStringToObject(item, "first_trade_timestamp", cow_settlement_dto->first_trade_timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cow_settlement_dto->vid
    if(cow_settlement_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cow_settlement_dto->vid) == NULL) {
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

cow_settlement_dto_t *cow_settlement_dto_parseFromJSON(cJSON *cow_settlement_dtoJSON){

    cow_settlement_dto_t *cow_settlement_dto_local_var = NULL;

    // cow_settlement_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cow_settlement_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cow_settlement_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cow_settlement_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cow_settlement_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cow_settlement_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // cow_settlement_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cow_settlement_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cow_settlement_dto->solver
    cJSON *solver = cJSON_GetObjectItemCaseSensitive(cow_settlement_dtoJSON, "solver");
    if (solver) { 
    if(!cJSON_IsString(solver) && !cJSON_IsNull(solver))
    {
    goto end; //String
    }
    }

    // cow_settlement_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(cow_settlement_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // cow_settlement_dto->first_trade_timestamp
    cJSON *first_trade_timestamp = cJSON_GetObjectItemCaseSensitive(cow_settlement_dtoJSON, "first_trade_timestamp");
    if (first_trade_timestamp) { 
    if(!cJSON_IsString(first_trade_timestamp) && !cJSON_IsNull(first_trade_timestamp))
    {
    goto end; //String
    }
    }

    // cow_settlement_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cow_settlement_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    cow_settlement_dto_local_var = cow_settlement_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        solver && !cJSON_IsNull(solver) ? strdup(solver->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        first_trade_timestamp && !cJSON_IsNull(first_trade_timestamp) ? strdup(first_trade_timestamp->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return cow_settlement_dto_local_var;
end:
    return NULL;

}
