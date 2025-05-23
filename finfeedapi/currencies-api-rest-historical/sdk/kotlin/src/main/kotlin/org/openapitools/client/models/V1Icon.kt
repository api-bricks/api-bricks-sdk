/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * Represents an icon.
 *
 * @param exchangeId Gets or sets the exchange ID associated with the icon.
 * @param assetId Gets or sets the asset ID associated with the icon.
 * @param url Gets or sets the URL of the icon.
 */


data class V1Icon (

    /* Gets or sets the exchange ID associated with the icon. */
    @Json(name = "exchange_id")
    val exchangeId: kotlin.String? = null,

    /* Gets or sets the asset ID associated with the icon. */
    @Json(name = "asset_id")
    val assetId: kotlin.String? = null,

    /* Gets or sets the URL of the icon. */
    @Json(name = "url")
    val url: kotlin.String? = null

) {


}

