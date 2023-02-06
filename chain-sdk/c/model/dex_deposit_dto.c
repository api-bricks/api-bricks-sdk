#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dex_deposit_dto.h"



dex_deposit_dto_t *dex_deposit_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *user,
    char *token_address,
    char *amount,
    char *batch_id,
    char *create_epoch,
    char *tx_hash,
    long vid
    ) {
    dex_deposit_dto_t *dex_deposit_dto_local_var = malloc(sizeof(dex_deposit_dto_t));
    if (!dex_deposit_dto_local_var) {
        return NULL;
    }
    dex_deposit_dto_local_var->entry_time = entry_time;
    dex_deposit_dto_local_var->recv_time = recv_time;
    dex_deposit_dto_local_var->block_number = block_number;
    dex_deposit_dto_local_var->id = id;
    dex_deposit_dto_local_var->user = user;
    dex_deposit_dto_local_var->token_address = token_address;
    dex_deposit_dto_local_var->amount = amount;
    dex_deposit_dto_local_var->batch_id = batch_id;
    dex_deposit_dto_local_var->create_epoch = create_epoch;
    dex_deposit_dto_local_var->tx_hash = tx_hash;
    dex_deposit_dto_local_var->vid = vid;

    return dex_deposit_dto_local_var;
}


void dex_deposit_dto_free(dex_deposit_dto_t *dex_deposit_dto) {
    if(NULL == dex_deposit_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (dex_deposit_dto->entry_time) {
        free(dex_deposit_dto->entry_time);
        dex_deposit_dto->entry_time = NULL;
    }
    if (dex_deposit_dto->recv_time) {
        free(dex_deposit_dto->recv_time);
        dex_deposit_dto->recv_time = NULL;
    }
    if (dex_deposit_dto->id) {
        free(dex_deposit_dto->id);
        dex_deposit_dto->id = NULL;
    }
    if (dex_deposit_dto->user) {
        free(dex_deposit_dto->user);
        dex_deposit_dto->user = NULL;
    }
    if (dex_deposit_dto->token_address) {
        free(dex_deposit_dto->token_address);
        dex_deposit_dto->token_address = NULL;
    }
    if (dex_deposit_dto->amount) {
        free(dex_deposit_dto->amount);
        dex_deposit_dto->amount = NULL;
    }
    if (dex_deposit_dto->batch_id) {
        free(dex_deposit_dto->batch_id);
        dex_deposit_dto->batch_id = NULL;
    }
    if (dex_deposit_dto->create_epoch) {
        free(dex_deposit_dto->create_epoch);
        dex_deposit_dto->create_epoch = NULL;
    }
    if (dex_deposit_dto->tx_hash) {
        free(dex_deposit_dto->tx_hash);
        dex_deposit_dto->tx_hash = NULL;
    }
    free(dex_deposit_dto);
}

cJSON *dex_deposit_dto_convertToJSON(dex_deposit_dto_t *dex_deposit_dto) {
    cJSON *item = cJSON_CreateObject();

    // dex_deposit_dto->entry_time
    if(dex_deposit_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", dex_deposit_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_deposit_dto->recv_time
    if(dex_deposit_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", dex_deposit_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_deposit_dto->block_number
    if(dex_deposit_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", dex_deposit_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_deposit_dto->id
    if(dex_deposit_dto->id) {
    if(cJSON_AddStringToObject(item, "id", dex_deposit_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // dex_deposit_dto->user
    if(dex_deposit_dto->user) {
    if(cJSON_AddStringToObject(item, "user", dex_deposit_dto->user) == NULL) {
    goto fail; //String
    }
    }


    // dex_deposit_dto->token_address
    if(dex_deposit_dto->token_address) {
    if(cJSON_AddStringToObject(item, "token_address", dex_deposit_dto->token_address) == NULL) {
    goto fail; //String
    }
    }


    // dex_deposit_dto->amount
    if(dex_deposit_dto->amount) {
    if(cJSON_AddStringToObject(item, "amount", dex_deposit_dto->amount) == NULL) {
    goto fail; //String
    }
    }


    // dex_deposit_dto->batch_id
    if(dex_deposit_dto->batch_id) {
    if(cJSON_AddStringToObject(item, "batch_id", dex_deposit_dto->batch_id) == NULL) {
    goto fail; //String
    }
    }


    // dex_deposit_dto->create_epoch
    if(dex_deposit_dto->create_epoch) {
    if(cJSON_AddStringToObject(item, "create_epoch", dex_deposit_dto->create_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_deposit_dto->tx_hash
    if(dex_deposit_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", dex_deposit_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // dex_deposit_dto->vid
    if(dex_deposit_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", dex_deposit_dto->vid) == NULL) {
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

dex_deposit_dto_t *dex_deposit_dto_parseFromJSON(cJSON *dex_deposit_dtoJSON){

    dex_deposit_dto_t *dex_deposit_dto_local_var = NULL;

    // dex_deposit_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // dex_deposit_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // dex_deposit_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // dex_deposit_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // dex_deposit_dto->user
    cJSON *user = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "user");
    if (user) { 
    if(!cJSON_IsString(user) && !cJSON_IsNull(user))
    {
    goto end; //String
    }
    }

    // dex_deposit_dto->token_address
    cJSON *token_address = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "token_address");
    if (token_address) { 
    if(!cJSON_IsString(token_address) && !cJSON_IsNull(token_address))
    {
    goto end; //String
    }
    }

    // dex_deposit_dto->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "amount");
    if (amount) { 
    if(!cJSON_IsString(amount) && !cJSON_IsNull(amount))
    {
    goto end; //String
    }
    }

    // dex_deposit_dto->batch_id
    cJSON *batch_id = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "batch_id");
    if (batch_id) { 
    if(!cJSON_IsString(batch_id) && !cJSON_IsNull(batch_id))
    {
    goto end; //String
    }
    }

    // dex_deposit_dto->create_epoch
    cJSON *create_epoch = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "create_epoch");
    if (create_epoch) { 
    if(!cJSON_IsString(create_epoch) && !cJSON_IsNull(create_epoch))
    {
    goto end; //String
    }
    }

    // dex_deposit_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // dex_deposit_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(dex_deposit_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    dex_deposit_dto_local_var = dex_deposit_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        user && !cJSON_IsNull(user) ? strdup(user->valuestring) : NULL,
        token_address && !cJSON_IsNull(token_address) ? strdup(token_address->valuestring) : NULL,
        amount && !cJSON_IsNull(amount) ? strdup(amount->valuestring) : NULL,
        batch_id && !cJSON_IsNull(batch_id) ? strdup(batch_id->valuestring) : NULL,
        create_epoch && !cJSON_IsNull(create_epoch) ? strdup(create_epoch->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return dex_deposit_dto_local_var;
end:
    return NULL;

}
