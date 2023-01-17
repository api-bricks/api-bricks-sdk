package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SushiswapPairDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Pair contract address. */
    String id
    /* Factory contract address. */
    String factory
    /* Friendly name, format: (token0 name)-(token1 name) */
    String name
    /* Reference to token0 as stored in pair contract. */
    String token0
    /* Reference to token0 as stored in pair contract. */
    String token1
    /* Reserve of token0. */
    String reserve0
    /* Reserve of token1. */
    String reserve1
    /* Total supply of liquidity token distributed to LPs. */
    String totalSupply
    /* Total liquidity in pair stored as an amount of ETH. */
    String reserveEth
    /* Total liquidity amount in pair stored as an amount of USD. */
    String reserveUsd
    /* Total liquidity with only tracked amount. */
    String trackedReserveEth
    /* Token0 per token1. */
    String token0Price
    /* Token1 per token0. */
    String token1Price
    /* Amount of token0 swapped on this pair. */
    String volumeToken0
    /* Amount of token1 swapped on this pair. */
    String volumeToken1
    /* Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). */
    String volumeUsd
    /* Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. */
    String untrackedVolumeUsd
    /* All time amount of transactions on this pair. */
    String txCount
    /* Total number of LPs. */
    String liquidityProviderCount
    /* Timestamp. */
    String timestamp
    /* Block number in which pair information was created in. */
    String block
    /*  */
    Long vid
    
    Double evaluatedAsk
}
