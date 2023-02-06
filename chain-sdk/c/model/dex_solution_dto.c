#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dex_solution_dto.h"



dex_solution_dto_t *dex_solution_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *batch,
    char *solver,
    char *fee_reward,
    char *objective_value,
    char *utility,
    list_t *trades,
    char *create_epoch,
    char *revert_epoch,
    char *tx_hash,
    char *tx_log_index,
    long vid
    ) {
    dex_solution_dto_t *dex_solution_dto_local_var = malloc(sizeof(dex_solution_dto_t));
    if (!dex_solution_dto_local_var) {
        return NULL;
    }
    dex_solution_dto_local_var->entry_time = entry_time;
    dex_solution_dto_local_var->recv_time = recv_time;
    dex_solution_dto_local_var->block_number = block_number;
    dex_solution_dto_local_var->id = id;
    dex_solution_dto_local_var->batch = batch;
    dex_solution_dto_local_var->solver = solver;
    dex_solution_dto_local_var->fee_reward = fee_reward;
    dex_solution_dto_local_var->objective_value = objective_value;
    dex_solution_dto_local_var->utility = utility;
    dex_solution_dto_local_var->trades = trades;
    dex_solution_dto_local_var->create_epoch = create_epoch;
    dex_solution_dto_local_var->revert_epoch = revert_epoch;
    dex_solution_dto_local_var->tx_hash = tx_hash;
    dex_solution_dto_local_var->tx_log_index = tx_log_index;
    dex_solution_dto_local_var->vid = vid;

    return dex_solution_dto_local_var;
}


void dex_solution_dto_free(dex_solution_dto_t *dex_solution_dto) {
    if(NULL == dex_solution_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (dex_solution_dto->entry_time) {
        free(dex_solution_dto->entry_time);
        dex_solution_dto->entry_time = NULL;
    }
    if (dex_solution_dto->recv_time) {
        free(dex_solution_dto->recv_time);
        dex_solution_dto->recv_time = NULL;
    }
    if (dex_solution_dto->id) {
        free(dex_solution_dto->id);
        dex_solution_dto->id = NULL;
    }
    if (dex_solution_dto->batch) {
        free(dex_solution_dto->batch);
        dex_solution_dto->batch = NULL;
    }
    if (dex_solution_dto->solver) {
        free(dex_solution_dto->solver);
        dex_solution_dto->solver = NULL;
    }
    if (dex_solution_dto->fee_reward) {
        free(dex_solution_dto->fee_reward);
        dex_solution_dto->fee_reward = NULL;
    }
    if (dex_solution_dto->objective_value) {
        free(dex_solution_dto->objective_value);
        dex_solution_dto->objective_value = NULL;
    }
    if (dex_solution_dto->utility) {
        free(dex_solution_dto->utility);
        dex_solution_dto->utility = NULL;
    }
    if (dex_solution_dto->trades) {
        list_ForEach(listEntry, dex_solution_dto->trades) {
            free(listEntry->data);
        }
        list_freeList(dex_solution_dto->trades);
        dex_solution_dto->trades = NULL;
    }
    if (dex_solution_dto->create_epoch) {
        free(dex_solution_dto->create_epoch);
        dex_solution_dto->create_epoch = NULL;
    }
    if (dex_solution_dto->revert_epoch) {
        free(dex_solution_dto->revert_epoch);
        dex_solution_dto->revert_epoch = NULL;
    }
    if (dex_solution_dto->tx_hash) {
        free(dex_solution_dto->tx_hash);
        dex_solution_dto->tx_hash = NULL;
    }
    if (dex_solution_dto->tx_log_index) {
        free(dex_solution_dto->tx_log_index);
        dex_solution_dto->tx_log_index = NULL;
    }
    free(dex_solution_dto);
}

cJSON *dex_solution_dto_convertToJSON(dex_solution_dto_t *dex_solution_dto) {
    cJSON *item = cJSON_CreateObject();

    // dex_solution_dto->entry_time
    if(dex_solution_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", dex_solution_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_solution_dto->recv_time
    if(dex_solution_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", dex_solution_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_solution_dto->block_number
    if(dex_solution_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", dex_solution_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_solution_dto->id
    if(dex_solution_dto->id) {
    if(cJSON_AddStringToObject(item, "id", dex_solution_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->batch
    if(dex_solution_dto->batch) {
    if(cJSON_AddStringToObject(item, "batch", dex_solution_dto->batch) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->solver
    if(dex_solution_dto->solver) {
    if(cJSON_AddStringToObject(item, "solver", dex_solution_dto->solver) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->fee_reward
    if(dex_solution_dto->fee_reward) {
    if(cJSON_AddStringToObject(item, "fee_reward", dex_solution_dto->fee_reward) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->objective_value
    if(dex_solution_dto->objective_value) {
    if(cJSON_AddStringToObject(item, "objective_value", dex_solution_dto->objective_value) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->utility
    if(dex_solution_dto->utility) {
    if(cJSON_AddStringToObject(item, "utility", dex_solution_dto->utility) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->trades
    if(dex_solution_dto->trades) {
    cJSON *trades = cJSON_AddArrayToObject(item, "trades");
    if(trades == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *tradesListEntry;
    list_ForEach(tradesListEntry, dex_solution_dto->trades) {
    if(cJSON_AddStringToObject(trades, "", (char*)tradesListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // dex_solution_dto->create_epoch
    if(dex_solution_dto->create_epoch) {
    if(cJSON_AddStringToObject(item, "create_epoch", dex_solution_dto->create_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->revert_epoch
    if(dex_solution_dto->revert_epoch) {
    if(cJSON_AddStringToObject(item, "revert_epoch", dex_solution_dto->revert_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->tx_hash
    if(dex_solution_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", dex_solution_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->tx_log_index
    if(dex_solution_dto->tx_log_index) {
    if(cJSON_AddStringToObject(item, "tx_log_index", dex_solution_dto->tx_log_index) == NULL) {
    goto fail; //String
    }
    }


    // dex_solution_dto->vid
    if(dex_solution_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", dex_solution_dto->vid) == NULL) {
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

dex_solution_dto_t *dex_solution_dto_parseFromJSON(cJSON *dex_solution_dtoJSON){

    dex_solution_dto_t *dex_solution_dto_local_var = NULL;

    // define the local list for dex_solution_dto->trades
    list_t *tradesList = NULL;

    // dex_solution_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // dex_solution_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // dex_solution_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // dex_solution_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->batch
    cJSON *batch = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "batch");
    if (batch) { 
    if(!cJSON_IsString(batch) && !cJSON_IsNull(batch))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->solver
    cJSON *solver = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "solver");
    if (solver) { 
    if(!cJSON_IsString(solver) && !cJSON_IsNull(solver))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->fee_reward
    cJSON *fee_reward = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "fee_reward");
    if (fee_reward) { 
    if(!cJSON_IsString(fee_reward) && !cJSON_IsNull(fee_reward))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->objective_value
    cJSON *objective_value = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "objective_value");
    if (objective_value) { 
    if(!cJSON_IsString(objective_value) && !cJSON_IsNull(objective_value))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->utility
    cJSON *utility = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "utility");
    if (utility) { 
    if(!cJSON_IsString(utility) && !cJSON_IsNull(utility))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->trades
    cJSON *trades = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "trades");
    if (trades) { 
    cJSON *trades_local = NULL;
    if(!cJSON_IsArray(trades)) {
        goto end;//primitive container
    }
    tradesList = list_createList();

    cJSON_ArrayForEach(trades_local, trades)
    {
        if(!cJSON_IsString(trades_local))
        {
            goto end;
        }
        list_addElement(tradesList , strdup(trades_local->valuestring));
    }
    }

    // dex_solution_dto->create_epoch
    cJSON *create_epoch = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "create_epoch");
    if (create_epoch) { 
    if(!cJSON_IsString(create_epoch) && !cJSON_IsNull(create_epoch))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->revert_epoch
    cJSON *revert_epoch = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "revert_epoch");
    if (revert_epoch) { 
    if(!cJSON_IsString(revert_epoch) && !cJSON_IsNull(revert_epoch))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->tx_log_index
    cJSON *tx_log_index = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "tx_log_index");
    if (tx_log_index) { 
    if(!cJSON_IsString(tx_log_index) && !cJSON_IsNull(tx_log_index))
    {
    goto end; //String
    }
    }

    // dex_solution_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(dex_solution_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    dex_solution_dto_local_var = dex_solution_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        batch && !cJSON_IsNull(batch) ? strdup(batch->valuestring) : NULL,
        solver && !cJSON_IsNull(solver) ? strdup(solver->valuestring) : NULL,
        fee_reward && !cJSON_IsNull(fee_reward) ? strdup(fee_reward->valuestring) : NULL,
        objective_value && !cJSON_IsNull(objective_value) ? strdup(objective_value->valuestring) : NULL,
        utility && !cJSON_IsNull(utility) ? strdup(utility->valuestring) : NULL,
        trades ? tradesList : NULL,
        create_epoch && !cJSON_IsNull(create_epoch) ? strdup(create_epoch->valuestring) : NULL,
        revert_epoch && !cJSON_IsNull(revert_epoch) ? strdup(revert_epoch->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        tx_log_index && !cJSON_IsNull(tx_log_index) ? strdup(tx_log_index->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return dex_solution_dto_local_var;
end:
    if (tradesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, tradesList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(tradesList);
        tradesList = NULL;
    }
    return NULL;

}
