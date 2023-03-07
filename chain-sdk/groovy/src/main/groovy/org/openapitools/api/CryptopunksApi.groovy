package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CRYPTOPUNKSBidDTO
import org.openapitools.model.CRYPTOPUNKSCollectionDTO
import org.openapitools.model.CRYPTOPUNKSCollectionDailySnapshotDTO
import org.openapitools.model.CRYPTOPUNKSDataSourcesDTO
import org.openapitools.model.CRYPTOPUNKSItemDTO
import org.openapitools.model.CRYPTOPUNKSMarketPlaceDTO
import org.openapitools.model.CRYPTOPUNKSMarketplaceDailySnapshotDTO
import org.openapitools.model.CRYPTOPUNKSTradeDTO
import org.openapitools.model.CRYPTOPUNKSUserDTO

class CryptopunksApi {
    String basePath = "https://onchain.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def cRYPTOPUNKSBidsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/bids/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSBidDTO.class )

    }

    def cRYPTOPUNKSCollectionDailySnapshotsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/collectionDailySnapshots/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSCollectionDailySnapshotDTO.class )

    }

    def cRYPTOPUNKSCollectionsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/collections/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSCollectionDTO.class )

    }

    def cRYPTOPUNKSDataSourcesCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/dataSources/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSDataSourcesDTO.class )

    }

    def cRYPTOPUNKSGetBidsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/bids/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSBidDTO.class )

    }

    def cRYPTOPUNKSGetCollectionDailySnapshotsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/collectionDailySnapshots/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSCollectionDailySnapshotDTO.class )

    }

    def cRYPTOPUNKSGetCollectionsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/collections/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSCollectionDTO.class )

    }

    def cRYPTOPUNKSGetDataSourcesHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/dataSources/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSDataSourcesDTO.class )

    }

    def cRYPTOPUNKSGetItemsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/items/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSItemDTO.class )

    }

    def cRYPTOPUNKSGetMarketPlacesHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/marketPlaces/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSMarketPlaceDTO.class )

    }

    def cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/marketplaceDailySnapshots/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSMarketplaceDailySnapshotDTO.class )

    }

    def cRYPTOPUNKSGetTradesHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/trades/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSTradeDTO.class )

    }

    def cRYPTOPUNKSGetUsersHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/users/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSUserDTO.class )

    }

    def cRYPTOPUNKSItemsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/items/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSItemDTO.class )

    }

    def cRYPTOPUNKSMarketPlacesCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/marketPlaces/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSMarketPlaceDTO.class )

    }

    def cRYPTOPUNKSMarketplaceDailySnapshotsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/marketplaceDailySnapshots/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSMarketplaceDailySnapshotDTO.class )

    }

    def cRYPTOPUNKSTradesCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/trades/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSTradeDTO.class )

    }

    def cRYPTOPUNKSUsersCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/cryptopunks/users/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CRYPTOPUNKSUserDTO.class )

    }

}
