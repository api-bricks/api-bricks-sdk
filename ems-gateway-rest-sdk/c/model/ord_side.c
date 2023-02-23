#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ord_side.h"


char* ord_side_ord_side_ToString(ems___rest_api_ord_side__e ord_side) {
    char *ord_sideArray[] =  { "NULL", "BUY", "SELL" };
    return ord_sideArray[ord_side];
}

ems___rest_api_ord_side__e ord_side_ord_side_FromString(char* ord_side) {
    int stringToReturn = 0;
    char *ord_sideArray[] =  { "NULL", "BUY", "SELL" };
    size_t sizeofArray = sizeof(ord_sideArray) / sizeof(ord_sideArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(ord_side, ord_sideArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *ord_side_ord_side_convertToJSON(ems___rest_api_ord_side__e ord_side) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "ord_side", ord_side_ord_side_ToString(ord_side)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

ems___rest_api_ord_side__e ord_side_ord_side_parseFromJSON(cJSON *ord_sideJSON) {
    ems___rest_api_ord_side__e *ord_side = NULL;
    ems___rest_api_ord_side__e ord_sideVariable;
    cJSON *ord_sideVar = cJSON_GetObjectItemCaseSensitive(ord_sideJSON, "ord_side");
    if(!cJSON_IsString(ord_sideVar) || (ord_sideVar->valuestring == NULL)){
        goto end;
    }
    ord_sideVariable = ord_side_ord_side_FromString(ord_sideVar->valuestring);
    return ord_sideVariable;
end:
    return 0;
}
