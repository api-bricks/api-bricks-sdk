#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "fills.h"



fills_t *fills_create(
    double price,
    double amount
    ) {
    fills_t *fills_local_var = malloc(sizeof(fills_t));
    if (!fills_local_var) {
        return NULL;
    }
    fills_local_var->time = time;
    fills_local_var->price = price;
    fills_local_var->amount = amount;

    return fills_local_var;
}


void fills_free(fills_t *fills) {
    if(NULL == fills){
        return ;
    }
    listEntry_t *listEntry;
    free(fills);
}

cJSON *fills_convertToJSON(fills_t *fills) {
    cJSON *item = cJSON_CreateObject();

    // fills->time
    if(fills->time) { 
     } 


    // fills->price
    if(fills->price) { 
    if(cJSON_AddNumberToObject(item, "price", fills->price) == NULL) {
    goto fail; //Numeric
    }
     } 


    // fills->amount
    if(fills->amount) { 
    if(cJSON_AddNumberToObject(item, "amount", fills->amount) == NULL) {
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

fills_t *fills_parseFromJSON(cJSON *fillsJSON){

    fills_t *fills_local_var = NULL;

    // fills->time
    cJSON *time = cJSON_GetObjectItemCaseSensitive(fillsJSON, "time");
    }

    // fills->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(fillsJSON, "price");
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // fills->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(fillsJSON, "amount");
    if (amount) { 
    if(!cJSON_IsNumber(amount))
    {
    goto end; //Numeric
    }
    }


    fills_local_var = fills_create (
        price ? price->valuedouble : 0,
        amount ? amount->valuedouble : 0
        );

    return fills_local_var;
end:
    return NULL;

}
