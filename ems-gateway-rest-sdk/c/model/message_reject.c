#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "message_reject.h"


char* reject_reasonmessage_reject_ToString(ems___rest_api_message_reject__e reject_reason) {
    char* reject_reasonArray[] =  { "NULL", "OTHER", "EXCHANGE_UNREACHABLE", "EXCHANGE_RESPONSE_TIMEOUT", "ORDER_ID_NOT_FOUND", "INVALID_TYPE", "METHOD_NOT_SUPPORTED", "JSON_ERROR" };
	return reject_reasonArray[reject_reason];
}

ems___rest_api_message_reject__e reject_reasonmessage_reject_FromString(char* reject_reason){
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

message_reject_t *message_reject_create(
    char *type,
    reject_reason_t *reject_reason,
    char *exchange_id,
    char *message,
    char *rejected_message
    ) {
    message_reject_t *message_reject_local_var = malloc(sizeof(message_reject_t));
    if (!message_reject_local_var) {
        return NULL;
    }
    message_reject_local_var->type = type;
    message_reject_local_var->reject_reason = reject_reason;
    message_reject_local_var->exchange_id = exchange_id;
    message_reject_local_var->message = message;
    message_reject_local_var->rejected_message = rejected_message;

    return message_reject_local_var;
}


void message_reject_free(message_reject_t *message_reject) {
    if(NULL == message_reject){
        return ;
    }
    listEntry_t *listEntry;
    if (message_reject->type) {
        free(message_reject->type);
        message_reject->type = NULL;
    }
    if (message_reject->reject_reason) {
        reject_reason_free(message_reject->reject_reason);
        message_reject->reject_reason = NULL;
    }
    if (message_reject->exchange_id) {
        free(message_reject->exchange_id);
        message_reject->exchange_id = NULL;
    }
    if (message_reject->message) {
        free(message_reject->message);
        message_reject->message = NULL;
    }
    if (message_reject->rejected_message) {
        free(message_reject->rejected_message);
        message_reject->rejected_message = NULL;
    }
    free(message_reject);
}

cJSON *message_reject_convertToJSON(message_reject_t *message_reject) {
    cJSON *item = cJSON_CreateObject();

    // message_reject->type
    if(message_reject->type) {
    if(cJSON_AddStringToObject(item, "type", message_reject->type) == NULL) {
    goto fail; //String
    }
    }


    // message_reject->reject_reason
    if(message_reject->reject_reason != ems___rest_api_message_reject__NULL) {
    cJSON *reject_reason_local_JSON = reject_reason_convertToJSON(message_reject->reject_reason);
    if(reject_reason_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "reject_reason", reject_reason_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }


    // message_reject->exchange_id
    if(message_reject->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", message_reject->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // message_reject->message
    if(message_reject->message) {
    if(cJSON_AddStringToObject(item, "message", message_reject->message) == NULL) {
    goto fail; //String
    }
    }


    // message_reject->rejected_message
    if(message_reject->rejected_message) {
    if(cJSON_AddStringToObject(item, "rejected_message", message_reject->rejected_message) == NULL) {
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

message_reject_t *message_reject_parseFromJSON(cJSON *message_rejectJSON){

    message_reject_t *message_reject_local_var = NULL;

    // define the local variable for message_reject->reject_reason
    reject_reason_t *reject_reason_local_nonprim = NULL;

    // message_reject->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(message_rejectJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // message_reject->reject_reason
    cJSON *reject_reason = cJSON_GetObjectItemCaseSensitive(message_rejectJSON, "reject_reason");
    if (reject_reason) { 
    reject_reason_local_nonprim = reject_reason_parseFromJSON(reject_reason); //custom
    }

    // message_reject->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(message_rejectJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // message_reject->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(message_rejectJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message))
    {
    goto end; //String
    }
    }

    // message_reject->rejected_message
    cJSON *rejected_message = cJSON_GetObjectItemCaseSensitive(message_rejectJSON, "rejected_message");
    if (rejected_message) { 
    if(!cJSON_IsString(rejected_message))
    {
    goto end; //String
    }
    }


    message_reject_local_var = message_reject_create (
        type ? strdup(type->valuestring) : NULL,
        reject_reason ? reject_reason_local_nonprim : NULL,
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        message ? strdup(message->valuestring) : NULL,
        rejected_message ? strdup(rejected_message->valuestring) : NULL
        );

    return message_reject_local_var;
end:
    if (reject_reason_local_nonprim) {
        reject_reason_free(reject_reason_local_nonprim);
        reject_reason_local_nonprim = NULL;
    }
    return NULL;

}
