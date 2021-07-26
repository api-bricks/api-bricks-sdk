package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.MessageReject
import org.openapitools.model.OrderCancelAllRequest
import org.openapitools.model.OrderCancelSingleRequest
import org.openapitools.model.OrderExecutionReport
import org.openapitools.model.OrderNewSingleRequest
import org.openapitools.model.ValidationError

class OrdersApi {
    String basePath = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1OrdersCancelAllPost ( OrderCancelAllRequest orderCancelAllRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/cancel/all"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (orderCancelAllRequest == null) {
            throw new RuntimeException("missing required params orderCancelAllRequest")
        }



        contentType = 'application/json';
        bodyParams = orderCancelAllRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    MessageReject.class )

    }

    def v1OrdersCancelPost ( OrderCancelSingleRequest orderCancelSingleRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/cancel"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (orderCancelSingleRequest == null) {
            throw new RuntimeException("missing required params orderCancelSingleRequest")
        }



        contentType = 'application/json';
        bodyParams = orderCancelSingleRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrderExecutionReport.class )

    }

    def v1OrdersGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (exchangeId != null) {
            queryParams.put("exchange_id", exchangeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    OrderExecutionReport.class )

    }

    def v1OrdersPost ( OrderNewSingleRequest orderNewSingleRequest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (orderNewSingleRequest == null) {
            throw new RuntimeException("missing required params orderNewSingleRequest")
        }



        contentType = 'application/json';
        bodyParams = orderNewSingleRequest


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrderExecutionReport.class )

    }

    def v1OrdersStatusClientOrderIdGet ( String clientOrderId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/orders/status/${client_order_id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (clientOrderId == null) {
            throw new RuntimeException("missing required params clientOrderId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrderExecutionReport.class )

    }

}
