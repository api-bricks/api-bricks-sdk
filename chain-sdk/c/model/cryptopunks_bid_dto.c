#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cryptopunks_bid_dto.h"



cryptopunks_bid_dto_t *cryptopunks_bid_dto_create(
    char *entry_time,
    char *recv_time,
    char *block_number,
    long vid,
    char *block_range,
    char *id,
    char *tokens_bid,
    char *token_id,
    char *timestamp,
    char *bidder
    ) {
    cryptopunks_bid_dto_t *cryptopunks_bid_dto_local_var = malloc(sizeof(cryptopunks_bid_dto_t));
    if (!cryptopunks_bid_dto_local_var) {
        return NULL;
    }
    cryptopunks_bid_dto_local_var->entry_time = entry_time;
    cryptopunks_bid_dto_local_var->recv_time = recv_time;
    cryptopunks_bid_dto_local_var->block_number = block_number;
    cryptopunks_bid_dto_local_var->vid = vid;
    cryptopunks_bid_dto_local_var->block_range = block_range;
    cryptopunks_bid_dto_local_var->id = id;
    cryptopunks_bid_dto_local_var->tokens_bid = tokens_bid;
    cryptopunks_bid_dto_local_var->token_id = token_id;
    cryptopunks_bid_dto_local_var->timestamp = timestamp;
    cryptopunks_bid_dto_local_var->bidder = bidder;

    return cryptopunks_bid_dto_local_var;
}


void cryptopunks_bid_dto_free(cryptopunks_bid_dto_t *cryptopunks_bid_dto) {
    if(NULL == cryptopunks_bid_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (cryptopunks_bid_dto->entry_time) {
        free(cryptopunks_bid_dto->entry_time);
        cryptopunks_bid_dto->entry_time = NULL;
    }
    if (cryptopunks_bid_dto->recv_time) {
        free(cryptopunks_bid_dto->recv_time);
        cryptopunks_bid_dto->recv_time = NULL;
    }
    if (cryptopunks_bid_dto->block_number) {
        free(cryptopunks_bid_dto->block_number);
        cryptopunks_bid_dto->block_number = NULL;
    }
    if (cryptopunks_bid_dto->block_range) {
        free(cryptopunks_bid_dto->block_range);
        cryptopunks_bid_dto->block_range = NULL;
    }
    if (cryptopunks_bid_dto->id) {
        free(cryptopunks_bid_dto->id);
        cryptopunks_bid_dto->id = NULL;
    }
    if (cryptopunks_bid_dto->tokens_bid) {
        free(cryptopunks_bid_dto->tokens_bid);
        cryptopunks_bid_dto->tokens_bid = NULL;
    }
    if (cryptopunks_bid_dto->token_id) {
        free(cryptopunks_bid_dto->token_id);
        cryptopunks_bid_dto->token_id = NULL;
    }
    if (cryptopunks_bid_dto->timestamp) {
        free(cryptopunks_bid_dto->timestamp);
        cryptopunks_bid_dto->timestamp = NULL;
    }
    if (cryptopunks_bid_dto->bidder) {
        free(cryptopunks_bid_dto->bidder);
        cryptopunks_bid_dto->bidder = NULL;
    }
    free(cryptopunks_bid_dto);
}

cJSON *cryptopunks_bid_dto_convertToJSON(cryptopunks_bid_dto_t *cryptopunks_bid_dto) {
    cJSON *item = cJSON_CreateObject();

    // cryptopunks_bid_dto->entry_time
    if(cryptopunks_bid_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", cryptopunks_bid_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_bid_dto->recv_time
    if(cryptopunks_bid_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", cryptopunks_bid_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // cryptopunks_bid_dto->block_number
    if(cryptopunks_bid_dto->block_number) {
    if(cJSON_AddStringToObject(item, "block_number", cryptopunks_bid_dto->block_number) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_bid_dto->vid
    if(cryptopunks_bid_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", cryptopunks_bid_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // cryptopunks_bid_dto->block_range
    if(cryptopunks_bid_dto->block_range) {
    if(cJSON_AddStringToObject(item, "block_range", cryptopunks_bid_dto->block_range) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_bid_dto->id
    if(cryptopunks_bid_dto->id) {
    if(cJSON_AddStringToObject(item, "id", cryptopunks_bid_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_bid_dto->tokens_bid
    if(cryptopunks_bid_dto->tokens_bid) {
    if(cJSON_AddStringToObject(item, "tokens_bid", cryptopunks_bid_dto->tokens_bid) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_bid_dto->token_id
    if(cryptopunks_bid_dto->token_id) {
    if(cJSON_AddStringToObject(item, "token_id", cryptopunks_bid_dto->token_id) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_bid_dto->timestamp
    if(cryptopunks_bid_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", cryptopunks_bid_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // cryptopunks_bid_dto->bidder
    if(cryptopunks_bid_dto->bidder) {
    if(cJSON_AddStringToObject(item, "bidder", cryptopunks_bid_dto->bidder) == NULL) {
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

cryptopunks_bid_dto_t *cryptopunks_bid_dto_parseFromJSON(cJSON *cryptopunks_bid_dtoJSON){

    cryptopunks_bid_dto_t *cryptopunks_bid_dto_local_var = NULL;

    // cryptopunks_bid_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_bid_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // cryptopunks_bid_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsString(block_number) && !cJSON_IsNull(block_number))
    {
    goto end; //String
    }
    }

    // cryptopunks_bid_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // cryptopunks_bid_dto->block_range
    cJSON *block_range = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "block_range");
    if (block_range) { 
    if(!cJSON_IsString(block_range) && !cJSON_IsNull(block_range))
    {
    goto end; //String
    }
    }

    // cryptopunks_bid_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // cryptopunks_bid_dto->tokens_bid
    cJSON *tokens_bid = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "tokens_bid");
    if (tokens_bid) { 
    if(!cJSON_IsString(tokens_bid) && !cJSON_IsNull(tokens_bid))
    {
    goto end; //String
    }
    }

    // cryptopunks_bid_dto->token_id
    cJSON *token_id = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "token_id");
    if (token_id) { 
    if(!cJSON_IsString(token_id) && !cJSON_IsNull(token_id))
    {
    goto end; //String
    }
    }

    // cryptopunks_bid_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp) && !cJSON_IsNull(timestamp))
    {
    goto end; //String
    }
    }

    // cryptopunks_bid_dto->bidder
    cJSON *bidder = cJSON_GetObjectItemCaseSensitive(cryptopunks_bid_dtoJSON, "bidder");
    if (bidder) { 
    if(!cJSON_IsString(bidder) && !cJSON_IsNull(bidder))
    {
    goto end; //String
    }
    }


    cryptopunks_bid_dto_local_var = cryptopunks_bid_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number && !cJSON_IsNull(block_number) ? strdup(block_number->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        block_range && !cJSON_IsNull(block_range) ? strdup(block_range->valuestring) : NULL,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        tokens_bid && !cJSON_IsNull(tokens_bid) ? strdup(tokens_bid->valuestring) : NULL,
        token_id && !cJSON_IsNull(token_id) ? strdup(token_id->valuestring) : NULL,
        timestamp && !cJSON_IsNull(timestamp) ? strdup(timestamp->valuestring) : NULL,
        bidder && !cJSON_IsNull(bidder) ? strdup(bidder->valuestring) : NULL
        );

    return cryptopunks_bid_dto_local_var;
end:
    return NULL;

}
