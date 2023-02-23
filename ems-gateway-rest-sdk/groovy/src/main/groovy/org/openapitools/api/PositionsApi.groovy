package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.MessageReject
import org.openapitools.model.Position

class PositionsApi {
    String basePath = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1PositionsGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/positions"

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
                    Position.class )

    }

}
