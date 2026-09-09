#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "OHLCVAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Historical data by exchange
//
// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between `time_end` and `time_start` cannot be higher than 1 day. The `period_id` cannot be higher than `1DAY`. :::
//
list_t*
OHLCVAPI_v1OhlcvExchangesExchangeIdHistoryGet(apiClient_t *apiClient, char *exchange_id, char *period_id, char *time_start, char *time_end)
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
    char *localVarPath = strdup("/v1/ohlcv/exchanges/{exchange_id}/history");

    if(!exchange_id)
        goto end;


    // Path Params
    long sizeOfPathParams_exchange_id = strlen(exchange_id)+3 + sizeof("{ exchange_id }") - 1;
    if(exchange_id == NULL) {
        goto end;
    }
    char* localVarToReplace_exchange_id = malloc(sizeOfPathParams_exchange_id);
    sprintf(localVarToReplace_exchange_id, "{%s}", "exchange_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_exchange_id, exchange_id);



    // query parameters
    char *keyQuery_period_id = NULL;
    char * valueQuery_period_id = NULL;
    keyValuePair_t *keyPairQuery_period_id = 0;
    if (period_id)
    {
        keyQuery_period_id = strdup("period_id");
        valueQuery_period_id = strdup((period_id));
        keyPairQuery_period_id = keyValuePair_create(keyQuery_period_id, valueQuery_period_id);
        list_addElement(localVarQueryParameters,keyPairQuery_period_id);
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
    char *keyQuery_time_end = NULL;
    char * valueQuery_time_end = NULL;
    keyValuePair_t *keyPairQuery_time_end = 0;
    if (time_end)
    {
        keyQuery_time_end = strdup("time_end");
        valueQuery_time_end = strdup((time_end));
        keyPairQuery_time_end = keyValuePair_create(keyQuery_time_end, valueQuery_time_end);
        list_addElement(localVarQueryParameters,keyPairQuery_time_end);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
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
        cJSON *OHLCVAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OHLCVAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OHLCVAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OHLCVAPIlocalVarJSON);
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
    free(localVarToReplace_exchange_id);
    if(keyQuery_period_id){
        free(keyQuery_period_id);
        keyQuery_period_id = NULL;
    }
    if(valueQuery_period_id){
        free(valueQuery_period_id);
        valueQuery_period_id = NULL;
    }
    if(keyPairQuery_period_id){
        keyValuePair_free(keyPairQuery_period_id);
        keyPairQuery_period_id = NULL;
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
    if(keyQuery_time_end){
        free(keyQuery_time_end);
        keyQuery_time_end = NULL;
    }
    if(valueQuery_time_end){
        free(valueQuery_time_end);
        valueQuery_time_end = NULL;
    }
    if(keyPairQuery_time_end){
        keyValuePair_free(keyPairQuery_time_end);
        keyPairQuery_time_end = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List all periods
//
// Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
//
list_t*
OHLCVAPI_v1OhlcvPeriodsGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/ohlcv/periods");




    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
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
        cJSON *OHLCVAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OHLCVAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OHLCVAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OHLCVAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Historical data
//
// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
//
list_t*
OHLCVAPI_v1OhlcvSymbolIdHistoryGet(apiClient_t *apiClient, char *symbol_id, char *period_id, char *time_start, char *time_end, int *limit)
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
    char *localVarPath = strdup("/v1/ohlcv/{symbol_id}/history");

    if(!symbol_id)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol_id = strlen(symbol_id)+3 + sizeof("{ symbol_id }") - 1;
    if(symbol_id == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol_id = malloc(sizeOfPathParams_symbol_id);
    sprintf(localVarToReplace_symbol_id, "{%s}", "symbol_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol_id, symbol_id);



    // query parameters
    char *keyQuery_period_id = NULL;
    char * valueQuery_period_id = NULL;
    keyValuePair_t *keyPairQuery_period_id = 0;
    if (period_id)
    {
        keyQuery_period_id = strdup("period_id");
        valueQuery_period_id = strdup((period_id));
        keyPairQuery_period_id = keyValuePair_create(keyQuery_period_id, valueQuery_period_id);
        list_addElement(localVarQueryParameters,keyPairQuery_period_id);
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
    char *keyQuery_time_end = NULL;
    char * valueQuery_time_end = NULL;
    keyValuePair_t *keyPairQuery_time_end = 0;
    if (time_end)
    {
        keyQuery_time_end = strdup("time_end");
        valueQuery_time_end = strdup((time_end));
        keyPairQuery_time_end = keyValuePair_create(keyQuery_time_end, valueQuery_time_end);
        list_addElement(localVarQueryParameters,keyPairQuery_time_end);
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
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
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
        cJSON *OHLCVAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OHLCVAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OHLCVAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OHLCVAPIlocalVarJSON);
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
    free(localVarToReplace_symbol_id);
    if(keyQuery_period_id){
        free(keyQuery_period_id);
        keyQuery_period_id = NULL;
    }
    if(valueQuery_period_id){
        free(valueQuery_period_id);
        valueQuery_period_id = NULL;
    }
    if(keyPairQuery_period_id){
        keyValuePair_free(keyPairQuery_period_id);
        keyPairQuery_period_id = NULL;
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
    if(keyQuery_time_end){
        free(keyQuery_time_end);
        keyQuery_time_end = NULL;
    }
    if(valueQuery_time_end){
        free(valueQuery_time_end);
        valueQuery_time_end = NULL;
    }
    if(keyPairQuery_time_end){
        keyValuePair_free(keyPairQuery_time_end);
        keyPairQuery_time_end = NULL;
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

// Latest data
//
// Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
//
list_t*
OHLCVAPI_v1OhlcvSymbolIdLatestGet(apiClient_t *apiClient, char *symbol_id, char *period_id, int *limit)
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
    char *localVarPath = strdup("/v1/ohlcv/{symbol_id}/latest");

    if(!symbol_id)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol_id = strlen(symbol_id)+3 + sizeof("{ symbol_id }") - 1;
    if(symbol_id == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol_id = malloc(sizeOfPathParams_symbol_id);
    sprintf(localVarToReplace_symbol_id, "{%s}", "symbol_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol_id, symbol_id);



    // query parameters
    char *keyQuery_period_id = NULL;
    char * valueQuery_period_id = NULL;
    keyValuePair_t *keyPairQuery_period_id = 0;
    if (period_id)
    {
        keyQuery_period_id = strdup("period_id");
        valueQuery_period_id = strdup((period_id));
        keyPairQuery_period_id = keyValuePair_create(keyQuery_period_id, valueQuery_period_id);
        list_addElement(localVarQueryParameters,keyPairQuery_period_id);
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
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
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
        cJSON *OHLCVAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OHLCVAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OHLCVAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OHLCVAPIlocalVarJSON);
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
    free(localVarToReplace_symbol_id);
    if(keyQuery_period_id){
        free(keyQuery_period_id);
        keyQuery_period_id = NULL;
    }
    if(valueQuery_period_id){
        free(valueQuery_period_id);
        valueQuery_period_id = NULL;
    }
    if(keyPairQuery_period_id){
        keyValuePair_free(keyPairQuery_period_id);
        keyPairQuery_period_id = NULL;
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

