#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "PositionsAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)


// Get open positions
//
// Get current open positions across all or single exchange.
//
list_t*
PositionsAPI_v1PositionsGet(apiClient_t *apiClient, char * exchange_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/positions")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/positions");




    // query parameters
    char *keyQuery_exchange_id = NULL;
    char * valueQuery_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_exchange_id = 0;
    if (exchange_id)
    {
        keyQuery_exchange_id = strdup("exchange_id");
        valueQuery_exchange_id = strdup((exchange_id));
        keyPairQuery_exchange_id = keyValuePair_create(keyQuery_exchange_id, valueQuery_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_exchange_id);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"appliction/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Collection of positons.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 490) {
    //    printf("%s\n","Exchange is unreachable.");
    //}
    cJSON *PositionsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(PositionsAPIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, PositionsAPIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( PositionsAPIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_exchange_id){
        free(keyQuery_exchange_id);
        keyQuery_exchange_id = NULL;
    }
    if(valueQuery_exchange_id){
        free(valueQuery_exchange_id);
        valueQuery_exchange_id = NULL;
    }
    if(keyPairQuery_exchange_id){
        keyValuePair_free(keyPairQuery_exchange_id);
        keyPairQuery_exchange_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

