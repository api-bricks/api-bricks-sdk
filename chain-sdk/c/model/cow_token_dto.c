#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cow_token_dto.h"



cow_token_dto_t *cow_token_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *address,
    char *first_trade_timestamp,
    char *name,
    char *symbol,
    int decimals,
    char *total_volume,
    long vid,
    char *token_symbol
    ) {
    cow_token_dto_t *cow_token_dto_local_var = malloc(sizeof(cow_token_dto_t));
    if (!cow_token_dto_local_var) {
        return NULL;
    }
    cow_token_dto_local_var->entry_time = entry_time;
    cow_token_dto_local_var->recv_time = recv_time;
    cow_token_dto_local_var->block_number = block_number;
    cow_token_dto_local_var->id = id;
    cow_token_dto_local_var->address = address;
    cow_token_dto_local_var->first_trade_timestamp = first_trade_timestamp;
    cow_token_dto_local_var->name = name;
    cow_token_dto_local_var->symbol = symbol;
    cow_token_dto_local_var->decimals = decimals;
    cow_token_dto_local_var->total_volume = total_volume;
    cow_token_dto_local_var->vid = vid;
    cow_token_dto_local_var->token_symbol = token_symbol;

    return cow_token_dto_local_var;
}


void cow_token_dto_free(cow_token_dto_t *cow_token_dto) {
    if(NULL == cow_token_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cow_token_dto->entry_time) {
        free(cow_token_dto->entry_time);
        cow_token_dto->entry_time = NULL;
    }
    if (cow_token_dto->recv_time) {
        free(cow_token_dto->recv_time);
        cow_token_dto->recv_time = NULL;
    }
    if (cow_token_dto->id) {
        free(cow_token_dto->id);
        cow_token_dto->id = NULL;
    }
    if (cow_token_dto->address) {
        free(cow_token_dto->address);
        cow_token_dto->address = NULL;
    }
    if (cow_token_dto->first_trade_timestamp) {
        free(cow_token_dto->first_trade_timestamp);
        cow_token_dto->first_trade_timestamp = NULL;
    }
    if (cow_token_dto->name) {
        free(cow_token_dto->name);
        cow_token_dto->name = NULL;
    }
    if (cow_token_dto->symbol) {
        free(cow_token_dto->symbol);
        cow_token_dto->symbol = NULL;
    }
    if (cow_token_dto->total_volume) {
        free(cow_token_dto->total_volume);
        cow_token_dto->total_volume = NULL;
    }
    if (cow_token_dto->token_symbol) {
        free(cow_token_dto->token_symbol);
        cow_token_dto->token_symbol = NULL;
    }
    free(cow_token_dto);
}

cJSON *cow_token_dto_convertToJSON(cow_token_dto_t *cow_token_dto) {
    cJSON *item = cJSON_CreateObject();

    // cow_token_dto->entry_time
    if(cow_token_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cow_token_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_token_dto->recv_time
    if(cow_token_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cow_token_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cow_token_dto->block_number
    if(cow_token_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", cow_token_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_token_dto->id
    if(cow_token_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cow_token_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cow_token_dto->address
    if(cow_token_dto->address) {
    if(cJSON_AddStringToObject(item, "address", cow_token_dto->address) == NULL) {
    goto fail; //String
    }
    }


    // cow_token_dto->first_trade_timestamp
    if(cow_token_dto->first_trade_timestamp) {
    if(cJSON_AddStringToObject(item, "first_trade_timestamp", cow_token_dto->first_trade_timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cow_token_dto->name
    if(cow_token_dto->name) {
    if(cJSON_AddStringToObject(item, "name", cow_token_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // cow_token_dto->symbol
    if(cow_token_dto->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", cow_token_dto->symbol) == NULL) {
    goto fail; //String
    }
    }


    // cow_token_dto->decimals
    if(cow_token_dto->decimals) {
    if(cJSON_AddNumberToObject(item, "decimals", cow_token_dto->decimals) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_token_dto->total_volume
    if(cow_token_dto->total_volume) {
    if(cJSON_AddStringToObject(item, "total_volume", cow_token_dto->total_volume) == NULL) {
    goto fail; //String
    }
    }


    // cow_token_dto->vid
    if(cow_token_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cow_token_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // cow_token_dto->token_symbol
    if(cow_token_dto->token_symbol) {
    if(cJSON_AddStringToObject(item, "token_symbol", cow_token_dto->token_symbol) == NULL) {
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

cow_token_dto_t *cow_token_dto_parseFromJSON(cJSON *cow_token_dtoJSON){

    cow_token_dto_t *cow_token_dto_local_var = NULL;

    // cow_token_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cow_token_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cow_token_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // cow_token_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cow_token_dto->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "address");
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // cow_token_dto->first_trade_timestamp
    cJSON *first_trade_timestamp = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "first_trade_timestamp");
    if (first_trade_timestamp) { 
    if(!cJSON_IsString(first_trade_timestamp) && !cJSON_IsNull(first_trade_timestamp))
    {
    goto end; //String
    }
    }

    // cow_token_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cow_token_dto->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "symbol");
    if (symbol) { 
    if(!cJSON_IsString(symbol) && !cJSON_IsNull(symbol))
    {
    goto end; //String
    }
    }

    // cow_token_dto->decimals
    cJSON *decimals = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "decimals");
    if (decimals) { 
    if(!cJSON_IsNumber(decimals))
    {
    goto end; //Numeric
    }
    }

    // cow_token_dto->total_volume
    cJSON *total_volume = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "total_volume");
    if (total_volume) { 
    if(!cJSON_IsString(total_volume) && !cJSON_IsNull(total_volume))
    {
    goto end; //String
    }
    }

    // cow_token_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // cow_token_dto->token_symbol
    cJSON *token_symbol = cJSON_GetObjectItemCaseSensitive(cow_token_dtoJSON, "token_symbol");
    if (token_symbol) { 
    if(!cJSON_IsString(token_symbol) && !cJSON_IsNull(token_symbol))
    {
    goto end; //String
    }
    }


    cow_token_dto_local_var = cow_token_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL,
        first_trade_timestamp && !cJSON_IsNull(first_trade_timestamp) ? strdup(first_trade_timestamp->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        symbol && !cJSON_IsNull(symbol) ? strdup(symbol->valuestring) : NULL,
        decimals ? decimals->valuedouble : 0,
        total_volume && !cJSON_IsNull(total_volume) ? strdup(total_volume->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        token_symbol && !cJSON_IsNull(token_symbol) ? strdup(token_symbol->valuestring) : NULL
        );

    return cow_token_dto_local_var;
end:
    return NULL;

}
