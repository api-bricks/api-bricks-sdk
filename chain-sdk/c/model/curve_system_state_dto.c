#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_system_state_dto.h"



curve_system_state_dto_t *curve_system_state_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *registry_contract,
    char *contract_count,
    char *gauge_count,
    char *gauge_type_count,
    char *pool_count,
    char *token_count,
    char *total_pool_count,
    char *updated,
    char *updated_at_block,
    char *updated_at_transaction,
    long vid
    ) {
    curve_system_state_dto_t *curve_system_state_dto_local_var = malloc(sizeof(curve_system_state_dto_t));
    if (!curve_system_state_dto_local_var) {
        return NULL;
    }
    curve_system_state_dto_local_var->entry_time = entry_time;
    curve_system_state_dto_local_var->recv_time = recv_time;
    curve_system_state_dto_local_var->block_number = block_number;
    curve_system_state_dto_local_var->id = id;
    curve_system_state_dto_local_var->registry_contract = registry_contract;
    curve_system_state_dto_local_var->contract_count = contract_count;
    curve_system_state_dto_local_var->gauge_count = gauge_count;
    curve_system_state_dto_local_var->gauge_type_count = gauge_type_count;
    curve_system_state_dto_local_var->pool_count = pool_count;
    curve_system_state_dto_local_var->token_count = token_count;
    curve_system_state_dto_local_var->total_pool_count = total_pool_count;
    curve_system_state_dto_local_var->updated = updated;
    curve_system_state_dto_local_var->updated_at_block = updated_at_block;
    curve_system_state_dto_local_var->updated_at_transaction = updated_at_transaction;
    curve_system_state_dto_local_var->vid = vid;

    return curve_system_state_dto_local_var;
}


void curve_system_state_dto_free(curve_system_state_dto_t *curve_system_state_dto) {
    if(NULL == curve_system_state_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_system_state_dto->entry_time) {
        free(curve_system_state_dto->entry_time);
        curve_system_state_dto->entry_time = NULL;
    }
    if (curve_system_state_dto->recv_time) {
        free(curve_system_state_dto->recv_time);
        curve_system_state_dto->recv_time = NULL;
    }
    if (curve_system_state_dto->id) {
        free(curve_system_state_dto->id);
        curve_system_state_dto->id = NULL;
    }
    if (curve_system_state_dto->registry_contract) {
        free(curve_system_state_dto->registry_contract);
        curve_system_state_dto->registry_contract = NULL;
    }
    if (curve_system_state_dto->contract_count) {
        free(curve_system_state_dto->contract_count);
        curve_system_state_dto->contract_count = NULL;
    }
    if (curve_system_state_dto->gauge_count) {
        free(curve_system_state_dto->gauge_count);
        curve_system_state_dto->gauge_count = NULL;
    }
    if (curve_system_state_dto->gauge_type_count) {
        free(curve_system_state_dto->gauge_type_count);
        curve_system_state_dto->gauge_type_count = NULL;
    }
    if (curve_system_state_dto->pool_count) {
        free(curve_system_state_dto->pool_count);
        curve_system_state_dto->pool_count = NULL;
    }
    if (curve_system_state_dto->token_count) {
        free(curve_system_state_dto->token_count);
        curve_system_state_dto->token_count = NULL;
    }
    if (curve_system_state_dto->total_pool_count) {
        free(curve_system_state_dto->total_pool_count);
        curve_system_state_dto->total_pool_count = NULL;
    }
    if (curve_system_state_dto->updated) {
        free(curve_system_state_dto->updated);
        curve_system_state_dto->updated = NULL;
    }
    if (curve_system_state_dto->updated_at_block) {
        free(curve_system_state_dto->updated_at_block);
        curve_system_state_dto->updated_at_block = NULL;
    }
    if (curve_system_state_dto->updated_at_transaction) {
        free(curve_system_state_dto->updated_at_transaction);
        curve_system_state_dto->updated_at_transaction = NULL;
    }
    free(curve_system_state_dto);
}

cJSON *curve_system_state_dto_convertToJSON(curve_system_state_dto_t *curve_system_state_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_system_state_dto->entry_time
    if(curve_system_state_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_system_state_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_system_state_dto->recv_time
    if(curve_system_state_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_system_state_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_system_state_dto->block_number
    if(curve_system_state_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_system_state_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_system_state_dto->id
    if(curve_system_state_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_system_state_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->registry_contract
    if(curve_system_state_dto->registry_contract) {
    if(cJSON_AddStringToObject(item, "registry_contract", curve_system_state_dto->registry_contract) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->contract_count
    if(curve_system_state_dto->contract_count) {
    if(cJSON_AddStringToObject(item, "contract_count", curve_system_state_dto->contract_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->gauge_count
    if(curve_system_state_dto->gauge_count) {
    if(cJSON_AddStringToObject(item, "gauge_count", curve_system_state_dto->gauge_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->gauge_type_count
    if(curve_system_state_dto->gauge_type_count) {
    if(cJSON_AddStringToObject(item, "gauge_type_count", curve_system_state_dto->gauge_type_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->pool_count
    if(curve_system_state_dto->pool_count) {
    if(cJSON_AddStringToObject(item, "pool_count", curve_system_state_dto->pool_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->token_count
    if(curve_system_state_dto->token_count) {
    if(cJSON_AddStringToObject(item, "token_count", curve_system_state_dto->token_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->total_pool_count
    if(curve_system_state_dto->total_pool_count) {
    if(cJSON_AddStringToObject(item, "total_pool_count", curve_system_state_dto->total_pool_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->updated
    if(curve_system_state_dto->updated) {
    if(cJSON_AddStringToObject(item, "updated", curve_system_state_dto->updated) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->updated_at_block
    if(curve_system_state_dto->updated_at_block) {
    if(cJSON_AddStringToObject(item, "updated_at_block", curve_system_state_dto->updated_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->updated_at_transaction
    if(curve_system_state_dto->updated_at_transaction) {
    if(cJSON_AddStringToObject(item, "updated_at_transaction", curve_system_state_dto->updated_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_system_state_dto->vid
    if(curve_system_state_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_system_state_dto->vid) == NULL) {
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

curve_system_state_dto_t *curve_system_state_dto_parseFromJSON(cJSON *curve_system_state_dtoJSON){

    curve_system_state_dto_t *curve_system_state_dto_local_var = NULL;

    // curve_system_state_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_system_state_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_system_state_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_system_state_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->registry_contract
    cJSON *registry_contract = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "registry_contract");
    if (registry_contract) { 
    if(!cJSON_IsString(registry_contract) && !cJSON_IsNull(registry_contract))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->contract_count
    cJSON *contract_count = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "contract_count");
    if (contract_count) { 
    if(!cJSON_IsString(contract_count) && !cJSON_IsNull(contract_count))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->gauge_count
    cJSON *gauge_count = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "gauge_count");
    if (gauge_count) { 
    if(!cJSON_IsString(gauge_count) && !cJSON_IsNull(gauge_count))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->gauge_type_count
    cJSON *gauge_type_count = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "gauge_type_count");
    if (gauge_type_count) { 
    if(!cJSON_IsString(gauge_type_count) && !cJSON_IsNull(gauge_type_count))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->pool_count
    cJSON *pool_count = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "pool_count");
    if (pool_count) { 
    if(!cJSON_IsString(pool_count) && !cJSON_IsNull(pool_count))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->token_count
    cJSON *token_count = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "token_count");
    if (token_count) { 
    if(!cJSON_IsString(token_count) && !cJSON_IsNull(token_count))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->total_pool_count
    cJSON *total_pool_count = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "total_pool_count");
    if (total_pool_count) { 
    if(!cJSON_IsString(total_pool_count) && !cJSON_IsNull(total_pool_count))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "updated");
    if (updated) { 
    if(!cJSON_IsString(updated) && !cJSON_IsNull(updated))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->updated_at_block
    cJSON *updated_at_block = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "updated_at_block");
    if (updated_at_block) { 
    if(!cJSON_IsString(updated_at_block) && !cJSON_IsNull(updated_at_block))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->updated_at_transaction
    cJSON *updated_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "updated_at_transaction");
    if (updated_at_transaction) { 
    if(!cJSON_IsString(updated_at_transaction) && !cJSON_IsNull(updated_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_system_state_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_system_state_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    curve_system_state_dto_local_var = curve_system_state_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        registry_contract && !cJSON_IsNull(registry_contract) ? strdup(registry_contract->valuestring) : NULL,
        contract_count && !cJSON_IsNull(contract_count) ? strdup(contract_count->valuestring) : NULL,
        gauge_count && !cJSON_IsNull(gauge_count) ? strdup(gauge_count->valuestring) : NULL,
        gauge_type_count && !cJSON_IsNull(gauge_type_count) ? strdup(gauge_type_count->valuestring) : NULL,
        pool_count && !cJSON_IsNull(pool_count) ? strdup(pool_count->valuestring) : NULL,
        token_count && !cJSON_IsNull(token_count) ? strdup(token_count->valuestring) : NULL,
        total_pool_count && !cJSON_IsNull(total_pool_count) ? strdup(total_pool_count->valuestring) : NULL,
        updated && !cJSON_IsNull(updated) ? strdup(updated->valuestring) : NULL,
        updated_at_block && !cJSON_IsNull(updated_at_block) ? strdup(updated_at_block->valuestring) : NULL,
        updated_at_transaction && !cJSON_IsNull(updated_at_transaction) ? strdup(updated_at_transaction->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return curve_system_state_dto_local_var;
end:
    return NULL;

}
