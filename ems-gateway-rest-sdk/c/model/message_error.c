#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "message_error.h"



message_error_t *message_error_create(
    char *message
    ) {
    message_error_t *message_error_local_var = malloc(sizeof(message_error_t));
    if (!message_error_local_var) {
        return NULL;
    }
    message_error_local_var->message = message;

    return message_error_local_var;
}


void message_error_free(message_error_t *message_error) {
    if(NULL == message_error){
        return ;
    }
    listEntry_t *listEntry;
    if (message_error->message) {
        free(message_error->message);
        message_error->message = NULL;
    }
    free(message_error);
}

cJSON *message_error_convertToJSON(message_error_t *message_error) {
    cJSON *item = cJSON_CreateObject();

    // message_error->message
    if(message_error->message) {
    if(cJSON_AddStringToObject(item, "message", message_error->message) == NULL) {
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

message_error_t *message_error_parseFromJSON(cJSON *message_errorJSON){

    message_error_t *message_error_local_var = NULL;

    // message_error->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(message_errorJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message))
    {
    goto end; //String
    }
    }


    message_error_local_var = message_error_create (
        message ? strdup(message->valuestring) : NULL
        );

    return message_error_local_var;
end:
    return NULL;

}
