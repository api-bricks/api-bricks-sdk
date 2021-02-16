#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "message.h"


char* severitymessage_ToString(oeml___rest_api_message__e severity) {
    char* severityArray[] =  { "NULL", "INFO", "WARNING", "ERROR" };
	return severityArray[severity];
}

oeml___rest_api_message__e severitymessage_FromString(char* severity){
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

message_t *message_create(
    char *type,
    char *exchange_id,
    char *message
    ) {
    message_t *message_local_var = malloc(sizeof(message_t));
    if (!message_local_var) {
        return NULL;
    }
    message_local_var->type = type;
    message_local_var->severity = severity;
    message_local_var->exchange_id = exchange_id;
    message_local_var->message = message;

    return message_local_var;
}


void message_free(message_t *message) {
    if(NULL == message){
        return ;
    }
    listEntry_t *listEntry;
    if (message->type) {
        free(message->type);
        message->type = NULL;
    }
    if (message->exchange_id) {
        free(message->exchange_id);
        message->exchange_id = NULL;
    }
    if (message->message) {
        free(message->message);
        message->message = NULL;
    }
    free(message);
}

cJSON *message_convertToJSON(message_t *message) {
    cJSON *item = cJSON_CreateObject();

    // message->type
    if(message->type) { 
    if(cJSON_AddStringToObject(item, "type", message->type) == NULL) {
    goto fail; //String
    }
     } 


    // message->severity
    
    


    // message->exchange_id
    if(message->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", message->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // message->message
    if(message->message) { 
    if(cJSON_AddStringToObject(item, "message", message->message) == NULL) {
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

message_t *message_parseFromJSON(cJSON *messageJSON){

    message_t *message_local_var = NULL;

    // message->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(messageJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // message->severity
    cJSON *severity = cJSON_GetObjectItemCaseSensitive(messageJSON, "severity");
    }

    // message->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(messageJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // message->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(messageJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message))
    {
    goto end; //String
    }
    }


    message_local_var = message_create (
        type ? strdup(type->valuestring) : NULL,
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        message ? strdup(message->valuestring) : NULL
        );

    return message_local_var;
end:
    return NULL;

}
