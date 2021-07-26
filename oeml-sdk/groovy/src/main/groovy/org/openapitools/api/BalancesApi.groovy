package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Balance
import org.openapitools.model.MessageReject

class BalancesApi {
    String basePath = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1BalancesGet ( String exchangeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/balances"

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
                    Balance.class )

    }

}
