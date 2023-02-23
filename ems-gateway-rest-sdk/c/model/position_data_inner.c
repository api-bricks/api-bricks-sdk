#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "position_data_inner.h"


char* sideposition_data_inner_ToString(ems___rest_api_position_data_inner__e side) {
    char* sideArray[] =  { "NULL", "BUY", "SELL" };
	return sideArray[side];
}

ems___rest_api_position_data_inner__e sideposition_data_inner_FromString(char* side){
    int stringToReturn = 0;
    char *sideArray[] =  { "NULL", "BUY", "SELL" };
    size_t sizeofArray = sizeof(sideArray) / sizeof(sideArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(side, sideArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

position_data_inner_t *position_data_inner_create(
    char *symbol_id_exchange,
    char *symbol_id_coinapi,
    double avg_entry_price,
    double quantity,
    ord_side_t *side,
    double unrealized_pnl,
    double leverage,
    int cross_margin,
    double liquidation_price,
    object_t *raw_data
    ) {
    position_data_inner_t *position_data_inner_local_var = malloc(sizeof(position_data_inner_t));
    if (!position_data_inner_local_var) {
        return NULL;
    }
    position_data_inner_local_var->symbol_id_exchange = symbol_id_exchange;
    position_data_inner_local_var->symbol_id_coinapi = symbol_id_coinapi;
    position_data_inner_local_var->avg_entry_price = avg_entry_price;
    position_data_inner_local_var->quantity = quantity;
    position_data_inner_local_var->side = side;
    position_data_inner_local_var->unrealized_pnl = unrealized_pnl;
    position_data_inner_local_var->leverage = leverage;
    position_data_inner_local_var->cross_margin = cross_margin;
    position_data_inner_local_var->liquidation_price = liquidation_price;
    position_data_inner_local_var->raw_data = raw_data;

    return position_data_inner_local_var;
}


void position_data_inner_free(position_data_inner_t *position_data_inner) {
    if(NULL == position_data_inner){
        return ;
    }
    listEntry_t *listEntry;
    if (position_data_inner->symbol_id_exchange) {
        free(position_data_inner->symbol_id_exchange);
        position_data_inner->symbol_id_exchange = NULL;
    }
    if (position_data_inner->symbol_id_coinapi) {
        free(position_data_inner->symbol_id_coinapi);
        position_data_inner->symbol_id_coinapi = NULL;
    }
    if (position_data_inner->side) {
        ord_side_free(position_data_inner->side);
        position_data_inner->side = NULL;
    }
    if (position_data_inner->raw_data) {
        object_free(position_data_inner->raw_data);
        position_data_inner->raw_data = NULL;
    }
    free(position_data_inner);
}

cJSON *position_data_inner_convertToJSON(position_data_inner_t *position_data_inner) {
    cJSON *item = cJSON_CreateObject();

    // position_data_inner->symbol_id_exchange
    if(position_data_inner->symbol_id_exchange) {
    if(cJSON_AddStringToObject(item, "symbol_id_exchange", position_data_inner->symbol_id_exchange) == NULL) {
    goto fail; //String
    }
    }


    // position_data_inner->symbol_id_coinapi
    if(position_data_inner->symbol_id_coinapi) {
    if(cJSON_AddStringToObject(item, "symbol_id_coinapi", position_data_inner->symbol_id_coinapi) == NULL) {
    goto fail; //String
    }
    }


    // position_data_inner->avg_entry_price
    if(position_data_inner->avg_entry_price) {
    if(cJSON_AddNumberToObject(item, "avg_entry_price", position_data_inner->avg_entry_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // position_data_inner->quantity
    if(position_data_inner->quantity) {
    if(cJSON_AddNumberToObject(item, "quantity", position_data_inner->quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // position_data_inner->side
    if(position_data_inner->side != ems___rest_api_position_data_inner__NULL) {
    cJSON *side_local_JSON = ord_side_convertToJSON(position_data_inner->side);
    if(side_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "side", side_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }


    // position_data_inner->unrealized_pnl
    if(position_data_inner->unrealized_pnl) {
    if(cJSON_AddNumberToObject(item, "unrealized_pnl", position_data_inner->unrealized_pnl) == NULL) {
    goto fail; //Numeric
    }
    }


    // position_data_inner->leverage
    if(position_data_inner->leverage) {
    if(cJSON_AddNumberToObject(item, "leverage", position_data_inner->leverage) == NULL) {
    goto fail; //Numeric
    }
    }


    // position_data_inner->cross_margin
    if(position_data_inner->cross_margin) {
    if(cJSON_AddBoolToObject(item, "cross_margin", position_data_inner->cross_margin) == NULL) {
    goto fail; //Bool
    }
    }


    // position_data_inner->liquidation_price
    if(position_data_inner->liquidation_price) {
    if(cJSON_AddNumberToObject(item, "liquidation_price", position_data_inner->liquidation_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // position_data_inner->raw_data
    if(position_data_inner->raw_data) {
    cJSON *raw_data_object = object_convertToJSON(position_data_inner->raw_data);
    if(raw_data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "raw_data", raw_data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

position_data_inner_t *position_data_inner_parseFromJSON(cJSON *position_data_innerJSON){

    position_data_inner_t *position_data_inner_local_var = NULL;

    // define the local variable for position_data_inner->side
    ord_side_t *side_local_nonprim = NULL;

    // position_data_inner->symbol_id_exchange
    cJSON *symbol_id_exchange = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "symbol_id_exchange");
    if (symbol_id_exchange) { 
    if(!cJSON_IsString(symbol_id_exchange))
    {
    goto end; //String
    }
    }

    // position_data_inner->symbol_id_coinapi
    cJSON *symbol_id_coinapi = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "symbol_id_coinapi");
    if (symbol_id_coinapi) { 
    if(!cJSON_IsString(symbol_id_coinapi))
    {
    goto end; //String
    }
    }

    // position_data_inner->avg_entry_price
    cJSON *avg_entry_price = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "avg_entry_price");
    if (avg_entry_price) { 
    if(!cJSON_IsNumber(avg_entry_price))
    {
    goto end; //Numeric
    }
    }

    // position_data_inner->quantity
    cJSON *quantity = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "quantity");
    if (quantity) { 
    if(!cJSON_IsNumber(quantity))
    {
    goto end; //Numeric
    }
    }

    // position_data_inner->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "side");
    if (side) { 
    side_local_nonprim = ord_side_parseFromJSON(side); //custom
    }

    // position_data_inner->unrealized_pnl
    cJSON *unrealized_pnl = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "unrealized_pnl");
    if (unrealized_pnl) { 
    if(!cJSON_IsNumber(unrealized_pnl))
    {
    goto end; //Numeric
    }
    }

    // position_data_inner->leverage
    cJSON *leverage = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "leverage");
    if (leverage) { 
    if(!cJSON_IsNumber(leverage))
    {
    goto end; //Numeric
    }
    }

    // position_data_inner->cross_margin
    cJSON *cross_margin = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "cross_margin");
    if (cross_margin) { 
    if(!cJSON_IsBool(cross_margin))
    {
    goto end; //Bool
    }
    }

    // position_data_inner->liquidation_price
    cJSON *liquidation_price = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "liquidation_price");
    if (liquidation_price) { 
    if(!cJSON_IsNumber(liquidation_price))
    {
    goto end; //Numeric
    }
    }

    // position_data_inner->raw_data
    cJSON *raw_data = cJSON_GetObjectItemCaseSensitive(position_data_innerJSON, "raw_data");
    object_t *raw_data_local_object = NULL;
    if (raw_data) { 
    raw_data_local_object = object_parseFromJSON(raw_data); //object
    }


    position_data_inner_local_var = position_data_inner_create (
        symbol_id_exchange ? strdup(symbol_id_exchange->valuestring) : NULL,
        symbol_id_coinapi ? strdup(symbol_id_coinapi->valuestring) : NULL,
        avg_entry_price ? avg_entry_price->valuedouble : 0,
        quantity ? quantity->valuedouble : 0,
        side ? side_local_nonprim : NULL,
        unrealized_pnl ? unrealized_pnl->valuedouble : 0,
        leverage ? leverage->valuedouble : 0,
        cross_margin ? cross_margin->valueint : 0,
        liquidation_price ? liquidation_price->valuedouble : 0,
        raw_data ? raw_data_local_object : NULL
        );

    return position_data_inner_local_var;
end:
    if (side_local_nonprim) {
        ord_side_free(side_local_nonprim);
        side_local_nonprim = NULL;
    }
    return NULL;

}
