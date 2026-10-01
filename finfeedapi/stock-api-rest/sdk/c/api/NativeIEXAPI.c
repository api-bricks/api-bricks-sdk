#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "NativeIEXAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Get Admin Messages
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/native/iex/admin/messages/{symbol}");

    if(!symbol)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol = strlen(symbol)+3 + sizeof("{ symbol }") - 1;
    if(symbol == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol = malloc(sizeOfPathParams_symbol);
    sprintf(localVarToReplace_symbol, "{%s}", "symbol");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol, symbol);



    // query parameters
    char *keyQuery_date = NULL;
    char valueQuery_date ;
    keyValuePair_t *keyPairQuery_date = 0;
    if (date)
    {
        keyQuery_date = strdup("date");
        valueQuery_date = (date);
        keyPairQuery_date = keyValuePair_create(keyQuery_date, &valueQuery_date);
        list_addElement(localVarQueryParameters,keyPairQuery_date);
    }

    // query parameters
    char *keyQuery_time_start = NULL;
    char * valueQuery_time_start = NULL;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = strdup((time_start));
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NativeIEXAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(NativeIEXAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, NativeIEXAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( NativeIEXAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_symbol);
    if(keyQuery_date){
        free(keyQuery_date);
        keyQuery_date = NULL;
    }
    if(keyPairQuery_date){
        keyValuePair_free(keyPairQuery_date);
        keyPairQuery_date = NULL;
    }
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(valueQuery_time_start){
        free(valueQuery_time_start);
        valueQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get System Events
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexAdminSystemEventGet(apiClient_t *apiClient, char date, char *time_start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/native/iex/admin/system-event");





    // query parameters
    char *keyQuery_date = NULL;
    char valueQuery_date ;
    keyValuePair_t *keyPairQuery_date = 0;
    if (date)
    {
        keyQuery_date = strdup("date");
        valueQuery_date = (date);
        keyPairQuery_date = keyValuePair_create(keyQuery_date, &valueQuery_date);
        list_addElement(localVarQueryParameters,keyPairQuery_date);
    }

    // query parameters
    char *keyQuery_time_start = NULL;
    char * valueQuery_time_start = NULL;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = strdup((time_start));
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NativeIEXAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(NativeIEXAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, NativeIEXAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( NativeIEXAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_date){
        free(keyQuery_date);
        keyQuery_date = NULL;
    }
    if(keyPairQuery_date){
        keyValuePair_free(keyPairQuery_date);
        keyPairQuery_date = NULL;
    }
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(valueQuery_time_start){
        free(valueQuery_time_start);
        valueQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Level-1 Quotes
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/native/iex/level1-quote/{symbol}");

    if(!symbol)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol = strlen(symbol)+3 + sizeof("{ symbol }") - 1;
    if(symbol == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol = malloc(sizeOfPathParams_symbol);
    sprintf(localVarToReplace_symbol, "{%s}", "symbol");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol, symbol);



    // query parameters
    char *keyQuery_date = NULL;
    char valueQuery_date ;
    keyValuePair_t *keyPairQuery_date = 0;
    if (date)
    {
        keyQuery_date = strdup("date");
        valueQuery_date = (date);
        keyPairQuery_date = keyValuePair_create(keyQuery_date, &valueQuery_date);
        list_addElement(localVarQueryParameters,keyPairQuery_date);
    }

    // query parameters
    char *keyQuery_time_start = NULL;
    char * valueQuery_time_start = NULL;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = strdup((time_start));
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NativeIEXAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(NativeIEXAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, NativeIEXAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( NativeIEXAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_symbol);
    if(keyQuery_date){
        free(keyQuery_date);
        keyQuery_date = NULL;
    }
    if(keyPairQuery_date){
        keyValuePair_free(keyPairQuery_date);
        keyPairQuery_date = NULL;
    }
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(valueQuery_time_start){
        free(valueQuery_time_start);
        valueQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Level-2 Price Level Book
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/native/iex/level2-price-level-update/{symbol}");

    if(!symbol)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol = strlen(symbol)+3 + sizeof("{ symbol }") - 1;
    if(symbol == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol = malloc(sizeOfPathParams_symbol);
    sprintf(localVarToReplace_symbol, "{%s}", "symbol");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol, symbol);



    // query parameters
    char *keyQuery_date = NULL;
    char valueQuery_date ;
    keyValuePair_t *keyPairQuery_date = 0;
    if (date)
    {
        keyQuery_date = strdup("date");
        valueQuery_date = (date);
        keyPairQuery_date = keyValuePair_create(keyQuery_date, &valueQuery_date);
        list_addElement(localVarQueryParameters,keyPairQuery_date);
    }

    // query parameters
    char *keyQuery_time_start = NULL;
    char * valueQuery_time_start = NULL;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = strdup((time_start));
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NativeIEXAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(NativeIEXAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, NativeIEXAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( NativeIEXAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_symbol);
    if(keyQuery_date){
        free(keyQuery_date);
        keyQuery_date = NULL;
    }
    if(keyPairQuery_date){
        keyValuePair_free(keyPairQuery_date);
        keyPairQuery_date = NULL;
    }
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(valueQuery_time_start){
        free(valueQuery_time_start);
        valueQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Level-3 Order Book
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/native/iex/level3-order-book/{symbol}");

    if(!symbol)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol = strlen(symbol)+3 + sizeof("{ symbol }") - 1;
    if(symbol == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol = malloc(sizeOfPathParams_symbol);
    sprintf(localVarToReplace_symbol, "{%s}", "symbol");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol, symbol);



    // query parameters
    char *keyQuery_date = NULL;
    char valueQuery_date ;
    keyValuePair_t *keyPairQuery_date = 0;
    if (date)
    {
        keyQuery_date = strdup("date");
        valueQuery_date = (date);
        keyPairQuery_date = keyValuePair_create(keyQuery_date, &valueQuery_date);
        list_addElement(localVarQueryParameters,keyPairQuery_date);
    }

    // query parameters
    char *keyQuery_time_start = NULL;
    char * valueQuery_time_start = NULL;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = strdup((time_start));
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NativeIEXAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(NativeIEXAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, NativeIEXAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( NativeIEXAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_symbol);
    if(keyQuery_date){
        free(keyQuery_date);
        keyQuery_date = NULL;
    }
    if(keyPairQuery_date){
        keyValuePair_free(keyPairQuery_date);
        keyPairQuery_date = NULL;
    }
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(valueQuery_time_start){
        free(valueQuery_time_start);
        valueQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Trades
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexTradeSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/native/iex/trade/{symbol}");

    if(!symbol)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol = strlen(symbol)+3 + sizeof("{ symbol }") - 1;
    if(symbol == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol = malloc(sizeOfPathParams_symbol);
    sprintf(localVarToReplace_symbol, "{%s}", "symbol");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol, symbol);



    // query parameters
    char *keyQuery_date = NULL;
    char valueQuery_date ;
    keyValuePair_t *keyPairQuery_date = 0;
    if (date)
    {
        keyQuery_date = strdup("date");
        valueQuery_date = (date);
        keyPairQuery_date = keyValuePair_create(keyQuery_date, &valueQuery_date);
        list_addElement(localVarQueryParameters,keyPairQuery_date);
    }

    // query parameters
    char *keyQuery_time_start = NULL;
    char * valueQuery_time_start = NULL;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = strdup((time_start));
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NativeIEXAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(NativeIEXAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, NativeIEXAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( NativeIEXAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_symbol);
    if(keyQuery_date){
        free(keyQuery_date);
        keyQuery_date = NULL;
    }
    if(keyPairQuery_date){
        keyValuePair_free(keyPairQuery_date);
        keyPairQuery_date = NULL;
    }
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(valueQuery_time_start){
        free(valueQuery_time_start);
        valueQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

