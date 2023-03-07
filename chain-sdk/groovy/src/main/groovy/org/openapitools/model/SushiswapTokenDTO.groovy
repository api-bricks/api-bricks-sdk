package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SushiswapTokenDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Token address. */
    String id
    /* Factory address. */
    String factory
    /* Token symbol. */
    String symbol
    /* Token name. */
    String name
    /* Token decimals. */
    String decimals
    /* Total supply of liquidity token. */
    String totalSupply
    /* Amount of token traded all time across all pairs. */
    String volume
    /* Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold). */
    String volumeUsd
    /* Amount of token in USD traded all time across pairs (no minimum liquidity threshold). */
    String untrackedVolumeUsd
    /* Amount of transactions all time in pairs including token. */
    String txCount
    /* Total amount of token provided as liquidity across all pairs. */
    String liquidity
    /* ETH per token. */
    String derivedEth
    /* Array of whitelisted pairs. */
    List<String> whitelistPairs
    /*  */
    Long vid
    
    String tokenSymbol
}
