#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "reject_reason.h"


char* reject_reason_reject_reason_ToString(ems___rest_api_reject_reason__e reject_reason) {
    char *reject_reasonArray[] =  { "NULL", "OTHER", "EXCHANGE_UNREACHABLE", "EXCHANGE_RESPONSE_TIMEOUT", "ORDER_ID_NOT_FOUND", "INVALID_TYPE", "METHOD_NOT_SUPPORTED", "JSON_ERROR" };
    return reject_reasonArray[reject_reason];
}

ems___rest_api_reject_reason__e reject_reason_reject_reason_FromString(char* reject_reason) {
    int stringToReturn = 0;
    char *reject_reasonArray[] =  { "NULL", "OTHER", "EXCHANGE_UNREACHABLE", "EXCHANGE_RESPONSE_TIMEOUT", "ORDER_ID_NOT_FOUND", "INVALID_TYPE", "METHOD_NOT_SUPPORTED", "JSON_ERROR" };
    size_t sizeofArray = sizeof(reject_reasonArray) / sizeof(reject_reasonArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(reject_reason, reject_reasonArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *reject_reason_reject_reason_convertToJSON(ems___rest_api_reject_reason__e reject_reason) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "reject_reason", reject_reason_reject_reason_ToString(reject_reason)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

ems___rest_api_reject_reason__e reject_reason_reject_reason_parseFromJSON(cJSON *reject_reasonJSON) {
    ems___rest_api_reject_reason__e *reject_reason = NULL;
    ems___rest_api_reject_reason__e reject_reasonVariable;
    cJSON *reject_reasonVar = cJSON_GetObjectItemCaseSensitive(reject_reasonJSON, "reject_reason");
    if(!cJSON_IsString(reject_reasonVar) || (reject_reasonVar->valuestring == NULL)){
        goto end;
    }
    reject_reasonVariable = reject_reason_reject_reason_FromString(reject_reasonVar->valuestring);
    return reject_reasonVariable;
end:
    return 0;
}
