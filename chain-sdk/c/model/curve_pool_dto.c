#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "curve_pool_dto.h"



curve_pool_dto_t *curve_pool_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *name,
    int is_meta,
    char *registry_address,
    char *swap_address,
    char *lp_token,
    char *coin_count,
    char *underlying_count,
    char *a,
    char *fee,
    char *admin_fee,
    char *owner,
    char *virtual_price,
    char *locked,
    char *added_at,
    char *added_at_block,
    char *added_at_transaction,
    char *removed_at,
    char *removed_at_block,
    char *removed_at_transaction,
    char *exchange_count,
    char *gauge_count,
    long vid,
    double evaluated_ask
    ) {
    curve_pool_dto_t *curve_pool_dto_local_var = malloc(sizeof(curve_pool_dto_t));
    if (!curve_pool_dto_local_var) {
        return NULL;
    }
    curve_pool_dto_local_var->entry_time = entry_time;
    curve_pool_dto_local_var->recv_time = recv_time;
    curve_pool_dto_local_var->block_number = block_number;
    curve_pool_dto_local_var->id = id;
    curve_pool_dto_local_var->name = name;
    curve_pool_dto_local_var->is_meta = is_meta;
    curve_pool_dto_local_var->registry_address = registry_address;
    curve_pool_dto_local_var->swap_address = swap_address;
    curve_pool_dto_local_var->lp_token = lp_token;
    curve_pool_dto_local_var->coin_count = coin_count;
    curve_pool_dto_local_var->underlying_count = underlying_count;
    curve_pool_dto_local_var->a = a;
    curve_pool_dto_local_var->fee = fee;
    curve_pool_dto_local_var->admin_fee = admin_fee;
    curve_pool_dto_local_var->owner = owner;
    curve_pool_dto_local_var->virtual_price = virtual_price;
    curve_pool_dto_local_var->locked = locked;
    curve_pool_dto_local_var->added_at = added_at;
    curve_pool_dto_local_var->added_at_block = added_at_block;
    curve_pool_dto_local_var->added_at_transaction = added_at_transaction;
    curve_pool_dto_local_var->removed_at = removed_at;
    curve_pool_dto_local_var->removed_at_block = removed_at_block;
    curve_pool_dto_local_var->removed_at_transaction = removed_at_transaction;
    curve_pool_dto_local_var->exchange_count = exchange_count;
    curve_pool_dto_local_var->gauge_count = gauge_count;
    curve_pool_dto_local_var->vid = vid;
    curve_pool_dto_local_var->evaluated_ask = evaluated_ask;

    return curve_pool_dto_local_var;
}


void curve_pool_dto_free(curve_pool_dto_t *curve_pool_dto) {
    if(NULL == curve_pool_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (curve_pool_dto->entry_time) {
        free(curve_pool_dto->entry_time);
        curve_pool_dto->entry_time = NULL;
    }
    if (curve_pool_dto->recv_time) {
        free(curve_pool_dto->recv_time);
        curve_pool_dto->recv_time = NULL;
    }
    if (curve_pool_dto->id) {
        free(curve_pool_dto->id);
        curve_pool_dto->id = NULL;
    }
    if (curve_pool_dto->name) {
        free(curve_pool_dto->name);
        curve_pool_dto->name = NULL;
    }
    if (curve_pool_dto->registry_address) {
        free(curve_pool_dto->registry_address);
        curve_pool_dto->registry_address = NULL;
    }
    if (curve_pool_dto->swap_address) {
        free(curve_pool_dto->swap_address);
        curve_pool_dto->swap_address = NULL;
    }
    if (curve_pool_dto->lp_token) {
        free(curve_pool_dto->lp_token);
        curve_pool_dto->lp_token = NULL;
    }
    if (curve_pool_dto->coin_count) {
        free(curve_pool_dto->coin_count);
        curve_pool_dto->coin_count = NULL;
    }
    if (curve_pool_dto->underlying_count) {
        free(curve_pool_dto->underlying_count);
        curve_pool_dto->underlying_count = NULL;
    }
    if (curve_pool_dto->a) {
        free(curve_pool_dto->a);
        curve_pool_dto->a = NULL;
    }
    if (curve_pool_dto->fee) {
        free(curve_pool_dto->fee);
        curve_pool_dto->fee = NULL;
    }
    if (curve_pool_dto->admin_fee) {
        free(curve_pool_dto->admin_fee);
        curve_pool_dto->admin_fee = NULL;
    }
    if (curve_pool_dto->owner) {
        free(curve_pool_dto->owner);
        curve_pool_dto->owner = NULL;
    }
    if (curve_pool_dto->virtual_price) {
        free(curve_pool_dto->virtual_price);
        curve_pool_dto->virtual_price = NULL;
    }
    if (curve_pool_dto->locked) {
        free(curve_pool_dto->locked);
        curve_pool_dto->locked = NULL;
    }
    if (curve_pool_dto->added_at) {
        free(curve_pool_dto->added_at);
        curve_pool_dto->added_at = NULL;
    }
    if (curve_pool_dto->added_at_block) {
        free(curve_pool_dto->added_at_block);
        curve_pool_dto->added_at_block = NULL;
    }
    if (curve_pool_dto->added_at_transaction) {
        free(curve_pool_dto->added_at_transaction);
        curve_pool_dto->added_at_transaction = NULL;
    }
    if (curve_pool_dto->removed_at) {
        free(curve_pool_dto->removed_at);
        curve_pool_dto->removed_at = NULL;
    }
    if (curve_pool_dto->removed_at_block) {
        free(curve_pool_dto->removed_at_block);
        curve_pool_dto->removed_at_block = NULL;
    }
    if (curve_pool_dto->removed_at_transaction) {
        free(curve_pool_dto->removed_at_transaction);
        curve_pool_dto->removed_at_transaction = NULL;
    }
    if (curve_pool_dto->exchange_count) {
        free(curve_pool_dto->exchange_count);
        curve_pool_dto->exchange_count = NULL;
    }
    if (curve_pool_dto->gauge_count) {
        free(curve_pool_dto->gauge_count);
        curve_pool_dto->gauge_count = NULL;
    }
    free(curve_pool_dto);
}

cJSON *curve_pool_dto_convertToJSON(curve_pool_dto_t *curve_pool_dto) {
    cJSON *item = cJSON_CreateObject();

    // curve_pool_dto->entry_time
    if(curve_pool_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", curve_pool_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_pool_dto->recv_time
    if(curve_pool_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", curve_pool_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_pool_dto->block_number
    if(curve_pool_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", curve_pool_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_pool_dto->id
    if(curve_pool_dto->id) {
    if(cJSON_AddStringToObject(item, "id", curve_pool_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->name
    if(curve_pool_dto->name) {
    if(cJSON_AddStringToObject(item, "name", curve_pool_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->is_meta
    if(curve_pool_dto->is_meta) {
    if(cJSON_AddBoolToObject(item, "is_meta", curve_pool_dto->is_meta) == NULL) {
    goto fail; //Bool
    }
    }


    // curve_pool_dto->registry_address
    if(curve_pool_dto->registry_address) {
    if(cJSON_AddStringToObject(item, "registry_address", curve_pool_dto->registry_address) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->swap_address
    if(curve_pool_dto->swap_address) {
    if(cJSON_AddStringToObject(item, "swap_address", curve_pool_dto->swap_address) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->lp_token
    if(curve_pool_dto->lp_token) {
    if(cJSON_AddStringToObject(item, "lp_token", curve_pool_dto->lp_token) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->coin_count
    if(curve_pool_dto->coin_count) {
    if(cJSON_AddStringToObject(item, "coin_count", curve_pool_dto->coin_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->underlying_count
    if(curve_pool_dto->underlying_count) {
    if(cJSON_AddStringToObject(item, "underlying_count", curve_pool_dto->underlying_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->a
    if(curve_pool_dto->a) {
    if(cJSON_AddStringToObject(item, "a", curve_pool_dto->a) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->fee
    if(curve_pool_dto->fee) {
    if(cJSON_AddStringToObject(item, "fee", curve_pool_dto->fee) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->admin_fee
    if(curve_pool_dto->admin_fee) {
    if(cJSON_AddStringToObject(item, "admin_fee", curve_pool_dto->admin_fee) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->owner
    if(curve_pool_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", curve_pool_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->virtual_price
    if(curve_pool_dto->virtual_price) {
    if(cJSON_AddStringToObject(item, "virtual_price", curve_pool_dto->virtual_price) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->locked
    if(curve_pool_dto->locked) {
    if(cJSON_AddStringToObject(item, "locked", curve_pool_dto->locked) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->added_at
    if(curve_pool_dto->added_at) {
    if(cJSON_AddStringToObject(item, "added_at", curve_pool_dto->added_at) == NULL) {
    goto fail; //Date-Time
    }
    }


    // curve_pool_dto->added_at_block
    if(curve_pool_dto->added_at_block) {
    if(cJSON_AddStringToObject(item, "added_at_block", curve_pool_dto->added_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->added_at_transaction
    if(curve_pool_dto->added_at_transaction) {
    if(cJSON_AddStringToObject(item, "added_at_transaction", curve_pool_dto->added_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->removed_at
    if(curve_pool_dto->removed_at) {
    if(cJSON_AddStringToObject(item, "removed_at", curve_pool_dto->removed_at) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->removed_at_block
    if(curve_pool_dto->removed_at_block) {
    if(cJSON_AddStringToObject(item, "removed_at_block", curve_pool_dto->removed_at_block) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->removed_at_transaction
    if(curve_pool_dto->removed_at_transaction) {
    if(cJSON_AddStringToObject(item, "removed_at_transaction", curve_pool_dto->removed_at_transaction) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->exchange_count
    if(curve_pool_dto->exchange_count) {
    if(cJSON_AddStringToObject(item, "exchange_count", curve_pool_dto->exchange_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->gauge_count
    if(curve_pool_dto->gauge_count) {
    if(cJSON_AddStringToObject(item, "gauge_count", curve_pool_dto->gauge_count) == NULL) {
    goto fail; //String
    }
    }


    // curve_pool_dto->vid
    if(curve_pool_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", curve_pool_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // curve_pool_dto->evaluated_ask
    if(curve_pool_dto->evaluated_ask) {
    if(cJSON_AddNumberToObject(item, "evaluated_ask", curve_pool_dto->evaluated_ask) == NULL) {
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

curve_pool_dto_t *curve_pool_dto_parseFromJSON(cJSON *curve_pool_dtoJSON){

    curve_pool_dto_t *curve_pool_dto_local_var = NULL;

    // curve_pool_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time) && !cJSON_IsNull(entry_time))
    {
    goto end; //DateTime
    }
    }

    // curve_pool_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time) && !cJSON_IsNull(recv_time))
    {
    goto end; //DateTime
    }
    }

    // curve_pool_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // curve_pool_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->is_meta
    cJSON *is_meta = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "is_meta");
    if (is_meta) { 
    if(!cJSON_IsBool(is_meta))
    {
    goto end; //Bool
    }
    }

    // curve_pool_dto->registry_address
    cJSON *registry_address = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "registry_address");
    if (registry_address) { 
    if(!cJSON_IsString(registry_address) && !cJSON_IsNull(registry_address))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->swap_address
    cJSON *swap_address = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "swap_address");
    if (swap_address) { 
    if(!cJSON_IsString(swap_address) && !cJSON_IsNull(swap_address))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->lp_token
    cJSON *lp_token = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "lp_token");
    if (lp_token) { 
    if(!cJSON_IsString(lp_token) && !cJSON_IsNull(lp_token))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->coin_count
    cJSON *coin_count = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "coin_count");
    if (coin_count) { 
    if(!cJSON_IsString(coin_count) && !cJSON_IsNull(coin_count))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->underlying_count
    cJSON *underlying_count = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "underlying_count");
    if (underlying_count) { 
    if(!cJSON_IsString(underlying_count) && !cJSON_IsNull(underlying_count))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->a
    cJSON *a = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "a");
    if (a) { 
    if(!cJSON_IsString(a) && !cJSON_IsNull(a))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->fee
    cJSON *fee = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "fee");
    if (fee) { 
    if(!cJSON_IsString(fee) && !cJSON_IsNull(fee))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->admin_fee
    cJSON *admin_fee = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "admin_fee");
    if (admin_fee) { 
    if(!cJSON_IsString(admin_fee) && !cJSON_IsNull(admin_fee))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner) && !cJSON_IsNull(owner))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->virtual_price
    cJSON *virtual_price = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "virtual_price");
    if (virtual_price) { 
    if(!cJSON_IsString(virtual_price) && !cJSON_IsNull(virtual_price))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->locked
    cJSON *locked = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "locked");
    if (locked) { 
    if(!cJSON_IsString(locked) && !cJSON_IsNull(locked))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->added_at
    cJSON *added_at = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "added_at");
    if (added_at) { 
    if(!cJSON_IsString(added_at) && !cJSON_IsNull(added_at))
    {
    goto end; //DateTime
    }
    }

    // curve_pool_dto->added_at_block
    cJSON *added_at_block = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "added_at_block");
    if (added_at_block) { 
    if(!cJSON_IsString(added_at_block) && !cJSON_IsNull(added_at_block))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->added_at_transaction
    cJSON *added_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "added_at_transaction");
    if (added_at_transaction) { 
    if(!cJSON_IsString(added_at_transaction) && !cJSON_IsNull(added_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->removed_at
    cJSON *removed_at = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "removed_at");
    if (removed_at) { 
    if(!cJSON_IsString(removed_at) && !cJSON_IsNull(removed_at))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->removed_at_block
    cJSON *removed_at_block = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "removed_at_block");
    if (removed_at_block) { 
    if(!cJSON_IsString(removed_at_block) && !cJSON_IsNull(removed_at_block))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->removed_at_transaction
    cJSON *removed_at_transaction = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "removed_at_transaction");
    if (removed_at_transaction) { 
    if(!cJSON_IsString(removed_at_transaction) && !cJSON_IsNull(removed_at_transaction))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->exchange_count
    cJSON *exchange_count = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "exchange_count");
    if (exchange_count) { 
    if(!cJSON_IsString(exchange_count) && !cJSON_IsNull(exchange_count))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->gauge_count
    cJSON *gauge_count = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "gauge_count");
    if (gauge_count) { 
    if(!cJSON_IsString(gauge_count) && !cJSON_IsNull(gauge_count))
    {
    goto end; //String
    }
    }

    // curve_pool_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // curve_pool_dto->evaluated_ask
    cJSON *evaluated_ask = cJSON_GetObjectItemCaseSensitive(curve_pool_dtoJSON, "evaluated_ask");
    if (evaluated_ask) { 
    if(!cJSON_IsNumber(evaluated_ask))
    {
    goto end; //Numeric
    }
    }


    curve_pool_dto_local_var = curve_pool_dto_create (
        entry_time && !cJSON_IsNull(entry_time) ? strdup(entry_time->valuestring) : NULL,
        recv_time && !cJSON_IsNull(recv_time) ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        is_meta ? is_meta->valueint : 0,
        registry_address && !cJSON_IsNull(registry_address) ? strdup(registry_address->valuestring) : NULL,
        swap_address && !cJSON_IsNull(swap_address) ? strdup(swap_address->valuestring) : NULL,
        lp_token && !cJSON_IsNull(lp_token) ? strdup(lp_token->valuestring) : NULL,
        coin_count && !cJSON_IsNull(coin_count) ? strdup(coin_count->valuestring) : NULL,
        underlying_count && !cJSON_IsNull(underlying_count) ? strdup(underlying_count->valuestring) : NULL,
        a && !cJSON_IsNull(a) ? strdup(a->valuestring) : NULL,
        fee && !cJSON_IsNull(fee) ? strdup(fee->valuestring) : NULL,
        admin_fee && !cJSON_IsNull(admin_fee) ? strdup(admin_fee->valuestring) : NULL,
        owner && !cJSON_IsNull(owner) ? strdup(owner->valuestring) : NULL,
        virtual_price && !cJSON_IsNull(virtual_price) ? strdup(virtual_price->valuestring) : NULL,
        locked && !cJSON_IsNull(locked) ? strdup(locked->valuestring) : NULL,
        added_at && !cJSON_IsNull(added_at) ? strdup(added_at->valuestring) : NULL,
        added_at_block && !cJSON_IsNull(added_at_block) ? strdup(added_at_block->valuestring) : NULL,
        added_at_transaction && !cJSON_IsNull(added_at_transaction) ? strdup(added_at_transaction->valuestring) : NULL,
        removed_at && !cJSON_IsNull(removed_at) ? strdup(removed_at->valuestring) : NULL,
        removed_at_block && !cJSON_IsNull(removed_at_block) ? strdup(removed_at_block->valuestring) : NULL,
        removed_at_transaction && !cJSON_IsNull(removed_at_transaction) ? strdup(removed_at_transaction->valuestring) : NULL,
        exchange_count && !cJSON_IsNull(exchange_count) ? strdup(exchange_count->valuestring) : NULL,
        gauge_count && !cJSON_IsNull(gauge_count) ? strdup(gauge_count->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        evaluated_ask ? evaluated_ask->valuedouble : 0
        );

    return curve_pool_dto_local_var;
end:
    return NULL;

}
