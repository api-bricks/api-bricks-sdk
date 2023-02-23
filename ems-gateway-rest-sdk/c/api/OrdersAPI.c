#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "OrdersAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)


// Cancel all orders request
//
// This request cancels all open orders on single specified exchange.
//
message_reject_t*
OrdersAPI_v1OrdersCancelAllPost(apiClient_t *apiClient, order_cancel_all_request_t * order_cancel_all_request )
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders/cancel/all")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders/cancel/all");




    // Body Param
    cJSON *localVarSingleItemJSON_order_cancel_all_request = NULL;
    if (order_cancel_all_request != NULL)
    {
        //string
        localVarSingleItemJSON_order_cancel_all_request = order_cancel_all_request_convertToJSON(order_cancel_all_request);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_order_cancel_all_request);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"appliction/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Result");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Input model validation errors.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 490) {
    //    printf("%s\n","Exchange is unreachable.");
    //}
    //nonprimitive not container
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    message_reject_t *elementToReturn = message_reject_parseFromJSON(OrdersAPIlocalVarJSON);
    cJSON_Delete(OrdersAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (localVarSingleItemJSON_order_cancel_all_request) {
        cJSON_Delete(localVarSingleItemJSON_order_cancel_all_request);
        localVarSingleItemJSON_order_cancel_all_request = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Cancel order request
//
// Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
//
order_execution_report_t*
OrdersAPI_v1OrdersCancelPost(apiClient_t *apiClient, order_cancel_single_request_t * order_cancel_single_request )
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders/cancel")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders/cancel");




    // Body Param
    cJSON *localVarSingleItemJSON_order_cancel_single_request = NULL;
    if (order_cancel_single_request != NULL)
    {
        //string
        localVarSingleItemJSON_order_cancel_single_request = order_cancel_single_request_convertToJSON(order_cancel_single_request);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_order_cancel_single_request);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"appliction/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","The last execution report for the order for which cancelation was requested.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Input model validation errors.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 490) {
    //    printf("%s\n","Exchange is unreachable.");
    //}
    //nonprimitive not container
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    order_execution_report_t *elementToReturn = order_execution_report_parseFromJSON(OrdersAPIlocalVarJSON);
    cJSON_Delete(OrdersAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (localVarSingleItemJSON_order_cancel_single_request) {
        cJSON_Delete(localVarSingleItemJSON_order_cancel_single_request);
        localVarSingleItemJSON_order_cancel_single_request = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get open orders
//
// Get last execution reports for open orders across all or single exchange.
//
list_t*
OrdersAPI_v1OrdersGet(apiClient_t *apiClient, char * exchange_id )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders");




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
    //    printf("%s\n","Collection of order execution reports.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 490) {
    //    printf("%s\n","Filtered exchange is unreachable.");
    //}
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(OrdersAPIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, OrdersAPIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( OrdersAPIlocalVarJSON);
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

// History of order changes
//
// Based on the date range, all changes registered in the orderbook.
//
list_t*
OrdersAPI_v1OrdersHistoryTimeStartTimeEndGet(apiClient_t *apiClient, char * time_start , char * time_end )
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders/history/{time_start}/{time_end}")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders/history/{time_start}/{time_end}");


    // Path Params
    long sizeOfPathParams_time_start = strlen(time_start)+3 + strlen(time_end)+3 + strlen("{ time_start }");
    if(time_start == NULL) {
        goto end;
    }
    char* localVarToReplace_time_start = malloc(sizeOfPathParams_time_start);
    sprintf(localVarToReplace_time_start, "{%s}", "time_start");

    localVarPath = strReplace(localVarPath, localVarToReplace_time_start, time_start);

    // Path Params
    long sizeOfPathParams_time_end = strlen(time_start)+3 + strlen(time_end)+3 + strlen("{ time_end }");
    if(time_end == NULL) {
        goto end;
    }
    char* localVarToReplace_time_end = malloc(sizeOfPathParams_time_end);
    sprintf(localVarToReplace_time_end, "{%s}", "time_end");

    localVarPath = strReplace(localVarPath, localVarToReplace_time_end, time_end);


    list_addElement(localVarHeaderType,"application/json"); //produces
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
    //    printf("%s\n","The last execution report of the requested order.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Orders log is not configured.");
    //}
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(OrdersAPIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_createList();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, OrdersAPIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( OrdersAPIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_time_start);
    free(localVarToReplace_time_end);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Send new order
//
// This request creating new order for the specific exchange.
//
order_execution_report_t*
OrdersAPI_v1OrdersPost(apiClient_t *apiClient, order_new_single_request_t * order_new_single_request )
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders");




    // Body Param
    cJSON *localVarSingleItemJSON_order_new_single_request = NULL;
    if (order_new_single_request != NULL)
    {
        //string
        localVarSingleItemJSON_order_new_single_request = order_new_single_request_convertToJSON(order_new_single_request);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_order_new_single_request);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"appliction/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Created");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","Input model validation errors.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 490) {
    //    printf("%s\n","Exchange is unreachable.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 504) {
    //    printf("%s\n","Exchange didn&#39;t responded in the defined timeout.");
    //}
    //nonprimitive not container
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    order_execution_report_t *elementToReturn = order_execution_report_parseFromJSON(OrdersAPIlocalVarJSON);
    cJSON_Delete(OrdersAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (localVarSingleItemJSON_order_new_single_request) {
        cJSON_Delete(localVarSingleItemJSON_order_new_single_request);
        localVarSingleItemJSON_order_new_single_request = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get order execution report
//
// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
//
order_execution_report_t*
OrdersAPI_v1OrdersStatusClientOrderIdGet(apiClient_t *apiClient, char * client_order_id )
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders/status/{client_order_id}")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders/status/{client_order_id}");


    // Path Params
    long sizeOfPathParams_client_order_id = strlen(client_order_id)+3 + strlen("{ client_order_id }");
    if(client_order_id == NULL) {
        goto end;
    }
    char* localVarToReplace_client_order_id = malloc(sizeOfPathParams_client_order_id);
    sprintf(localVarToReplace_client_order_id, "{%s}", "client_order_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_client_order_id, client_order_id);


    list_addElement(localVarHeaderType,"application/json"); //produces
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
    //    printf("%s\n","The last execution report of the requested order.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","The requested order was not found.");
    //}
    //nonprimitive not container
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    order_execution_report_t *elementToReturn = order_execution_report_parseFromJSON(OrdersAPIlocalVarJSON);
    cJSON_Delete(OrdersAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_client_order_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

