#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_position_snapshot_dto.h"



uniswap_v3_position_snapshot_dto_t *uniswap_v3_position_snapshot_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *owner,
    char *pool,
    char *position,
    char *timestamp,
    char *liquidity,
    char *deposited_token_0,
    char *deposited_token_1,
    char *withdrawn_token_0,
    char *withdrawn_token_1,
    char *collected_fees_token_0,
    char *collected_fees_token_1,
    char *transaction,
    char *fee_growth_inside_0_last_x128,
    char *fee_growth_inside_1_last_x128,
    long vid
    ) {
    uniswap_v3_position_snapshot_dto_t *uniswap_v3_position_snapshot_dto_local_var = malloc(sizeof(uniswap_v3_position_snapshot_dto_t));
    if (!uniswap_v3_position_snapshot_dto_local_var) {
        return NULL;
    }
    uniswap_v3_position_snapshot_dto_local_var->entry_time = entry_time;
    uniswap_v3_position_snapshot_dto_local_var->recv_time = recv_time;
    uniswap_v3_position_snapshot_dto_local_var->block_number = block_number;
    uniswap_v3_position_snapshot_dto_local_var->id = id;
    uniswap_v3_position_snapshot_dto_local_var->owner = owner;
    uniswap_v3_position_snapshot_dto_local_var->pool = pool;
    uniswap_v3_position_snapshot_dto_local_var->position = position;
    uniswap_v3_position_snapshot_dto_local_var->timestamp = timestamp;
    uniswap_v3_position_snapshot_dto_local_var->liquidity = liquidity;
    uniswap_v3_position_snapshot_dto_local_var->deposited_token_0 = deposited_token_0;
    uniswap_v3_position_snapshot_dto_local_var->deposited_token_1 = deposited_token_1;
    uniswap_v3_position_snapshot_dto_local_var->withdrawn_token_0 = withdrawn_token_0;
    uniswap_v3_position_snapshot_dto_local_var->withdrawn_token_1 = withdrawn_token_1;
    uniswap_v3_position_snapshot_dto_local_var->collected_fees_token_0 = collected_fees_token_0;
    uniswap_v3_position_snapshot_dto_local_var->collected_fees_token_1 = collected_fees_token_1;
    uniswap_v3_position_snapshot_dto_local_var->transaction = transaction;
    uniswap_v3_position_snapshot_dto_local_var->fee_growth_inside_0_last_x128 = fee_growth_inside_0_last_x128;
    uniswap_v3_position_snapshot_dto_local_var->fee_growth_inside_1_last_x128 = fee_growth_inside_1_last_x128;
    uniswap_v3_position_snapshot_dto_local_var->vid = vid;

    return uniswap_v3_position_snapshot_dto_local_var;
}


void uniswap_v3_position_snapshot_dto_free(uniswap_v3_position_snapshot_dto_t *uniswap_v3_position_snapshot_dto) {
    if(NULL == uniswap_v3_position_snapshot_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_position_snapshot_dto->entry_time) {
        free(uniswap_v3_position_snapshot_dto->entry_time);
        uniswap_v3_position_snapshot_dto->entry_time = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->recv_time) {
        free(uniswap_v3_position_snapshot_dto->recv_time);
        uniswap_v3_position_snapshot_dto->recv_time = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->id) {
        free(uniswap_v3_position_snapshot_dto->id);
        uniswap_v3_position_snapshot_dto->id = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->owner) {
        free(uniswap_v3_position_snapshot_dto->owner);
        uniswap_v3_position_snapshot_dto->owner = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->pool) {
        free(uniswap_v3_position_snapshot_dto->pool);
        uniswap_v3_position_snapshot_dto->pool = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->position) {
        free(uniswap_v3_position_snapshot_dto->position);
        uniswap_v3_position_snapshot_dto->position = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->timestamp) {
        free(uniswap_v3_position_snapshot_dto->timestamp);
        uniswap_v3_position_snapshot_dto->timestamp = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->liquidity) {
        free(uniswap_v3_position_snapshot_dto->liquidity);
        uniswap_v3_position_snapshot_dto->liquidity = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->deposited_token_0) {
        free(uniswap_v3_position_snapshot_dto->deposited_token_0);
        uniswap_v3_position_snapshot_dto->deposited_token_0 = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->deposited_token_1) {
        free(uniswap_v3_position_snapshot_dto->deposited_token_1);
        uniswap_v3_position_snapshot_dto->deposited_token_1 = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->withdrawn_token_0) {
        free(uniswap_v3_position_snapshot_dto->withdrawn_token_0);
        uniswap_v3_position_snapshot_dto->withdrawn_token_0 = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->withdrawn_token_1) {
        free(uniswap_v3_position_snapshot_dto->withdrawn_token_1);
        uniswap_v3_position_snapshot_dto->withdrawn_token_1 = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->collected_fees_token_0) {
        free(uniswap_v3_position_snapshot_dto->collected_fees_token_0);
        uniswap_v3_position_snapshot_dto->collected_fees_token_0 = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->collected_fees_token_1) {
        free(uniswap_v3_position_snapshot_dto->collected_fees_token_1);
        uniswap_v3_position_snapshot_dto->collected_fees_token_1 = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->transaction) {
        free(uniswap_v3_position_snapshot_dto->transaction);
        uniswap_v3_position_snapshot_dto->transaction = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->fee_growth_inside_0_last_x128) {
        free(uniswap_v3_position_snapshot_dto->fee_growth_inside_0_last_x128);
        uniswap_v3_position_snapshot_dto->fee_growth_inside_0_last_x128 = NULL;
    }
    if (uniswap_v3_position_snapshot_dto->fee_growth_inside_1_last_x128) {
        free(uniswap_v3_position_snapshot_dto->fee_growth_inside_1_last_x128);
        uniswap_v3_position_snapshot_dto->fee_growth_inside_1_last_x128 = NULL;
    }
    free(uniswap_v3_position_snapshot_dto);
}

cJSON *uniswap_v3_position_snapshot_dto_convertToJSON(uniswap_v3_position_snapshot_dto_t *uniswap_v3_position_snapshot_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_position_snapshot_dto->entry_time
    if(uniswap_v3_position_snapshot_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_position_snapshot_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_position_snapshot_dto->recv_time
    if(uniswap_v3_position_snapshot_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_position_snapshot_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_position_snapshot_dto->block_number
    if(uniswap_v3_position_snapshot_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_position_snapshot_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_position_snapshot_dto->id
    if(uniswap_v3_position_snapshot_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_position_snapshot_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->owner
    if(uniswap_v3_position_snapshot_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", uniswap_v3_position_snapshot_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->pool
    if(uniswap_v3_position_snapshot_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", uniswap_v3_position_snapshot_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->position
    if(uniswap_v3_position_snapshot_dto->position) {
    if(cJSON_AddStringToObject(item, "position", uniswap_v3_position_snapshot_dto->position) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->timestamp
    if(uniswap_v3_position_snapshot_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", uniswap_v3_position_snapshot_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->liquidity
    if(uniswap_v3_position_snapshot_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", uniswap_v3_position_snapshot_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->deposited_token_0
    if(uniswap_v3_position_snapshot_dto->deposited_token_0) {
    if(cJSON_AddStringToObject(item, "deposited_token_0", uniswap_v3_position_snapshot_dto->deposited_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->deposited_token_1
    if(uniswap_v3_position_snapshot_dto->deposited_token_1) {
    if(cJSON_AddStringToObject(item, "deposited_token_1", uniswap_v3_position_snapshot_dto->deposited_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->withdrawn_token_0
    if(uniswap_v3_position_snapshot_dto->withdrawn_token_0) {
    if(cJSON_AddStringToObject(item, "withdrawn_token_0", uniswap_v3_position_snapshot_dto->withdrawn_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->withdrawn_token_1
    if(uniswap_v3_position_snapshot_dto->withdrawn_token_1) {
    if(cJSON_AddStringToObject(item, "withdrawn_token_1", uniswap_v3_position_snapshot_dto->withdrawn_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->collected_fees_token_0
    if(uniswap_v3_position_snapshot_dto->collected_fees_token_0) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_0", uniswap_v3_position_snapshot_dto->collected_fees_token_0) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->collected_fees_token_1
    if(uniswap_v3_position_snapshot_dto->collected_fees_token_1) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_1", uniswap_v3_position_snapshot_dto->collected_fees_token_1) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->transaction
    if(uniswap_v3_position_snapshot_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", uniswap_v3_position_snapshot_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->fee_growth_inside_0_last_x128
    if(uniswap_v3_position_snapshot_dto->fee_growth_inside_0_last_x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_inside_0_last_x128", uniswap_v3_position_snapshot_dto->fee_growth_inside_0_last_x128) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->fee_growth_inside_1_last_x128
    if(uniswap_v3_position_snapshot_dto->fee_growth_inside_1_last_x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_inside_1_last_x128", uniswap_v3_position_snapshot_dto->fee_growth_inside_1_last_x128) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_position_snapshot_dto->vid
    if(uniswap_v3_position_snapshot_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_position_snapshot_dto->vid) == NULL) {
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

uniswap_v3_position_snapshot_dto_t *uniswap_v3_position_snapshot_dto_parseFromJSON(cJSON *uniswap_v3_position_snapshot_dtoJSON){

    uniswap_v3_position_snapshot_dto_t *uniswap_v3_position_snapshot_dto_local_var = NULL;

    // uniswap_v3_position_snapshot_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_position_snapshot_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_position_snapshot_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_position_snapshot_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner) && !cJSON_IsNull(owner))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool) && !cJSON_IsNull(pool))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->position
    cJSON *position = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "position");
    if (position) { 
    if(!cJSON_IsString(position) && !cJSON_IsNull(position))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity) && !cJSON_IsNull(liquidity))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->deposited_token_0
    cJSON *deposited_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "deposited_token_0");
    if (deposited_token_0) { 
    if(!cJSON_IsString(deposited_token_0) && !cJSON_IsNull(deposited_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->deposited_token_1
    cJSON *deposited_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "deposited_token_1");
    if (deposited_token_1) { 
    if(!cJSON_IsString(deposited_token_1) && !cJSON_IsNull(deposited_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->withdrawn_token_0
    cJSON *withdrawn_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "withdrawn_token_0");
    if (withdrawn_token_0) { 
    if(!cJSON_IsString(withdrawn_token_0) && !cJSON_IsNull(withdrawn_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->withdrawn_token_1
    cJSON *withdrawn_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "withdrawn_token_1");
    if (withdrawn_token_1) { 
    if(!cJSON_IsString(withdrawn_token_1) && !cJSON_IsNull(withdrawn_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->collected_fees_token_0
    cJSON *collected_fees_token_0 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "collected_fees_token_0");
    if (collected_fees_token_0) { 
    if(!cJSON_IsString(collected_fees_token_0) && !cJSON_IsNull(collected_fees_token_0))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->collected_fees_token_1
    cJSON *collected_fees_token_1 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "collected_fees_token_1");
    if (collected_fees_token_1) { 
    if(!cJSON_IsString(collected_fees_token_1) && !cJSON_IsNull(collected_fees_token_1))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction) && !cJSON_IsNull(transaction))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->fee_growth_inside_0_last_x128
    cJSON *fee_growth_inside_0_last_x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "fee_growth_inside_0_last_x128");
    if (fee_growth_inside_0_last_x128) { 
    if(!cJSON_IsString(fee_growth_inside_0_last_x128) && !cJSON_IsNull(fee_growth_inside_0_last_x128))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->fee_growth_inside_1_last_x128
    cJSON *fee_growth_inside_1_last_x128 = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "fee_growth_inside_1_last_x128");
    if (fee_growth_inside_1_last_x128) { 
    if(!cJSON_IsString(fee_growth_inside_1_last_x128) && !cJSON_IsNull(fee_growth_inside_1_last_x128))
    {
    goto end; //String
    }
    }

    // uniswap_v3_position_snapshot_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_position_snapshot_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    uniswap_v3_position_snapshot_dto_local_var = uniswap_v3_position_snapshot_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        owner && !cJSON_IsNull(owner) ? strdup(owner->valuestring) : NULL,
        pool && !cJSON_IsNull(pool) ? strdup(pool->valuestring) : NULL,
        position && !cJSON_IsNull(position) ? strdup(position->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        liquidity && !cJSON_IsNull(liquidity) ? strdup(liquidity->valuestring) : NULL,
        deposited_token_0 && !cJSON_IsNull(deposited_token_0) ? strdup(deposited_token_0->valuestring) : NULL,
        deposited_token_1 && !cJSON_IsNull(deposited_token_1) ? strdup(deposited_token_1->valuestring) : NULL,
        withdrawn_token_0 && !cJSON_IsNull(withdrawn_token_0) ? strdup(withdrawn_token_0->valuestring) : NULL,
        withdrawn_token_1 && !cJSON_IsNull(withdrawn_token_1) ? strdup(withdrawn_token_1->valuestring) : NULL,
        collected_fees_token_0 && !cJSON_IsNull(collected_fees_token_0) ? strdup(collected_fees_token_0->valuestring) : NULL,
        collected_fees_token_1 && !cJSON_IsNull(collected_fees_token_1) ? strdup(collected_fees_token_1->valuestring) : NULL,
        transaction && !cJSON_IsNull(transaction) ? strdup(transaction->valuestring) : NULL,
        fee_growth_inside_0_last_x128 && !cJSON_IsNull(fee_growth_inside_0_last_x128) ? strdup(fee_growth_inside_0_last_x128->valuestring) : NULL,
        fee_growth_inside_1_last_x128 && !cJSON_IsNull(fee_growth_inside_1_last_x128) ? strdup(fee_growth_inside_1_last_x128->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return uniswap_v3_position_snapshot_dto_local_var;
end:
    return NULL;

}
