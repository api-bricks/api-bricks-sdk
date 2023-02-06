#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniswap_v3_token_v3_day_data_dto.h"



uniswap_v3_token_v3_day_data_dto_t *uniswap_v3_token_v3_day_data_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    int date,
    char *token,
    char *volume,
    char *volume_usd,
    char *untracked_volume_usd,
    char *total_value_locked,
    char *total_value_locked_usd,
    char *price_usd,
    char *fees_usd,
    char *open,
    char *high,
    char *low,
    char *close
    ) {
    uniswap_v3_token_v3_day_data_dto_t *uniswap_v3_token_v3_day_data_dto_local_var = malloc(sizeof(uniswap_v3_token_v3_day_data_dto_t));
    if (!uniswap_v3_token_v3_day_data_dto_local_var) {
        return NULL;
    }
    uniswap_v3_token_v3_day_data_dto_local_var->entry_time = entry_time;
    uniswap_v3_token_v3_day_data_dto_local_var->recv_time = recv_time;
    uniswap_v3_token_v3_day_data_dto_local_var->block_number = block_number;
    uniswap_v3_token_v3_day_data_dto_local_var->vid = vid;
    uniswap_v3_token_v3_day_data_dto_local_var->id = id;
    uniswap_v3_token_v3_day_data_dto_local_var->date = date;
    uniswap_v3_token_v3_day_data_dto_local_var->token = token;
    uniswap_v3_token_v3_day_data_dto_local_var->volume = volume;
    uniswap_v3_token_v3_day_data_dto_local_var->volume_usd = volume_usd;
    uniswap_v3_token_v3_day_data_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    uniswap_v3_token_v3_day_data_dto_local_var->total_value_locked = total_value_locked;
    uniswap_v3_token_v3_day_data_dto_local_var->total_value_locked_usd = total_value_locked_usd;
    uniswap_v3_token_v3_day_data_dto_local_var->price_usd = price_usd;
    uniswap_v3_token_v3_day_data_dto_local_var->fees_usd = fees_usd;
    uniswap_v3_token_v3_day_data_dto_local_var->open = open;
    uniswap_v3_token_v3_day_data_dto_local_var->high = high;
    uniswap_v3_token_v3_day_data_dto_local_var->low = low;
    uniswap_v3_token_v3_day_data_dto_local_var->close = close;

    return uniswap_v3_token_v3_day_data_dto_local_var;
}


void uniswap_v3_token_v3_day_data_dto_free(uniswap_v3_token_v3_day_data_dto_t *uniswap_v3_token_v3_day_data_dto) {
    if(NULL == uniswap_v3_token_v3_day_data_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (uniswap_v3_token_v3_day_data_dto->entry_time) {
        free(uniswap_v3_token_v3_day_data_dto->entry_time);
        uniswap_v3_token_v3_day_data_dto->entry_time = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->recv_time) {
        free(uniswap_v3_token_v3_day_data_dto->recv_time);
        uniswap_v3_token_v3_day_data_dto->recv_time = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->id) {
        free(uniswap_v3_token_v3_day_data_dto->id);
        uniswap_v3_token_v3_day_data_dto->id = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->token) {
        free(uniswap_v3_token_v3_day_data_dto->token);
        uniswap_v3_token_v3_day_data_dto->token = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->volume) {
        free(uniswap_v3_token_v3_day_data_dto->volume);
        uniswap_v3_token_v3_day_data_dto->volume = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->volume_usd) {
        free(uniswap_v3_token_v3_day_data_dto->volume_usd);
        uniswap_v3_token_v3_day_data_dto->volume_usd = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->untracked_volume_usd) {
        free(uniswap_v3_token_v3_day_data_dto->untracked_volume_usd);
        uniswap_v3_token_v3_day_data_dto->untracked_volume_usd = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->total_value_locked) {
        free(uniswap_v3_token_v3_day_data_dto->total_value_locked);
        uniswap_v3_token_v3_day_data_dto->total_value_locked = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->total_value_locked_usd) {
        free(uniswap_v3_token_v3_day_data_dto->total_value_locked_usd);
        uniswap_v3_token_v3_day_data_dto->total_value_locked_usd = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->price_usd) {
        free(uniswap_v3_token_v3_day_data_dto->price_usd);
        uniswap_v3_token_v3_day_data_dto->price_usd = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->fees_usd) {
        free(uniswap_v3_token_v3_day_data_dto->fees_usd);
        uniswap_v3_token_v3_day_data_dto->fees_usd = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->open) {
        free(uniswap_v3_token_v3_day_data_dto->open);
        uniswap_v3_token_v3_day_data_dto->open = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->high) {
        free(uniswap_v3_token_v3_day_data_dto->high);
        uniswap_v3_token_v3_day_data_dto->high = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->low) {
        free(uniswap_v3_token_v3_day_data_dto->low);
        uniswap_v3_token_v3_day_data_dto->low = NULL;
    }
    if (uniswap_v3_token_v3_day_data_dto->close) {
        free(uniswap_v3_token_v3_day_data_dto->close);
        uniswap_v3_token_v3_day_data_dto->close = NULL;
    }
    free(uniswap_v3_token_v3_day_data_dto);
}

cJSON *uniswap_v3_token_v3_day_data_dto_convertToJSON(uniswap_v3_token_v3_day_data_dto_t *uniswap_v3_token_v3_day_data_dto) {
    cJSON *item = cJSON_CreateObject();

    // uniswap_v3_token_v3_day_data_dto->entry_time
    if(uniswap_v3_token_v3_day_data_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", uniswap_v3_token_v3_day_data_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_token_v3_day_data_dto->recv_time
    if(uniswap_v3_token_v3_day_data_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", uniswap_v3_token_v3_day_data_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // uniswap_v3_token_v3_day_data_dto->block_number
    if(uniswap_v3_token_v3_day_data_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", uniswap_v3_token_v3_day_data_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_token_v3_day_data_dto->vid
    if(uniswap_v3_token_v3_day_data_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", uniswap_v3_token_v3_day_data_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_token_v3_day_data_dto->id
    if(uniswap_v3_token_v3_day_data_dto->id) {
    if(cJSON_AddStringToObject(item, "id", uniswap_v3_token_v3_day_data_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->date
    if(uniswap_v3_token_v3_day_data_dto->date) {
    if(cJSON_AddNumberToObject(item, "date", uniswap_v3_token_v3_day_data_dto->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // uniswap_v3_token_v3_day_data_dto->token
    if(uniswap_v3_token_v3_day_data_dto->token) {
    if(cJSON_AddStringToObject(item, "token", uniswap_v3_token_v3_day_data_dto->token) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->volume
    if(uniswap_v3_token_v3_day_data_dto->volume) {
    if(cJSON_AddStringToObject(item, "volume", uniswap_v3_token_v3_day_data_dto->volume) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->volume_usd
    if(uniswap_v3_token_v3_day_data_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", uniswap_v3_token_v3_day_data_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->untracked_volume_usd
    if(uniswap_v3_token_v3_day_data_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", uniswap_v3_token_v3_day_data_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->total_value_locked
    if(uniswap_v3_token_v3_day_data_dto->total_value_locked) {
    if(cJSON_AddStringToObject(item, "total_value_locked", uniswap_v3_token_v3_day_data_dto->total_value_locked) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->total_value_locked_usd
    if(uniswap_v3_token_v3_day_data_dto->total_value_locked_usd) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd", uniswap_v3_token_v3_day_data_dto->total_value_locked_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->price_usd
    if(uniswap_v3_token_v3_day_data_dto->price_usd) {
    if(cJSON_AddStringToObject(item, "price_usd", uniswap_v3_token_v3_day_data_dto->price_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->fees_usd
    if(uniswap_v3_token_v3_day_data_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", uniswap_v3_token_v3_day_data_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->open
    if(uniswap_v3_token_v3_day_data_dto->open) {
    if(cJSON_AddStringToObject(item, "open", uniswap_v3_token_v3_day_data_dto->open) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->high
    if(uniswap_v3_token_v3_day_data_dto->high) {
    if(cJSON_AddStringToObject(item, "high", uniswap_v3_token_v3_day_data_dto->high) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->low
    if(uniswap_v3_token_v3_day_data_dto->low) {
    if(cJSON_AddStringToObject(item, "low", uniswap_v3_token_v3_day_data_dto->low) == NULL) {
    goto fail; //String
    }
    }


    // uniswap_v3_token_v3_day_data_dto->close
    if(uniswap_v3_token_v3_day_data_dto->close) {
    if(cJSON_AddStringToObject(item, "close", uniswap_v3_token_v3_day_data_dto->close) == NULL) {
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

uniswap_v3_token_v3_day_data_dto_t *uniswap_v3_token_v3_day_data_dto_parseFromJSON(cJSON *uniswap_v3_token_v3_day_data_dtoJSON){

    uniswap_v3_token_v3_day_data_dto_t *uniswap_v3_token_v3_day_data_dto_local_var = NULL;

    // uniswap_v3_token_v3_day_data_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_token_v3_day_data_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // uniswap_v3_token_v3_day_data_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_token_v3_day_data_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_token_v3_day_data_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "date");
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // uniswap_v3_token_v3_day_data_dto->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "token");
    if (token) { 
    if(!cJSON_IsString(token) && !cJSON_IsNull(token))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "volume");
    if (volume) { 
    if(!cJSON_IsString(volume) && !cJSON_IsNull(volume))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd) && !cJSON_IsNull(volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd) && !cJSON_IsNull(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->total_value_locked
    cJSON *total_value_locked = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "total_value_locked");
    if (total_value_locked) { 
    if(!cJSON_IsString(total_value_locked) && !cJSON_IsNull(total_value_locked))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->total_value_locked_usd
    cJSON *total_value_locked_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "total_value_locked_usd");
    if (total_value_locked_usd) { 
    if(!cJSON_IsString(total_value_locked_usd) && !cJSON_IsNull(total_value_locked_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->price_usd
    cJSON *price_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "price_usd");
    if (price_usd) { 
    if(!cJSON_IsString(price_usd) && !cJSON_IsNull(price_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd) && !cJSON_IsNull(fees_usd))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->open
    cJSON *open = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "open");
    if (open) { 
    if(!cJSON_IsString(open) && !cJSON_IsNull(open))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->high
    cJSON *high = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "high");
    if (high) { 
    if(!cJSON_IsString(high) && !cJSON_IsNull(high))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->low
    cJSON *low = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "low");
    if (low) { 
    if(!cJSON_IsString(low) && !cJSON_IsNull(low))
    {
    goto end; //String
    }
    }

    // uniswap_v3_token_v3_day_data_dto->close
    cJSON *close = cJSON_GetObjectItemCaseSensitive(uniswap_v3_token_v3_day_data_dtoJSON, "close");
    if (close) { 
    if(!cJSON_IsString(close) && !cJSON_IsNull(close))
    {
    goto end; //String
    }
    }


    uniswap_v3_token_v3_day_data_dto_local_var = uniswap_v3_token_v3_day_data_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        date ? date->valuedouble : 0,
        token && !cJSON_IsNull(token) ? strdup(token->valuestring) : NULL,
        volume && !cJSON_IsNull(volume) ? strdup(volume->valuestring) : NULL,
        volume_usd && !cJSON_IsNull(volume_usd) ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd && !cJSON_IsNull(untracked_volume_usd) ? strdup(untracked_volume_usd->valuestring) : NULL,
        total_value_locked && !cJSON_IsNull(total_value_locked) ? strdup(total_value_locked->valuestring) : NULL,
        total_value_locked_usd && !cJSON_IsNull(total_value_locked_usd) ? strdup(total_value_locked_usd->valuestring) : NULL,
        price_usd && !cJSON_IsNull(price_usd) ? strdup(price_usd->valuestring) : NULL,
        fees_usd && !cJSON_IsNull(fees_usd) ? strdup(fees_usd->valuestring) : NULL,
        open && !cJSON_IsNull(open) ? strdup(open->valuestring) : NULL,
        high && !cJSON_IsNull(high) ? strdup(high->valuestring) : NULL,
        low && !cJSON_IsNull(low) ? strdup(low->valuestring) : NULL,
        close && !cJSON_IsNull(close) ? strdup(close->valuestring) : NULL
        );

    return uniswap_v3_token_v3_day_data_dto_local_var;
end:
    return NULL;

}
