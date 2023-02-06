#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_gauge_liquidity_dto.h"



curve_gauge_liquidity_dto_t *curve_gauge_liquidity_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *user,
    char *gauge,
    char *original_balance,
    char *original_supply,
    char *working_balance,
    char *working_supply,
    char *timestamp,
    char *block,
    char *transaction,
    long vid
    ) {
    curve_gauge_liquidity_dto_t *curve_gauge_liquidity_dto_local_var = malloc(sizeof(curve_gauge_liquidity_dto_t));
    if (!curve_gauge_liquidity_dto_local_var) {
        return NULL;
    }
    curve_gauge_liquidity_dto_local_var->entry_time = entry_time;
    curve_gauge_liquidity_dto_local_var->recv_time = recv_time;
    curve_gauge_liquidity_dto_local_var->block_number = block_number;
    curve_gauge_liquidity_dto_local_var->id = id;
    curve_gauge_liquidity_dto_local_var->user = user;
    curve_gauge_liquidity_dto_local_var->gauge = gauge;
    curve_gauge_liquidity_dto_local_var->original_balance = original_balance;
    curve_gauge_liquidity_dto_local_var->original_supply = original_supply;
    curve_gauge_liquidity_dto_local_var->working_balance = working_balance;
    curve_gauge_liquidity_dto_local_var->working_supply = working_supply;
    curve_gauge_liquidity_dto_local_var->timestamp = timestamp;
    curve_gauge_liquidity_dto_local_var->block = block;
    curve_gauge_liquidity_dto_local_var->transaction = transaction;
    curve_gauge_liquidity_dto_local_var->vid = vid;

    return curve_gauge_liquidity_dto_local_var;
}


void curve_gauge_liquidity_dto_free(curve_gauge_liquidity_dto_t *curve_gauge_liquidity_dto) {
    if(NULL == curve_gauge_liquidity_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_gauge_liquidity_dto->entry_time) {
        free(curve_gauge_liquidity_dto->entry_time);
        curve_gauge_liquidity_dto->entry_time = NULL;
    }
    if (curve_gauge_liquidity_dto->recv_time) {
        free(curve_gauge_liquidity_dto->recv_time);
        curve_gauge_liquidity_dto->recv_time = NULL;
    }
    if (curve_gauge_liquidity_dto->id) {
        free(curve_gauge_liquidity_dto->id);
        curve_gauge_liquidity_dto->id = NULL;
    }
    if (curve_gauge_liquidity_dto->user) {
        free(curve_gauge_liquidity_dto->user);
        curve_gauge_liquidity_dto->user = NULL;
    }
    if (curve_gauge_liquidity_dto->gauge) {
        free(curve_gauge_liquidity_dto->gauge);
        curve_gauge_liquidity_dto->gauge = NULL;
    }
    if (curve_gauge_liquidity_dto->original_balance) {
        free(curve_gauge_liquidity_dto->original_balance);
        curve_gauge_liquidity_dto->original_balance = NULL;
    }
    if (curve_gauge_liquidity_dto->original_supply) {
        free(curve_gauge_liquidity_dto->original_supply);
        curve_gauge_liquidity_dto->original_supply = NULL;
    }
    if (curve_gauge_liquidity_dto->working_balance) {
        free(curve_gauge_liquidity_dto->working_balance);
        curve_gauge_liquidity_dto->working_balance = NULL;
    }
    if (curve_gauge_liquidity_dto->working_supply) {
        free(curve_gauge_liquidity_dto->working_supply);
        curve_gauge_liquidity_dto->working_supply = NULL;
    }
    if (curve_gauge_liquidity_dto->timestamp) {
        free(curve_gauge_liquidity_dto->timestamp);
        curve_gauge_liquidity_dto->timestamp = NULL;
    }
    if (curve_gauge_liquidity_dto->block) {
        free(curve_gauge_liquidity_dto->block);
        curve_gauge_liquidity_dto->block = NULL;
    }
    if (curve_gauge_liquidity_dto->transaction) {
        free(curve_gauge_liquidity_dto->transaction);
        curve_gauge_liquidity_dto->transaction = NULL;
    }
    free(curve_gauge_liquidity_dto);
}

cJSON *curve_gauge_liquidity_dto_convertToJSON(curve_gauge_liquidity_dto_t *curve_gauge_liquidity_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_gauge_liquidity_dto->entry_time
    if(curve_gauge_liquidity_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_gauge_liquidity_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_liquidity_dto->recv_time
    if(curve_gauge_liquidity_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_gauge_liquidity_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_gauge_liquidity_dto->block_number
    if(curve_gauge_liquidity_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_gauge_liquidity_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_gauge_liquidity_dto->id
    if(curve_gauge_liquidity_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_gauge_liquidity_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->user
    if(curve_gauge_liquidity_dto->user) {
    if(cJSON_AddStringToObject(item, "user", curve_gauge_liquidity_dto->user) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->gauge
    if(curve_gauge_liquidity_dto->gauge) {
    if(cJSON_AddStringToObject(item, "gauge", curve_gauge_liquidity_dto->gauge) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->original_balance
    if(curve_gauge_liquidity_dto->original_balance) {
    if(cJSON_AddStringToObject(item, "original_balance", curve_gauge_liquidity_dto->original_balance) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->original_supply
    if(curve_gauge_liquidity_dto->original_supply) {
    if(cJSON_AddStringToObject(item, "original_supply", curve_gauge_liquidity_dto->original_supply) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->working_balance
    if(curve_gauge_liquidity_dto->working_balance) {
    if(cJSON_AddStringToObject(item, "working_balance", curve_gauge_liquidity_dto->working_balance) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->working_supply
    if(curve_gauge_liquidity_dto->working_supply) {
    if(cJSON_AddStringToObject(item, "working_supply", curve_gauge_liquidity_dto->working_supply) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->timestamp
    if(curve_gauge_liquidity_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", curve_gauge_liquidity_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->block
    if(curve_gauge_liquidity_dto->block) {
    if(cJSON_AddStringToObject(item, "block", curve_gauge_liquidity_dto->block) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->transaction
    if(curve_gauge_liquidity_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", curve_gauge_liquidity_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_gauge_liquidity_dto->vid
    if(curve_gauge_liquidity_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_gauge_liquidity_dto->vid) == NULL) {
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

curve_gauge_liquidity_dto_t *curve_gauge_liquidity_dto_parseFromJSON(cJSON *curve_gauge_liquidity_dtoJSON){

    curve_gauge_liquidity_dto_t *curve_gauge_liquidity_dto_local_var = NULL;

    // curve_gauge_liquidity_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_liquidity_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_gauge_liquidity_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_gauge_liquidity_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->user
    cJSON *user = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "user");
    if (user) { 
    if(!cJSON_IsString(user) && !cJSON_IsNull(user))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->gauge
    cJSON *gauge = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "gauge");
    if (gauge) { 
    if(!cJSON_IsString(gauge) && !cJSON_IsNull(gauge))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->original_balance
    cJSON *original_balance = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "original_balance");
    if (original_balance) { 
    if(!cJSON_IsString(original_balance) && !cJSON_IsNull(original_balance))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->original_supply
    cJSON *original_supply = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "original_supply");
    if (original_supply) { 
    if(!cJSON_IsString(original_supply) && !cJSON_IsNull(original_supply))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->working_balance
    cJSON *working_balance = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "working_balance");
    if (working_balance) { 
    if(!cJSON_IsString(working_balance) && !cJSON_IsNull(working_balance))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->working_supply
    cJSON *working_supply = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "working_supply");
    if (working_supply) { 
    if(!cJSON_IsString(working_supply) && !cJSON_IsNull(working_supply))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->block
    cJSON *block = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "block");
    if (block) { 
    if(!cJSON_IsString(block) && !cJSON_IsNull(block))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // curve_gauge_liquidity_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_gauge_liquidity_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_gauge_liquidity_dto_local_var = curve_gauge_liquidity_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        user && !cJSON_IsNull(user) ? strdup(user->valuestring) : NULL,
        gauge && !cJSON_IsNull(gauge) ? strdup(gauge->valuestring) : NULL,
        original_balance && !cJSON_IsNull(original_balance) ? strdup(original_balance->valuestring) : NULL,
        original_supply && !cJSON_IsNull(original_supply) ? strdup(original_supply->valuestring) : NULL,
        working_balance && !cJSON_IsNull(working_balance) ? strdup(working_balance->valuestring) : NULL,
        working_supply && !cJSON_IsNull(working_supply) ? strdup(working_supply->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        block && !cJSON_IsNull(block) ? strdup(block->valuestring) : NULL,
        transaction && !cJSON_IsNull(transaction) ? strdup(transaction->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_gauge_liquidity_dto_local_var;
end:
    return NULL;

}
