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
 * Represents the response DTO for auction information
 *
 * @param symbol The stock symbol
 * @param timestampNanos Original timestamp in nanoseconds since epoch
 * @param timestamp Time when the auction data was recorded as DateTime
 * @param auctionType Type of auction as byte value
 * @param auctionTypeCode Type of auction as character string
 * @param auctionTypeText Human-readable description of the auction type
 * @param isAuctionTypeOpening Indicates if the auction type is 'Opening Auction' ('O'/0x4f).
 * @param isAuctionTypeClosing Indicates if the auction type is 'Closing Auction' ('C'/0x43).
 * @param isAuctionTypeIpo Indicates if the auction type is 'IPO Auction' ('I'/0x49).
 * @param isAuctionTypeHalt Indicates if the auction type is 'Halt Auction' ('H'/0x48).
 * @param isAuctionTypeVolatility Indicates if the auction type is 'Volatility Auction' ('V'/0x56).
 * @param pairedShares Number of shares paired at the Reference Price
 * @param referencePrice Reference price as decimal
 * @param indicativeClearingPrice Indicative clearing price as decimal
 * @param imbalanceShares Number of unpaired shares at the Reference Price
 * @param imbalanceSide Side of the imbalance as byte value
 * @param imbalanceSideCode Side of the imbalance as character string
 * @param imbalanceSideText Human-readable description of the imbalance side
 * @param isImbalanceSideBuy Indicates if there is a buy-side imbalance ('B'/0x42).
 * @param isImbalanceSideSell Indicates if there is a sell-side imbalance ('S'/0x53).
 * @param isImbalanceSideNone Indicates if there is no imbalance ('N'/0x4e).
 * @param extensionNumber Number of extensions to the auction
 * @param scheduledAuctionTimeSeconds Scheduled auction time in seconds since epoch
 * @param scheduledAuctionTime Scheduled time for the auction as DateTime
 * @param auctionBookClearingPrice Auction book clearing price as decimal
 * @param collarReferencePrice Collar reference price as decimal
 * @param lowerAuctionCollar Lower auction collar as decimal
 * @param upperAuctionCollar Upper auction collar as decimal
 */


data class AdminAuctionInformationModel (

    /* The stock symbol */
    @Json(name = "symbol")
    val symbol: kotlin.String? = null,

    /* Original timestamp in nanoseconds since epoch */
    @Json(name = "timestamp_nanos")
    val timestampNanos: kotlin.Long? = null,

    /* Time when the auction data was recorded as DateTime */
    @Json(name = "timestamp")
    val timestamp: java.time.OffsetDateTime? = null,

    /* Type of auction as byte value */
    @Json(name = "auction_type")
    val auctionType: kotlin.Int? = null,

    /* Type of auction as character string */
    @Json(name = "auction_type_code")
    val auctionTypeCode: kotlin.String? = null,

    /* Human-readable description of the auction type */
    @Json(name = "auction_type_text")
    val auctionTypeText: kotlin.String? = null,

    /* Indicates if the auction type is 'Opening Auction' ('O'/0x4f). */
    @Json(name = "is_auction_type_opening")
    val isAuctionTypeOpening: kotlin.Boolean? = null,

    /* Indicates if the auction type is 'Closing Auction' ('C'/0x43). */
    @Json(name = "is_auction_type_closing")
    val isAuctionTypeClosing: kotlin.Boolean? = null,

    /* Indicates if the auction type is 'IPO Auction' ('I'/0x49). */
    @Json(name = "is_auction_type_ipo")
    val isAuctionTypeIpo: kotlin.Boolean? = null,

    /* Indicates if the auction type is 'Halt Auction' ('H'/0x48). */
    @Json(name = "is_auction_type_halt")
    val isAuctionTypeHalt: kotlin.Boolean? = null,

    /* Indicates if the auction type is 'Volatility Auction' ('V'/0x56). */
    @Json(name = "is_auction_type_volatility")
    val isAuctionTypeVolatility: kotlin.Boolean? = null,

    /* Number of shares paired at the Reference Price */
    @Json(name = "paired_shares")
    val pairedShares: kotlin.Int? = null,

    /* Reference price as decimal */
    @Json(name = "reference_price")
    val referencePrice: kotlin.Double? = null,

    /* Indicative clearing price as decimal */
    @Json(name = "indicative_clearing_price")
    val indicativeClearingPrice: kotlin.Double? = null,

    /* Number of unpaired shares at the Reference Price */
    @Json(name = "imbalance_shares")
    val imbalanceShares: kotlin.Int? = null,

    /* Side of the imbalance as byte value */
    @Json(name = "imbalance_side")
    val imbalanceSide: kotlin.Int? = null,

    /* Side of the imbalance as character string */
    @Json(name = "imbalance_side_code")
    val imbalanceSideCode: kotlin.String? = null,

    /* Human-readable description of the imbalance side */
    @Json(name = "imbalance_side_text")
    val imbalanceSideText: kotlin.String? = null,

    /* Indicates if there is a buy-side imbalance ('B'/0x42). */
    @Json(name = "is_imbalance_side_buy")
    val isImbalanceSideBuy: kotlin.Boolean? = null,

    /* Indicates if there is a sell-side imbalance ('S'/0x53). */
    @Json(name = "is_imbalance_side_sell")
    val isImbalanceSideSell: kotlin.Boolean? = null,

    /* Indicates if there is no imbalance ('N'/0x4e). */
    @Json(name = "is_imbalance_side_none")
    val isImbalanceSideNone: kotlin.Boolean? = null,

    /* Number of extensions to the auction */
    @Json(name = "extension_number")
    val extensionNumber: kotlin.Int? = null,

    /* Scheduled auction time in seconds since epoch */
    @Json(name = "scheduled_auction_time_seconds")
    val scheduledAuctionTimeSeconds: kotlin.Int? = null,

    /* Scheduled time for the auction as DateTime */
    @Json(name = "scheduled_auction_time")
    val scheduledAuctionTime: java.time.OffsetDateTime? = null,

    /* Auction book clearing price as decimal */
    @Json(name = "auction_book_clearing_price")
    val auctionBookClearingPrice: kotlin.Double? = null,

    /* Collar reference price as decimal */
    @Json(name = "collar_reference_price")
    val collarReferencePrice: kotlin.Double? = null,

    /* Lower auction collar as decimal */
    @Json(name = "lower_auction_collar")
    val lowerAuctionCollar: kotlin.Double? = null,

    /* Upper auction collar as decimal */
    @Json(name = "upper_auction_collar")
    val upperAuctionCollar: kotlin.Double? = null

) {


}

