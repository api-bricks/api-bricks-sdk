#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "time_in_force.h"


char* time_in_force_time_in_force_ToString(ems___rest_api_time_in_force__e time_in_force) {
    char *time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL" };
    return time_in_forceArray[time_in_force];
}

ems___rest_api_time_in_force__e time_in_force_time_in_force_FromString(char* time_in_force) {
    int stringToReturn = 0;
    char *time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL" };
    size_t sizeofArray = sizeof(time_in_forceArray) / sizeof(time_in_forceArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(time_in_force, time_in_forceArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *time_in_force_time_in_force_convertToJSON(ems___rest_api_time_in_force__e time_in_force) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "time_in_force", time_in_force_time_in_force_ToString(time_in_force)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

ems___rest_api_time_in_force__e time_in_force_time_in_force_parseFromJSON(cJSON *time_in_forceJSON) {
    ems___rest_api_time_in_force__e *time_in_force = NULL;
    ems___rest_api_time_in_force__e time_in_forceVariable;
    cJSON *time_in_forceVar = cJSON_GetObjectItemCaseSensitive(time_in_forceJSON, "time_in_force");
    if(!cJSON_IsString(time_in_forceVar) || (time_in_forceVar->valuestring == NULL)){
        goto end;
    }
    time_in_forceVariable = time_in_force_time_in_force_FromString(time_in_forceVar->valuestring);
    return time_in_forceVariable;
end:
    return 0;
}
