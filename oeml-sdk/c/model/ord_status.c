#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ord_status.h"


char* ord_status_ord_status_ToString(oeml___rest_api_ord_status__e ord_status) {
    char *ord_statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
    return ord_statusArray[ord_status];
}

oeml___rest_api_ord_status__e ord_status_ord_status_FromString(char* ord_status) {
    int stringToReturn = 0;
    char *ord_statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
    size_t sizeofArray = sizeof(ord_statusArray) / sizeof(ord_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(ord_status, ord_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *ord_status_ord_status_convertToJSON(oeml___rest_api_ord_status__e ord_status) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "ord_status", ord_status_ord_status_ToString(ord_status)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

oeml___rest_api_ord_status__e ord_status_ord_status_parseFromJSON(cJSON *ord_statusJSON) {
    oeml___rest_api_ord_status__e *ord_status = NULL;
    oeml___rest_api_ord_status__e ord_statusVariable;
    cJSON *ord_statusVar = cJSON_GetObjectItemCaseSensitive(ord_statusJSON, "ord_status");
    if(!cJSON_IsString(ord_statusVar) || (ord_statusVar->valuestring == NULL)){
        goto end;
    }
    ord_statusVariable = ord_status_ord_status_FromString(ord_statusVar->valuestring);
    return ord_statusVariable;
end:
    return 0;
}
