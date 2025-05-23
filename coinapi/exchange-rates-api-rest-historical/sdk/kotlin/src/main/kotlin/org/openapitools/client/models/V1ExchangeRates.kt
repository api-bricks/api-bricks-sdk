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

import org.openapitools.client.models.V1ExchangeRatesRate

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * Represents exchange rates for a specific base asset.
 *
 * @param assetIdBase Gets or sets the base asset ID.
 * @param rates Gets or sets the list of exchange rates.
 */


data class V1ExchangeRates (

    /* Gets or sets the base asset ID. */
    @Json(name = "asset_id_base")
    val assetIdBase: kotlin.String? = null,

    /* Gets or sets the list of exchange rates. */
    @Json(name = "rates")
    val rates: kotlin.collections.List<V1ExchangeRatesRate>? = null

) {


}

