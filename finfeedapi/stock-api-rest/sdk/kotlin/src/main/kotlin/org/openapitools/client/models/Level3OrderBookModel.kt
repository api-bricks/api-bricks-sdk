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

import org.openapitools.client.models.Level3AddOrderModel
import org.openapitools.client.models.Level3ClearBookModel
import org.openapitools.client.models.Level3DeleteOrderModel
import org.openapitools.client.models.Level3ExecutedOrderModel
import org.openapitools.client.models.Level3ModifyOrderModel

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * Represents the response DTO for Level-3 order book information
 *
 * @param addOrder 
 * @param deleteOrder 
 * @param modifyOrder 
 * @param executedOrder 
 * @param clearBook 
 */


data class Level3OrderBookModel (

    @Json(name = "add_order")
    val addOrder: Level3AddOrderModel? = null,

    @Json(name = "delete_order")
    val deleteOrder: Level3DeleteOrderModel? = null,

    @Json(name = "modify_order")
    val modifyOrder: Level3ModifyOrderModel? = null,

    @Json(name = "executed_order")
    val executedOrder: Level3ExecutedOrderModel? = null,

    @Json(name = "clear_book")
    val clearBook: Level3ClearBookModel? = null

) {


}

