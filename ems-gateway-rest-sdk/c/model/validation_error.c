#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "validation_error.h"



validation_error_t *validation_error_create(
    char *type,
    char *title,
    double status,
    char *trace_id,
    char *errors
    ) {
    validation_error_t *validation_error_local_var = malloc(sizeof(validation_error_t));
    if (!validation_error_local_var) {
        return NULL;
    }
    validation_error_local_var->type = type;
    validation_error_local_var->title = title;
    validation_error_local_var->status = status;
    validation_error_local_var->trace_id = trace_id;
    validation_error_local_var->errors = errors;

    return validation_error_local_var;
}


void validation_error_free(validation_error_t *validation_error) {
    if(NULL == validation_error){
        return ;
    }
    listEntry_t *listEntry;
    if (validation_error->type) {
        free(validation_error->type);
        validation_error->type = NULL;
    }
    if (validation_error->title) {
        free(validation_error->title);
        validation_error->title = NULL;
    }
    if (validation_error->trace_id) {
        free(validation_error->trace_id);
        validation_error->trace_id = NULL;
    }
    if (validation_error->errors) {
        free(validation_error->errors);
        validation_error->errors = NULL;
    }
    free(validation_error);
}

cJSON *validation_error_convertToJSON(validation_error_t *validation_error) {
    cJSON *item = cJSON_CreateObject();

    // validation_error->type
    if(validation_error->type) {
    if(cJSON_AddStringToObject(item, "type", validation_error->type) == NULL) {
    goto fail; //String
    }
    }


    // validation_error->title
    if(validation_error->title) {
    if(cJSON_AddStringToObject(item, "title", validation_error->title) == NULL) {
    goto fail; //String
    }
    }


    // validation_error->status
    if(validation_error->status) {
    if(cJSON_AddNumberToObject(item, "status", validation_error->status) == NULL) {
    goto fail; //Numeric
    }
    }


    // validation_error->trace_id
    if(validation_error->trace_id) {
    if(cJSON_AddStringToObject(item, "traceId", validation_error->trace_id) == NULL) {
    goto fail; //String
    }
    }


    // validation_error->errors
    if(validation_error->errors) {
    if(cJSON_AddStringToObject(item, "errors", validation_error->errors) == NULL) {
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

validation_error_t *validation_error_parseFromJSON(cJSON *validation_errorJSON){

    validation_error_t *validation_error_local_var = NULL;

    // validation_error->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(validation_errorJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // validation_error->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(validation_errorJSON, "title");
    if (title) { 
    if(!cJSON_IsString(title))
    {
    goto end; //String
    }
    }

    // validation_error->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(validation_errorJSON, "status");
    if (status) { 
    if(!cJSON_IsNumber(status))
    {
    goto end; //Numeric
    }
    }

    // validation_error->trace_id
    cJSON *trace_id = cJSON_GetObjectItemCaseSensitive(validation_errorJSON, "traceId");
    if (trace_id) { 
    if(!cJSON_IsString(trace_id))
    {
    goto end; //String
    }
    }

    // validation_error->errors
    cJSON *errors = cJSON_GetObjectItemCaseSensitive(validation_errorJSON, "errors");
    if (errors) { 
    if(!cJSON_IsString(errors))
    {
    goto end; //String
    }
    }


    validation_error_local_var = validation_error_create (
        type ? strdup(type->valuestring) : NULL,
        title ? strdup(title->valuestring) : NULL,
        status ? status->valuedouble : 0,
        trace_id ? strdup(trace_id->valuestring) : NULL,
        errors ? strdup(errors->valuestring) : NULL
        );

    return validation_error_local_var;
end:
    return NULL;

}
