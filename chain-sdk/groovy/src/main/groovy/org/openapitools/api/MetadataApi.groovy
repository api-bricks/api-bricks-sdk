package org.openapitools.api;

import org.openapitools.api.ApiUtils

class MetadataApi {
    String basePath = "https://onchain.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def metadataChainsGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/metadata/chains"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def metadataDappsDappNameGet ( String dappName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/metadata/dapps/${dappName}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (dappName == null) {
            throw new RuntimeException("missing required params dappName")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def metadataDappsGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/metadata/dapps"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

}
