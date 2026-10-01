package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.IEXPriceLevelUpdatePriceLevelUpdateModel
import org.openapitools.model.IEXQuoteUpdateQuoteUpdateModel
import org.openapitools.model.IEXSystemEventSystemEventModel
import org.openapitools.model.IEXTradeTradeModel
import org.openapitools.model.ModelsAdminMessageModel
import org.openapitools.model.ModelsOrderBookModel

class NativeIexApi {
    String basePath = "https://api-historical.stock.finfeedapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def v1NativeIexAdminMessagesSymbolGet ( String symbol, Date date, String timeStart, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/admin/messages/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }

        if (date != null) {
            queryParams.put("date", date)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    ModelsAdminMessageModel.class )

    }

    def v1NativeIexAdminSystemEventGet ( Date date, String timeStart, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/admin/system-event"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType


        if (date != null) {
            queryParams.put("date", date)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    IEXSystemEventSystemEventModel.class )

    }

    def v1NativeIexLevel1QuoteSymbolGet ( String symbol, Date date, String timeStart, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/level1-quote/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }

        if (date != null) {
            queryParams.put("date", date)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    IEXQuoteUpdateQuoteUpdateModel.class )

    }

    def v1NativeIexLevel2PriceLevelUpdateSymbolGet ( String symbol, Date date, String timeStart, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/level2-price-level-update/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }

        if (date != null) {
            queryParams.put("date", date)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    IEXPriceLevelUpdatePriceLevelUpdateModel.class )

    }

    def v1NativeIexLevel3OrderBookSymbolGet ( String symbol, Date date, String timeStart, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/level3-order-book/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }

        if (date != null) {
            queryParams.put("date", date)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    ModelsOrderBookModel.class )

    }

    def v1NativeIexTradeSymbolGet ( String symbol, Date date, String timeStart, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v1/native/iex/trade/${symbol}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def accept
        def contentType

        // verify required params are set
        if (symbol == null) {
            throw new RuntimeException("missing required params symbol")
        }

        if (date != null) {
            queryParams.put("date", date)
        }
        if (timeStart != null) {
            queryParams.put("time_start", timeStart)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        accept = apiUtils.selectHeaderAccept(["application/json"])

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, accept, contentType,
                    "GET", "array",
                    IEXTradeTradeModel.class )

    }

}
