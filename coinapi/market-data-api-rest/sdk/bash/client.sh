#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Generator version: 7.25.0
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for CoinAPI Market Data REST API.
#
# LICENSE:
# https://github.com/api-bricks/api-bricks-sdk/blob/master/LICENSE
#
# CONTACT:
# support@apibricks.io
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["getSpecificRate:::asset_id_base"]=1
operation_parameters_minimum_occurrences["getSpecificRate:::asset_id_quote"]=1
operation_parameters_minimum_occurrences["getSpecificRate:::time"]=0
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::asset_id_base"]=1
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::asset_id_quote"]=1
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::period_id"]=0
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseGet:::asset_id_base"]=1
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseGet:::filter_asset_id"]=0
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseGet:::invert"]=0
operation_parameters_minimum_occurrences["v1ExchangerateAssetIdBaseGet:::time"]=0
operation_parameters_minimum_occurrences["v1AssetsAssetIdGet:::asset_id"]=1
operation_parameters_minimum_occurrences["v1AssetsGet:::filter_asset_id"]=0
operation_parameters_minimum_occurrences["v1AssetsGet:::filter_asset_type"]=0
operation_parameters_minimum_occurrences["v1AssetsIconsSizeGet:::size"]=1
operation_parameters_minimum_occurrences["v1ChainsChainIdGet:::chain_id"]=1
operation_parameters_minimum_occurrences["v1ChainsGet:::filter_chain_id"]=0
operation_parameters_minimum_occurrences["v1ExchangesExchangeIdGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1ExchangesGet:::filter_exchange_id"]=0
operation_parameters_minimum_occurrences["v1ExchangesIconsSizeGet:::size"]=1
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdActiveGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdActiveGet:::filter_symbol_id"]=0
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdActiveGet:::filter_asset_id"]=0
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdHistoryGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdHistoryGet:::page"]=0
operation_parameters_minimum_occurrences["v1SymbolsExchangeIdHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1SymbolsMapExchangeIdGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1MetricsAssetCurrentGet:::metric_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetCurrentGet:::asset_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetCurrentGet:::asset_id_external"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetCurrentGet:::exchange_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetHistoryGet:::metric_id"]=1
operation_parameters_minimum_occurrences["v1MetricsAssetHistoryGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1MetricsAssetHistoryGet:::asset_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetHistoryGet:::asset_id_external"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetHistoryGet:::time_format"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetHistoryGet:::period_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetListingGet:::metric_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetListingGet:::exchange_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetListingGet:::chain_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetListingGet:::network_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetListingGet:::asset_id"]=0
operation_parameters_minimum_occurrences["v1MetricsAssetListingGet:::asset_id_external"]=0
operation_parameters_minimum_occurrences["v1MetricsExchangeCurrentGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1MetricsExchangeCurrentGet:::metric_id"]=0
operation_parameters_minimum_occurrences["v1MetricsExchangeHistoryGet:::metric_id"]=1
operation_parameters_minimum_occurrences["v1MetricsExchangeHistoryGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1MetricsExchangeHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1MetricsExchangeHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1MetricsExchangeHistoryGet:::time_format"]=0
operation_parameters_minimum_occurrences["v1MetricsExchangeHistoryGet:::period_id"]=0
operation_parameters_minimum_occurrences["v1MetricsExchangeHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1MetricsExchangeListingGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1MetricsExchangeListingGet:::metric_id"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolCurrentGet:::metric_id"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolCurrentGet:::symbol_id"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolCurrentGet:::exchange_id"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolHistoryGet:::metric_id"]=1
operation_parameters_minimum_occurrences["v1MetricsSymbolHistoryGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1MetricsSymbolHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolHistoryGet:::time_format"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolHistoryGet:::period_id"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolListingGet:::metric_id"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolListingGet:::exchange_id"]=0
operation_parameters_minimum_occurrences["v1MetricsSymbolListingGet:::symbol_id"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2AssetHistory:::metric_id"]=1
operation_parameters_minimum_occurrences["marketdataListMetricsV2AssetHistory:::asset_id"]=1
operation_parameters_minimum_occurrences["marketdataListMetricsV2AssetHistory:::time_start"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2AssetHistory:::time_end"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2AssetHistory:::time_format"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2AssetHistory:::period_id"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2AssetHistory:::limit"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2AssetListing:::asset_id"]=1
operation_parameters_minimum_occurrences["marketdataListMetricsV2ChainHistory:::metric_id"]=1
operation_parameters_minimum_occurrences["marketdataListMetricsV2ChainHistory:::chain_id"]=1
operation_parameters_minimum_occurrences["marketdataListMetricsV2ChainHistory:::time_start"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ChainHistory:::time_end"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ChainHistory:::time_format"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ChainHistory:::period_id"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ChainHistory:::limit"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ChainListing:::chain_id"]=1
operation_parameters_minimum_occurrences["marketdataListMetricsV2ExchangeHistory:::metric_id"]=1
operation_parameters_minimum_occurrences["marketdataListMetricsV2ExchangeHistory:::exchange_id"]=1
operation_parameters_minimum_occurrences["marketdataListMetricsV2ExchangeHistory:::time_start"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ExchangeHistory:::time_end"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ExchangeHistory:::time_format"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ExchangeHistory:::period_id"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ExchangeHistory:::limit"]=0
operation_parameters_minimum_occurrences["marketdataListMetricsV2ExchangeListing:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangesExchangeIdHistoryGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangesExchangeIdHistoryGet:::period_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangesExchangeIdHistoryGet:::time_start"]=1
operation_parameters_minimum_occurrences["v1OhlcvExchangesExchangeIdHistoryGet:::time_end"]=1
operation_parameters_minimum_occurrences["v1OhlcvSymbolIdHistoryGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvSymbolIdHistoryGet:::period_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvSymbolIdHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1OhlcvSymbolIdHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1OhlcvSymbolIdHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1OhlcvSymbolIdLatestGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvSymbolIdLatestGet:::period_id"]=1
operation_parameters_minimum_occurrences["v1OhlcvSymbolIdLatestGet:::limit"]=0
operation_parameters_minimum_occurrences["v1OptionsExchangeIdCurrentGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdCurrentGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdCurrentGet:::limit_levels"]=0
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdDepthCurrentGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdDepthCurrentGet:::limit_levels"]=0
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdHistoryGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdHistoryGet:::date"]=0
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1OrderbooksSymbolIdHistoryGet:::limit_levels"]=0
operation_parameters_minimum_occurrences["v1Orderbooks3CurrentGet:::filter_symbol_id"]=0
operation_parameters_minimum_occurrences["v1Orderbooks3CurrentGet:::limit_levels"]=0
operation_parameters_minimum_occurrences["v1Orderbooks3SymbolIdCurrentGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1Orderbooks3SymbolIdCurrentGet:::limit_levels"]=0
operation_parameters_minimum_occurrences["v1QuotesCurrentGet:::filter_symbol_id"]=0
operation_parameters_minimum_occurrences["v1QuotesCurrentGet:::filter_exchange_id"]=0
operation_parameters_minimum_occurrences["v1QuotesLatestGet:::filter_symbol_id"]=0
operation_parameters_minimum_occurrences["v1QuotesLatestGet:::filter_exchange_id"]=0
operation_parameters_minimum_occurrences["v1QuotesLatestGet:::limit"]=0
operation_parameters_minimum_occurrences["v1QuotesSymbolIdCurrentGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1QuotesSymbolIdHistoryGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1QuotesSymbolIdHistoryGet:::date"]=0
operation_parameters_minimum_occurrences["v1QuotesSymbolIdHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1QuotesSymbolIdHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1QuotesSymbolIdHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1QuotesSymbolIdLatestGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1QuotesSymbolIdLatestGet:::limit"]=0
operation_parameters_minimum_occurrences["v1TradesLatestGet:::filter_symbol_id"]=0
operation_parameters_minimum_occurrences["v1TradesLatestGet:::include_id"]=0
operation_parameters_minimum_occurrences["v1TradesLatestGet:::limit"]=0
operation_parameters_minimum_occurrences["v1TradesSymbolIdHistoryGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1TradesSymbolIdHistoryGet:::date"]=0
operation_parameters_minimum_occurrences["v1TradesSymbolIdHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1TradesSymbolIdHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1TradesSymbolIdHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1TradesSymbolIdHistoryGet:::include_id"]=0
operation_parameters_minimum_occurrences["v1TradesSymbolIdLatestGet:::symbol_id"]=1
operation_parameters_minimum_occurrences["v1TradesSymbolIdLatestGet:::limit"]=0
operation_parameters_minimum_occurrences["v1TradesSymbolIdLatestGet:::include_id"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["getSpecificRate:::asset_id_base"]=0
operation_parameters_maximum_occurrences["getSpecificRate:::asset_id_quote"]=0
operation_parameters_maximum_occurrences["getSpecificRate:::time"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::asset_id_base"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::asset_id_quote"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseGet:::asset_id_base"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseGet:::filter_asset_id"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseGet:::invert"]=0
operation_parameters_maximum_occurrences["v1ExchangerateAssetIdBaseGet:::time"]=0
operation_parameters_maximum_occurrences["v1AssetsAssetIdGet:::asset_id"]=0
operation_parameters_maximum_occurrences["v1AssetsGet:::filter_asset_id"]=0
operation_parameters_maximum_occurrences["v1AssetsGet:::filter_asset_type"]=0
operation_parameters_maximum_occurrences["v1AssetsIconsSizeGet:::size"]=0
operation_parameters_maximum_occurrences["v1ChainsChainIdGet:::chain_id"]=0
operation_parameters_maximum_occurrences["v1ChainsGet:::filter_chain_id"]=0
operation_parameters_maximum_occurrences["v1ExchangesExchangeIdGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1ExchangesGet:::filter_exchange_id"]=0
operation_parameters_maximum_occurrences["v1ExchangesIconsSizeGet:::size"]=0
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdActiveGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdActiveGet:::filter_symbol_id"]=0
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdActiveGet:::filter_asset_id"]=0
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdHistoryGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdHistoryGet:::page"]=0
operation_parameters_maximum_occurrences["v1SymbolsExchangeIdHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1SymbolsMapExchangeIdGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetCurrentGet:::metric_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetCurrentGet:::asset_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetCurrentGet:::asset_id_external"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetCurrentGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetHistoryGet:::metric_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetHistoryGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetHistoryGet:::asset_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetHistoryGet:::asset_id_external"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetHistoryGet:::time_format"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetHistoryGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetListingGet:::metric_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetListingGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetListingGet:::chain_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetListingGet:::network_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetListingGet:::asset_id"]=0
operation_parameters_maximum_occurrences["v1MetricsAssetListingGet:::asset_id_external"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeCurrentGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeCurrentGet:::metric_id"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeHistoryGet:::metric_id"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeHistoryGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeHistoryGet:::time_format"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeHistoryGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeListingGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1MetricsExchangeListingGet:::metric_id"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolCurrentGet:::metric_id"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolCurrentGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolCurrentGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolHistoryGet:::metric_id"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolHistoryGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolHistoryGet:::time_format"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolHistoryGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolListingGet:::metric_id"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolListingGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1MetricsSymbolListingGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2AssetHistory:::metric_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2AssetHistory:::asset_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2AssetHistory:::time_start"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2AssetHistory:::time_end"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2AssetHistory:::time_format"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2AssetHistory:::period_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2AssetHistory:::limit"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2AssetListing:::asset_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ChainHistory:::metric_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ChainHistory:::chain_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ChainHistory:::time_start"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ChainHistory:::time_end"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ChainHistory:::time_format"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ChainHistory:::period_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ChainHistory:::limit"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ChainListing:::chain_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ExchangeHistory:::metric_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ExchangeHistory:::exchange_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ExchangeHistory:::time_start"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ExchangeHistory:::time_end"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ExchangeHistory:::time_format"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ExchangeHistory:::period_id"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ExchangeHistory:::limit"]=0
operation_parameters_maximum_occurrences["marketdataListMetricsV2ExchangeListing:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangesExchangeIdHistoryGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangesExchangeIdHistoryGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangesExchangeIdHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1OhlcvExchangesExchangeIdHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1OhlcvSymbolIdHistoryGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvSymbolIdHistoryGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvSymbolIdHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1OhlcvSymbolIdHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1OhlcvSymbolIdHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1OhlcvSymbolIdLatestGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvSymbolIdLatestGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1OhlcvSymbolIdLatestGet:::limit"]=0
operation_parameters_maximum_occurrences["v1OptionsExchangeIdCurrentGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdCurrentGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdCurrentGet:::limit_levels"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdDepthCurrentGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdDepthCurrentGet:::limit_levels"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdHistoryGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdHistoryGet:::date"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1OrderbooksSymbolIdHistoryGet:::limit_levels"]=0
operation_parameters_maximum_occurrences["v1Orderbooks3CurrentGet:::filter_symbol_id"]=0
operation_parameters_maximum_occurrences["v1Orderbooks3CurrentGet:::limit_levels"]=0
operation_parameters_maximum_occurrences["v1Orderbooks3SymbolIdCurrentGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1Orderbooks3SymbolIdCurrentGet:::limit_levels"]=0
operation_parameters_maximum_occurrences["v1QuotesCurrentGet:::filter_symbol_id"]=0
operation_parameters_maximum_occurrences["v1QuotesCurrentGet:::filter_exchange_id"]=0
operation_parameters_maximum_occurrences["v1QuotesLatestGet:::filter_symbol_id"]=0
operation_parameters_maximum_occurrences["v1QuotesLatestGet:::filter_exchange_id"]=0
operation_parameters_maximum_occurrences["v1QuotesLatestGet:::limit"]=0
operation_parameters_maximum_occurrences["v1QuotesSymbolIdCurrentGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1QuotesSymbolIdHistoryGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1QuotesSymbolIdHistoryGet:::date"]=0
operation_parameters_maximum_occurrences["v1QuotesSymbolIdHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1QuotesSymbolIdHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1QuotesSymbolIdHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1QuotesSymbolIdLatestGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1QuotesSymbolIdLatestGet:::limit"]=0
operation_parameters_maximum_occurrences["v1TradesLatestGet:::filter_symbol_id"]=0
operation_parameters_maximum_occurrences["v1TradesLatestGet:::include_id"]=0
operation_parameters_maximum_occurrences["v1TradesLatestGet:::limit"]=0
operation_parameters_maximum_occurrences["v1TradesSymbolIdHistoryGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1TradesSymbolIdHistoryGet:::date"]=0
operation_parameters_maximum_occurrences["v1TradesSymbolIdHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1TradesSymbolIdHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1TradesSymbolIdHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1TradesSymbolIdHistoryGet:::include_id"]=0
operation_parameters_maximum_occurrences["v1TradesSymbolIdLatestGet:::symbol_id"]=0
operation_parameters_maximum_occurrences["v1TradesSymbolIdLatestGet:::limit"]=0
operation_parameters_maximum_occurrences["v1TradesSymbolIdLatestGet:::include_id"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["getSpecificRate:::asset_id_base"]=""
operation_parameters_collection_type["getSpecificRate:::asset_id_quote"]=""
operation_parameters_collection_type["getSpecificRate:::time"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::asset_id_base"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::asset_id_quote"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::period_id"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet:::limit"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseGet:::asset_id_base"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseGet:::filter_asset_id"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseGet:::invert"]=""
operation_parameters_collection_type["v1ExchangerateAssetIdBaseGet:::time"]=""
operation_parameters_collection_type["v1AssetsAssetIdGet:::asset_id"]=""
operation_parameters_collection_type["v1AssetsGet:::filter_asset_id"]=""
operation_parameters_collection_type["v1AssetsGet:::filter_asset_type"]=""
operation_parameters_collection_type["v1AssetsIconsSizeGet:::size"]=""
operation_parameters_collection_type["v1ChainsChainIdGet:::chain_id"]=""
operation_parameters_collection_type["v1ChainsGet:::filter_chain_id"]=""
operation_parameters_collection_type["v1ExchangesExchangeIdGet:::exchange_id"]=""
operation_parameters_collection_type["v1ExchangesGet:::filter_exchange_id"]=""
operation_parameters_collection_type["v1ExchangesIconsSizeGet:::size"]=""
operation_parameters_collection_type["v1SymbolsExchangeIdActiveGet:::exchange_id"]=""
operation_parameters_collection_type["v1SymbolsExchangeIdActiveGet:::filter_symbol_id"]=""
operation_parameters_collection_type["v1SymbolsExchangeIdActiveGet:::filter_asset_id"]=""
operation_parameters_collection_type["v1SymbolsExchangeIdHistoryGet:::exchange_id"]=""
operation_parameters_collection_type["v1SymbolsExchangeIdHistoryGet:::page"]=""
operation_parameters_collection_type["v1SymbolsExchangeIdHistoryGet:::limit"]=""
operation_parameters_collection_type["v1SymbolsMapExchangeIdGet:::exchange_id"]=""
operation_parameters_collection_type["v1MetricsAssetCurrentGet:::metric_id"]=""
operation_parameters_collection_type["v1MetricsAssetCurrentGet:::asset_id"]=""
operation_parameters_collection_type["v1MetricsAssetCurrentGet:::asset_id_external"]=""
operation_parameters_collection_type["v1MetricsAssetCurrentGet:::exchange_id"]=""
operation_parameters_collection_type["v1MetricsAssetHistoryGet:::metric_id"]=""
operation_parameters_collection_type["v1MetricsAssetHistoryGet:::exchange_id"]=""
operation_parameters_collection_type["v1MetricsAssetHistoryGet:::asset_id"]=""
operation_parameters_collection_type["v1MetricsAssetHistoryGet:::asset_id_external"]=""
operation_parameters_collection_type["v1MetricsAssetHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1MetricsAssetHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1MetricsAssetHistoryGet:::time_format"]=""
operation_parameters_collection_type["v1MetricsAssetHistoryGet:::period_id"]=""
operation_parameters_collection_type["v1MetricsAssetHistoryGet:::limit"]=""
operation_parameters_collection_type["v1MetricsAssetListingGet:::metric_id"]=""
operation_parameters_collection_type["v1MetricsAssetListingGet:::exchange_id"]=""
operation_parameters_collection_type["v1MetricsAssetListingGet:::chain_id"]=""
operation_parameters_collection_type["v1MetricsAssetListingGet:::network_id"]=""
operation_parameters_collection_type["v1MetricsAssetListingGet:::asset_id"]=""
operation_parameters_collection_type["v1MetricsAssetListingGet:::asset_id_external"]=""
operation_parameters_collection_type["v1MetricsExchangeCurrentGet:::exchange_id"]=""
operation_parameters_collection_type["v1MetricsExchangeCurrentGet:::metric_id"]=""
operation_parameters_collection_type["v1MetricsExchangeHistoryGet:::metric_id"]=""
operation_parameters_collection_type["v1MetricsExchangeHistoryGet:::exchange_id"]=""
operation_parameters_collection_type["v1MetricsExchangeHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1MetricsExchangeHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1MetricsExchangeHistoryGet:::time_format"]=""
operation_parameters_collection_type["v1MetricsExchangeHistoryGet:::period_id"]=""
operation_parameters_collection_type["v1MetricsExchangeHistoryGet:::limit"]=""
operation_parameters_collection_type["v1MetricsExchangeListingGet:::exchange_id"]=""
operation_parameters_collection_type["v1MetricsExchangeListingGet:::metric_id"]=""
operation_parameters_collection_type["v1MetricsSymbolCurrentGet:::metric_id"]=""
operation_parameters_collection_type["v1MetricsSymbolCurrentGet:::symbol_id"]=""
operation_parameters_collection_type["v1MetricsSymbolCurrentGet:::exchange_id"]=""
operation_parameters_collection_type["v1MetricsSymbolHistoryGet:::metric_id"]=""
operation_parameters_collection_type["v1MetricsSymbolHistoryGet:::symbol_id"]=""
operation_parameters_collection_type["v1MetricsSymbolHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1MetricsSymbolHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1MetricsSymbolHistoryGet:::time_format"]=""
operation_parameters_collection_type["v1MetricsSymbolHistoryGet:::period_id"]=""
operation_parameters_collection_type["v1MetricsSymbolHistoryGet:::limit"]=""
operation_parameters_collection_type["v1MetricsSymbolListingGet:::metric_id"]=""
operation_parameters_collection_type["v1MetricsSymbolListingGet:::exchange_id"]=""
operation_parameters_collection_type["v1MetricsSymbolListingGet:::symbol_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2AssetHistory:::metric_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2AssetHistory:::asset_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2AssetHistory:::time_start"]=""
operation_parameters_collection_type["marketdataListMetricsV2AssetHistory:::time_end"]=""
operation_parameters_collection_type["marketdataListMetricsV2AssetHistory:::time_format"]=""
operation_parameters_collection_type["marketdataListMetricsV2AssetHistory:::period_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2AssetHistory:::limit"]=""
operation_parameters_collection_type["marketdataListMetricsV2AssetListing:::asset_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2ChainHistory:::metric_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2ChainHistory:::chain_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2ChainHistory:::time_start"]=""
operation_parameters_collection_type["marketdataListMetricsV2ChainHistory:::time_end"]=""
operation_parameters_collection_type["marketdataListMetricsV2ChainHistory:::time_format"]=""
operation_parameters_collection_type["marketdataListMetricsV2ChainHistory:::period_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2ChainHistory:::limit"]=""
operation_parameters_collection_type["marketdataListMetricsV2ChainListing:::chain_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2ExchangeHistory:::metric_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2ExchangeHistory:::exchange_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2ExchangeHistory:::time_start"]=""
operation_parameters_collection_type["marketdataListMetricsV2ExchangeHistory:::time_end"]=""
operation_parameters_collection_type["marketdataListMetricsV2ExchangeHistory:::time_format"]=""
operation_parameters_collection_type["marketdataListMetricsV2ExchangeHistory:::period_id"]=""
operation_parameters_collection_type["marketdataListMetricsV2ExchangeHistory:::limit"]=""
operation_parameters_collection_type["marketdataListMetricsV2ExchangeListing:::exchange_id"]=""
operation_parameters_collection_type["v1OhlcvExchangesExchangeIdHistoryGet:::exchange_id"]=""
operation_parameters_collection_type["v1OhlcvExchangesExchangeIdHistoryGet:::period_id"]=""
operation_parameters_collection_type["v1OhlcvExchangesExchangeIdHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1OhlcvExchangesExchangeIdHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1OhlcvSymbolIdHistoryGet:::symbol_id"]=""
operation_parameters_collection_type["v1OhlcvSymbolIdHistoryGet:::period_id"]=""
operation_parameters_collection_type["v1OhlcvSymbolIdHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1OhlcvSymbolIdHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1OhlcvSymbolIdHistoryGet:::limit"]=""
operation_parameters_collection_type["v1OhlcvSymbolIdLatestGet:::symbol_id"]=""
operation_parameters_collection_type["v1OhlcvSymbolIdLatestGet:::period_id"]=""
operation_parameters_collection_type["v1OhlcvSymbolIdLatestGet:::limit"]=""
operation_parameters_collection_type["v1OptionsExchangeIdCurrentGet:::exchange_id"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdCurrentGet:::symbol_id"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdCurrentGet:::limit_levels"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdDepthCurrentGet:::symbol_id"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdDepthCurrentGet:::limit_levels"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdHistoryGet:::symbol_id"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdHistoryGet:::date"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdHistoryGet:::limit"]=""
operation_parameters_collection_type["v1OrderbooksSymbolIdHistoryGet:::limit_levels"]=""
operation_parameters_collection_type["v1Orderbooks3CurrentGet:::filter_symbol_id"]=""
operation_parameters_collection_type["v1Orderbooks3CurrentGet:::limit_levels"]=""
operation_parameters_collection_type["v1Orderbooks3SymbolIdCurrentGet:::symbol_id"]=""
operation_parameters_collection_type["v1Orderbooks3SymbolIdCurrentGet:::limit_levels"]=""
operation_parameters_collection_type["v1QuotesCurrentGet:::filter_symbol_id"]=""
operation_parameters_collection_type["v1QuotesCurrentGet:::filter_exchange_id"]=""
operation_parameters_collection_type["v1QuotesLatestGet:::filter_symbol_id"]=""
operation_parameters_collection_type["v1QuotesLatestGet:::filter_exchange_id"]=""
operation_parameters_collection_type["v1QuotesLatestGet:::limit"]=""
operation_parameters_collection_type["v1QuotesSymbolIdCurrentGet:::symbol_id"]=""
operation_parameters_collection_type["v1QuotesSymbolIdHistoryGet:::symbol_id"]=""
operation_parameters_collection_type["v1QuotesSymbolIdHistoryGet:::date"]=""
operation_parameters_collection_type["v1QuotesSymbolIdHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1QuotesSymbolIdHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1QuotesSymbolIdHistoryGet:::limit"]=""
operation_parameters_collection_type["v1QuotesSymbolIdLatestGet:::symbol_id"]=""
operation_parameters_collection_type["v1QuotesSymbolIdLatestGet:::limit"]=""
operation_parameters_collection_type["v1TradesLatestGet:::filter_symbol_id"]=""
operation_parameters_collection_type["v1TradesLatestGet:::include_id"]=""
operation_parameters_collection_type["v1TradesLatestGet:::limit"]=""
operation_parameters_collection_type["v1TradesSymbolIdHistoryGet:::symbol_id"]=""
operation_parameters_collection_type["v1TradesSymbolIdHistoryGet:::date"]=""
operation_parameters_collection_type["v1TradesSymbolIdHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1TradesSymbolIdHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1TradesSymbolIdHistoryGet:::limit"]=""
operation_parameters_collection_type["v1TradesSymbolIdHistoryGet:::include_id"]=""
operation_parameters_collection_type["v1TradesSymbolIdLatestGet:::symbol_id"]=""
operation_parameters_collection_type["v1TradesSymbolIdLatestGet:::limit"]=""
operation_parameters_collection_type["v1TradesSymbolIdLatestGet:::include_id"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""

##
# The user API key
apikey_auth_credential=""

##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""
    local api_key_header=""
    local api_key_header_in_cli=""
    api_key_header="Authorization"

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    #
    # If the api_key was not provided in the header, try one from the
    # environment variable
    #
    if [[ -z $api_key_header_in_cli && -n $apikey_auth_credential ]]; then
        headers_curl+="-H \"${api_key_header}: ${apikey_auth_credential}\""
    fi
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    if [[ $RAW_BODY == "1" ]]; then
        echo "-d '${body_parameters["RAW_BODY"]}'"
    else
        local body_json="-d '{"
        local count=0
        for key in "${!body_parameters[@]}"; do
            if [[ $((count++)) -gt 0 ]]; then
                body_json+=", "
            fi
            body_json+="\"${key}\": ${body_parameters[${key}]}"
        done
        body_json+="}'"

        if [[ "${#body_parameters[@]}" -eq 0 ]]; then
            echo ""
        else
            echo "${body_json}"
        fi
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}CoinAPI Market Data REST API command line client (API version v1)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}Authorization:<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[exchangeRates]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getSpecificRate${OFF};Get specific rate (AUTH) (AUTH)
  ${CYAN}v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet${OFF};Timeseries data (AUTH) (AUTH)
  ${CYAN}v1ExchangerateAssetIdBaseGet${OFF};Get all current rates (AUTH) (AUTH)
  ${CYAN}v1ExchangerateHistoryPeriodsGet${OFF};Timeseries periods (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[metadata]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1AssetsAssetIdGet${OFF};List all assets by asset ID (AUTH) (AUTH)
  ${CYAN}v1AssetsGet${OFF};List all assets (AUTH) (AUTH)
  ${CYAN}v1AssetsIconsSizeGet${OFF};List all asset icons (AUTH) (AUTH)
  ${CYAN}v1ChainsChainIdGet${OFF};List all chains by chain ID (AUTH) (AUTH)
  ${CYAN}v1ChainsGet${OFF};List all blockchain chains (AUTH) (AUTH)
  ${CYAN}v1ExchangesExchangeIdGet${OFF};List all exchanges by exchange_id (AUTH) (AUTH)
  ${CYAN}v1ExchangesGet${OFF};List all exchanges (AUTH) (AUTH)
  ${CYAN}v1ExchangesIconsSizeGet${OFF};List of icons for the exchanges (AUTH) (AUTH)
  ${CYAN}v1SymbolsExchangeIdActiveGet${OFF};List all active symbols (AUTH) (AUTH)
  ${CYAN}v1SymbolsExchangeIdHistoryGet${OFF};List all historical symbols for an exchange. (AUTH) (AUTH)
  ${CYAN}v1SymbolsMapExchangeIdGet${OFF};List active symbol mapping for the exchange (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[metricsV1]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1MetricsAssetCurrentGet${OFF};Current metrics for given asset (AUTH) (AUTH)
  ${CYAN}v1MetricsAssetHistoryGet${OFF};Historical metrics for asset (AUTH) (AUTH)
  ${CYAN}v1MetricsAssetListingGet${OFF};Listing of all supported metrics for asset (AUTH) (AUTH)
  ${CYAN}v1MetricsExchangeCurrentGet${OFF};Current metrics for given exchange (AUTH) (AUTH)
  ${CYAN}v1MetricsExchangeHistoryGet${OFF};Historical metrics for the exchange (AUTH) (AUTH)
  ${CYAN}v1MetricsExchangeListingGet${OFF};Listing of all supported exchange metrics (AUTH) (AUTH)
  ${CYAN}v1MetricsListingGet${OFF};Listing of all supported metrics by CoinAPI (AUTH) (AUTH)
  ${CYAN}v1MetricsSymbolCurrentGet${OFF};Current metrics for given symbol (AUTH) (AUTH)
  ${CYAN}v1MetricsSymbolHistoryGet${OFF};Historical metrics for symbol (AUTH) (AUTH)
  ${CYAN}v1MetricsSymbolListingGet${OFF};Listing of all supported metrics for symbol (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[metricsV2]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}marketdataListMetricsV2AssetHistory${OFF};Historical metrics for the asset (AUTH) (AUTH)
  ${CYAN}marketdataListMetricsV2AssetListing${OFF};Listing of metrics available for specific asset (AUTH) (AUTH)
  ${CYAN}marketdataListMetricsV2ChainHistory${OFF};Historical metrics for the chain (AUTH) (AUTH)
  ${CYAN}marketdataListMetricsV2ChainListing${OFF};Listing of metrics available for specific chain (AUTH) (AUTH)
  ${CYAN}marketdataListMetricsV2ExchangeHistory${OFF};Historical metrics for the exchange (AUTH) (AUTH)
  ${CYAN}marketdataListMetricsV2ExchangeListing${OFF};Listing of metrics available for specific exchange (AUTH) (AUTH)
  ${CYAN}marketdataListMetricsV2Listing${OFF};Listing of all supported metrics (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[oHLCV]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1OhlcvExchangesExchangeIdHistoryGet${OFF};Historical data by exchange (AUTH) (AUTH)
  ${CYAN}v1OhlcvPeriodsGet${OFF};List all periods (AUTH) (AUTH)
  ${CYAN}v1OhlcvSymbolIdHistoryGet${OFF};Historical data (AUTH) (AUTH)
  ${CYAN}v1OhlcvSymbolIdLatestGet${OFF};Latest data (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[options]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1OptionsExchangeIdCurrentGet${OFF};Current data by Exchange (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[orderBook]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1OrderbooksSymbolIdCurrentGet${OFF};Get current order book (AUTH) (AUTH)
  ${CYAN}v1OrderbooksSymbolIdDepthCurrentGet${OFF};Current depth of the order book (AUTH) (AUTH)
  ${CYAN}v1OrderbooksSymbolIdHistoryGet${OFF};Historical data (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[orderBookL3]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1Orderbooks3CurrentGet${OFF};Current order books (AUTH) (AUTH)
  ${CYAN}v1Orderbooks3SymbolIdCurrentGet${OFF};Current order book by symbol_id (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[quotes]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1QuotesCurrentGet${OFF};Current data (AUTH) (AUTH)
  ${CYAN}v1QuotesLatestGet${OFF};Latest data (AUTH) (AUTH)
  ${CYAN}v1QuotesSymbolIdCurrentGet${OFF};Current quotes for a specific symbol (AUTH) (AUTH)
  ${CYAN}v1QuotesSymbolIdHistoryGet${OFF};Historical data (AUTH) (AUTH)
  ${CYAN}v1QuotesSymbolIdLatestGet${OFF};Latest quote updates for a specific symbol (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[trades]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1TradesLatestGet${OFF};Latest data (AUTH) (AUTH)
  ${CYAN}v1TradesSymbolIdHistoryGet${OFF};Historical data (AUTH) (AUTH)
  ${CYAN}v1TradesSymbolIdLatestGet${OFF};Latest data by symbol_id (AUTH) (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://rest.coinapi.io')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}CoinAPI Market Data REST API command line client (API version v1)${OFF}"
    echo ""
    echo -e "License: MIT License"
    echo -e "Contact: support@apibricks.io"
    echo ""
read -r -d '' appdescription <<EOF

Cryptocurrency market data: metadata, quotes, books, trades, OHLCV, rates, metrics, options.
EOF
echo "$appdescription" | paste -sd' ' - | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}CoinAPI Market Data REST API command line client (API version v1)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for getSpecificRate operation
#
##############################################################################
print_getSpecificRate_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getSpecificRate - Get specific rate${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}asset_id_base${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Requested exchange rate base asset identifier (from the Metadata -> Assets) ${YELLOW}Specify as: asset_id_base=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_id_quote${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Requested exchange rate quote asset identifier (from the Metadata -> Assets) ${YELLOW}Specify as: asset_id_quote=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)${YELLOW} Specify as: time=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet operation
#
##############################################################################
print_v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet - Timeseries data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the historical exchange rates between two assets in the form of the timeseries." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}asset_id_base${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Requested exchange rates base asset identifier (from the Metadata -> Assets) ${YELLOW}Specify as: asset_id_base=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_id_quote${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Requested exchange rates base asset identifier (from the Metadata -> Assets) ${YELLOW}Specify as: asset_id_quote=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (required, e.g. '5SEC' or '1HRS')${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timeseries starting time in ISO 8601 (required)${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timeseries ending time in ISO 8601 (required)${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ExchangerateAssetIdBaseGet operation
#
##############################################################################
print_v1ExchangerateAssetIdBaseGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ExchangerateAssetIdBaseGet - Get all current rates${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the current exchange rate between requested asset and all other assets.
            
:::info
If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.
:::
            
:::info
You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}asset_id_base${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Requested exchange rates base asset identifier (from the Metadata -> Assets) ${YELLOW}Specify as: asset_id_base=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_asset_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited asset identifiers used to filter response (optional)${YELLOW} Specify as: filter_asset_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invert${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - True will invert all the rates (optional, if true then rates will be calculated as 'rate = 1 / actual_rate' eg. 'USD/BTC' as 'BTC/USD')${YELLOW} Specify as: invert=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Time for historical rates (optional)${YELLOW} Specify as: time=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ExchangerateHistoryPeriodsGet operation
#
##############################################################################
print_v1ExchangerateHistoryPeriodsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ExchangerateHistoryPeriodsGet - Timeseries periods${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "You can also obtain historical exchange rates of any asset pair, grouped into time periods.
Get full list of supported time periods available for requesting exchange rates historical timeseries data.
            
## Timeseries periods
Time unit |	Period identifiers
--- | ---
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AssetsAssetIdGet operation
#
##############################################################################
print_v1AssetsAssetIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AssetsAssetIdGet - List all assets by asset ID${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}asset_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The asset ID. ${YELLOW}Specify as: asset_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AssetsGet operation
#
##############################################################################
print_v1AssetsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AssetsGet - List all assets${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_asset_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. 'BTC;ETH').${YELLOW} Specify as: filter_asset_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_asset_type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK.${YELLOW} Specify as: filter_asset_type=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1AssetsIconsSizeGet operation
#
##############################################################################
print_v1AssetsIconsSizeGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1AssetsIconsSizeGet - List all asset icons${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets the list of icons (of the given size) for all the assets." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The size of the icons. ${YELLOW}Specify as: size=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ChainsChainIdGet operation
#
##############################################################################
print_v1ChainsChainIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ChainsChainIdGet - List all chains by chain ID${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The chain ID. ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ChainsGet operation
#
##############################################################################
print_v1ChainsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ChainsGet - List all blockchain chains${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all blockchain chains supported by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_chain_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. 'ETHEREUM;ARBITRUM').${YELLOW} Specify as: filter_chain_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ExchangesExchangeIdGet operation
#
##############################################################################
print_v1ExchangesExchangeIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ExchangesExchangeIdGet - List all exchanges by exchange_id${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The ID of the exchange. ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ExchangesGet operation
#
##############################################################################
print_v1ExchangesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ExchangesGet - List all exchanges${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. 'BITSTAMP;GEMINI')${YELLOW} Specify as: filter_exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ExchangesIconsSizeGet operation
#
##############################################################################
print_v1ExchangesIconsSizeGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ExchangesIconsSizeGet - List of icons for the exchanges${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}size${OFF} ${BLUE}[integer]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The size of the icons. ${YELLOW}Specify as: size=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SymbolsExchangeIdActiveGet operation
#
##############################################################################
print_v1SymbolsExchangeIdActiveGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SymbolsExchangeIdActiveGet - List all active symbols${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all currently active (listed) symbols, with optional filtering.
            
:::info
\"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.
:::
            
:::info
You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.
:::
            
### Symbol identifier
            
Our symbol identifier is created using a pattern that depends on symbol type.
            
Type | 'symbol_id' pattern
--------- | ---------
SPOT | '{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}'
FUTURES | '{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}'
OPTION | '{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}'
PERPETUAL | '{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}'
DEPLOYER_PERPETUAL | '{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}'
INDEX | '{exchange_id}_IDX_{index_id}'
CREDIT | '{exchange_id}_CRE_{asset_id_base}'
CONTACT  | '{exchange_id}_COT_{contract_id}'
OPTION_COMBO | '{exchange_id}_OPTCMB_{exchange_symbol_id}'
FUTURE_COMBO | '{exchange_id}_FTSCMB_{exchange_symbol_id}'
            
:::info
In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.
:::info
            
### Symbol types list (enumeration of 'symbol_type' output variable)
            
Type | Name | Description
-------- | - | -----------
SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*
FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time
OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date
PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time
DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)*
INDEX | Index | Statistical composite that measures changes in the economy or markets.
CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.
CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*
OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)*
FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*
            
### Additional output variables for 'symbol_type = INDEX'
            
Variable | Description
--------- | -----------
index_id | Index identifier
index_display_name | Human readable name of the index *(optional)*
index_display_description | Description of the index *(optional)*
            
### Additional output variables for 'symbol_type = FUTURES'
            
Variable | Description
--------- | -----------
future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601
future_contract_unit | Contact size *(eg. 10 BTC if 'future_contract_unit' = '10' and 'future_contract_unit_asset' = 'BTC')*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for 'symbol_type = PERPETUAL'
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if 'future_contract_unit' = '10' and 'future_contract_unit_asset' = 'BTC')*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for 'symbol_type = DEPLOYER_PERPETUAL'
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if 'future_contract_unit' = '10' and 'future_contract_unit_asset' = 'BTC')*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for 'symbol_type = OPTION'
            
Variable | Description
--------- | -----------
option_type_is_call | Boolean value representing option type. 'true' for Call options, 'false' for Put options
option_strike_price | Price at which option contract can be exercised
option_contract_unit | Base asset amount of underlying spot which single option represents
option_exercise_style | Option exercise style. Can be 'EUROPEAN' or 'AMERICAN'
option_expiration_time | Option contract expiration time in ISO 8601
            
### Additional output variables for 'symbol_type = CONTRACT'
            
Variable | Description
--------- | -----------
contract_delivery_time | Predetermined time of contract delivery date in ISO 8601
contract_unit | Contact size *(eg. 10 BTC if 'contract_unit' = '10' and 'contract_unit_asset' = 'BTC')*
contract_unit_asset | Identifier of the asset used to denominate the contract unit
contract_id | Identifier of contract by the exchange" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The ID of the exchange. ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_symbol_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. 'BITSTAMP'_ or 'BINANCE_SPOT_')${YELLOW} Specify as: filter_symbol_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_asset_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The filter for asset ID.${YELLOW} Specify as: filter_asset_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SymbolsExchangeIdHistoryGet operation
#
##############################################################################
print_v1SymbolsExchangeIdHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SymbolsExchangeIdHistoryGet - List all historical symbols for an exchange.${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange.
The data is provided with pagination support." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The ID of the exchange. ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1)${OFF} - The page number for pagination (starts from 1).${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Number of records to return per page.${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1SymbolsMapExchangeIdGet operation
#
##############################################################################
print_v1SymbolsMapExchangeIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1SymbolsMapExchangeIdGet - List active symbol mapping for the exchange${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The ID of the exchange (from the Metadata -> Exchanges) ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsAssetCurrentGet operation
#
##############################################################################
print_v1MetricsAssetCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsAssetCurrentGet - Current metrics for given asset${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get current asset metrics." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (from the Metrics -> Listing)${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Asset identifier (from the Metadata -> Assets)${YELLOW} Specify as: asset_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_id_external${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Exchange asset identifier${YELLOW} Specify as: asset_id_external=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier (from the Metadata -> Exchanges)${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsAssetHistoryGet operation
#
##############################################################################
print_v1MetricsAssetHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsAssetHistoryGet - Historical metrics for asset${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get asset metrics history." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (from the Metrics -> Listing)${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier (from the Metadata -> Exchanges)${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Asset identifier (from the Metadata -> Assets)${YELLOW} Specify as: asset_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_id_external${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Exchange asset identifier${YELLOW} Specify as: asset_id_external=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)${YELLOW} Specify as: time_format=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '2MTH'), default value is '1SEC'${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsAssetListingGet operation
#
##############################################################################
print_v1MetricsAssetListingGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsAssetListingGet - Listing of all supported metrics for asset${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get data metrics for asset." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (from the Metrics -> Listing)${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier (from the Metadata -> Exchanges)${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Chain identifier${YELLOW} Specify as: chain_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}network_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Network identifier${YELLOW} Specify as: network_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Asset identifier (from the Metadata -> Assets)${YELLOW} Specify as: asset_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_id_external${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The asset external identifier${YELLOW} Specify as: asset_id_external=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsExchangeCurrentGet operation
#
##############################################################################
print_v1MetricsExchangeCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsExchangeCurrentGet - Current metrics for given exchange${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get current exchange metrics values." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange identifier (from the Metadata -> Exchanges)${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The metric identifier (from the Metrics -> Listing)${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsExchangeHistoryGet operation
#
##############################################################################
print_v1MetricsExchangeHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsExchangeHistoryGet - Historical metrics for the exchange${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get exchange metrics history." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (from the Metrics -> Listing)${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier (from the Metadata -> Exchanges)${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)${YELLOW} Specify as: time_format=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '2MTH'), default value is '1SEC'${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsExchangeListingGet operation
#
##############################################################################
print_v1MetricsExchangeListingGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsExchangeListingGet - Listing of all supported exchange metrics${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get data metrics for exchange. Returns both exchange-level and symbol-level metrics.
For exchange-level metrics, the 'symbol_id' field will be null.
For symbol-level metrics, the 'symbol_id' field contains the CoinAPI symbol identifier." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The exchange identifier (from the Metadata -> Exchanges)${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The metric identifier (from the Metrics -> Listing)${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsListingGet operation
#
##############################################################################
print_v1MetricsListingGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsListingGet - Listing of all supported metrics by CoinAPI${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all data metrics." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsSymbolCurrentGet operation
#
##############################################################################
print_v1MetricsSymbolCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsSymbolCurrentGet - Current metrics for given symbol${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get current symbol metrics." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (from the Metrics -> Listing)${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier (from the Metadata -> Symbols)${YELLOW} Specify as: symbol_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Exchange id (from the Metadata -> Exchanges)${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsSymbolHistoryGet operation
#
##############################################################################
print_v1MetricsSymbolHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsSymbolHistoryGet - Historical metrics for symbol${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get symbol metrics history." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (from the Metrics -> Listing)${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier (from the Metadata -> Symbols)${YELLOW} Specify as: symbol_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)${YELLOW} Specify as: time_format=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '2MTH'), default value is '1SEC'${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetricsSymbolListingGet operation
#
##############################################################################
print_v1MetricsSymbolListingGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetricsSymbolListingGet - Listing of all supported metrics for symbol${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get data metrics for symbol. Returns only symbol-level metrics (entries that have a symbol associated).
The 'symbol_id' field is always populated with the CoinAPI symbol identifier." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (from the Metrics -> Listing)${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier (from the Metadata -> Exchanges)${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier (from the Metadata -> Symbols)${YELLOW} Specify as: symbol_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for marketdataListMetricsV2AssetHistory operation
#
##############################################################################
print_marketdataListMetricsV2AssetHistory_help() {
    echo ""
    echo -e "${BOLD}${WHITE}marketdataListMetricsV2AssetHistory - Historical metrics for the asset${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get asset metrics history." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (e.g., 'TVL', 'STABLES_BRIDGED_USD')${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}asset_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Asset identifier (e.g., 'USDC', 'USDT')${YELLOW} Specify as: asset_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)${YELLOW} Specify as: time_format=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '1MIN' or '2MTH'), default value is '1MIN'${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Invalid input, e.g., missing required parameters, invalid asset_id.${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error.${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for marketdataListMetricsV2AssetListing operation
#
##############################################################################
print_marketdataListMetricsV2AssetListing_help() {
    echo ""
    echo -e "${BOLD}${WHITE}marketdataListMetricsV2AssetListing - Listing of metrics available for specific asset${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all metrics that are actually available for the specified asset." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}asset_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Asset identifier (e.g., USDC, USDT)${YELLOW} Specify as: asset_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for marketdataListMetricsV2ChainHistory operation
#
##############################################################################
print_marketdataListMetricsV2ChainHistory_help() {
    echo ""
    echo -e "${BOLD}${WHITE}marketdataListMetricsV2ChainHistory - Historical metrics for the chain${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get chain metrics history." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (e.g., 'TVL', 'STABLES_BRIDGED_USD')${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain identifier (e.g., 'Ethereum', 'Arbitrum')${YELLOW} Specify as: chain_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)${YELLOW} Specify as: time_format=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '1MIN' or '2MTH'), default value is '1MIN'${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Invalid input, e.g., missing required parameters, invalid chain_id.${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error.${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for marketdataListMetricsV2ChainListing operation
#
##############################################################################
print_marketdataListMetricsV2ChainListing_help() {
    echo ""
    echo -e "${BOLD}${WHITE}marketdataListMetricsV2ChainListing - Listing of metrics available for specific chain${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all metrics that are actually available for the specified blockchain chain." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain identifier (e.g., ETHEREUM, ARBITRUM)${YELLOW} Specify as: chain_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for marketdataListMetricsV2ExchangeHistory operation
#
##############################################################################
print_marketdataListMetricsV2ExchangeHistory_help() {
    echo ""
    echo -e "${BOLD}${WHITE}marketdataListMetricsV2ExchangeHistory - Historical metrics for the exchange${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get exchange metrics history." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}metric_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Metric identifier (e.g., 'TVL', 'STABLES_BRIDGED_USD')${YELLOW} Specify as: metric_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier (e.g., 'BINANCE', 'UNISWAP-V3-ETHEREUM')${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_format${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)${YELLOW} Specify as: time_format=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '1MIN' or '2MTH'), default value is '1MIN'${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Invalid input, e.g., missing required parameters, invalid exchange_id mapping.${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal server error.${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for marketdataListMetricsV2ExchangeListing operation
#
##############################################################################
print_marketdataListMetricsV2ExchangeListing_help() {
    echo ""
    echo -e "${BOLD}${WHITE}marketdataListMetricsV2ExchangeListing - Listing of metrics available for specific exchange${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all metrics that are actually available for the specified exchange." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)${YELLOW} Specify as: exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for marketdataListMetricsV2Listing operation
#
##############################################################################
print_marketdataListMetricsV2Listing_help() {
    echo ""
    echo -e "${BOLD}${WHITE}marketdataListMetricsV2Listing - Listing of all supported metrics${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all metrics available in the system." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OhlcvExchangesExchangeIdHistoryGet operation
#
##############################################################################
print_v1OhlcvExchangesExchangeIdHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OhlcvExchangesExchangeIdHistoryGet - Historical data by exchange${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg 'BITSTAMP'
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
The difference between 'time_end' and 'time_start' cannot be higher than 1 day.
The 'period_id' cannot be higher than '1DAY'.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier of requested timeseries (from the Metadata -> Exchanges) ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '1DAY')${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Timeseries starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Timeseries ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OhlcvPeriodsGet operation
#
##############################################################################
print_v1OhlcvPeriodsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OhlcvPeriodsGet - List all periods${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get full list of supported time periods available for requesting OHLCV timeseries data.
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OhlcvSymbolIdHistoryGet operation
#
##############################################################################
print_v1OhlcvSymbolIdHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OhlcvSymbolIdHistoryGet - Historical data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg 'BITSTAMP_SPOT_BTC_USD', if you need to query timeseries by asset pairs eg. 'BTC/USD', then please reffer to the Exchange Rates Timeseries data
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier of requested timeseries (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '2MTH')${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timeseries starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timeseries ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OhlcvSymbolIdLatestGet operation
#
##############################################################################
print_v1OhlcvSymbolIdLatestGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OhlcvSymbolIdLatestGet - Latest data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg 'BITSTAMP_SPOT_BTC_USD', if you need to query timeseries by asset pairs eg. 'BTC/USD', then please reffer to the Exchange Rates Timeseries data
            
:::info
OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted 'time_start' and 'time_end' parameters. 
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier of requested timeseries (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '2MTH')${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OptionsExchangeIdCurrentGet operation
#
##############################################################################
print_v1OptionsExchangeIdCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OptionsExchangeIdCurrentGet - Current data by Exchange${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get current options data for a specific exchange.

Returns option data grouped by underlying asset, quote currency, and expiration time,
with quotes for both calls and puts at each strike price." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Exchange identifier (from the Metadata -> Exchanges) ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OrderbooksSymbolIdCurrentGet operation
#
##############################################################################
print_v1OrderbooksSymbolIdCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OrderbooksSymbolIdCurrentGet - Get current order book${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves the current order book for the specified symbol." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The symbol ID (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit_levels${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The maximum number of levels to include in the response.${YELLOW} Specify as: limit_levels=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OrderbooksSymbolIdDepthCurrentGet operation
#
##############################################################################
print_v1OrderbooksSymbolIdDepthCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OrderbooksSymbolIdDepthCurrentGet - Current depth of the order book${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves the current depth of the order book for the specified symbol." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The symbol ID (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit_levels${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The maximum number of levels to include in the response.${YELLOW} Specify as: limit_levels=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1OrderbooksSymbolIdHistoryGet operation
#
##############################################################################
print_v1OrderbooksSymbolIdHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1OrderbooksSymbolIdHistoryGet - Historical data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.
            
:::info
The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 50 levels.
:::
            
This endpoint supports hourly granularity for APITP data with automatic fallback to daily data for older records.
Timestamps are normalized to hour boundaries, and data is fetched per hour with precise filtering to your exact time range.
            
:::tip
For querying a full day of data, use the 'date' parameter. For specific time ranges (including cross-day or multi-hour queries), use 'time_start' and 'time_end'.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier for requested timeseries (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)${YELLOW} Specify as: date=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Starting time in ISO 8601 (supports hourly precision, e.g., 2026-01-16T11:00:00Z)${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timeseries ending time in ISO 8601 (optional, supports cross-day queries)${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit_levels${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Maximum amount of levels from each side of the book to include in response (optional, maximum is 50)${YELLOW} Specify as: limit_levels=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1Orderbooks3CurrentGet operation
#
##############################################################################
print_v1Orderbooks3CurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1Orderbooks3CurrentGet - Current order books${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_symbol_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited parts of symbol identifier used to filter the response.${YELLOW} Specify as: filter_symbol_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit_levels${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The maximum number of levels to include in the response.${YELLOW} Specify as: limit_levels=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1Orderbooks3SymbolIdCurrentGet operation
#
##############################################################################
print_v1Orderbooks3SymbolIdCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1Orderbooks3SymbolIdCurrentGet - Current order book by symbol_id${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves the current L3 order book for the specified symbol.
L3 order books include individual order IDs for each price level." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The symbol ID (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit_levels${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The maximum number of levels to include in the response.${YELLOW} Specify as: limit_levels=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1QuotesCurrentGet operation
#
##############################################################################
print_v1QuotesCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1QuotesCurrentGet - Current data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get current quotes for all symbols or for a specific symbol.
            
:::info
When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_symbol_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)${YELLOW} Specify as: filter_symbol_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited exchange identifiers used to filter response. (optional)${YELLOW} Specify as: filter_exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1QuotesLatestGet operation
#
##############################################################################
print_v1QuotesLatestGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1QuotesLatestGet - Latest data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_symbol_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)${YELLOW} Specify as: filter_symbol_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited exchange identifiers used to filter response. (optional)${YELLOW} Specify as: filter_exchange_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1QuotesSymbolIdCurrentGet operation
#
##############################################################################
print_v1QuotesSymbolIdCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1QuotesSymbolIdCurrentGet - Current quotes for a specific symbol${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The symbol identifier (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1QuotesSymbolIdHistoryGet operation
#
##############################################################################
print_v1QuotesSymbolIdHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1QuotesSymbolIdHistoryGet - Historical data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get historical quote updates within requested time range, returned in time ascending order.
            
This endpoint supports hourly granularity for APITP data with automatic fallback to daily data for older records.
Timestamps are normalized to hour boundaries, and data is fetched per hour with precise filtering to your exact time range.
            
:::tip
For querying a full day of data, use the 'date' parameter. For specific time ranges (including cross-day or multi-hour queries), use 'time_start' and 'time_end'.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier for requested timeseries (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)${YELLOW} Specify as: date=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Starting time in ISO 8601 (supports hourly precision, e.g., 2026-01-16T11:00:00Z)${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timeseries ending time in ISO 8601 (optional, supports cross-day queries)${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1QuotesSymbolIdLatestGet operation
#
##############################################################################
print_v1QuotesSymbolIdLatestGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1QuotesSymbolIdLatestGet - Latest quote updates for a specific symbol${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier of requested timeseries (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1TradesLatestGet operation
#
##############################################################################
print_v1TradesLatestGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1TradesLatestGet - Latest data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_symbol_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)${YELLOW} Specify as: filter_symbol_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}include_id${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Information that additional exchange trade identifier should be included in the 'id_trade' parameter of the trade if exchange providing identifiers.${YELLOW} Specify as: include_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1TradesSymbolIdHistoryGet operation
#
##############################################################################
print_v1TradesSymbolIdHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1TradesSymbolIdHistoryGet - Historical data${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get history transactions from specific symbol, returned in time ascending order.
            
This endpoint supports hourly granularity for APITP data with automatic fallback to daily data for older records.
Timestamps are normalized to hour boundaries, and data is fetched per hour with precise filtering to your exact time range.
            
:::tip
For querying a full day of data, use the 'date' parameter. For specific time ranges (including cross-day or multi-hour queries), use 'time_start' and 'time_end'.
:::" | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier for requested timeseries (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}date${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)${YELLOW} Specify as: date=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Starting time in ISO 8601 (supports hourly precision, e.g., 2026-01-16T11:00:00Z)${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timeseries ending time in ISO 8601 (optional, supports cross-day queries)${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}include_id${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Information that additional exchange trade identifier should be included in the 'id_trade' parameter of the trade if exchange providing identifiers.${YELLOW} Specify as: include_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1TradesSymbolIdLatestGet operation
#
##############################################################################
print_v1TradesSymbolIdLatestGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1TradesSymbolIdLatestGet - Latest data by symbol_id${OFF}${BLUE}(AUTH - HEADER)${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order." | paste -sd' ' - | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}symbol_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Symbol identifier for requested timeseries (from the Metadata -> Symbols) ${YELLOW}Specify as: symbol_id=value${OFF}" | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}include_id${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Information that additional exchange trade identifier should be included in the 'id_trade' parameter of the trade if exchange providing identifiers.${YELLOW} Specify as: include_id=value${OFF}" \
        | paste -sd' ' - | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' - | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call getSpecificRate operation
#
##############################################################################
call_getSpecificRate() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(asset_id_base asset_id_quote)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(time    )
    local path

    if ! path=$(build_request_path "/v1/exchangerate/{asset_id_base}/{asset_id_quote}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet operation
#
##############################################################################
call_v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(asset_id_base asset_id_quote)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(period_id time_start time_end limit    )
    local path

    if ! path=$(build_request_path "/v1/exchangerate/{asset_id_base}/{asset_id_quote}/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ExchangerateAssetIdBaseGet operation
#
##############################################################################
call_v1ExchangerateAssetIdBaseGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(asset_id_base)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_asset_id invert time    )
    local path

    if ! path=$(build_request_path "/v1/exchangerate/{asset_id_base}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ExchangerateHistoryPeriodsGet operation
#
##############################################################################
call_v1ExchangerateHistoryPeriodsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/exchangerate/history/periods" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AssetsAssetIdGet operation
#
##############################################################################
call_v1AssetsAssetIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(asset_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/assets/{asset_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AssetsGet operation
#
##############################################################################
call_v1AssetsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_asset_id filter_asset_type    )
    local path

    if ! path=$(build_request_path "/v1/assets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1AssetsIconsSizeGet operation
#
##############################################################################
call_v1AssetsIconsSizeGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(size)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/assets/icons/{size}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ChainsChainIdGet operation
#
##############################################################################
call_v1ChainsChainIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/chains/{chain_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ChainsGet operation
#
##############################################################################
call_v1ChainsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_chain_id    )
    local path

    if ! path=$(build_request_path "/v1/chains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ExchangesExchangeIdGet operation
#
##############################################################################
call_v1ExchangesExchangeIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/exchanges/{exchange_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ExchangesGet operation
#
##############################################################################
call_v1ExchangesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_exchange_id    )
    local path

    if ! path=$(build_request_path "/v1/exchanges" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1ExchangesIconsSizeGet operation
#
##############################################################################
call_v1ExchangesIconsSizeGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(size)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/exchanges/icons/{size}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1SymbolsExchangeIdActiveGet operation
#
##############################################################################
call_v1SymbolsExchangeIdActiveGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_symbol_id filter_asset_id    )
    local path

    if ! path=$(build_request_path "/v1/symbols/{exchange_id}/active" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1SymbolsExchangeIdHistoryGet operation
#
##############################################################################
call_v1SymbolsExchangeIdHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page limit    )
    local path

    if ! path=$(build_request_path "/v1/symbols/{exchange_id}/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1SymbolsMapExchangeIdGet operation
#
##############################################################################
call_v1SymbolsMapExchangeIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/symbols/map/{exchange_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsAssetCurrentGet operation
#
##############################################################################
call_v1MetricsAssetCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id asset_id asset_id_external exchange_id    )
    local path

    if ! path=$(build_request_path "/v1/metrics/asset/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsAssetHistoryGet operation
#
##############################################################################
call_v1MetricsAssetHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id asset_id asset_id_external exchange_id time_start time_end time_format period_id limit    )
    local path

    if ! path=$(build_request_path "/v1/metrics/asset/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsAssetListingGet operation
#
##############################################################################
call_v1MetricsAssetListingGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id exchange_id chain_id network_id asset_id asset_id_external    )
    local path

    if ! path=$(build_request_path "/v1/metrics/asset/listing" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsExchangeCurrentGet operation
#
##############################################################################
call_v1MetricsExchangeCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id exchange_id    )
    local path

    if ! path=$(build_request_path "/v1/metrics/exchange/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsExchangeHistoryGet operation
#
##############################################################################
call_v1MetricsExchangeHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id exchange_id time_start time_end time_format period_id limit    )
    local path

    if ! path=$(build_request_path "/v1/metrics/exchange/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsExchangeListingGet operation
#
##############################################################################
call_v1MetricsExchangeListingGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id exchange_id    )
    local path

    if ! path=$(build_request_path "/v1/metrics/exchange/listing" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsListingGet operation
#
##############################################################################
call_v1MetricsListingGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/metrics/listing" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsSymbolCurrentGet operation
#
##############################################################################
call_v1MetricsSymbolCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id symbol_id exchange_id    )
    local path

    if ! path=$(build_request_path "/v1/metrics/symbol/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsSymbolHistoryGet operation
#
##############################################################################
call_v1MetricsSymbolHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id symbol_id time_start time_end time_format period_id limit    )
    local path

    if ! path=$(build_request_path "/v1/metrics/symbol/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetricsSymbolListingGet operation
#
##############################################################################
call_v1MetricsSymbolListingGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id exchange_id symbol_id    )
    local path

    if ! path=$(build_request_path "/v1/metrics/symbol/listing" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call marketdataListMetricsV2AssetHistory operation
#
##############################################################################
call_marketdataListMetricsV2AssetHistory() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id asset_id time_start time_end time_format period_id limit    )
    local path

    if ! path=$(build_request_path "/v2/metrics/asset/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call marketdataListMetricsV2AssetListing operation
#
##############################################################################
call_marketdataListMetricsV2AssetListing() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(asset_id    )
    local path

    if ! path=$(build_request_path "/v2/metrics/asset/listing" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call marketdataListMetricsV2ChainHistory operation
#
##############################################################################
call_marketdataListMetricsV2ChainHistory() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id chain_id time_start time_end time_format period_id limit    )
    local path

    if ! path=$(build_request_path "/v2/metrics/chain/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call marketdataListMetricsV2ChainListing operation
#
##############################################################################
call_marketdataListMetricsV2ChainListing() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(chain_id    )
    local path

    if ! path=$(build_request_path "/v2/metrics/chain/listing" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call marketdataListMetricsV2ExchangeHistory operation
#
##############################################################################
call_marketdataListMetricsV2ExchangeHistory() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(metric_id exchange_id time_start time_end time_format period_id limit    )
    local path

    if ! path=$(build_request_path "/v2/metrics/exchange/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call marketdataListMetricsV2ExchangeListing operation
#
##############################################################################
call_marketdataListMetricsV2ExchangeListing() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(exchange_id    )
    local path

    if ! path=$(build_request_path "/v2/metrics/exchange/listing" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call marketdataListMetricsV2Listing operation
#
##############################################################################
call_marketdataListMetricsV2Listing() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v2/metrics/listing" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OhlcvExchangesExchangeIdHistoryGet operation
#
##############################################################################
call_v1OhlcvExchangesExchangeIdHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(period_id time_start time_end    )
    local path

    if ! path=$(build_request_path "/v1/ohlcv/exchanges/{exchange_id}/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OhlcvPeriodsGet operation
#
##############################################################################
call_v1OhlcvPeriodsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/ohlcv/periods" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OhlcvSymbolIdHistoryGet operation
#
##############################################################################
call_v1OhlcvSymbolIdHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(period_id time_start time_end limit    )
    local path

    if ! path=$(build_request_path "/v1/ohlcv/{symbol_id}/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OhlcvSymbolIdLatestGet operation
#
##############################################################################
call_v1OhlcvSymbolIdLatestGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(period_id limit    )
    local path

    if ! path=$(build_request_path "/v1/ohlcv/{symbol_id}/latest" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OptionsExchangeIdCurrentGet operation
#
##############################################################################
call_v1OptionsExchangeIdCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/options/{exchange_id}/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OrderbooksSymbolIdCurrentGet operation
#
##############################################################################
call_v1OrderbooksSymbolIdCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(limit_levels    )
    local path

    if ! path=$(build_request_path "/v1/orderbooks/{symbol_id}/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OrderbooksSymbolIdDepthCurrentGet operation
#
##############################################################################
call_v1OrderbooksSymbolIdDepthCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(limit_levels    )
    local path

    if ! path=$(build_request_path "/v1/orderbooks/{symbol_id}/depth/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1OrderbooksSymbolIdHistoryGet operation
#
##############################################################################
call_v1OrderbooksSymbolIdHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(date time_start time_end limit limit_levels    )
    local path

    if ! path=$(build_request_path "/v1/orderbooks/{symbol_id}/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1Orderbooks3CurrentGet operation
#
##############################################################################
call_v1Orderbooks3CurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_symbol_id limit_levels    )
    local path

    if ! path=$(build_request_path "/v1/orderbooks3/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1Orderbooks3SymbolIdCurrentGet operation
#
##############################################################################
call_v1Orderbooks3SymbolIdCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(limit_levels    )
    local path

    if ! path=$(build_request_path "/v1/orderbooks3/{symbol_id}/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1QuotesCurrentGet operation
#
##############################################################################
call_v1QuotesCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_symbol_id filter_exchange_id    )
    local path

    if ! path=$(build_request_path "/v1/quotes/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1QuotesLatestGet operation
#
##############################################################################
call_v1QuotesLatestGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_symbol_id filter_exchange_id limit    )
    local path

    if ! path=$(build_request_path "/v1/quotes/latest" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1QuotesSymbolIdCurrentGet operation
#
##############################################################################
call_v1QuotesSymbolIdCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(    )
    local path

    if ! path=$(build_request_path "/v1/quotes/{symbol_id}/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1QuotesSymbolIdHistoryGet operation
#
##############################################################################
call_v1QuotesSymbolIdHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(date time_start time_end limit    )
    local path

    if ! path=$(build_request_path "/v1/quotes/{symbol_id}/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1QuotesSymbolIdLatestGet operation
#
##############################################################################
call_v1QuotesSymbolIdLatestGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(limit    )
    local path

    if ! path=$(build_request_path "/v1/quotes/{symbol_id}/latest" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1TradesLatestGet operation
#
##############################################################################
call_v1TradesLatestGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_symbol_id include_id limit    )
    local path

    if ! path=$(build_request_path "/v1/trades/latest" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1TradesSymbolIdHistoryGet operation
#
##############################################################################
call_v1TradesSymbolIdHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(date time_start time_end limit include_id    )
    local path

    if ! path=$(build_request_path "/v1/trades/{symbol_id}/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1TradesSymbolIdLatestGet operation
#
##############################################################################
call_v1TradesSymbolIdLatestGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(symbol_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(limit include_id    )
    local path

    if ! path=$(build_request_path "/v1/trades/{symbol_id}/latest" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    getSpecificRate)
    operation="getSpecificRate"
    ;;
    v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet)
    operation="v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet"
    ;;
    v1ExchangerateAssetIdBaseGet)
    operation="v1ExchangerateAssetIdBaseGet"
    ;;
    v1ExchangerateHistoryPeriodsGet)
    operation="v1ExchangerateHistoryPeriodsGet"
    ;;
    v1AssetsAssetIdGet)
    operation="v1AssetsAssetIdGet"
    ;;
    v1AssetsGet)
    operation="v1AssetsGet"
    ;;
    v1AssetsIconsSizeGet)
    operation="v1AssetsIconsSizeGet"
    ;;
    v1ChainsChainIdGet)
    operation="v1ChainsChainIdGet"
    ;;
    v1ChainsGet)
    operation="v1ChainsGet"
    ;;
    v1ExchangesExchangeIdGet)
    operation="v1ExchangesExchangeIdGet"
    ;;
    v1ExchangesGet)
    operation="v1ExchangesGet"
    ;;
    v1ExchangesIconsSizeGet)
    operation="v1ExchangesIconsSizeGet"
    ;;
    v1SymbolsExchangeIdActiveGet)
    operation="v1SymbolsExchangeIdActiveGet"
    ;;
    v1SymbolsExchangeIdHistoryGet)
    operation="v1SymbolsExchangeIdHistoryGet"
    ;;
    v1SymbolsMapExchangeIdGet)
    operation="v1SymbolsMapExchangeIdGet"
    ;;
    v1MetricsAssetCurrentGet)
    operation="v1MetricsAssetCurrentGet"
    ;;
    v1MetricsAssetHistoryGet)
    operation="v1MetricsAssetHistoryGet"
    ;;
    v1MetricsAssetListingGet)
    operation="v1MetricsAssetListingGet"
    ;;
    v1MetricsExchangeCurrentGet)
    operation="v1MetricsExchangeCurrentGet"
    ;;
    v1MetricsExchangeHistoryGet)
    operation="v1MetricsExchangeHistoryGet"
    ;;
    v1MetricsExchangeListingGet)
    operation="v1MetricsExchangeListingGet"
    ;;
    v1MetricsListingGet)
    operation="v1MetricsListingGet"
    ;;
    v1MetricsSymbolCurrentGet)
    operation="v1MetricsSymbolCurrentGet"
    ;;
    v1MetricsSymbolHistoryGet)
    operation="v1MetricsSymbolHistoryGet"
    ;;
    v1MetricsSymbolListingGet)
    operation="v1MetricsSymbolListingGet"
    ;;
    marketdataListMetricsV2AssetHistory)
    operation="marketdataListMetricsV2AssetHistory"
    ;;
    marketdataListMetricsV2AssetListing)
    operation="marketdataListMetricsV2AssetListing"
    ;;
    marketdataListMetricsV2ChainHistory)
    operation="marketdataListMetricsV2ChainHistory"
    ;;
    marketdataListMetricsV2ChainListing)
    operation="marketdataListMetricsV2ChainListing"
    ;;
    marketdataListMetricsV2ExchangeHistory)
    operation="marketdataListMetricsV2ExchangeHistory"
    ;;
    marketdataListMetricsV2ExchangeListing)
    operation="marketdataListMetricsV2ExchangeListing"
    ;;
    marketdataListMetricsV2Listing)
    operation="marketdataListMetricsV2Listing"
    ;;
    v1OhlcvExchangesExchangeIdHistoryGet)
    operation="v1OhlcvExchangesExchangeIdHistoryGet"
    ;;
    v1OhlcvPeriodsGet)
    operation="v1OhlcvPeriodsGet"
    ;;
    v1OhlcvSymbolIdHistoryGet)
    operation="v1OhlcvSymbolIdHistoryGet"
    ;;
    v1OhlcvSymbolIdLatestGet)
    operation="v1OhlcvSymbolIdLatestGet"
    ;;
    v1OptionsExchangeIdCurrentGet)
    operation="v1OptionsExchangeIdCurrentGet"
    ;;
    v1OrderbooksSymbolIdCurrentGet)
    operation="v1OrderbooksSymbolIdCurrentGet"
    ;;
    v1OrderbooksSymbolIdDepthCurrentGet)
    operation="v1OrderbooksSymbolIdDepthCurrentGet"
    ;;
    v1OrderbooksSymbolIdHistoryGet)
    operation="v1OrderbooksSymbolIdHistoryGet"
    ;;
    v1Orderbooks3CurrentGet)
    operation="v1Orderbooks3CurrentGet"
    ;;
    v1Orderbooks3SymbolIdCurrentGet)
    operation="v1Orderbooks3SymbolIdCurrentGet"
    ;;
    v1QuotesCurrentGet)
    operation="v1QuotesCurrentGet"
    ;;
    v1QuotesLatestGet)
    operation="v1QuotesLatestGet"
    ;;
    v1QuotesSymbolIdCurrentGet)
    operation="v1QuotesSymbolIdCurrentGet"
    ;;
    v1QuotesSymbolIdHistoryGet)
    operation="v1QuotesSymbolIdHistoryGet"
    ;;
    v1QuotesSymbolIdLatestGet)
    operation="v1QuotesSymbolIdLatestGet"
    ;;
    v1TradesLatestGet)
    operation="v1TradesLatestGet"
    ;;
    v1TradesSymbolIdHistoryGet)
    operation="v1TradesSymbolIdHistoryGet"
    ;;
    v1TradesSymbolIdLatestGet)
    operation="v1TradesSymbolIdLatestGet"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    --body=*)
    # Parse value of body as argument and convert it into only
    # the raw body content
    if [[ "$operation" ]]; then
        IFS='--body=' read -r body_value <<< "$key"
        body_value=${body_value##--body=}
        body_parameters["RAW_BODY"]="${body_value}"
        RAW_BODY=1
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        #
        # If the header key is the same as the api_key expected by API in the
        # header, override the ${apikey_auth_credential} variable
        #
        if [[ $header_name == "Authorization" ]]; then
            apikey_auth_credential=$header_value
        fi
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    getSpecificRate)
    call_getSpecificRate
    ;;
    v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet)
    call_v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet
    ;;
    v1ExchangerateAssetIdBaseGet)
    call_v1ExchangerateAssetIdBaseGet
    ;;
    v1ExchangerateHistoryPeriodsGet)
    call_v1ExchangerateHistoryPeriodsGet
    ;;
    v1AssetsAssetIdGet)
    call_v1AssetsAssetIdGet
    ;;
    v1AssetsGet)
    call_v1AssetsGet
    ;;
    v1AssetsIconsSizeGet)
    call_v1AssetsIconsSizeGet
    ;;
    v1ChainsChainIdGet)
    call_v1ChainsChainIdGet
    ;;
    v1ChainsGet)
    call_v1ChainsGet
    ;;
    v1ExchangesExchangeIdGet)
    call_v1ExchangesExchangeIdGet
    ;;
    v1ExchangesGet)
    call_v1ExchangesGet
    ;;
    v1ExchangesIconsSizeGet)
    call_v1ExchangesIconsSizeGet
    ;;
    v1SymbolsExchangeIdActiveGet)
    call_v1SymbolsExchangeIdActiveGet
    ;;
    v1SymbolsExchangeIdHistoryGet)
    call_v1SymbolsExchangeIdHistoryGet
    ;;
    v1SymbolsMapExchangeIdGet)
    call_v1SymbolsMapExchangeIdGet
    ;;
    v1MetricsAssetCurrentGet)
    call_v1MetricsAssetCurrentGet
    ;;
    v1MetricsAssetHistoryGet)
    call_v1MetricsAssetHistoryGet
    ;;
    v1MetricsAssetListingGet)
    call_v1MetricsAssetListingGet
    ;;
    v1MetricsExchangeCurrentGet)
    call_v1MetricsExchangeCurrentGet
    ;;
    v1MetricsExchangeHistoryGet)
    call_v1MetricsExchangeHistoryGet
    ;;
    v1MetricsExchangeListingGet)
    call_v1MetricsExchangeListingGet
    ;;
    v1MetricsListingGet)
    call_v1MetricsListingGet
    ;;
    v1MetricsSymbolCurrentGet)
    call_v1MetricsSymbolCurrentGet
    ;;
    v1MetricsSymbolHistoryGet)
    call_v1MetricsSymbolHistoryGet
    ;;
    v1MetricsSymbolListingGet)
    call_v1MetricsSymbolListingGet
    ;;
    marketdataListMetricsV2AssetHistory)
    call_marketdataListMetricsV2AssetHistory
    ;;
    marketdataListMetricsV2AssetListing)
    call_marketdataListMetricsV2AssetListing
    ;;
    marketdataListMetricsV2ChainHistory)
    call_marketdataListMetricsV2ChainHistory
    ;;
    marketdataListMetricsV2ChainListing)
    call_marketdataListMetricsV2ChainListing
    ;;
    marketdataListMetricsV2ExchangeHistory)
    call_marketdataListMetricsV2ExchangeHistory
    ;;
    marketdataListMetricsV2ExchangeListing)
    call_marketdataListMetricsV2ExchangeListing
    ;;
    marketdataListMetricsV2Listing)
    call_marketdataListMetricsV2Listing
    ;;
    v1OhlcvExchangesExchangeIdHistoryGet)
    call_v1OhlcvExchangesExchangeIdHistoryGet
    ;;
    v1OhlcvPeriodsGet)
    call_v1OhlcvPeriodsGet
    ;;
    v1OhlcvSymbolIdHistoryGet)
    call_v1OhlcvSymbolIdHistoryGet
    ;;
    v1OhlcvSymbolIdLatestGet)
    call_v1OhlcvSymbolIdLatestGet
    ;;
    v1OptionsExchangeIdCurrentGet)
    call_v1OptionsExchangeIdCurrentGet
    ;;
    v1OrderbooksSymbolIdCurrentGet)
    call_v1OrderbooksSymbolIdCurrentGet
    ;;
    v1OrderbooksSymbolIdDepthCurrentGet)
    call_v1OrderbooksSymbolIdDepthCurrentGet
    ;;
    v1OrderbooksSymbolIdHistoryGet)
    call_v1OrderbooksSymbolIdHistoryGet
    ;;
    v1Orderbooks3CurrentGet)
    call_v1Orderbooks3CurrentGet
    ;;
    v1Orderbooks3SymbolIdCurrentGet)
    call_v1Orderbooks3SymbolIdCurrentGet
    ;;
    v1QuotesCurrentGet)
    call_v1QuotesCurrentGet
    ;;
    v1QuotesLatestGet)
    call_v1QuotesLatestGet
    ;;
    v1QuotesSymbolIdCurrentGet)
    call_v1QuotesSymbolIdCurrentGet
    ;;
    v1QuotesSymbolIdHistoryGet)
    call_v1QuotesSymbolIdHistoryGet
    ;;
    v1QuotesSymbolIdLatestGet)
    call_v1QuotesSymbolIdLatestGet
    ;;
    v1TradesLatestGet)
    call_v1TradesLatestGet
    ;;
    v1TradesSymbolIdHistoryGet)
    call_v1TradesSymbolIdHistoryGet
    ;;
    v1TradesSymbolIdLatestGet)
    call_v1TradesSymbolIdLatestGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
