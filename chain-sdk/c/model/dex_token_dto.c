#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dex_token_dto.h"



dex_token_dto_t *dex_token_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *address,
    char *from_batch_id,
    char *symbol,
    char *decimals,
    char *name,
    char *sell_volume,
    char *create_epoch,
    char *tx_hash,
    long vid,
    char *token_symbol
    ) {
    dex_token_dto_t *dex_token_dto_local_var = malloc(sizeof(dex_token_dto_t));
    if (!dex_token_dto_local_var) {
        return NULL;
    }
    dex_token_dto_local_var->entry_time = entry_time;
    dex_token_dto_local_var->recv_time = recv_time;
    dex_token_dto_local_var->block_number = block_number;
    dex_token_dto_local_var->id = id;
    dex_token_dto_local_var->address = address;
    dex_token_dto_local_var->from_batch_id = from_batch_id;
    dex_token_dto_local_var->symbol = symbol;
    dex_token_dto_local_var->decimals = decimals;
    dex_token_dto_local_var->name = name;
    dex_token_dto_local_var->sell_volume = sell_volume;
    dex_token_dto_local_var->create_epoch = create_epoch;
    dex_token_dto_local_var->tx_hash = tx_hash;
    dex_token_dto_local_var->vid = vid;
    dex_token_dto_local_var->token_symbol = token_symbol;

    return dex_token_dto_local_var;
}


void dex_token_dto_free(dex_token_dto_t *dex_token_dto) {
    if(NULL == dex_token_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (dex_token_dto->entry_time) {
        free(dex_token_dto->entry_time);
        dex_token_dto->entry_time = NULL;
    }
    if (dex_token_dto->recv_time) {
        free(dex_token_dto->recv_time);
        dex_token_dto->recv_time = NULL;
    }
    if (dex_token_dto->id) {
        free(dex_token_dto->id);
        dex_token_dto->id = NULL;
    }
    if (dex_token_dto->address) {
        free(dex_token_dto->address);
        dex_token_dto->address = NULL;
    }
    if (dex_token_dto->from_batch_id) {
        free(dex_token_dto->from_batch_id);
        dex_token_dto->from_batch_id = NULL;
    }
    if (dex_token_dto->symbol) {
        free(dex_token_dto->symbol);
        dex_token_dto->symbol = NULL;
    }
    if (dex_token_dto->decimals) {
        free(dex_token_dto->decimals);
        dex_token_dto->decimals = NULL;
    }
    if (dex_token_dto->name) {
        free(dex_token_dto->name);
        dex_token_dto->name = NULL;
    }
    if (dex_token_dto->sell_volume) {
        free(dex_token_dto->sell_volume);
        dex_token_dto->sell_volume = NULL;
    }
    if (dex_token_dto->create_epoch) {
        free(dex_token_dto->create_epoch);
        dex_token_dto->create_epoch = NULL;
    }
    if (dex_token_dto->tx_hash) {
        free(dex_token_dto->tx_hash);
        dex_token_dto->tx_hash = NULL;
    }
    if (dex_token_dto->token_symbol) {
        free(dex_token_dto->token_symbol);
        dex_token_dto->token_symbol = NULL;
    }
    free(dex_token_dto);
}

cJSON *dex_token_dto_convertToJSON(dex_token_dto_t *dex_token_dto) {
    cJSON *item = cJSON_CreateObject();

    // dex_token_dto->entry_time
    if(dex_token_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", dex_token_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_token_dto->recv_time
    if(dex_token_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", dex_token_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // dex_token_dto->block_number
    if(dex_token_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", dex_token_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_token_dto->id
    if(dex_token_dto->id) {
    if(cJSON_AddStringToObject(item, "id", dex_token_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // dex_token_dto->address
    if(dex_token_dto->address) {
    if(cJSON_AddStringToObject(item, "address", dex_token_dto->address) == NULL) {
    goto fail; //String
    }
    }


    // dex_token_dto->from_batch_id
    if(dex_token_dto->from_batch_id) {
    if(cJSON_AddStringToObject(item, "from_batch_id", dex_token_dto->from_batch_id) == NULL) {
    goto fail; //String
    }
    }


    // dex_token_dto->symbol
    if(dex_token_dto->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", dex_token_dto->symbol) == NULL) {
    goto fail; //String
    }
    }


    // dex_token_dto->decimals
    if(dex_token_dto->decimals) {
    if(cJSON_AddStringToObject(item, "decimals", dex_token_dto->decimals) == NULL) {
    goto fail; //String
    }
    }


    // dex_token_dto->name
    if(dex_token_dto->name) {
    if(cJSON_AddStringToObject(item, "name", dex_token_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // dex_token_dto->sell_volume
    if(dex_token_dto->sell_volume) {
    if(cJSON_AddStringToObject(item, "sell_volume", dex_token_dto->sell_volume) == NULL) {
    goto fail; //String
    }
    }


    // dex_token_dto->create_epoch
    if(dex_token_dto->create_epoch) {
    if(cJSON_AddStringToObject(item, "create_epoch", dex_token_dto->create_epoch) == NULL) {
    goto fail; //String
    }
    }


    // dex_token_dto->tx_hash
    if(dex_token_dto->tx_hash) {
    if(cJSON_AddStringToObject(item, "tx_hash", dex_token_dto->tx_hash) == NULL) {
    goto fail; //String
    }
    }


    // dex_token_dto->vid
    if(dex_token_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", dex_token_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // dex_token_dto->token_symbol
    if(dex_token_dto->token_symbol) {
    if(cJSON_AddStringToObject(item, "token_symbol", dex_token_dto->token_symbol) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

dex_token_dto_t *dex_token_dto_parseFromJSON(cJSON *dex_token_dtoJSON){

    dex_token_dto_t *dex_token_dto_local_var = NULL;

    // dex_token_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // dex_token_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // dex_token_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // dex_token_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // dex_token_dto->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "address");
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // dex_token_dto->from_batch_id
    cJSON *from_batch_id = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "from_batch_id");
    if (from_batch_id) { 
    if(!cJSON_IsString(from_batch_id) && !cJSON_IsNull(from_batch_id))
    {
    goto end; //String
    }
    }

    // dex_token_dto->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "symbol");
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // dex_token_dto->decimals
    cJSON *decimals = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "decimals");
    if (decimals) { 
    if(!cJSON_IsString(decimals) && !cJSON_IsNull(decimals))
    {
    goto end; //String
    }
    }

    // dex_token_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // dex_token_dto->sell_volume
    cJSON *sell_volume = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "sell_volume");
    if (sell_volume) { 
    if(!cJSON_IsString(sell_volume) && !cJSON_IsNull(sell_volume))
    {
    goto end; //String
    }
    }

    // dex_token_dto->create_epoch
    cJSON *create_epoch = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "create_epoch");
    if (create_epoch) { 
    if(!cJSON_IsString(create_epoch) && !cJSON_IsNull(create_epoch))
    {
    goto end; //String
    }
    }

    // dex_token_dto->tx_hash
    cJSON *tx_hash = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "tx_hash");
    if (tx_hash) { 
    if(!cJSON_IsString(tx_hash) && !cJSON_IsNull(tx_hash))
    {
    goto end; //String
    }
    }

    // dex_token_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // dex_token_dto->token_symbol
    cJSON *token_symbol = cJSON_GetObjectItemCaseSensitive(dex_token_dtoJSON, "token_symbol");
    if (token_symbol) { 
    if(!cJSON_IsString(token_symbol) && !cJSON_IsNull(token_symbol))
    {
    goto end; //String
    }
    }


    dex_token_dto_local_var = dex_token_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL,
        from_batch_id && !cJSON_IsNull(from_batch_id) ? strdup(from_batch_id->valuestring) : NULL,
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        decimals && !cJSON_IsNull(decimals) ? strdup(decimals->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        sell_volume && !cJSON_IsNull(sell_volume) ? strdup(sell_volume->valuestring) : NULL,
        create_epoch && !cJSON_IsNull(create_epoch) ? strdup(create_epoch->valuestring) : NULL,
        tx_hash && !cJSON_IsNull(tx_hash) ? strdup(tx_hash->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        token_symbol && !cJSON_IsNull(token_symbol) ? strdup(token_symbol->valuestring) : NULL
        );

    return dex_token_dto_local_var;
end:
    return NULL;

}
