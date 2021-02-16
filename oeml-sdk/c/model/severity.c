#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "severity.h"


char* severity_severity_ToString(oeml___rest_api_severity__e severity) {
    char *severityArray[] =  { "NULL", "INFO", "WARNING", "ERROR" };
    return severityArray[severity];
}

oeml___rest_api_severity__e severity_severity_FromString(char* severity) {
    int stringToReturn = 0;
    char *severityArray[] =  { "NULL", "INFO", "WARNING", "ERROR" };
    size_t sizeofArray = sizeof(severityArray) / sizeof(severityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(severity, severityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *severity_severity_convertToJSON(oeml___rest_api_severity__e severity) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "severity", severity_severity_ToString(severity)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

oeml___rest_api_severity__e severity_severity_parseFromJSON(cJSON *severityJSON) {
    oeml___rest_api_severity__e *severity = NULL;
    oeml___rest_api_severity__e severityVariable;
    cJSON *severityVar = cJSON_GetObjectItemCaseSensitive(severityJSON, "severity");
    if(!cJSON_IsString(severityVar) || (severityVar->valuestring == NULL)){
        goto end;
    }
    severityVariable = severity_severity_FromString(severityVar->valuestring);
    return severityVariable;
end:
    return 0;
}
