#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for On Chain Dapps - REST API.
#
# LICENSE:
# https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE
#
# CONTACT:
# support@coinapi.io
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
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetBidsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetBidsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetBidsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetBidsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetBidsHistorical:::id"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::id"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetItemsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetItemsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetItemsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetItemsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::id"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::id"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetTradesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetTradesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetTradesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetTradesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetTradesHistorical:::id"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cRYPTOPUNKSGetUsersHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::address"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::sell_token"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::buy_token"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveExchangesCurrent:::pool"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditiesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditiesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditiesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditiesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditiesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditiesHistorical:::user"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::name"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::user"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::name"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curvePoolsCurrent:::id"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::user"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::buy_token"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::sell_token"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::address"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::buy_token"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::sell_token"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::user"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::user"]=0
operation_parameters_minimum_occurrences["metadataDappsDappNameGet:::dappName"]=1
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoriesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoriesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoriesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoriesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoriesHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::user"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::user"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::name"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapPairsCurrent:::id"]=0
operation_parameters_minimum_occurrences["sushiswapSwapsCurrent:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::user"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::user"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairsHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairsHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2PairsCurrent:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2SwapsCurrent:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoriesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoriesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoriesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoriesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoriesHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3PoolsCurrent:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3SwapsCurrent:::pool"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetBidsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetBidsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetBidsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetBidsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetBidsHistorical:::id"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetCollectionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetDataSourcesHistorical:::id"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetItemsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetItemsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetItemsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetItemsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketPlacesHistorical:::id"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::id"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetTradesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetTradesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetTradesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetTradesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetTradesHistorical:::id"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cRYPTOPUNKSGetUsersHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::address"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::sell_token"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::buy_token"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveExchangesCurrent:::pool"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditiesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditiesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditiesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditiesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditiesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditiesHistorical:::user"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::name"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::user"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::name"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curvePoolsCurrent:::id"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::user"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::buy_token"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::sell_token"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::address"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::buy_token"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::sell_token"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::user"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::user"]=0
operation_parameters_maximum_occurrences["metadataDappsDappNameGet:::dappName"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoriesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoriesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoriesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoriesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoriesHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::user"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::user"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::name"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapPairsCurrent:::id"]=0
operation_parameters_maximum_occurrences["sushiswapSwapsCurrent:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::user"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::user"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairsHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairsHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoriesHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2PairsCurrent:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2SwapsCurrent:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoriesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoriesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoriesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoriesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoriesHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3PoolsCurrent:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3SwapsCurrent:::pool"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["cRYPTOPUNKSGetBidsHistorical:::startBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetBidsHistorical:::endBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetBidsHistorical:::startDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetBidsHistorical:::endDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetBidsHistorical:::id"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::startBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::endBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::startDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetCollectionDailySnapshotsHistorical:::endDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetCollectionsHistorical:::startBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetCollectionsHistorical:::endBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetCollectionsHistorical:::startDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetCollectionsHistorical:::endDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetCollectionsHistorical:::id"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetDataSourcesHistorical:::startBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetDataSourcesHistorical:::endBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetDataSourcesHistorical:::startDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetDataSourcesHistorical:::endDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetDataSourcesHistorical:::id"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetItemsHistorical:::startBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetItemsHistorical:::endBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetItemsHistorical:::startDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetItemsHistorical:::endDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketPlacesHistorical:::startBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketPlacesHistorical:::endBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketPlacesHistorical:::startDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketPlacesHistorical:::endDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketPlacesHistorical:::id"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::startBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::endBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::startDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::endDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical:::id"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetTradesHistorical:::startBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetTradesHistorical:::endBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetTradesHistorical:::startDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetTradesHistorical:::endDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetTradesHistorical:::id"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["cRYPTOPUNKSGetUsersHistorical:::id"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::id"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::id"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::id"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::address"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::name"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::id"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::sell_token"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::buy_token"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::id"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::address"]=""
operation_parameters_collection_type["curveExchangesCurrent:::pool"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::id"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::address"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::id"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::id"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::id"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::id"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::id"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::address"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::id"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::id"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::pool"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::id"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::pool"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::id"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditiesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditiesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditiesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditiesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditiesHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditiesHistorical:::user"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::name"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::user"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::address"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::pool"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::id"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::pool"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::id"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::address"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::name"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::symbol"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::pool"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::id"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::name"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::id"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::id"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::id"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::id"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::id"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::id"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::address"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::name"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::id"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::id"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::id"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::address"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::id"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::pool"]=""
operation_parameters_collection_type["curvePoolsCurrent:::id"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::id"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::id"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::user"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::id"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::buy_token"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::sell_token"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::id"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::id"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::id"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::id"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::address"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::name"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::id"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::buy_token"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::sell_token"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::id"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::id"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::user"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::id"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::user"]=""
operation_parameters_collection_type["metadataDappsDappNameGet:::dappName"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetFactoriesHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetFactoriesHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetFactoriesHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetFactoriesHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetFactoriesHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::user"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::user"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataHistorical:::token_0"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataHistorical:::token_1"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::name"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::token_0"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::token_1"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::name"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::id"]=""
operation_parameters_collection_type["sushiswapPairsCurrent:::id"]=""
operation_parameters_collection_type["sushiswapSwapsCurrent:::pair"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotsHistorical:::user"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotsHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::user"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetPairsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPairsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPairsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetPairsHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV2GetPairsHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::name"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoriesHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoriesHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoriesHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoriesHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoriesHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2PairsCurrent:::id"]=""
operation_parameters_collection_type["uniswapV2SwapsCurrent:::pair"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetFactoriesHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetFactoriesHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetFactoriesHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetFactoriesHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetFactoriesHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotsHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::name"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3PoolsCurrent:::id"]=""
operation_parameters_collection_type["uniswapV3SwapsCurrent:::pool"]=""


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

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
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

${BOLD}${WHITE}On Chain Dapps - REST API command line client (API version v1)${OFF}

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
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[cRYPTOPUNKS]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}cRYPTOPUNKSBidsCurrent${OFF};Bids (current)
  ${CYAN}cRYPTOPUNKSCollectionDailySnapshotsCurrent${OFF};CollectionDailySnapshots (current)
  ${CYAN}cRYPTOPUNKSCollectionsCurrent${OFF};Collections (current)
  ${CYAN}cRYPTOPUNKSDataSourcesCurrent${OFF};DataSources (current)
  ${CYAN}cRYPTOPUNKSGetBidsHistorical${OFF};Bids (historical)
  ${CYAN}cRYPTOPUNKSGetCollectionDailySnapshotsHistorical${OFF};CollectionDailySnapshots (historical)
  ${CYAN}cRYPTOPUNKSGetCollectionsHistorical${OFF};Collections (historical)
  ${CYAN}cRYPTOPUNKSGetDataSourcesHistorical${OFF};DataSources (historical)
  ${CYAN}cRYPTOPUNKSGetItemsHistorical${OFF};Items (historical)
  ${CYAN}cRYPTOPUNKSGetMarketPlacesHistorical${OFF};MarketPlaces (historical)
  ${CYAN}cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical${OFF};MarketplaceDailySnapshots (historical)
  ${CYAN}cRYPTOPUNKSGetTradesHistorical${OFF};Trades (historical)
  ${CYAN}cRYPTOPUNKSGetUsersHistorical${OFF};Users (historical)
  ${CYAN}cRYPTOPUNKSItemsCurrent${OFF};Items (current)
  ${CYAN}cRYPTOPUNKSMarketPlacesCurrent${OFF};MarketPlaces (current)
  ${CYAN}cRYPTOPUNKSMarketplaceDailySnapshotsCurrent${OFF};MarketplaceDailySnapshots (current)
  ${CYAN}cRYPTOPUNKSTradesCurrent${OFF};Trades (current)
  ${CYAN}cRYPTOPUNKSUsersCurrent${OFF};Users (current)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cow]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}cowGetOrdersHistorical${OFF};Orders (historical)
  ${CYAN}cowGetSettlementsHistorical${OFF};Settlements (historical)
  ${CYAN}cowGetTokensHistorical${OFF};Tokens (historical)
  ${CYAN}cowGetTradesHistorical${OFF};Trades (historical)
  ${CYAN}cowGetUsersHistorical${OFF};Users (historical)
  ${CYAN}cowOrdersCurrent${OFF};Orders (current)
  ${CYAN}cowSettlementsCurrent${OFF};Settlements (current)
  ${CYAN}cowTokensCurrent${OFF};Tokens (current)
  ${CYAN}cowTradesCurrent${OFF};Trades (current)
  ${CYAN}cowUsersCurrent${OFF};Users (current)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[curve]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}curveAccountsCurrent${OFF};Accounts (current)
  ${CYAN}curveAddLiquidityEventsCurrent${OFF};AddLiquidityEvents (current)
  ${CYAN}curveAdminFeeChangeLogsCurrent${OFF};AdminFeeChangeLogs (current)
  ${CYAN}curveAmplificationCoeffChangeLogsCurrent${OFF};AmplificationCoeffChangeLogs (current)
  ${CYAN}curveCoinsCurrent${OFF};Coins (current)
  ${CYAN}curveContractVersionsCurrent${OFF};ContractVersions (current)
  ${CYAN}curveContractsCurrent${OFF};Contracts (current)
  ${CYAN}curveDailyVolumesCurrent${OFF};DailyVolumes (current)
  ${CYAN}curveExchangesCurrent${OFF};Exchanges (current)
  ${CYAN}curveFeeChangeLogsCurrent${OFF};FeeChangeLogs (current)
  ${CYAN}curveGaugeDepositsCurrent${OFF};GaugeDeposits (current)
  ${CYAN}curveGaugeLiquiditiesCurrent${OFF};GaugeLiquidities (current)
  ${CYAN}curveGaugeTotalWeightsCurrent${OFF};GaugeTotalWeights (current)
  ${CYAN}curveGaugeTypeWeightsCurrent${OFF};GaugeTypeWeights (current)
  ${CYAN}curveGaugeTypesCurrent${OFF};GaugeTypes (current)
  ${CYAN}curveGaugeWeightVotesCurrent${OFF};GaugeWeightVotes (current)
  ${CYAN}curveGaugeWeightsCurrent${OFF};GaugeWeights (current)
  ${CYAN}curveGaugeWithdrawsCurrent${OFF};GaugeWithdraws (current)
  ${CYAN}curveGaugesCurrent${OFF};Gauges (current)
  ${CYAN}curveGetAccountsHistorical${OFF};Accounts (historical)
  ${CYAN}curveGetAddLiquidityEventsHistorical${OFF};AddLiquidityEvents (historical)
  ${CYAN}curveGetAdminFeeChangeLogsHistorical${OFF};AdminFeeChangeLogs (historical)
  ${CYAN}curveGetAmplificationCoeffChangeLogsHistorical${OFF};AmplificationCoeffChangeLogs (historical)
  ${CYAN}curveGetCoinsHistorical${OFF};Coins (historical)
  ${CYAN}curveGetContractVersionsHistorical${OFF};ContractVersions (historical)
  ${CYAN}curveGetContractsHistorical${OFF};Contracts (historical)
  ${CYAN}curveGetDailyVolumesHistorical${OFF};DailyVolumes (historical)
  ${CYAN}curveGetExchangesHistorical${OFF};Exchanges (historical)
  ${CYAN}curveGetFeeChangeLogsHistorical${OFF};FeeChangeLogs (historical)
  ${CYAN}curveGetGaugeDepositsHistorical${OFF};GaugeDeposits (historical)
  ${CYAN}curveGetGaugeLiquiditiesHistorical${OFF};GaugeLiquidities (historical)
  ${CYAN}curveGetGaugeTotalWeightsHistorical${OFF};GaugeTotalWeights (historical)
  ${CYAN}curveGetGaugeTypeWeightsHistorical${OFF};GaugeTypeWeights (historical)
  ${CYAN}curveGetGaugeTypesHistorical${OFF};GaugeTypes (historical)
  ${CYAN}curveGetGaugeWeightVotesHistorical${OFF};GaugeWeightVotes (historical)
  ${CYAN}curveGetGaugeWeightsHistorical${OFF};GaugeWeights (historical)
  ${CYAN}curveGetGaugeWithdrawsHistorical${OFF};GaugeWithdraws (historical)
  ${CYAN}curveGetGaugesHistorical${OFF};Gauges (historical)
  ${CYAN}curveGetHourlyVolumesHistorical${OFF};HourlyVolumes (historical)
  ${CYAN}curveGetLpTokensHistorical${OFF};LpTokens (historical)
  ${CYAN}curveGetPoolsHistorical${OFF};Pools (historical)
  ${CYAN}curveGetProposalVotesHistorical${OFF};ProposalVotes (historical)
  ${CYAN}curveGetProposalsHistorical${OFF};Proposals (historical)
  ${CYAN}curveGetRemoveLiquidityEventsHistorical${OFF};RemoveLiquidityEvents (historical)
  ${CYAN}curveGetRemoveLiquidityOneEventsHistorical${OFF};RemoveLiquidityOneEvents (historical)
  ${CYAN}curveGetSystemStatesHistorical${OFF};SystemStates (historical)
  ${CYAN}curveGetTokensHistorical${OFF};Tokens (historical)
  ${CYAN}curveGetTransferOwnershipEventsHistorical${OFF};TransferOwnershipEvents (historical)
  ${CYAN}curveGetUnderlyingCoinsHistorical${OFF};UnderlyingCoins (historical)
  ${CYAN}curveGetVotingAppsHistorical${OFF};VotingApps (historical)
  ${CYAN}curveGetWeeklyVolumesHistorical${OFF};WeeklyVolumes (historical)
  ${CYAN}curveHourlyVolumesCurrent${OFF};HourlyVolumes (current)
  ${CYAN}curveLpTokensCurrent${OFF};LpTokens (current)
  ${CYAN}curvePoolsCurrent${OFF};Pools (current)
  ${CYAN}curveProposalVotesCurrent${OFF};ProposalVotes (current)
  ${CYAN}curveProposalsCurrent${OFF};Proposals (current)
  ${CYAN}curveRemoveLiquidityEventsCurrent${OFF};RemoveLiquidityEvents (current)
  ${CYAN}curveRemoveLiquidityOneEventsCurrent${OFF};RemoveLiquidityOneEvents (current)
  ${CYAN}curveSystemStatesCurrent${OFF};SystemStates (current)
  ${CYAN}curveTokensCurrent${OFF};Tokens (current)
  ${CYAN}curveTransferOwnershipEventsCurrent${OFF};TransferOwnershipEvents (current)
  ${CYAN}curveUnderlyingCoinsCurrent${OFF};UnderlyingCoins (current)
  ${CYAN}curveVotingAppsCurrent${OFF};VotingApps (current)
  ${CYAN}curveWeeklyVolumesCurrent${OFF};WeeklyVolumes (current)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[dex]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}dexBatchesCurrent${OFF};Batches (current)
  ${CYAN}dexDepositsCurrent${OFF};Deposits (current)
  ${CYAN}dexGetBatchesHistorical${OFF};Batches (historical)
  ${CYAN}dexGetDepositsHistorical${OFF};Deposits (historical)
  ${CYAN}dexGetOrdersHistorical${OFF};Orders (historical)
  ${CYAN}dexGetPricesHistorical${OFF};Prices (historical)
  ${CYAN}dexGetSolutionsHistorical${OFF};Solutions (historical)
  ${CYAN}dexGetStatsHistorical${OFF};Stats (historical)
  ${CYAN}dexGetTokensHistorical${OFF};Tokens (historical)
  ${CYAN}dexGetTradesHistorical${OFF};Trades (historical)
  ${CYAN}dexGetUsersHistorical${OFF};Users (historical)
  ${CYAN}dexGetWithdrawRequestsHistorical${OFF};WithdrawRequests (historical)
  ${CYAN}dexGetWithdrawsHistorical${OFF};Withdraws (historical)
  ${CYAN}dexOrdersCurrent${OFF};Orders (current)
  ${CYAN}dexPricesCurrent${OFF};Prices (current)
  ${CYAN}dexSolutionsCurrent${OFF};Solutions (current)
  ${CYAN}dexStatsCurrent${OFF};Stats (current)
  ${CYAN}dexTokensCurrent${OFF};Tokens (current)
  ${CYAN}dexTradesCurrent${OFF};Trades (current)
  ${CYAN}dexUsersCurrent${OFF};Users (current)
  ${CYAN}dexWithdrawRequestsCurrent${OFF};WithdrawRequests (current)
  ${CYAN}dexWithdrawsCurrent${OFF};Withdraws (current)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[metadata]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}metadataChainsGet${OFF};List all chains.
  ${CYAN}metadataDappsDappNameGet${OFF};Gets dapp by name.
  ${CYAN}metadataDappsGet${OFF};List all decentralized applications.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sushiswap]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}sushiswapBundlesCurrent${OFF};Bundles (current)
  ${CYAN}sushiswapBurnsCurrent${OFF};Burns (current)
  ${CYAN}sushiswapDayDataCurrent${OFF};DayData (current)
  ${CYAN}sushiswapFactoriesCurrent${OFF};Factories (current)
  ${CYAN}sushiswapGetBundlesHistorical${OFF};Bundles (historical)
  ${CYAN}sushiswapGetBurnsHistorical${OFF};Burns (historical)
  ${CYAN}sushiswapGetDayDataHistorical${OFF};DayData (historical)
  ${CYAN}sushiswapGetFactoriesHistorical${OFF};Factories (historical)
  ${CYAN}sushiswapGetHourDataHistorical${OFF};HourData (historical)
  ${CYAN}sushiswapGetLiquidityPositionSnapshotsHistorical${OFF};LiquidityPositionSnapshots (historical)
  ${CYAN}sushiswapGetLiquidityPositionsHistorical${OFF};LiquidityPositions (historical)
  ${CYAN}sushiswapGetMintsHistorical${OFF};Mints (historical)
  ${CYAN}sushiswapGetPairDayDataHistorical${OFF};PairDayData (historical)
  ${CYAN}sushiswapGetPairHourDataHistorical${OFF};PairHourData (historical)
  ${CYAN}sushiswapGetPairsHistorical${OFF};Pairs (historical)
  ${CYAN}sushiswapGetSwapsHistorical${OFF};Swaps (historical)
  ${CYAN}sushiswapGetTokenDayDataHistorical${OFF};TokenDayData (historical)
  ${CYAN}sushiswapGetTokensHistorical${OFF};Tokens (historical)
  ${CYAN}sushiswapGetTransactionsHistorical${OFF};Transactions (historical)
  ${CYAN}sushiswapGetUsersHistorical${OFF};Users (historical)
  ${CYAN}sushiswapHourDataCurrent${OFF};HourData (current)
  ${CYAN}sushiswapLiquidityPositionSnapshotsCurrent${OFF};LiquidityPositionSnapshots (current)
  ${CYAN}sushiswapLiquidityPositionsCurrent${OFF};LiquidityPositions (current)
  ${CYAN}sushiswapMintsCurrent${OFF};Mints (current)
  ${CYAN}sushiswapPairDayDataCurrent${OFF};PairDayData (current)
  ${CYAN}sushiswapPairHourDataCurrent${OFF};PairHourData (current)
  ${CYAN}sushiswapPairsCurrent${OFF};Pairs (current)
  ${CYAN}sushiswapSwapsCurrent${OFF};Swaps (current)
  ${CYAN}sushiswapTokenDayDataCurrent${OFF};TokenDayData (current)
  ${CYAN}sushiswapTokensCurrent${OFF};Tokens (current)
  ${CYAN}sushiswapTransactionsCurrent${OFF};Transactions (current)
  ${CYAN}sushiswapUsersCurrent${OFF};Users (current)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV2]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}uniswapV2BundlesCurrent${OFF};Bundles (current)
  ${CYAN}uniswapV2BurnsCurrent${OFF};Burns (current)
  ${CYAN}uniswapV2GetBundlesHistorical${OFF};Bundles (historical)
  ${CYAN}uniswapV2GetBurnsHistorical${OFF};Burns (historical)
  ${CYAN}uniswapV2GetLiquidityPositionSnapshotsHistorical${OFF};LiquidityPositionSnapshots (historical)
  ${CYAN}uniswapV2GetLiquidityPositionsHistorical${OFF};LiquidityPositions (historical)
  ${CYAN}uniswapV2GetMintsHistorical${OFF};Mints (historical)
  ${CYAN}uniswapV2GetPairDayDataHistorical${OFF};PairDayData (historical)
  ${CYAN}uniswapV2GetPairHourDataHistorical${OFF};PairHourData (historical)
  ${CYAN}uniswapV2GetPairsHistorical${OFF};Pairs (historical)
  ${CYAN}uniswapV2GetSwapsHistorical${OFF};Swaps (historical)
  ${CYAN}uniswapV2GetTokenDayDataHistorical${OFF};TokenDayData (historical)
  ${CYAN}uniswapV2GetTokensHistorical${OFF};Tokens (historical)
  ${CYAN}uniswapV2GetTransactionsHistorical${OFF};Transactions (historical)
  ${CYAN}uniswapV2GetUniswapDayDataHistorical${OFF};UniswapDayData (historical)
  ${CYAN}uniswapV2GetUniswapFactoriesHistorical${OFF};UniswapFactories (historical)
  ${CYAN}uniswapV2GetUsersHistorical${OFF};Users (historical)
  ${CYAN}uniswapV2LiquidityPositionSnapshotsCurrent${OFF};LiquidityPositionSnapshots (current)
  ${CYAN}uniswapV2LiquidityPositionsCurrent${OFF};LiquidityPositions (current)
  ${CYAN}uniswapV2MintsCurrent${OFF};Mints (current)
  ${CYAN}uniswapV2PairDayDataCurrent${OFF};PairDayData (current)
  ${CYAN}uniswapV2PairHourDataCurrent${OFF};PairHourData (current)
  ${CYAN}uniswapV2PairsCurrent${OFF};Pairs (current)
  ${CYAN}uniswapV2SwapsCurrent${OFF};Swaps (current)
  ${CYAN}uniswapV2TokenDayDataCurrent${OFF};TokenDayData (current)
  ${CYAN}uniswapV2TokensCurrent${OFF};Tokens (current)
  ${CYAN}uniswapV2TransactionsCurrent${OFF};Transactions (current)
  ${CYAN}uniswapV2UniswapDayDataCurrent${OFF};UniswapDayData (current)
  ${CYAN}uniswapV2UniswapFactoriesCurrent${OFF};UniswapFactories (current)
  ${CYAN}uniswapV2UsersCurrent${OFF};Users (current)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV3]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}uniswapV3BundlesCurrent${OFF};Bundles (current)
  ${CYAN}uniswapV3BurnsCurrent${OFF};Burns (current)
  ${CYAN}uniswapV3FactoriesCurrent${OFF};Factories (current)
  ${CYAN}uniswapV3GetBundlesHistorical${OFF};Bundles (historical)
  ${CYAN}uniswapV3GetBurnsHistorical${OFF};Burns (historical)
  ${CYAN}uniswapV3GetFactoriesHistorical${OFF};Factories (historical)
  ${CYAN}uniswapV3GetMintsHistorical${OFF};Mints (historical)
  ${CYAN}uniswapV3GetPoolDayDataHistorical${OFF};PoolDayData (historical)
  ${CYAN}uniswapV3GetPoolHourDataHistorical${OFF};PoolHourData (historical)
  ${CYAN}uniswapV3GetPoolsHistorical${OFF};Pools (historical)
  ${CYAN}uniswapV3GetPositionSnapshotsHistorical${OFF};PositionSnapshots (historical)
  ${CYAN}uniswapV3GetPositionsHistorical${OFF};Positions (historical)
  ${CYAN}uniswapV3GetSwapsHistorical${OFF};Swaps (historical)
  ${CYAN}uniswapV3GetTickDayDataHistorical${OFF};TickDayData (historical)
  ${CYAN}uniswapV3GetTicksHistorical${OFF};Ticks (historical)
  ${CYAN}uniswapV3GetTokenHourDataHistorical${OFF};TokenHourData (historical)
  ${CYAN}uniswapV3GetTokenV3DayDataHistorical${OFF};TokenV3DayData (historical)
  ${CYAN}uniswapV3GetTokensHistorical${OFF};Tokens (historical)
  ${CYAN}uniswapV3GetTransactionsHistorical${OFF};Transactions (historical)
  ${CYAN}uniswapV3GetUniswapDayDataHistorical${OFF};UniswapDayData (historical)
  ${CYAN}uniswapV3MintsCurrent${OFF};Mints (current)
  ${CYAN}uniswapV3PoolDayDataCurrent${OFF};PoolDayData (current)
  ${CYAN}uniswapV3PoolHourDataCurrent${OFF};PoolHourData (current)
  ${CYAN}uniswapV3PoolsCurrent${OFF};Pools (current)
  ${CYAN}uniswapV3PositionSnapshotsCurrent${OFF};PositionSnapshots (current)
  ${CYAN}uniswapV3PositionsCurrent${OFF};Positions (current)
  ${CYAN}uniswapV3SwapsCurrent${OFF};Swaps (current)
  ${CYAN}uniswapV3TickDayDataCurrent${OFF};TickDayData (current)
  ${CYAN}uniswapV3TicksCurrent${OFF};Ticks (current)
  ${CYAN}uniswapV3TokenHourDataCurrent${OFF};TokenHourData (current)
  ${CYAN}uniswapV3TokenV3DayDataCurrent${OFF};TokenV3DayData (current)
  ${CYAN}uniswapV3TokensCurrent${OFF};Tokens (current)
  ${CYAN}uniswapV3TransactionsCurrent${OFF};Transactions (current)
  ${CYAN}uniswapV3UniswapDayDataCurrent${OFF};UniswapDayData (current)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://onchain.coinapi.io')"

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
    echo -e "${BOLD}${WHITE}On Chain Dapps - REST API command line client (API version v1)${OFF}"
    echo ""
    echo -e "License: MIT License"
    echo -e "Contact: support@coinapi.io"
    echo ""
read -r -d '' appdescription <<EOF

This section will provide necessary information about the 'OnChain API' protocol. 
<br/><br/>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}On Chain Dapps - REST API command line client (API version v1)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for cRYPTOPUNKSBidsCurrent operation
#
##############################################################################
print_cRYPTOPUNKSBidsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSBidsCurrent - Bids (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bids." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSCollectionDailySnapshotsCurrent operation
#
##############################################################################
print_cRYPTOPUNKSCollectionDailySnapshotsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSCollectionDailySnapshotsCurrent - CollectionDailySnapshots (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets collectionDailySnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSCollectionsCurrent operation
#
##############################################################################
print_cRYPTOPUNKSCollectionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSCollectionsCurrent - Collections (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets collections." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSDataSourcesCurrent operation
#
##############################################################################
print_cRYPTOPUNKSDataSourcesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSDataSourcesCurrent - DataSources (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets dataSources." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSGetBidsHistorical operation
#
##############################################################################
print_cRYPTOPUNKSGetBidsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSGetBidsHistorical - Bids (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bids." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSGetCollectionDailySnapshotsHistorical operation
#
##############################################################################
print_cRYPTOPUNKSGetCollectionDailySnapshotsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSGetCollectionDailySnapshotsHistorical - CollectionDailySnapshots (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets collectionDailySnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSGetCollectionsHistorical operation
#
##############################################################################
print_cRYPTOPUNKSGetCollectionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSGetCollectionsHistorical - Collections (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets collections." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSGetDataSourcesHistorical operation
#
##############################################################################
print_cRYPTOPUNKSGetDataSourcesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSGetDataSourcesHistorical - DataSources (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets dataSources." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSGetItemsHistorical operation
#
##############################################################################
print_cRYPTOPUNKSGetItemsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSGetItemsHistorical - Items (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets items." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSGetMarketPlacesHistorical operation
#
##############################################################################
print_cRYPTOPUNKSGetMarketPlacesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSGetMarketPlacesHistorical - MarketPlaces (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets marketPlaces." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical operation
#
##############################################################################
print_cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical - MarketplaceDailySnapshots (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets marketplaceDailySnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSGetTradesHistorical operation
#
##############################################################################
print_cRYPTOPUNKSGetTradesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSGetTradesHistorical - Trades (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSGetUsersHistorical operation
#
##############################################################################
print_cRYPTOPUNKSGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSGetUsersHistorical - Users (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSItemsCurrent operation
#
##############################################################################
print_cRYPTOPUNKSItemsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSItemsCurrent - Items (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets items." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSMarketPlacesCurrent operation
#
##############################################################################
print_cRYPTOPUNKSMarketPlacesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSMarketPlacesCurrent - MarketPlaces (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets marketPlaces." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSMarketplaceDailySnapshotsCurrent operation
#
##############################################################################
print_cRYPTOPUNKSMarketplaceDailySnapshotsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSMarketplaceDailySnapshotsCurrent - MarketplaceDailySnapshots (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets marketplaceDailySnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSTradesCurrent operation
#
##############################################################################
print_cRYPTOPUNKSTradesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSTradesCurrent - Trades (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cRYPTOPUNKSUsersCurrent operation
#
##############################################################################
print_cRYPTOPUNKSUsersCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cRYPTOPUNKSUsersCurrent - Users (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetOrdersHistorical operation
#
##############################################################################
print_cowGetOrdersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetOrdersHistorical - Orders (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets orders." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User's address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetSettlementsHistorical operation
#
##############################################################################
print_cowGetSettlementsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetSettlementsHistorical - Settlements (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets settlements." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetTokensHistorical operation
#
##############################################################################
print_cowGetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetTokensHistorical - Tokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token's address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token's address.${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token name fetched by ERC20 contract call.${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token symbol fetched by contract call.${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetTradesHistorical operation
#
##############################################################################
print_cowGetTradesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetTradesHistorical - Trades (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (order id)|(transaction hash)|(event index).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sell_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Address of token that is sold.${YELLOW} Specify as: sell_token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}buy_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Address of token that is bought.${YELLOW} Specify as: buy_token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetUsersHistorical operation
#
##############################################################################
print_cowGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetUsersHistorical - Users (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User's address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User's address.${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowOrdersCurrent operation
#
##############################################################################
print_cowOrdersCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowOrdersCurrent - Orders (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets orders." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowSettlementsCurrent operation
#
##############################################################################
print_cowSettlementsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowSettlementsCurrent - Settlements (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets settlements." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowTokensCurrent operation
#
##############################################################################
print_cowTokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowTokensCurrent - Tokens (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowTradesCurrent operation
#
##############################################################################
print_cowTradesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowTradesCurrent - Trades (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowUsersCurrent operation
#
##############################################################################
print_cowUsersCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowUsersCurrent - Users (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveAccountsCurrent operation
#
##############################################################################
print_curveAccountsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveAccountsCurrent - Accounts (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets accounts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveAddLiquidityEventsCurrent operation
#
##############################################################################
print_curveAddLiquidityEventsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveAddLiquidityEventsCurrent - AddLiquidityEvents (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets addLiquidityEvents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveAdminFeeChangeLogsCurrent operation
#
##############################################################################
print_curveAdminFeeChangeLogsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveAdminFeeChangeLogsCurrent - AdminFeeChangeLogs (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets adminFeeChangeLogs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveAmplificationCoeffChangeLogsCurrent operation
#
##############################################################################
print_curveAmplificationCoeffChangeLogsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveAmplificationCoeffChangeLogsCurrent - AmplificationCoeffChangeLogs (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets amplificationCoeffChangeLogs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveCoinsCurrent operation
#
##############################################################################
print_curveCoinsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveCoinsCurrent - Coins (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets coins." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveContractVersionsCurrent operation
#
##############################################################################
print_curveContractVersionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveContractVersionsCurrent - ContractVersions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets contractVersions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveContractsCurrent operation
#
##############################################################################
print_curveContractsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveContractsCurrent - Contracts (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets contracts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveDailyVolumesCurrent operation
#
##############################################################################
print_curveDailyVolumesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveDailyVolumesCurrent - DailyVolumes (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets dailyVolumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveExchangesCurrent operation
#
##############################################################################
print_curveExchangesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveExchangesCurrent - Exchanges (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets exchanges." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveFeeChangeLogsCurrent operation
#
##############################################################################
print_curveFeeChangeLogsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveFeeChangeLogsCurrent - FeeChangeLogs (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets feeChangeLogs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGaugeDepositsCurrent operation
#
##############################################################################
print_curveGaugeDepositsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGaugeDepositsCurrent - GaugeDeposits (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeDeposits." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGaugeLiquiditiesCurrent operation
#
##############################################################################
print_curveGaugeLiquiditiesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGaugeLiquiditiesCurrent - GaugeLiquidities (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeLiquidities." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGaugeTotalWeightsCurrent operation
#
##############################################################################
print_curveGaugeTotalWeightsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGaugeTotalWeightsCurrent - GaugeTotalWeights (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeTotalWeights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGaugeTypeWeightsCurrent operation
#
##############################################################################
print_curveGaugeTypeWeightsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGaugeTypeWeightsCurrent - GaugeTypeWeights (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeTypeWeights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGaugeTypesCurrent operation
#
##############################################################################
print_curveGaugeTypesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGaugeTypesCurrent - GaugeTypes (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeTypes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGaugeWeightVotesCurrent operation
#
##############################################################################
print_curveGaugeWeightVotesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGaugeWeightVotesCurrent - GaugeWeightVotes (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeWeightVotes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGaugeWeightsCurrent operation
#
##############################################################################
print_curveGaugeWeightsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGaugeWeightsCurrent - GaugeWeights (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeWeights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGaugeWithdrawsCurrent operation
#
##############################################################################
print_curveGaugeWithdrawsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGaugeWithdrawsCurrent - GaugeWithdraws (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeWithdraws." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGaugesCurrent operation
#
##############################################################################
print_curveGaugesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGaugesCurrent - Gauges (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetAccountsHistorical operation
#
##############################################################################
print_curveGetAccountsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAccountsHistorical - Accounts (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets accounts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetAddLiquidityEventsHistorical operation
#
##############################################################################
print_curveGetAddLiquidityEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAddLiquidityEventsHistorical - AddLiquidityEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets addLiquidityEvents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetAdminFeeChangeLogsHistorical operation
#
##############################################################################
print_curveGetAdminFeeChangeLogsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAdminFeeChangeLogsHistorical - AdminFeeChangeLogs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets adminFeeChangeLogs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetAmplificationCoeffChangeLogsHistorical operation
#
##############################################################################
print_curveGetAmplificationCoeffChangeLogsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAmplificationCoeffChangeLogsHistorical - AmplificationCoeffChangeLogs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets amplificationCoeffChangeLogs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetCoinsHistorical operation
#
##############################################################################
print_curveGetCoinsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetCoinsHistorical - Coins (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets coins." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pool_id)-(coin_index).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetContractVersionsHistorical operation
#
##############################################################################
print_curveGetContractVersionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetContractVersionsHistorical - ContractVersions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets contractVersions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetContractsHistorical operation
#
##############################################################################
print_curveGetContractsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetContractsHistorical - Contracts (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets contracts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetDailyVolumesHistorical operation
#
##############################################################################
print_curveGetDailyVolumesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetDailyVolumesHistorical - DailyVolumes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets dailyVolumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetExchangesHistorical operation
#
##############################################################################
print_curveGetExchangesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetExchangesHistorical - Exchanges (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets exchanges." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetFeeChangeLogsHistorical operation
#
##############################################################################
print_curveGetFeeChangeLogsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetFeeChangeLogsHistorical - FeeChangeLogs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets feeChangeLogs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeDepositsHistorical operation
#
##############################################################################
print_curveGetGaugeDepositsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeDepositsHistorical - GaugeDeposits (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeDeposits." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeLiquiditiesHistorical operation
#
##############################################################################
print_curveGetGaugeLiquiditiesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeLiquiditiesHistorical - GaugeLiquidities (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeLiquidities." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeTotalWeightsHistorical operation
#
##############################################################################
print_curveGetGaugeTotalWeightsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeTotalWeightsHistorical - GaugeTotalWeights (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeTotalWeights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeTypeWeightsHistorical operation
#
##############################################################################
print_curveGetGaugeTypeWeightsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeTypeWeightsHistorical - GaugeTypeWeights (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeTypeWeights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeTypesHistorical operation
#
##############################################################################
print_curveGetGaugeTypesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeTypesHistorical - GaugeTypes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeTypes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeWeightVotesHistorical operation
#
##############################################################################
print_curveGetGaugeWeightVotesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeWeightVotesHistorical - GaugeWeightVotes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeWeightVotes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeWeightsHistorical operation
#
##############################################################################
print_curveGetGaugeWeightsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeWeightsHistorical - GaugeWeights (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeWeights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeWithdrawsHistorical operation
#
##############################################################################
print_curveGetGaugeWithdrawsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeWithdrawsHistorical - GaugeWithdraws (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeWithdraws." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesHistorical operation
#
##############################################################################
print_curveGetGaugesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesHistorical - Gauges (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetHourlyVolumesHistorical operation
#
##############################################################################
print_curveGetHourlyVolumesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetHourlyVolumesHistorical - HourlyVolumes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets hourlyVolumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetLpTokensHistorical operation
#
##############################################################################
print_curveGetLpTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetLpTokensHistorical - LpTokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets lpTokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetPoolsHistorical operation
#
##############################################################################
print_curveGetPoolsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetPoolsHistorical - Pools (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool's human-readable name.${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetProposalVotesHistorical operation
#
##############################################################################
print_curveGetProposalVotesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetProposalVotesHistorical - ProposalVotes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets proposalVotes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetProposalsHistorical operation
#
##############################################################################
print_curveGetProposalsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetProposalsHistorical - Proposals (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets proposals." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetRemoveLiquidityEventsHistorical operation
#
##############################################################################
print_curveGetRemoveLiquidityEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityEventsHistorical - RemoveLiquidityEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets removeLiquidityEvents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetRemoveLiquidityOneEventsHistorical operation
#
##############################################################################
print_curveGetRemoveLiquidityOneEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityOneEventsHistorical - RemoveLiquidityOneEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets removeLiquidityOneEvents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetSystemStatesHistorical operation
#
##############################################################################
print_curveGetSystemStatesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetSystemStatesHistorical - SystemStates (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets systemStates." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Singleton ID, equals to 'current'.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetTokensHistorical operation
#
##############################################################################
print_curveGetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetTokensHistorical - Tokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetTransferOwnershipEventsHistorical operation
#
##############################################################################
print_curveGetTransferOwnershipEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetTransferOwnershipEventsHistorical - TransferOwnershipEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transferOwnershipEvents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetUnderlyingCoinsHistorical operation
#
##############################################################################
print_curveGetUnderlyingCoinsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetUnderlyingCoinsHistorical - UnderlyingCoins (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets underlyingCoins." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Equals to: (pool_id)-(coin_index).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetVotingAppsHistorical operation
#
##############################################################################
print_curveGetVotingAppsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetVotingAppsHistorical - VotingApps (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets votingApps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - App address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetWeeklyVolumesHistorical operation
#
##############################################################################
print_curveGetWeeklyVolumesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetWeeklyVolumesHistorical - WeeklyVolumes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets weeklyVolumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveHourlyVolumesCurrent operation
#
##############################################################################
print_curveHourlyVolumesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveHourlyVolumesCurrent - HourlyVolumes (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets hourlyVolumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveLpTokensCurrent operation
#
##############################################################################
print_curveLpTokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveLpTokensCurrent - LpTokens (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets lpTokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curvePoolsCurrent operation
#
##############################################################################
print_curvePoolsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curvePoolsCurrent - Pools (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveProposalVotesCurrent operation
#
##############################################################################
print_curveProposalVotesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveProposalVotesCurrent - ProposalVotes (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets proposalVotes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveProposalsCurrent operation
#
##############################################################################
print_curveProposalsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveProposalsCurrent - Proposals (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets proposals." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveRemoveLiquidityEventsCurrent operation
#
##############################################################################
print_curveRemoveLiquidityEventsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveRemoveLiquidityEventsCurrent - RemoveLiquidityEvents (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets removeLiquidityEvents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveRemoveLiquidityOneEventsCurrent operation
#
##############################################################################
print_curveRemoveLiquidityOneEventsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveRemoveLiquidityOneEventsCurrent - RemoveLiquidityOneEvents (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets removeLiquidityOneEvents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveSystemStatesCurrent operation
#
##############################################################################
print_curveSystemStatesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveSystemStatesCurrent - SystemStates (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets systemStates." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveTokensCurrent operation
#
##############################################################################
print_curveTokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveTokensCurrent - Tokens (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveTransferOwnershipEventsCurrent operation
#
##############################################################################
print_curveTransferOwnershipEventsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveTransferOwnershipEventsCurrent - TransferOwnershipEvents (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transferOwnershipEvents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveUnderlyingCoinsCurrent operation
#
##############################################################################
print_curveUnderlyingCoinsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveUnderlyingCoinsCurrent - UnderlyingCoins (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets underlyingCoins." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveVotingAppsCurrent operation
#
##############################################################################
print_curveVotingAppsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveVotingAppsCurrent - VotingApps (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets votingApps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveWeeklyVolumesCurrent operation
#
##############################################################################
print_curveWeeklyVolumesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveWeeklyVolumesCurrent - WeeklyVolumes (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets weeklyVolumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexBatchesCurrent operation
#
##############################################################################
print_dexBatchesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexBatchesCurrent - Batches (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets batches." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexDepositsCurrent operation
#
##############################################################################
print_dexDepositsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexDepositsCurrent - Deposits (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets deposits." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetBatchesHistorical operation
#
##############################################################################
print_dexGetBatchesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetBatchesHistorical - Batches (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets batches." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetDepositsHistorical operation
#
##############################################################################
print_dexGetDepositsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetDepositsHistorical - Deposits (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets deposits." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (transaction hash)-(token id).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User address.${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetOrdersHistorical operation
#
##############################################################################
print_dexGetOrdersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetOrdersHistorical - Orders (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets orders." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (owner address)-(order id)${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}buy_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier of token that was bought.${YELLOW} Specify as: buy_token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sell_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier of token that was sold.${YELLOW} Specify as: sell_token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetPricesHistorical operation
#
##############################################################################
print_dexGetPricesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetPricesHistorical - Prices (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets prices." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (token id)-(batch id).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetSolutionsHistorical operation
#
##############################################################################
print_dexGetSolutionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetSolutionsHistorical - Solutions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets solutions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetStatsHistorical operation
#
##############################################################################
print_dexGetStatsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetStatsHistorical - Stats (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets stats." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetTokensHistorical operation
#
##############################################################################
print_dexGetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetTokensHistorical - Tokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetTradesHistorical operation
#
##############################################################################
print_dexGetTradesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetTradesHistorical - Trades (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}buy_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: buy_token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sell_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: sell_token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetUsersHistorical operation
#
##############################################################################
print_dexGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetUsersHistorical - Users (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetWithdrawRequestsHistorical operation
#
##############################################################################
print_dexGetWithdrawRequestsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetWithdrawRequestsHistorical - WithdrawRequests (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets withdrawRequests." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (transaction hash)-(id).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetWithdrawsHistorical operation
#
##############################################################################
print_dexGetWithdrawsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetWithdrawsHistorical - Withdraws (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets withdraws." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (transaction hash)-(id).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexOrdersCurrent operation
#
##############################################################################
print_dexOrdersCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexOrdersCurrent - Orders (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets orders." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexPricesCurrent operation
#
##############################################################################
print_dexPricesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexPricesCurrent - Prices (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets prices." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexSolutionsCurrent operation
#
##############################################################################
print_dexSolutionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexSolutionsCurrent - Solutions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets solutions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexStatsCurrent operation
#
##############################################################################
print_dexStatsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexStatsCurrent - Stats (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets stats." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexTokensCurrent operation
#
##############################################################################
print_dexTokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexTokensCurrent - Tokens (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexTradesCurrent operation
#
##############################################################################
print_dexTradesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexTradesCurrent - Trades (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexUsersCurrent operation
#
##############################################################################
print_dexUsersCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexUsersCurrent - Users (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexWithdrawRequestsCurrent operation
#
##############################################################################
print_dexWithdrawRequestsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexWithdrawRequestsCurrent - WithdrawRequests (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets withdrawRequests." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexWithdrawsCurrent operation
#
##############################################################################
print_dexWithdrawsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexWithdrawsCurrent - Withdraws (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets withdraws." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for metadataChainsGet operation
#
##############################################################################
print_metadataChainsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}metadataChainsGet - List all chains.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for metadataDappsDappNameGet operation
#
##############################################################################
print_metadataDappsDappNameGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}metadataDappsDappNameGet - Gets dapp by name.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}dappName${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dappName=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for metadataDappsGet operation
#
##############################################################################
print_metadataDappsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}metadataDappsGet - List all decentralized applications.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapBundlesCurrent operation
#
##############################################################################
print_sushiswapBundlesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapBundlesCurrent - Bundles (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapBurnsCurrent operation
#
##############################################################################
print_sushiswapBurnsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapBurnsCurrent - Burns (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapDayDataCurrent operation
#
##############################################################################
print_sushiswapDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapDayDataCurrent - DayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets dayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapFactoriesCurrent operation
#
##############################################################################
print_sushiswapFactoriesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapFactoriesCurrent - Factories (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factories." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetBundlesHistorical operation
#
##############################################################################
print_sushiswapGetBundlesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetBundlesHistorical - Bundles (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Hardcoded to '1'.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetBurnsHistorical operation
#
##############################################################################
print_sushiswapGetBurnsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetBurnsHistorical - Burns (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (transaction id):(transaction.burns.length).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetDayDataHistorical operation
#
##############################################################################
print_sushiswapGetDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetDayDataHistorical - DayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets dayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp for start of day / 86400 giving a unique day index.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetFactoriesHistorical operation
#
##############################################################################
print_sushiswapGetFactoriesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetFactoriesHistorical - Factories (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factories." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Factory address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetHourDataHistorical operation
#
##############################################################################
print_sushiswapGetHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetHourDataHistorical - HourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets hourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Start of hour timestamp.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetLiquidityPositionSnapshotsHistorical operation
#
##############################################################################
print_sushiswapGetLiquidityPositionSnapshotsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionSnapshotsHistorical - LiquidityPositionSnapshots (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidityPositionSnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pair address)-(user address)-(timestamp)${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to user.${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to the pair liquidity is being provided on.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetLiquidityPositionsHistorical operation
#
##############################################################################
print_sushiswapGetLiquidityPositionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionsHistorical - LiquidityPositions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidityPositions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pair address)-(user address)${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User address.${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pair address.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetMintsHistorical operation
#
##############################################################################
print_sushiswapGetMintsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetMintsHistorical - Mints (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (transaction hash)-(index in the transaction mint array).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPairDayDataHistorical operation
#
##############################################################################
print_sushiswapGetPairDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPairDayDataHistorical - PairDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pair id)-(day start timestamp).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPairHourDataHistorical operation
#
##############################################################################
print_sushiswapGetPairHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPairHourDataHistorical - PairHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairHourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pair id)-(hour start timestamp).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPairsHistorical operation
#
##############################################################################
print_sushiswapGetPairsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPairsHistorical - Pairs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pair contract address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Friendly name, format: (token0 name)-(token1 name)${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pair contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pair contract.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetSwapsHistorical operation
#
##############################################################################
print_sushiswapGetSwapsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetSwapsHistorical - Swaps (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash plus index in Transaction swap array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetTokenDayDataHistorical operation
#
##############################################################################
print_sushiswapGetTokenDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokenDayDataHistorical - TokenDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, day start timestamp in unix / 86400.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetTokensHistorical operation
#
##############################################################################
print_sushiswapGetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokensHistorical - Tokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token symbol.${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token name.${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetTransactionsHistorical operation
#
##############################################################################
print_sushiswapGetTransactionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTransactionsHistorical - Transactions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ethereum transaction hash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetUsersHistorical operation
#
##############################################################################
print_sushiswapGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetUsersHistorical - Users (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapHourDataCurrent operation
#
##############################################################################
print_sushiswapHourDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapHourDataCurrent - HourData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets hourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapLiquidityPositionSnapshotsCurrent operation
#
##############################################################################
print_sushiswapLiquidityPositionSnapshotsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapLiquidityPositionSnapshotsCurrent - LiquidityPositionSnapshots (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidityPositionSnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapLiquidityPositionsCurrent operation
#
##############################################################################
print_sushiswapLiquidityPositionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapLiquidityPositionsCurrent - LiquidityPositions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidityPositions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapMintsCurrent operation
#
##############################################################################
print_sushiswapMintsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapMintsCurrent - Mints (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapPairDayDataCurrent operation
#
##############################################################################
print_sushiswapPairDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapPairDayDataCurrent - PairDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapPairHourDataCurrent operation
#
##############################################################################
print_sushiswapPairHourDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapPairHourDataCurrent - PairHourData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairHourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapPairsCurrent operation
#
##############################################################################
print_sushiswapPairsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapPairsCurrent - Pairs (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pair contract address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapSwapsCurrent operation
#
##############################################################################
print_sushiswapSwapsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapSwapsCurrent - Swaps (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapTokenDayDataCurrent operation
#
##############################################################################
print_sushiswapTokenDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapTokenDayDataCurrent - TokenDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapTokensCurrent operation
#
##############################################################################
print_sushiswapTokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapTokensCurrent - Tokens (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapTransactionsCurrent operation
#
##############################################################################
print_sushiswapTransactionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapTransactionsCurrent - Transactions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapUsersCurrent operation
#
##############################################################################
print_sushiswapUsersCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapUsersCurrent - Users (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2BundlesCurrent operation
#
##############################################################################
print_uniswapV2BundlesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2BundlesCurrent - Bundles (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2BurnsCurrent operation
#
##############################################################################
print_uniswapV2BurnsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2BurnsCurrent - Burns (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetBundlesHistorical operation
#
##############################################################################
print_uniswapV2GetBundlesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBundlesHistorical - Bundles (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Constant 1.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetBurnsHistorical operation
#
##############################################################################
print_uniswapV2GetBurnsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBurnsHistorical - Burns (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash plus index in the transaction burn array${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetLiquidityPositionSnapshotsHistorical operation
#
##############################################################################
print_uniswapV2GetLiquidityPositionSnapshotsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionSnapshotsHistorical - LiquidityPositionSnapshots (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidityPositionSnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pair address)-(user address)${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to user.${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to the pair liquidity is being provided on.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetLiquidityPositionsHistorical operation
#
##############################################################################
print_uniswapV2GetLiquidityPositionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionsHistorical - LiquidityPositions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidityPositions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User address and pair address concatenated with a dash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to user.${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to the pair liquidity is being provided on.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetMintsHistorical operation
#
##############################################################################
print_uniswapV2GetMintsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetMintsHistorical - Mints (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash plus index in the transaction mint array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPairDayDataHistorical operation
#
##############################################################################
print_uniswapV2GetPairDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPairDayDataHistorical - PairDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPairHourDataHistorical operation
#
##############################################################################
print_uniswapV2GetPairHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPairHourDataHistorical - PairHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairHourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Address for pair contract.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPairsHistorical operation
#
##############################################################################
print_uniswapV2GetPairsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPairsHistorical - Pairs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pair contract address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pair contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pair contract.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetSwapsHistorical operation
#
##############################################################################
print_uniswapV2GetSwapsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetSwapsHistorical - Swaps (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash plus index in Transaction swap array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetTokenDayDataHistorical operation
#
##############################################################################
print_uniswapV2GetTokenDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokenDayDataHistorical - TokenDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetTokensHistorical operation
#
##############################################################################
print_uniswapV2GetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokensHistorical - Tokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token symbol.${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token name.${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetTransactionsHistorical operation
#
##############################################################################
print_uniswapV2GetTransactionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTransactionsHistorical - Transactions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ethereum transaction hash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetUniswapDayDataHistorical operation
#
##############################################################################
print_uniswapV2GetUniswapDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUniswapDayDataHistorical - UniswapDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp for start of day / 86400 giving a unique day index.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetUniswapFactoriesHistorical operation
#
##############################################################################
print_uniswapV2GetUniswapFactoriesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUniswapFactoriesHistorical - UniswapFactories (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapFactories." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Factory address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetUsersHistorical operation
#
##############################################################################
print_uniswapV2GetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUsersHistorical - Users (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2LiquidityPositionSnapshotsCurrent operation
#
##############################################################################
print_uniswapV2LiquidityPositionSnapshotsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2LiquidityPositionSnapshotsCurrent - LiquidityPositionSnapshots (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidityPositionSnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2LiquidityPositionsCurrent operation
#
##############################################################################
print_uniswapV2LiquidityPositionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2LiquidityPositionsCurrent - LiquidityPositions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidityPositions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2MintsCurrent operation
#
##############################################################################
print_uniswapV2MintsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2MintsCurrent - Mints (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2PairDayDataCurrent operation
#
##############################################################################
print_uniswapV2PairDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2PairDayDataCurrent - PairDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2PairHourDataCurrent operation
#
##############################################################################
print_uniswapV2PairHourDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2PairHourDataCurrent - PairHourData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairHourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2PairsCurrent operation
#
##############################################################################
print_uniswapV2PairsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2PairsCurrent - Pairs (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pair contract address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2SwapsCurrent operation
#
##############################################################################
print_uniswapV2SwapsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2SwapsCurrent - Swaps (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2TokenDayDataCurrent operation
#
##############################################################################
print_uniswapV2TokenDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2TokenDayDataCurrent - TokenDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2TokensCurrent operation
#
##############################################################################
print_uniswapV2TokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2TokensCurrent - Tokens (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2TransactionsCurrent operation
#
##############################################################################
print_uniswapV2TransactionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2TransactionsCurrent - Transactions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2UniswapDayDataCurrent operation
#
##############################################################################
print_uniswapV2UniswapDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2UniswapDayDataCurrent - UniswapDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2UniswapFactoriesCurrent operation
#
##############################################################################
print_uniswapV2UniswapFactoriesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2UniswapFactoriesCurrent - UniswapFactories (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapFactories." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2UsersCurrent operation
#
##############################################################################
print_uniswapV2UsersCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2UsersCurrent - Users (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3BundlesCurrent operation
#
##############################################################################
print_uniswapV3BundlesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3BundlesCurrent - Bundles (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3BurnsCurrent operation
#
##############################################################################
print_uniswapV3BurnsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3BurnsCurrent - Burns (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3FactoriesCurrent operation
#
##############################################################################
print_uniswapV3FactoriesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3FactoriesCurrent - Factories (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factories." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetBundlesHistorical operation
#
##############################################################################
print_uniswapV3GetBundlesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBundlesHistorical - Bundles (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetBurnsHistorical operation
#
##############################################################################
print_uniswapV3GetBurnsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBurnsHistorical - Burns (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash + '#' + index in mints Transaction array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool position is within.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pool contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pool contract.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetFactoriesHistorical operation
#
##############################################################################
print_uniswapV3GetFactoriesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetFactoriesHistorical - Factories (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factories." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Factory address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetMintsHistorical operation
#
##############################################################################
print_uniswapV3GetMintsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetMintsHistorical - Mints (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash + '#' + index in mints Transaction array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool address.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pool contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pool contract.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetPoolDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolDayDataHistorical - PoolDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets poolDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pool address)-(day id).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pointer to pool.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolHourDataHistorical operation
#
##############################################################################
print_uniswapV3GetPoolHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolHourDataHistorical - PoolHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets poolHourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pool address)-(day id)${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pointer to pool.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolsHistorical operation
#
##############################################################################
print_uniswapV3GetPoolsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsHistorical - Pools (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pool contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pool contract.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPositionSnapshotsHistorical operation
#
##############################################################################
print_uniswapV3GetPositionSnapshotsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionSnapshotsHistorical - PositionSnapshots (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positionSnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - NFT token identifier, format: (NFT token id)#(block number).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool the position is within.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPositionsHistorical operation
#
##############################################################################
print_uniswapV3GetPositionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionsHistorical - Positions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - NFT token identifier.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool position is within.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pair contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pair contract.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetSwapsHistorical operation
#
##############################################################################
print_uniswapV3GetSwapsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetSwapsHistorical - Swaps (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (transaction hash) + # + (index in swaps Transaction array).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool swap occured within.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pair contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pair contract.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTickDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetTickDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTickDayDataHistorical - TickDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tickDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pool address)-(tick index)-(timestamp).${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pointer to pool.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTicksHistorical operation
#
##############################################################################
print_uniswapV3GetTicksHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTicksHistorical - Ticks (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ticks." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: (pool address)#(tick index)${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool address.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokenHourDataHistorical operation
#
##############################################################################
print_uniswapV3GetTokenHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokenHourDataHistorical - TokenHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenHourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address concatendated with date.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokenV3DayDataHistorical operation
#
##############################################################################
print_uniswapV3GetTokenV3DayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokenV3DayDataHistorical - TokenV3DayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenV3DayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address concatendated with date.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokensHistorical operation
#
##############################################################################
print_uniswapV3GetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensHistorical - Tokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token symbol.${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token name.${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTransactionsHistorical operation
#
##############################################################################
print_uniswapV3GetTransactionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTransactionsHistorical - Transactions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetUniswapDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetUniswapDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetUniswapDayDataHistorical - UniswapDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timestamp rounded to current day by dividing by 86400.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3MintsCurrent operation
#
##############################################################################
print_uniswapV3MintsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3MintsCurrent - Mints (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3PoolDayDataCurrent operation
#
##############################################################################
print_uniswapV3PoolDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3PoolDayDataCurrent - PoolDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets poolDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3PoolHourDataCurrent operation
#
##############################################################################
print_uniswapV3PoolHourDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3PoolHourDataCurrent - PoolHourData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets poolHourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3PoolsCurrent operation
#
##############################################################################
print_uniswapV3PoolsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3PoolsCurrent - Pools (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3PositionSnapshotsCurrent operation
#
##############################################################################
print_uniswapV3PositionSnapshotsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3PositionSnapshotsCurrent - PositionSnapshots (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positionSnapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3PositionsCurrent operation
#
##############################################################################
print_uniswapV3PositionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3PositionsCurrent - Positions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3SwapsCurrent operation
#
##############################################################################
print_uniswapV3SwapsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3SwapsCurrent - Swaps (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool swap occured within.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3TickDayDataCurrent operation
#
##############################################################################
print_uniswapV3TickDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3TickDayDataCurrent - TickDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tickDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3TicksCurrent operation
#
##############################################################################
print_uniswapV3TicksCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3TicksCurrent - Ticks (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ticks." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3TokenHourDataCurrent operation
#
##############################################################################
print_uniswapV3TokenHourDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3TokenHourDataCurrent - TokenHourData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenHourData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3TokenV3DayDataCurrent operation
#
##############################################################################
print_uniswapV3TokenV3DayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3TokenV3DayDataCurrent - TokenV3DayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenV3DayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3TokensCurrent operation
#
##############################################################################
print_uniswapV3TokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3TokensCurrent - Tokens (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3TransactionsCurrent operation
#
##############################################################################
print_uniswapV3TransactionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3TransactionsCurrent - Transactions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3UniswapDayDataCurrent operation
#
##############################################################################
print_uniswapV3UniswapDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3UniswapDayDataCurrent - UniswapDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapDayData." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call cRYPTOPUNKSBidsCurrent operation
#
##############################################################################
call_cRYPTOPUNKSBidsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/bids/current" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSCollectionDailySnapshotsCurrent operation
#
##############################################################################
call_cRYPTOPUNKSCollectionDailySnapshotsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/collectionDailySnapshots/current" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSCollectionsCurrent operation
#
##############################################################################
call_cRYPTOPUNKSCollectionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/collections/current" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSDataSourcesCurrent operation
#
##############################################################################
call_cRYPTOPUNKSDataSourcesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/dataSources/current" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSGetBidsHistorical operation
#
##############################################################################
call_cRYPTOPUNKSGetBidsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/bids/historical" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSGetCollectionDailySnapshotsHistorical operation
#
##############################################################################
call_cRYPTOPUNKSGetCollectionDailySnapshotsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/collectionDailySnapshots/historical" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSGetCollectionsHistorical operation
#
##############################################################################
call_cRYPTOPUNKSGetCollectionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/collections/historical" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSGetDataSourcesHistorical operation
#
##############################################################################
call_cRYPTOPUNKSGetDataSourcesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/dataSources/historical" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSGetItemsHistorical operation
#
##############################################################################
call_cRYPTOPUNKSGetItemsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/items/historical" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSGetMarketPlacesHistorical operation
#
##############################################################################
call_cRYPTOPUNKSGetMarketPlacesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/marketPlaces/historical" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical operation
#
##############################################################################
call_cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/marketplaceDailySnapshots/historical" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSGetTradesHistorical operation
#
##############################################################################
call_cRYPTOPUNKSGetTradesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/trades/historical" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSGetUsersHistorical operation
#
##############################################################################
call_cRYPTOPUNKSGetUsersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/users/historical" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSItemsCurrent operation
#
##############################################################################
call_cRYPTOPUNKSItemsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/items/current" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSMarketPlacesCurrent operation
#
##############################################################################
call_cRYPTOPUNKSMarketPlacesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/marketPlaces/current" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSMarketplaceDailySnapshotsCurrent operation
#
##############################################################################
call_cRYPTOPUNKSMarketplaceDailySnapshotsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/marketplaceDailySnapshots/current" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSTradesCurrent operation
#
##############################################################################
call_cRYPTOPUNKSTradesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/trades/current" path_parameter_names query_parameter_names); then
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
# Call cRYPTOPUNKSUsersCurrent operation
#
##############################################################################
call_cRYPTOPUNKSUsersCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cryptopunks/users/current" path_parameter_names query_parameter_names); then
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
# Call cowGetOrdersHistorical operation
#
##############################################################################
call_cowGetOrdersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/cow/orders/historical" path_parameter_names query_parameter_names); then
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
# Call cowGetSettlementsHistorical operation
#
##############################################################################
call_cowGetSettlementsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/cow/settlements/historical" path_parameter_names query_parameter_names); then
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
# Call cowGetTokensHistorical operation
#
##############################################################################
call_cowGetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address name symbol)
    local path

    if ! path=$(build_request_path "/dapps/cow/tokens/historical" path_parameter_names query_parameter_names); then
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
# Call cowGetTradesHistorical operation
#
##############################################################################
call_cowGetTradesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id sell_token buy_token)
    local path

    if ! path=$(build_request_path "/dapps/cow/trades/historical" path_parameter_names query_parameter_names); then
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
# Call cowGetUsersHistorical operation
#
##############################################################################
call_cowGetUsersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address)
    local path

    if ! path=$(build_request_path "/dapps/cow/users/historical" path_parameter_names query_parameter_names); then
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
# Call cowOrdersCurrent operation
#
##############################################################################
call_cowOrdersCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cow/orders/current" path_parameter_names query_parameter_names); then
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
# Call cowSettlementsCurrent operation
#
##############################################################################
call_cowSettlementsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cow/settlements/current" path_parameter_names query_parameter_names); then
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
# Call cowTokensCurrent operation
#
##############################################################################
call_cowTokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cow/tokens/current" path_parameter_names query_parameter_names); then
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
# Call cowTradesCurrent operation
#
##############################################################################
call_cowTradesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cow/trades/current" path_parameter_names query_parameter_names); then
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
# Call cowUsersCurrent operation
#
##############################################################################
call_cowUsersCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/cow/users/current" path_parameter_names query_parameter_names); then
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
# Call curveAccountsCurrent operation
#
##############################################################################
call_curveAccountsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/accounts/current" path_parameter_names query_parameter_names); then
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
# Call curveAddLiquidityEventsCurrent operation
#
##############################################################################
call_curveAddLiquidityEventsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/addLiquidityEvents/current" path_parameter_names query_parameter_names); then
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
# Call curveAdminFeeChangeLogsCurrent operation
#
##############################################################################
call_curveAdminFeeChangeLogsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/adminFeeChangeLogs/current" path_parameter_names query_parameter_names); then
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
# Call curveAmplificationCoeffChangeLogsCurrent operation
#
##############################################################################
call_curveAmplificationCoeffChangeLogsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/amplificationCoeffChangeLogs/current" path_parameter_names query_parameter_names); then
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
# Call curveCoinsCurrent operation
#
##############################################################################
call_curveCoinsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/coins/current" path_parameter_names query_parameter_names); then
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
# Call curveContractVersionsCurrent operation
#
##############################################################################
call_curveContractVersionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/contractVersions/current" path_parameter_names query_parameter_names); then
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
# Call curveContractsCurrent operation
#
##############################################################################
call_curveContractsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/contracts/current" path_parameter_names query_parameter_names); then
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
# Call curveDailyVolumesCurrent operation
#
##############################################################################
call_curveDailyVolumesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/dailyVolumes/current" path_parameter_names query_parameter_names); then
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
# Call curveExchangesCurrent operation
#
##############################################################################
call_curveExchangesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/exchanges/current" path_parameter_names query_parameter_names); then
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
# Call curveFeeChangeLogsCurrent operation
#
##############################################################################
call_curveFeeChangeLogsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/feeChangeLogs/current" path_parameter_names query_parameter_names); then
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
# Call curveGaugeDepositsCurrent operation
#
##############################################################################
call_curveGaugeDepositsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeDeposits/current" path_parameter_names query_parameter_names); then
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
# Call curveGaugeLiquiditiesCurrent operation
#
##############################################################################
call_curveGaugeLiquiditiesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeLiquidities/current" path_parameter_names query_parameter_names); then
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
# Call curveGaugeTotalWeightsCurrent operation
#
##############################################################################
call_curveGaugeTotalWeightsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeTotalWeights/current" path_parameter_names query_parameter_names); then
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
# Call curveGaugeTypeWeightsCurrent operation
#
##############################################################################
call_curveGaugeTypeWeightsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeTypeWeights/current" path_parameter_names query_parameter_names); then
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
# Call curveGaugeTypesCurrent operation
#
##############################################################################
call_curveGaugeTypesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeTypes/current" path_parameter_names query_parameter_names); then
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
# Call curveGaugeWeightVotesCurrent operation
#
##############################################################################
call_curveGaugeWeightVotesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeWeightVotes/current" path_parameter_names query_parameter_names); then
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
# Call curveGaugeWeightsCurrent operation
#
##############################################################################
call_curveGaugeWeightsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeWeights/current" path_parameter_names query_parameter_names); then
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
# Call curveGaugeWithdrawsCurrent operation
#
##############################################################################
call_curveGaugeWithdrawsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeWithdraws/current" path_parameter_names query_parameter_names); then
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
# Call curveGaugesCurrent operation
#
##############################################################################
call_curveGaugesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/gauges/current" path_parameter_names query_parameter_names); then
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
# Call curveGetAccountsHistorical operation
#
##############################################################################
call_curveGetAccountsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address)
    local path

    if ! path=$(build_request_path "/dapps/curve/accounts/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetAddLiquidityEventsHistorical operation
#
##############################################################################
call_curveGetAddLiquidityEventsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/addLiquidityEvents/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetAdminFeeChangeLogsHistorical operation
#
##############################################################################
call_curveGetAdminFeeChangeLogsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/adminFeeChangeLogs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetAmplificationCoeffChangeLogsHistorical operation
#
##############################################################################
call_curveGetAmplificationCoeffChangeLogsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/amplificationCoeffChangeLogs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetCoinsHistorical operation
#
##############################################################################
call_curveGetCoinsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/coins/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetContractVersionsHistorical operation
#
##############################################################################
call_curveGetContractVersionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address)
    local path

    if ! path=$(build_request_path "/dapps/curve/contractVersions/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetContractsHistorical operation
#
##############################################################################
call_curveGetContractsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/contracts/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetDailyVolumesHistorical operation
#
##############################################################################
call_curveGetDailyVolumesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/dailyVolumes/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetExchangesHistorical operation
#
##############################################################################
call_curveGetExchangesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/exchanges/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetFeeChangeLogsHistorical operation
#
##############################################################################
call_curveGetFeeChangeLogsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/feeChangeLogs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeDepositsHistorical operation
#
##############################################################################
call_curveGetGaugeDepositsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeDeposits/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeLiquiditiesHistorical operation
#
##############################################################################
call_curveGetGaugeLiquiditiesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeLiquidities/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeTotalWeightsHistorical operation
#
##############################################################################
call_curveGetGaugeTotalWeightsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeTotalWeights/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeTypeWeightsHistorical operation
#
##############################################################################
call_curveGetGaugeTypeWeightsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeTypeWeights/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeTypesHistorical operation
#
##############################################################################
call_curveGetGaugeTypesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id name)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeTypes/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeWeightVotesHistorical operation
#
##############################################################################
call_curveGetGaugeWeightVotesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeWeightVotes/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeWeightsHistorical operation
#
##############################################################################
call_curveGetGaugeWeightsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeWeights/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeWithdrawsHistorical operation
#
##############################################################################
call_curveGetGaugeWithdrawsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeWithdraws/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugesHistorical operation
#
##############################################################################
call_curveGetGaugesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/gauges/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetHourlyVolumesHistorical operation
#
##############################################################################
call_curveGetHourlyVolumesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/hourlyVolumes/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetLpTokensHistorical operation
#
##############################################################################
call_curveGetLpTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address name symbol pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/lpTokens/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetPoolsHistorical operation
#
##############################################################################
call_curveGetPoolsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id name)
    local path

    if ! path=$(build_request_path "/dapps/curve/pools/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetProposalVotesHistorical operation
#
##############################################################################
call_curveGetProposalVotesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/proposalVotes/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetProposalsHistorical operation
#
##############################################################################
call_curveGetProposalsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/proposals/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetRemoveLiquidityEventsHistorical operation
#
##############################################################################
call_curveGetRemoveLiquidityEventsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/removeLiquidityEvents/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetRemoveLiquidityOneEventsHistorical operation
#
##############################################################################
call_curveGetRemoveLiquidityOneEventsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/removeLiquidityOneEvents/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetSystemStatesHistorical operation
#
##############################################################################
call_curveGetSystemStatesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/systemStates/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetTokensHistorical operation
#
##############################################################################
call_curveGetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address name symbol)
    local path

    if ! path=$(build_request_path "/dapps/curve/tokens/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetTransferOwnershipEventsHistorical operation
#
##############################################################################
call_curveGetTransferOwnershipEventsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/transferOwnershipEvents/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetUnderlyingCoinsHistorical operation
#
##############################################################################
call_curveGetUnderlyingCoinsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/underlyingCoins/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetVotingAppsHistorical operation
#
##############################################################################
call_curveGetVotingAppsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address)
    local path

    if ! path=$(build_request_path "/dapps/curve/votingApps/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetWeeklyVolumesHistorical operation
#
##############################################################################
call_curveGetWeeklyVolumesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/weeklyVolumes/historical" path_parameter_names query_parameter_names); then
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
# Call curveHourlyVolumesCurrent operation
#
##############################################################################
call_curveHourlyVolumesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/hourlyVolumes/current" path_parameter_names query_parameter_names); then
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
# Call curveLpTokensCurrent operation
#
##############################################################################
call_curveLpTokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/lpTokens/current" path_parameter_names query_parameter_names); then
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
# Call curvePoolsCurrent operation
#
##############################################################################
call_curvePoolsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(id)
    local path

    if ! path=$(build_request_path "/dapps/curve/pools/current" path_parameter_names query_parameter_names); then
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
# Call curveProposalVotesCurrent operation
#
##############################################################################
call_curveProposalVotesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/proposalVotes/current" path_parameter_names query_parameter_names); then
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
# Call curveProposalsCurrent operation
#
##############################################################################
call_curveProposalsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/proposals/current" path_parameter_names query_parameter_names); then
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
# Call curveRemoveLiquidityEventsCurrent operation
#
##############################################################################
call_curveRemoveLiquidityEventsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/removeLiquidityEvents/current" path_parameter_names query_parameter_names); then
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
# Call curveRemoveLiquidityOneEventsCurrent operation
#
##############################################################################
call_curveRemoveLiquidityOneEventsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/removeLiquidityOneEvents/current" path_parameter_names query_parameter_names); then
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
# Call curveSystemStatesCurrent operation
#
##############################################################################
call_curveSystemStatesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/systemStates/current" path_parameter_names query_parameter_names); then
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
# Call curveTokensCurrent operation
#
##############################################################################
call_curveTokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/tokens/current" path_parameter_names query_parameter_names); then
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
# Call curveTransferOwnershipEventsCurrent operation
#
##############################################################################
call_curveTransferOwnershipEventsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/transferOwnershipEvents/current" path_parameter_names query_parameter_names); then
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
# Call curveUnderlyingCoinsCurrent operation
#
##############################################################################
call_curveUnderlyingCoinsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/underlyingCoins/current" path_parameter_names query_parameter_names); then
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
# Call curveVotingAppsCurrent operation
#
##############################################################################
call_curveVotingAppsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/votingApps/current" path_parameter_names query_parameter_names); then
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
# Call curveWeeklyVolumesCurrent operation
#
##############################################################################
call_curveWeeklyVolumesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/curve/weeklyVolumes/current" path_parameter_names query_parameter_names); then
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
# Call dexBatchesCurrent operation
#
##############################################################################
call_dexBatchesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/batches/current" path_parameter_names query_parameter_names); then
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
# Call dexDepositsCurrent operation
#
##############################################################################
call_dexDepositsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/deposits/current" path_parameter_names query_parameter_names); then
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
# Call dexGetBatchesHistorical operation
#
##############################################################################
call_dexGetBatchesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/dex/batches/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetDepositsHistorical operation
#
##############################################################################
call_dexGetDepositsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
    local path

    if ! path=$(build_request_path "/dapps/dex/deposits/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetOrdersHistorical operation
#
##############################################################################
call_dexGetOrdersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id buy_token sell_token)
    local path

    if ! path=$(build_request_path "/dapps/dex/orders/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetPricesHistorical operation
#
##############################################################################
call_dexGetPricesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/dex/prices/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetSolutionsHistorical operation
#
##############################################################################
call_dexGetSolutionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/dex/solutions/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetStatsHistorical operation
#
##############################################################################
call_dexGetStatsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/dex/stats/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetTokensHistorical operation
#
##############################################################################
call_dexGetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address symbol name)
    local path

    if ! path=$(build_request_path "/dapps/dex/tokens/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetTradesHistorical operation
#
##############################################################################
call_dexGetTradesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id buy_token sell_token)
    local path

    if ! path=$(build_request_path "/dapps/dex/trades/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetUsersHistorical operation
#
##############################################################################
call_dexGetUsersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/dex/users/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetWithdrawRequestsHistorical operation
#
##############################################################################
call_dexGetWithdrawRequestsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
    local path

    if ! path=$(build_request_path "/dapps/dex/withdrawRequests/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetWithdrawsHistorical operation
#
##############################################################################
call_dexGetWithdrawsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
    local path

    if ! path=$(build_request_path "/dapps/dex/withdraws/historical" path_parameter_names query_parameter_names); then
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
# Call dexOrdersCurrent operation
#
##############################################################################
call_dexOrdersCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/orders/current" path_parameter_names query_parameter_names); then
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
# Call dexPricesCurrent operation
#
##############################################################################
call_dexPricesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/prices/current" path_parameter_names query_parameter_names); then
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
# Call dexSolutionsCurrent operation
#
##############################################################################
call_dexSolutionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/solutions/current" path_parameter_names query_parameter_names); then
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
# Call dexStatsCurrent operation
#
##############################################################################
call_dexStatsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/stats/current" path_parameter_names query_parameter_names); then
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
# Call dexTokensCurrent operation
#
##############################################################################
call_dexTokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/tokens/current" path_parameter_names query_parameter_names); then
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
# Call dexTradesCurrent operation
#
##############################################################################
call_dexTradesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/trades/current" path_parameter_names query_parameter_names); then
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
# Call dexUsersCurrent operation
#
##############################################################################
call_dexUsersCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/users/current" path_parameter_names query_parameter_names); then
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
# Call dexWithdrawRequestsCurrent operation
#
##############################################################################
call_dexWithdrawRequestsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/withdrawRequests/current" path_parameter_names query_parameter_names); then
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
# Call dexWithdrawsCurrent operation
#
##############################################################################
call_dexWithdrawsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/dex/withdraws/current" path_parameter_names query_parameter_names); then
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
# Call metadataChainsGet operation
#
##############################################################################
call_metadataChainsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/metadata/chains" path_parameter_names query_parameter_names); then
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
# Call metadataDappsDappNameGet operation
#
##############################################################################
call_metadataDappsDappNameGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dappName)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/metadata/dapps/{dappName}" path_parameter_names query_parameter_names); then
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
# Call metadataDappsGet operation
#
##############################################################################
call_metadataDappsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/metadata/dapps" path_parameter_names query_parameter_names); then
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
# Call sushiswapBundlesCurrent operation
#
##############################################################################
call_sushiswapBundlesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/bundles/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapBurnsCurrent operation
#
##############################################################################
call_sushiswapBurnsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/burns/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapDayDataCurrent operation
#
##############################################################################
call_sushiswapDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/dayData/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapFactoriesCurrent operation
#
##############################################################################
call_sushiswapFactoriesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/factories/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetBundlesHistorical operation
#
##############################################################################
call_sushiswapGetBundlesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/bundles/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetBurnsHistorical operation
#
##############################################################################
call_sushiswapGetBurnsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/burns/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetDayDataHistorical operation
#
##############################################################################
call_sushiswapGetDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/dayData/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetFactoriesHistorical operation
#
##############################################################################
call_sushiswapGetFactoriesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/factories/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetHourDataHistorical operation
#
##############################################################################
call_sushiswapGetHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/hourData/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetLiquidityPositionSnapshotsHistorical operation
#
##############################################################################
call_sushiswapGetLiquidityPositionSnapshotsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/liquidityPositionSnapshots/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetLiquidityPositionsHistorical operation
#
##############################################################################
call_sushiswapGetLiquidityPositionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/liquidityPositions/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetMintsHistorical operation
#
##############################################################################
call_sushiswapGetMintsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/mints/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetPairDayDataHistorical operation
#
##############################################################################
call_sushiswapGetPairDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pairDayData/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetPairHourDataHistorical operation
#
##############################################################################
call_sushiswapGetPairHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pairHourData/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetPairsHistorical operation
#
##############################################################################
call_sushiswapGetPairsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id name token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pairs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetSwapsHistorical operation
#
##############################################################################
call_sushiswapGetSwapsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/swaps/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetTokenDayDataHistorical operation
#
##############################################################################
call_sushiswapGetTokenDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/tokenDayData/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetTokensHistorical operation
#
##############################################################################
call_sushiswapGetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id symbol name)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/tokens/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetTransactionsHistorical operation
#
##############################################################################
call_sushiswapGetTransactionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/transactions/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetUsersHistorical operation
#
##############################################################################
call_sushiswapGetUsersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/users/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapHourDataCurrent operation
#
##############################################################################
call_sushiswapHourDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/hourData/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapLiquidityPositionSnapshotsCurrent operation
#
##############################################################################
call_sushiswapLiquidityPositionSnapshotsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/liquidityPositionSnapshots/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapLiquidityPositionsCurrent operation
#
##############################################################################
call_sushiswapLiquidityPositionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/liquidityPositions/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapMintsCurrent operation
#
##############################################################################
call_sushiswapMintsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/mints/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapPairDayDataCurrent operation
#
##############################################################################
call_sushiswapPairDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pairDayData/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapPairHourDataCurrent operation
#
##############################################################################
call_sushiswapPairHourDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pairHourData/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapPairsCurrent operation
#
##############################################################################
call_sushiswapPairsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pairs/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapSwapsCurrent operation
#
##############################################################################
call_sushiswapSwapsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/swaps/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapTokenDayDataCurrent operation
#
##############################################################################
call_sushiswapTokenDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/tokenDayData/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapTokensCurrent operation
#
##############################################################################
call_sushiswapTokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/tokens/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapTransactionsCurrent operation
#
##############################################################################
call_sushiswapTransactionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/transactions/current" path_parameter_names query_parameter_names); then
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
# Call sushiswapUsersCurrent operation
#
##############################################################################
call_sushiswapUsersCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/users/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2BundlesCurrent operation
#
##############################################################################
call_uniswapV2BundlesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/bundles/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2BurnsCurrent operation
#
##############################################################################
call_uniswapV2BurnsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/burns/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetBundlesHistorical operation
#
##############################################################################
call_uniswapV2GetBundlesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/bundles/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetBurnsHistorical operation
#
##############################################################################
call_uniswapV2GetBurnsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/burns/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetLiquidityPositionSnapshotsHistorical operation
#
##############################################################################
call_uniswapV2GetLiquidityPositionSnapshotsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquidityPositionSnapshots/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetLiquidityPositionsHistorical operation
#
##############################################################################
call_uniswapV2GetLiquidityPositionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquidityPositions/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetMintsHistorical operation
#
##############################################################################
call_uniswapV2GetMintsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/mints/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetPairDayDataHistorical operation
#
##############################################################################
call_uniswapV2GetPairDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pairDayData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetPairHourDataHistorical operation
#
##############################################################################
call_uniswapV2GetPairHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pairHourData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetPairsHistorical operation
#
##############################################################################
call_uniswapV2GetPairsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pairs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetSwapsHistorical operation
#
##############################################################################
call_uniswapV2GetSwapsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/swaps/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetTokenDayDataHistorical operation
#
##############################################################################
call_uniswapV2GetTokenDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokenDayData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetTokensHistorical operation
#
##############################################################################
call_uniswapV2GetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id symbol name)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokens/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetTransactionsHistorical operation
#
##############################################################################
call_uniswapV2GetTransactionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/transactions/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetUniswapDayDataHistorical operation
#
##############################################################################
call_uniswapV2GetUniswapDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/uniswapDayData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetUniswapFactoriesHistorical operation
#
##############################################################################
call_uniswapV2GetUniswapFactoriesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/uniswapFactories/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetUsersHistorical operation
#
##############################################################################
call_uniswapV2GetUsersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/users/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2LiquidityPositionSnapshotsCurrent operation
#
##############################################################################
call_uniswapV2LiquidityPositionSnapshotsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquidityPositionSnapshots/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2LiquidityPositionsCurrent operation
#
##############################################################################
call_uniswapV2LiquidityPositionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquidityPositions/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2MintsCurrent operation
#
##############################################################################
call_uniswapV2MintsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/mints/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2PairDayDataCurrent operation
#
##############################################################################
call_uniswapV2PairDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pairDayData/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2PairHourDataCurrent operation
#
##############################################################################
call_uniswapV2PairHourDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pairHourData/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2PairsCurrent operation
#
##############################################################################
call_uniswapV2PairsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pairs/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2SwapsCurrent operation
#
##############################################################################
call_uniswapV2SwapsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/swaps/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2TokenDayDataCurrent operation
#
##############################################################################
call_uniswapV2TokenDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokenDayData/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2TokensCurrent operation
#
##############################################################################
call_uniswapV2TokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokens/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2TransactionsCurrent operation
#
##############################################################################
call_uniswapV2TransactionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/transactions/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2UniswapDayDataCurrent operation
#
##############################################################################
call_uniswapV2UniswapDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/uniswapDayData/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2UniswapFactoriesCurrent operation
#
##############################################################################
call_uniswapV2UniswapFactoriesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/uniswapFactories/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV2UsersCurrent operation
#
##############################################################################
call_uniswapV2UsersCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/users/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3BundlesCurrent operation
#
##############################################################################
call_uniswapV3BundlesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/bundles/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3BurnsCurrent operation
#
##############################################################################
call_uniswapV3BurnsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/burns/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3FactoriesCurrent operation
#
##############################################################################
call_uniswapV3FactoriesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/factories/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetBundlesHistorical operation
#
##############################################################################
call_uniswapV3GetBundlesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/bundles/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetBurnsHistorical operation
#
##############################################################################
call_uniswapV3GetBurnsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/burns/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetFactoriesHistorical operation
#
##############################################################################
call_uniswapV3GetFactoriesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/factories/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetMintsHistorical operation
#
##############################################################################
call_uniswapV3GetMintsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/mints/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPoolDayDataHistorical operation
#
##############################################################################
call_uniswapV3GetPoolDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolDayData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPoolHourDataHistorical operation
#
##############################################################################
call_uniswapV3GetPoolHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolHourData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPoolsHistorical operation
#
##############################################################################
call_uniswapV3GetPoolsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/pools/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPositionSnapshotsHistorical operation
#
##############################################################################
call_uniswapV3GetPositionSnapshotsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positionSnapshots/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPositionsHistorical operation
#
##############################################################################
call_uniswapV3GetPositionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positions/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetSwapsHistorical operation
#
##############################################################################
call_uniswapV3GetSwapsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/swaps/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTickDayDataHistorical operation
#
##############################################################################
call_uniswapV3GetTickDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tickDayData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTicksHistorical operation
#
##############################################################################
call_uniswapV3GetTicksHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/ticks/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTokenHourDataHistorical operation
#
##############################################################################
call_uniswapV3GetTokenHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokenHourData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTokenV3DayDataHistorical operation
#
##############################################################################
call_uniswapV3GetTokenV3DayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokenV3DayData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTokensHistorical operation
#
##############################################################################
call_uniswapV3GetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id symbol name)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokens/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTransactionsHistorical operation
#
##############################################################################
call_uniswapV3GetTransactionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/transactions/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetUniswapDayDataHistorical operation
#
##############################################################################
call_uniswapV3GetUniswapDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/uniswapDayData/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3MintsCurrent operation
#
##############################################################################
call_uniswapV3MintsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/mints/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3PoolDayDataCurrent operation
#
##############################################################################
call_uniswapV3PoolDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolDayData/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3PoolHourDataCurrent operation
#
##############################################################################
call_uniswapV3PoolHourDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolHourData/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3PoolsCurrent operation
#
##############################################################################
call_uniswapV3PoolsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/pools/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3PositionSnapshotsCurrent operation
#
##############################################################################
call_uniswapV3PositionSnapshotsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positionSnapshots/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3PositionsCurrent operation
#
##############################################################################
call_uniswapV3PositionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positions/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3SwapsCurrent operation
#
##############################################################################
call_uniswapV3SwapsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/swaps/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3TickDayDataCurrent operation
#
##############################################################################
call_uniswapV3TickDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tickDayData/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3TicksCurrent operation
#
##############################################################################
call_uniswapV3TicksCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/ticks/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3TokenHourDataCurrent operation
#
##############################################################################
call_uniswapV3TokenHourDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokenHourData/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3TokenV3DayDataCurrent operation
#
##############################################################################
call_uniswapV3TokenV3DayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokenV3DayData/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3TokensCurrent operation
#
##############################################################################
call_uniswapV3TokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokens/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3TransactionsCurrent operation
#
##############################################################################
call_uniswapV3TransactionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/transactions/current" path_parameter_names query_parameter_names); then
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
# Call uniswapV3UniswapDayDataCurrent operation
#
##############################################################################
call_uniswapV3UniswapDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/uniswapDayData/current" path_parameter_names query_parameter_names); then
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
    cRYPTOPUNKSBidsCurrent)
    operation="cRYPTOPUNKSBidsCurrent"
    ;;
    cRYPTOPUNKSCollectionDailySnapshotsCurrent)
    operation="cRYPTOPUNKSCollectionDailySnapshotsCurrent"
    ;;
    cRYPTOPUNKSCollectionsCurrent)
    operation="cRYPTOPUNKSCollectionsCurrent"
    ;;
    cRYPTOPUNKSDataSourcesCurrent)
    operation="cRYPTOPUNKSDataSourcesCurrent"
    ;;
    cRYPTOPUNKSGetBidsHistorical)
    operation="cRYPTOPUNKSGetBidsHistorical"
    ;;
    cRYPTOPUNKSGetCollectionDailySnapshotsHistorical)
    operation="cRYPTOPUNKSGetCollectionDailySnapshotsHistorical"
    ;;
    cRYPTOPUNKSGetCollectionsHistorical)
    operation="cRYPTOPUNKSGetCollectionsHistorical"
    ;;
    cRYPTOPUNKSGetDataSourcesHistorical)
    operation="cRYPTOPUNKSGetDataSourcesHistorical"
    ;;
    cRYPTOPUNKSGetItemsHistorical)
    operation="cRYPTOPUNKSGetItemsHistorical"
    ;;
    cRYPTOPUNKSGetMarketPlacesHistorical)
    operation="cRYPTOPUNKSGetMarketPlacesHistorical"
    ;;
    cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical)
    operation="cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical"
    ;;
    cRYPTOPUNKSGetTradesHistorical)
    operation="cRYPTOPUNKSGetTradesHistorical"
    ;;
    cRYPTOPUNKSGetUsersHistorical)
    operation="cRYPTOPUNKSGetUsersHistorical"
    ;;
    cRYPTOPUNKSItemsCurrent)
    operation="cRYPTOPUNKSItemsCurrent"
    ;;
    cRYPTOPUNKSMarketPlacesCurrent)
    operation="cRYPTOPUNKSMarketPlacesCurrent"
    ;;
    cRYPTOPUNKSMarketplaceDailySnapshotsCurrent)
    operation="cRYPTOPUNKSMarketplaceDailySnapshotsCurrent"
    ;;
    cRYPTOPUNKSTradesCurrent)
    operation="cRYPTOPUNKSTradesCurrent"
    ;;
    cRYPTOPUNKSUsersCurrent)
    operation="cRYPTOPUNKSUsersCurrent"
    ;;
    cowGetOrdersHistorical)
    operation="cowGetOrdersHistorical"
    ;;
    cowGetSettlementsHistorical)
    operation="cowGetSettlementsHistorical"
    ;;
    cowGetTokensHistorical)
    operation="cowGetTokensHistorical"
    ;;
    cowGetTradesHistorical)
    operation="cowGetTradesHistorical"
    ;;
    cowGetUsersHistorical)
    operation="cowGetUsersHistorical"
    ;;
    cowOrdersCurrent)
    operation="cowOrdersCurrent"
    ;;
    cowSettlementsCurrent)
    operation="cowSettlementsCurrent"
    ;;
    cowTokensCurrent)
    operation="cowTokensCurrent"
    ;;
    cowTradesCurrent)
    operation="cowTradesCurrent"
    ;;
    cowUsersCurrent)
    operation="cowUsersCurrent"
    ;;
    curveAccountsCurrent)
    operation="curveAccountsCurrent"
    ;;
    curveAddLiquidityEventsCurrent)
    operation="curveAddLiquidityEventsCurrent"
    ;;
    curveAdminFeeChangeLogsCurrent)
    operation="curveAdminFeeChangeLogsCurrent"
    ;;
    curveAmplificationCoeffChangeLogsCurrent)
    operation="curveAmplificationCoeffChangeLogsCurrent"
    ;;
    curveCoinsCurrent)
    operation="curveCoinsCurrent"
    ;;
    curveContractVersionsCurrent)
    operation="curveContractVersionsCurrent"
    ;;
    curveContractsCurrent)
    operation="curveContractsCurrent"
    ;;
    curveDailyVolumesCurrent)
    operation="curveDailyVolumesCurrent"
    ;;
    curveExchangesCurrent)
    operation="curveExchangesCurrent"
    ;;
    curveFeeChangeLogsCurrent)
    operation="curveFeeChangeLogsCurrent"
    ;;
    curveGaugeDepositsCurrent)
    operation="curveGaugeDepositsCurrent"
    ;;
    curveGaugeLiquiditiesCurrent)
    operation="curveGaugeLiquiditiesCurrent"
    ;;
    curveGaugeTotalWeightsCurrent)
    operation="curveGaugeTotalWeightsCurrent"
    ;;
    curveGaugeTypeWeightsCurrent)
    operation="curveGaugeTypeWeightsCurrent"
    ;;
    curveGaugeTypesCurrent)
    operation="curveGaugeTypesCurrent"
    ;;
    curveGaugeWeightVotesCurrent)
    operation="curveGaugeWeightVotesCurrent"
    ;;
    curveGaugeWeightsCurrent)
    operation="curveGaugeWeightsCurrent"
    ;;
    curveGaugeWithdrawsCurrent)
    operation="curveGaugeWithdrawsCurrent"
    ;;
    curveGaugesCurrent)
    operation="curveGaugesCurrent"
    ;;
    curveGetAccountsHistorical)
    operation="curveGetAccountsHistorical"
    ;;
    curveGetAddLiquidityEventsHistorical)
    operation="curveGetAddLiquidityEventsHistorical"
    ;;
    curveGetAdminFeeChangeLogsHistorical)
    operation="curveGetAdminFeeChangeLogsHistorical"
    ;;
    curveGetAmplificationCoeffChangeLogsHistorical)
    operation="curveGetAmplificationCoeffChangeLogsHistorical"
    ;;
    curveGetCoinsHistorical)
    operation="curveGetCoinsHistorical"
    ;;
    curveGetContractVersionsHistorical)
    operation="curveGetContractVersionsHistorical"
    ;;
    curveGetContractsHistorical)
    operation="curveGetContractsHistorical"
    ;;
    curveGetDailyVolumesHistorical)
    operation="curveGetDailyVolumesHistorical"
    ;;
    curveGetExchangesHistorical)
    operation="curveGetExchangesHistorical"
    ;;
    curveGetFeeChangeLogsHistorical)
    operation="curveGetFeeChangeLogsHistorical"
    ;;
    curveGetGaugeDepositsHistorical)
    operation="curveGetGaugeDepositsHistorical"
    ;;
    curveGetGaugeLiquiditiesHistorical)
    operation="curveGetGaugeLiquiditiesHistorical"
    ;;
    curveGetGaugeTotalWeightsHistorical)
    operation="curveGetGaugeTotalWeightsHistorical"
    ;;
    curveGetGaugeTypeWeightsHistorical)
    operation="curveGetGaugeTypeWeightsHistorical"
    ;;
    curveGetGaugeTypesHistorical)
    operation="curveGetGaugeTypesHistorical"
    ;;
    curveGetGaugeWeightVotesHistorical)
    operation="curveGetGaugeWeightVotesHistorical"
    ;;
    curveGetGaugeWeightsHistorical)
    operation="curveGetGaugeWeightsHistorical"
    ;;
    curveGetGaugeWithdrawsHistorical)
    operation="curveGetGaugeWithdrawsHistorical"
    ;;
    curveGetGaugesHistorical)
    operation="curveGetGaugesHistorical"
    ;;
    curveGetHourlyVolumesHistorical)
    operation="curveGetHourlyVolumesHistorical"
    ;;
    curveGetLpTokensHistorical)
    operation="curveGetLpTokensHistorical"
    ;;
    curveGetPoolsHistorical)
    operation="curveGetPoolsHistorical"
    ;;
    curveGetProposalVotesHistorical)
    operation="curveGetProposalVotesHistorical"
    ;;
    curveGetProposalsHistorical)
    operation="curveGetProposalsHistorical"
    ;;
    curveGetRemoveLiquidityEventsHistorical)
    operation="curveGetRemoveLiquidityEventsHistorical"
    ;;
    curveGetRemoveLiquidityOneEventsHistorical)
    operation="curveGetRemoveLiquidityOneEventsHistorical"
    ;;
    curveGetSystemStatesHistorical)
    operation="curveGetSystemStatesHistorical"
    ;;
    curveGetTokensHistorical)
    operation="curveGetTokensHistorical"
    ;;
    curveGetTransferOwnershipEventsHistorical)
    operation="curveGetTransferOwnershipEventsHistorical"
    ;;
    curveGetUnderlyingCoinsHistorical)
    operation="curveGetUnderlyingCoinsHistorical"
    ;;
    curveGetVotingAppsHistorical)
    operation="curveGetVotingAppsHistorical"
    ;;
    curveGetWeeklyVolumesHistorical)
    operation="curveGetWeeklyVolumesHistorical"
    ;;
    curveHourlyVolumesCurrent)
    operation="curveHourlyVolumesCurrent"
    ;;
    curveLpTokensCurrent)
    operation="curveLpTokensCurrent"
    ;;
    curvePoolsCurrent)
    operation="curvePoolsCurrent"
    ;;
    curveProposalVotesCurrent)
    operation="curveProposalVotesCurrent"
    ;;
    curveProposalsCurrent)
    operation="curveProposalsCurrent"
    ;;
    curveRemoveLiquidityEventsCurrent)
    operation="curveRemoveLiquidityEventsCurrent"
    ;;
    curveRemoveLiquidityOneEventsCurrent)
    operation="curveRemoveLiquidityOneEventsCurrent"
    ;;
    curveSystemStatesCurrent)
    operation="curveSystemStatesCurrent"
    ;;
    curveTokensCurrent)
    operation="curveTokensCurrent"
    ;;
    curveTransferOwnershipEventsCurrent)
    operation="curveTransferOwnershipEventsCurrent"
    ;;
    curveUnderlyingCoinsCurrent)
    operation="curveUnderlyingCoinsCurrent"
    ;;
    curveVotingAppsCurrent)
    operation="curveVotingAppsCurrent"
    ;;
    curveWeeklyVolumesCurrent)
    operation="curveWeeklyVolumesCurrent"
    ;;
    dexBatchesCurrent)
    operation="dexBatchesCurrent"
    ;;
    dexDepositsCurrent)
    operation="dexDepositsCurrent"
    ;;
    dexGetBatchesHistorical)
    operation="dexGetBatchesHistorical"
    ;;
    dexGetDepositsHistorical)
    operation="dexGetDepositsHistorical"
    ;;
    dexGetOrdersHistorical)
    operation="dexGetOrdersHistorical"
    ;;
    dexGetPricesHistorical)
    operation="dexGetPricesHistorical"
    ;;
    dexGetSolutionsHistorical)
    operation="dexGetSolutionsHistorical"
    ;;
    dexGetStatsHistorical)
    operation="dexGetStatsHistorical"
    ;;
    dexGetTokensHistorical)
    operation="dexGetTokensHistorical"
    ;;
    dexGetTradesHistorical)
    operation="dexGetTradesHistorical"
    ;;
    dexGetUsersHistorical)
    operation="dexGetUsersHistorical"
    ;;
    dexGetWithdrawRequestsHistorical)
    operation="dexGetWithdrawRequestsHistorical"
    ;;
    dexGetWithdrawsHistorical)
    operation="dexGetWithdrawsHistorical"
    ;;
    dexOrdersCurrent)
    operation="dexOrdersCurrent"
    ;;
    dexPricesCurrent)
    operation="dexPricesCurrent"
    ;;
    dexSolutionsCurrent)
    operation="dexSolutionsCurrent"
    ;;
    dexStatsCurrent)
    operation="dexStatsCurrent"
    ;;
    dexTokensCurrent)
    operation="dexTokensCurrent"
    ;;
    dexTradesCurrent)
    operation="dexTradesCurrent"
    ;;
    dexUsersCurrent)
    operation="dexUsersCurrent"
    ;;
    dexWithdrawRequestsCurrent)
    operation="dexWithdrawRequestsCurrent"
    ;;
    dexWithdrawsCurrent)
    operation="dexWithdrawsCurrent"
    ;;
    metadataChainsGet)
    operation="metadataChainsGet"
    ;;
    metadataDappsDappNameGet)
    operation="metadataDappsDappNameGet"
    ;;
    metadataDappsGet)
    operation="metadataDappsGet"
    ;;
    sushiswapBundlesCurrent)
    operation="sushiswapBundlesCurrent"
    ;;
    sushiswapBurnsCurrent)
    operation="sushiswapBurnsCurrent"
    ;;
    sushiswapDayDataCurrent)
    operation="sushiswapDayDataCurrent"
    ;;
    sushiswapFactoriesCurrent)
    operation="sushiswapFactoriesCurrent"
    ;;
    sushiswapGetBundlesHistorical)
    operation="sushiswapGetBundlesHistorical"
    ;;
    sushiswapGetBurnsHistorical)
    operation="sushiswapGetBurnsHistorical"
    ;;
    sushiswapGetDayDataHistorical)
    operation="sushiswapGetDayDataHistorical"
    ;;
    sushiswapGetFactoriesHistorical)
    operation="sushiswapGetFactoriesHistorical"
    ;;
    sushiswapGetHourDataHistorical)
    operation="sushiswapGetHourDataHistorical"
    ;;
    sushiswapGetLiquidityPositionSnapshotsHistorical)
    operation="sushiswapGetLiquidityPositionSnapshotsHistorical"
    ;;
    sushiswapGetLiquidityPositionsHistorical)
    operation="sushiswapGetLiquidityPositionsHistorical"
    ;;
    sushiswapGetMintsHistorical)
    operation="sushiswapGetMintsHistorical"
    ;;
    sushiswapGetPairDayDataHistorical)
    operation="sushiswapGetPairDayDataHistorical"
    ;;
    sushiswapGetPairHourDataHistorical)
    operation="sushiswapGetPairHourDataHistorical"
    ;;
    sushiswapGetPairsHistorical)
    operation="sushiswapGetPairsHistorical"
    ;;
    sushiswapGetSwapsHistorical)
    operation="sushiswapGetSwapsHistorical"
    ;;
    sushiswapGetTokenDayDataHistorical)
    operation="sushiswapGetTokenDayDataHistorical"
    ;;
    sushiswapGetTokensHistorical)
    operation="sushiswapGetTokensHistorical"
    ;;
    sushiswapGetTransactionsHistorical)
    operation="sushiswapGetTransactionsHistorical"
    ;;
    sushiswapGetUsersHistorical)
    operation="sushiswapGetUsersHistorical"
    ;;
    sushiswapHourDataCurrent)
    operation="sushiswapHourDataCurrent"
    ;;
    sushiswapLiquidityPositionSnapshotsCurrent)
    operation="sushiswapLiquidityPositionSnapshotsCurrent"
    ;;
    sushiswapLiquidityPositionsCurrent)
    operation="sushiswapLiquidityPositionsCurrent"
    ;;
    sushiswapMintsCurrent)
    operation="sushiswapMintsCurrent"
    ;;
    sushiswapPairDayDataCurrent)
    operation="sushiswapPairDayDataCurrent"
    ;;
    sushiswapPairHourDataCurrent)
    operation="sushiswapPairHourDataCurrent"
    ;;
    sushiswapPairsCurrent)
    operation="sushiswapPairsCurrent"
    ;;
    sushiswapSwapsCurrent)
    operation="sushiswapSwapsCurrent"
    ;;
    sushiswapTokenDayDataCurrent)
    operation="sushiswapTokenDayDataCurrent"
    ;;
    sushiswapTokensCurrent)
    operation="sushiswapTokensCurrent"
    ;;
    sushiswapTransactionsCurrent)
    operation="sushiswapTransactionsCurrent"
    ;;
    sushiswapUsersCurrent)
    operation="sushiswapUsersCurrent"
    ;;
    uniswapV2BundlesCurrent)
    operation="uniswapV2BundlesCurrent"
    ;;
    uniswapV2BurnsCurrent)
    operation="uniswapV2BurnsCurrent"
    ;;
    uniswapV2GetBundlesHistorical)
    operation="uniswapV2GetBundlesHistorical"
    ;;
    uniswapV2GetBurnsHistorical)
    operation="uniswapV2GetBurnsHistorical"
    ;;
    uniswapV2GetLiquidityPositionSnapshotsHistorical)
    operation="uniswapV2GetLiquidityPositionSnapshotsHistorical"
    ;;
    uniswapV2GetLiquidityPositionsHistorical)
    operation="uniswapV2GetLiquidityPositionsHistorical"
    ;;
    uniswapV2GetMintsHistorical)
    operation="uniswapV2GetMintsHistorical"
    ;;
    uniswapV2GetPairDayDataHistorical)
    operation="uniswapV2GetPairDayDataHistorical"
    ;;
    uniswapV2GetPairHourDataHistorical)
    operation="uniswapV2GetPairHourDataHistorical"
    ;;
    uniswapV2GetPairsHistorical)
    operation="uniswapV2GetPairsHistorical"
    ;;
    uniswapV2GetSwapsHistorical)
    operation="uniswapV2GetSwapsHistorical"
    ;;
    uniswapV2GetTokenDayDataHistorical)
    operation="uniswapV2GetTokenDayDataHistorical"
    ;;
    uniswapV2GetTokensHistorical)
    operation="uniswapV2GetTokensHistorical"
    ;;
    uniswapV2GetTransactionsHistorical)
    operation="uniswapV2GetTransactionsHistorical"
    ;;
    uniswapV2GetUniswapDayDataHistorical)
    operation="uniswapV2GetUniswapDayDataHistorical"
    ;;
    uniswapV2GetUniswapFactoriesHistorical)
    operation="uniswapV2GetUniswapFactoriesHistorical"
    ;;
    uniswapV2GetUsersHistorical)
    operation="uniswapV2GetUsersHistorical"
    ;;
    uniswapV2LiquidityPositionSnapshotsCurrent)
    operation="uniswapV2LiquidityPositionSnapshotsCurrent"
    ;;
    uniswapV2LiquidityPositionsCurrent)
    operation="uniswapV2LiquidityPositionsCurrent"
    ;;
    uniswapV2MintsCurrent)
    operation="uniswapV2MintsCurrent"
    ;;
    uniswapV2PairDayDataCurrent)
    operation="uniswapV2PairDayDataCurrent"
    ;;
    uniswapV2PairHourDataCurrent)
    operation="uniswapV2PairHourDataCurrent"
    ;;
    uniswapV2PairsCurrent)
    operation="uniswapV2PairsCurrent"
    ;;
    uniswapV2SwapsCurrent)
    operation="uniswapV2SwapsCurrent"
    ;;
    uniswapV2TokenDayDataCurrent)
    operation="uniswapV2TokenDayDataCurrent"
    ;;
    uniswapV2TokensCurrent)
    operation="uniswapV2TokensCurrent"
    ;;
    uniswapV2TransactionsCurrent)
    operation="uniswapV2TransactionsCurrent"
    ;;
    uniswapV2UniswapDayDataCurrent)
    operation="uniswapV2UniswapDayDataCurrent"
    ;;
    uniswapV2UniswapFactoriesCurrent)
    operation="uniswapV2UniswapFactoriesCurrent"
    ;;
    uniswapV2UsersCurrent)
    operation="uniswapV2UsersCurrent"
    ;;
    uniswapV3BundlesCurrent)
    operation="uniswapV3BundlesCurrent"
    ;;
    uniswapV3BurnsCurrent)
    operation="uniswapV3BurnsCurrent"
    ;;
    uniswapV3FactoriesCurrent)
    operation="uniswapV3FactoriesCurrent"
    ;;
    uniswapV3GetBundlesHistorical)
    operation="uniswapV3GetBundlesHistorical"
    ;;
    uniswapV3GetBurnsHistorical)
    operation="uniswapV3GetBurnsHistorical"
    ;;
    uniswapV3GetFactoriesHistorical)
    operation="uniswapV3GetFactoriesHistorical"
    ;;
    uniswapV3GetMintsHistorical)
    operation="uniswapV3GetMintsHistorical"
    ;;
    uniswapV3GetPoolDayDataHistorical)
    operation="uniswapV3GetPoolDayDataHistorical"
    ;;
    uniswapV3GetPoolHourDataHistorical)
    operation="uniswapV3GetPoolHourDataHistorical"
    ;;
    uniswapV3GetPoolsHistorical)
    operation="uniswapV3GetPoolsHistorical"
    ;;
    uniswapV3GetPositionSnapshotsHistorical)
    operation="uniswapV3GetPositionSnapshotsHistorical"
    ;;
    uniswapV3GetPositionsHistorical)
    operation="uniswapV3GetPositionsHistorical"
    ;;
    uniswapV3GetSwapsHistorical)
    operation="uniswapV3GetSwapsHistorical"
    ;;
    uniswapV3GetTickDayDataHistorical)
    operation="uniswapV3GetTickDayDataHistorical"
    ;;
    uniswapV3GetTicksHistorical)
    operation="uniswapV3GetTicksHistorical"
    ;;
    uniswapV3GetTokenHourDataHistorical)
    operation="uniswapV3GetTokenHourDataHistorical"
    ;;
    uniswapV3GetTokenV3DayDataHistorical)
    operation="uniswapV3GetTokenV3DayDataHistorical"
    ;;
    uniswapV3GetTokensHistorical)
    operation="uniswapV3GetTokensHistorical"
    ;;
    uniswapV3GetTransactionsHistorical)
    operation="uniswapV3GetTransactionsHistorical"
    ;;
    uniswapV3GetUniswapDayDataHistorical)
    operation="uniswapV3GetUniswapDayDataHistorical"
    ;;
    uniswapV3MintsCurrent)
    operation="uniswapV3MintsCurrent"
    ;;
    uniswapV3PoolDayDataCurrent)
    operation="uniswapV3PoolDayDataCurrent"
    ;;
    uniswapV3PoolHourDataCurrent)
    operation="uniswapV3PoolHourDataCurrent"
    ;;
    uniswapV3PoolsCurrent)
    operation="uniswapV3PoolsCurrent"
    ;;
    uniswapV3PositionSnapshotsCurrent)
    operation="uniswapV3PositionSnapshotsCurrent"
    ;;
    uniswapV3PositionsCurrent)
    operation="uniswapV3PositionsCurrent"
    ;;
    uniswapV3SwapsCurrent)
    operation="uniswapV3SwapsCurrent"
    ;;
    uniswapV3TickDayDataCurrent)
    operation="uniswapV3TickDayDataCurrent"
    ;;
    uniswapV3TicksCurrent)
    operation="uniswapV3TicksCurrent"
    ;;
    uniswapV3TokenHourDataCurrent)
    operation="uniswapV3TokenHourDataCurrent"
    ;;
    uniswapV3TokenV3DayDataCurrent)
    operation="uniswapV3TokenV3DayDataCurrent"
    ;;
    uniswapV3TokensCurrent)
    operation="uniswapV3TokensCurrent"
    ;;
    uniswapV3TransactionsCurrent)
    operation="uniswapV3TransactionsCurrent"
    ;;
    uniswapV3UniswapDayDataCurrent)
    operation="uniswapV3UniswapDayDataCurrent"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
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
    cRYPTOPUNKSBidsCurrent)
    call_cRYPTOPUNKSBidsCurrent
    ;;
    cRYPTOPUNKSCollectionDailySnapshotsCurrent)
    call_cRYPTOPUNKSCollectionDailySnapshotsCurrent
    ;;
    cRYPTOPUNKSCollectionsCurrent)
    call_cRYPTOPUNKSCollectionsCurrent
    ;;
    cRYPTOPUNKSDataSourcesCurrent)
    call_cRYPTOPUNKSDataSourcesCurrent
    ;;
    cRYPTOPUNKSGetBidsHistorical)
    call_cRYPTOPUNKSGetBidsHistorical
    ;;
    cRYPTOPUNKSGetCollectionDailySnapshotsHistorical)
    call_cRYPTOPUNKSGetCollectionDailySnapshotsHistorical
    ;;
    cRYPTOPUNKSGetCollectionsHistorical)
    call_cRYPTOPUNKSGetCollectionsHistorical
    ;;
    cRYPTOPUNKSGetDataSourcesHistorical)
    call_cRYPTOPUNKSGetDataSourcesHistorical
    ;;
    cRYPTOPUNKSGetItemsHistorical)
    call_cRYPTOPUNKSGetItemsHistorical
    ;;
    cRYPTOPUNKSGetMarketPlacesHistorical)
    call_cRYPTOPUNKSGetMarketPlacesHistorical
    ;;
    cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical)
    call_cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical
    ;;
    cRYPTOPUNKSGetTradesHistorical)
    call_cRYPTOPUNKSGetTradesHistorical
    ;;
    cRYPTOPUNKSGetUsersHistorical)
    call_cRYPTOPUNKSGetUsersHistorical
    ;;
    cRYPTOPUNKSItemsCurrent)
    call_cRYPTOPUNKSItemsCurrent
    ;;
    cRYPTOPUNKSMarketPlacesCurrent)
    call_cRYPTOPUNKSMarketPlacesCurrent
    ;;
    cRYPTOPUNKSMarketplaceDailySnapshotsCurrent)
    call_cRYPTOPUNKSMarketplaceDailySnapshotsCurrent
    ;;
    cRYPTOPUNKSTradesCurrent)
    call_cRYPTOPUNKSTradesCurrent
    ;;
    cRYPTOPUNKSUsersCurrent)
    call_cRYPTOPUNKSUsersCurrent
    ;;
    cowGetOrdersHistorical)
    call_cowGetOrdersHistorical
    ;;
    cowGetSettlementsHistorical)
    call_cowGetSettlementsHistorical
    ;;
    cowGetTokensHistorical)
    call_cowGetTokensHistorical
    ;;
    cowGetTradesHistorical)
    call_cowGetTradesHistorical
    ;;
    cowGetUsersHistorical)
    call_cowGetUsersHistorical
    ;;
    cowOrdersCurrent)
    call_cowOrdersCurrent
    ;;
    cowSettlementsCurrent)
    call_cowSettlementsCurrent
    ;;
    cowTokensCurrent)
    call_cowTokensCurrent
    ;;
    cowTradesCurrent)
    call_cowTradesCurrent
    ;;
    cowUsersCurrent)
    call_cowUsersCurrent
    ;;
    curveAccountsCurrent)
    call_curveAccountsCurrent
    ;;
    curveAddLiquidityEventsCurrent)
    call_curveAddLiquidityEventsCurrent
    ;;
    curveAdminFeeChangeLogsCurrent)
    call_curveAdminFeeChangeLogsCurrent
    ;;
    curveAmplificationCoeffChangeLogsCurrent)
    call_curveAmplificationCoeffChangeLogsCurrent
    ;;
    curveCoinsCurrent)
    call_curveCoinsCurrent
    ;;
    curveContractVersionsCurrent)
    call_curveContractVersionsCurrent
    ;;
    curveContractsCurrent)
    call_curveContractsCurrent
    ;;
    curveDailyVolumesCurrent)
    call_curveDailyVolumesCurrent
    ;;
    curveExchangesCurrent)
    call_curveExchangesCurrent
    ;;
    curveFeeChangeLogsCurrent)
    call_curveFeeChangeLogsCurrent
    ;;
    curveGaugeDepositsCurrent)
    call_curveGaugeDepositsCurrent
    ;;
    curveGaugeLiquiditiesCurrent)
    call_curveGaugeLiquiditiesCurrent
    ;;
    curveGaugeTotalWeightsCurrent)
    call_curveGaugeTotalWeightsCurrent
    ;;
    curveGaugeTypeWeightsCurrent)
    call_curveGaugeTypeWeightsCurrent
    ;;
    curveGaugeTypesCurrent)
    call_curveGaugeTypesCurrent
    ;;
    curveGaugeWeightVotesCurrent)
    call_curveGaugeWeightVotesCurrent
    ;;
    curveGaugeWeightsCurrent)
    call_curveGaugeWeightsCurrent
    ;;
    curveGaugeWithdrawsCurrent)
    call_curveGaugeWithdrawsCurrent
    ;;
    curveGaugesCurrent)
    call_curveGaugesCurrent
    ;;
    curveGetAccountsHistorical)
    call_curveGetAccountsHistorical
    ;;
    curveGetAddLiquidityEventsHistorical)
    call_curveGetAddLiquidityEventsHistorical
    ;;
    curveGetAdminFeeChangeLogsHistorical)
    call_curveGetAdminFeeChangeLogsHistorical
    ;;
    curveGetAmplificationCoeffChangeLogsHistorical)
    call_curveGetAmplificationCoeffChangeLogsHistorical
    ;;
    curveGetCoinsHistorical)
    call_curveGetCoinsHistorical
    ;;
    curveGetContractVersionsHistorical)
    call_curveGetContractVersionsHistorical
    ;;
    curveGetContractsHistorical)
    call_curveGetContractsHistorical
    ;;
    curveGetDailyVolumesHistorical)
    call_curveGetDailyVolumesHistorical
    ;;
    curveGetExchangesHistorical)
    call_curveGetExchangesHistorical
    ;;
    curveGetFeeChangeLogsHistorical)
    call_curveGetFeeChangeLogsHistorical
    ;;
    curveGetGaugeDepositsHistorical)
    call_curveGetGaugeDepositsHistorical
    ;;
    curveGetGaugeLiquiditiesHistorical)
    call_curveGetGaugeLiquiditiesHistorical
    ;;
    curveGetGaugeTotalWeightsHistorical)
    call_curveGetGaugeTotalWeightsHistorical
    ;;
    curveGetGaugeTypeWeightsHistorical)
    call_curveGetGaugeTypeWeightsHistorical
    ;;
    curveGetGaugeTypesHistorical)
    call_curveGetGaugeTypesHistorical
    ;;
    curveGetGaugeWeightVotesHistorical)
    call_curveGetGaugeWeightVotesHistorical
    ;;
    curveGetGaugeWeightsHistorical)
    call_curveGetGaugeWeightsHistorical
    ;;
    curveGetGaugeWithdrawsHistorical)
    call_curveGetGaugeWithdrawsHistorical
    ;;
    curveGetGaugesHistorical)
    call_curveGetGaugesHistorical
    ;;
    curveGetHourlyVolumesHistorical)
    call_curveGetHourlyVolumesHistorical
    ;;
    curveGetLpTokensHistorical)
    call_curveGetLpTokensHistorical
    ;;
    curveGetPoolsHistorical)
    call_curveGetPoolsHistorical
    ;;
    curveGetProposalVotesHistorical)
    call_curveGetProposalVotesHistorical
    ;;
    curveGetProposalsHistorical)
    call_curveGetProposalsHistorical
    ;;
    curveGetRemoveLiquidityEventsHistorical)
    call_curveGetRemoveLiquidityEventsHistorical
    ;;
    curveGetRemoveLiquidityOneEventsHistorical)
    call_curveGetRemoveLiquidityOneEventsHistorical
    ;;
    curveGetSystemStatesHistorical)
    call_curveGetSystemStatesHistorical
    ;;
    curveGetTokensHistorical)
    call_curveGetTokensHistorical
    ;;
    curveGetTransferOwnershipEventsHistorical)
    call_curveGetTransferOwnershipEventsHistorical
    ;;
    curveGetUnderlyingCoinsHistorical)
    call_curveGetUnderlyingCoinsHistorical
    ;;
    curveGetVotingAppsHistorical)
    call_curveGetVotingAppsHistorical
    ;;
    curveGetWeeklyVolumesHistorical)
    call_curveGetWeeklyVolumesHistorical
    ;;
    curveHourlyVolumesCurrent)
    call_curveHourlyVolumesCurrent
    ;;
    curveLpTokensCurrent)
    call_curveLpTokensCurrent
    ;;
    curvePoolsCurrent)
    call_curvePoolsCurrent
    ;;
    curveProposalVotesCurrent)
    call_curveProposalVotesCurrent
    ;;
    curveProposalsCurrent)
    call_curveProposalsCurrent
    ;;
    curveRemoveLiquidityEventsCurrent)
    call_curveRemoveLiquidityEventsCurrent
    ;;
    curveRemoveLiquidityOneEventsCurrent)
    call_curveRemoveLiquidityOneEventsCurrent
    ;;
    curveSystemStatesCurrent)
    call_curveSystemStatesCurrent
    ;;
    curveTokensCurrent)
    call_curveTokensCurrent
    ;;
    curveTransferOwnershipEventsCurrent)
    call_curveTransferOwnershipEventsCurrent
    ;;
    curveUnderlyingCoinsCurrent)
    call_curveUnderlyingCoinsCurrent
    ;;
    curveVotingAppsCurrent)
    call_curveVotingAppsCurrent
    ;;
    curveWeeklyVolumesCurrent)
    call_curveWeeklyVolumesCurrent
    ;;
    dexBatchesCurrent)
    call_dexBatchesCurrent
    ;;
    dexDepositsCurrent)
    call_dexDepositsCurrent
    ;;
    dexGetBatchesHistorical)
    call_dexGetBatchesHistorical
    ;;
    dexGetDepositsHistorical)
    call_dexGetDepositsHistorical
    ;;
    dexGetOrdersHistorical)
    call_dexGetOrdersHistorical
    ;;
    dexGetPricesHistorical)
    call_dexGetPricesHistorical
    ;;
    dexGetSolutionsHistorical)
    call_dexGetSolutionsHistorical
    ;;
    dexGetStatsHistorical)
    call_dexGetStatsHistorical
    ;;
    dexGetTokensHistorical)
    call_dexGetTokensHistorical
    ;;
    dexGetTradesHistorical)
    call_dexGetTradesHistorical
    ;;
    dexGetUsersHistorical)
    call_dexGetUsersHistorical
    ;;
    dexGetWithdrawRequestsHistorical)
    call_dexGetWithdrawRequestsHistorical
    ;;
    dexGetWithdrawsHistorical)
    call_dexGetWithdrawsHistorical
    ;;
    dexOrdersCurrent)
    call_dexOrdersCurrent
    ;;
    dexPricesCurrent)
    call_dexPricesCurrent
    ;;
    dexSolutionsCurrent)
    call_dexSolutionsCurrent
    ;;
    dexStatsCurrent)
    call_dexStatsCurrent
    ;;
    dexTokensCurrent)
    call_dexTokensCurrent
    ;;
    dexTradesCurrent)
    call_dexTradesCurrent
    ;;
    dexUsersCurrent)
    call_dexUsersCurrent
    ;;
    dexWithdrawRequestsCurrent)
    call_dexWithdrawRequestsCurrent
    ;;
    dexWithdrawsCurrent)
    call_dexWithdrawsCurrent
    ;;
    metadataChainsGet)
    call_metadataChainsGet
    ;;
    metadataDappsDappNameGet)
    call_metadataDappsDappNameGet
    ;;
    metadataDappsGet)
    call_metadataDappsGet
    ;;
    sushiswapBundlesCurrent)
    call_sushiswapBundlesCurrent
    ;;
    sushiswapBurnsCurrent)
    call_sushiswapBurnsCurrent
    ;;
    sushiswapDayDataCurrent)
    call_sushiswapDayDataCurrent
    ;;
    sushiswapFactoriesCurrent)
    call_sushiswapFactoriesCurrent
    ;;
    sushiswapGetBundlesHistorical)
    call_sushiswapGetBundlesHistorical
    ;;
    sushiswapGetBurnsHistorical)
    call_sushiswapGetBurnsHistorical
    ;;
    sushiswapGetDayDataHistorical)
    call_sushiswapGetDayDataHistorical
    ;;
    sushiswapGetFactoriesHistorical)
    call_sushiswapGetFactoriesHistorical
    ;;
    sushiswapGetHourDataHistorical)
    call_sushiswapGetHourDataHistorical
    ;;
    sushiswapGetLiquidityPositionSnapshotsHistorical)
    call_sushiswapGetLiquidityPositionSnapshotsHistorical
    ;;
    sushiswapGetLiquidityPositionsHistorical)
    call_sushiswapGetLiquidityPositionsHistorical
    ;;
    sushiswapGetMintsHistorical)
    call_sushiswapGetMintsHistorical
    ;;
    sushiswapGetPairDayDataHistorical)
    call_sushiswapGetPairDayDataHistorical
    ;;
    sushiswapGetPairHourDataHistorical)
    call_sushiswapGetPairHourDataHistorical
    ;;
    sushiswapGetPairsHistorical)
    call_sushiswapGetPairsHistorical
    ;;
    sushiswapGetSwapsHistorical)
    call_sushiswapGetSwapsHistorical
    ;;
    sushiswapGetTokenDayDataHistorical)
    call_sushiswapGetTokenDayDataHistorical
    ;;
    sushiswapGetTokensHistorical)
    call_sushiswapGetTokensHistorical
    ;;
    sushiswapGetTransactionsHistorical)
    call_sushiswapGetTransactionsHistorical
    ;;
    sushiswapGetUsersHistorical)
    call_sushiswapGetUsersHistorical
    ;;
    sushiswapHourDataCurrent)
    call_sushiswapHourDataCurrent
    ;;
    sushiswapLiquidityPositionSnapshotsCurrent)
    call_sushiswapLiquidityPositionSnapshotsCurrent
    ;;
    sushiswapLiquidityPositionsCurrent)
    call_sushiswapLiquidityPositionsCurrent
    ;;
    sushiswapMintsCurrent)
    call_sushiswapMintsCurrent
    ;;
    sushiswapPairDayDataCurrent)
    call_sushiswapPairDayDataCurrent
    ;;
    sushiswapPairHourDataCurrent)
    call_sushiswapPairHourDataCurrent
    ;;
    sushiswapPairsCurrent)
    call_sushiswapPairsCurrent
    ;;
    sushiswapSwapsCurrent)
    call_sushiswapSwapsCurrent
    ;;
    sushiswapTokenDayDataCurrent)
    call_sushiswapTokenDayDataCurrent
    ;;
    sushiswapTokensCurrent)
    call_sushiswapTokensCurrent
    ;;
    sushiswapTransactionsCurrent)
    call_sushiswapTransactionsCurrent
    ;;
    sushiswapUsersCurrent)
    call_sushiswapUsersCurrent
    ;;
    uniswapV2BundlesCurrent)
    call_uniswapV2BundlesCurrent
    ;;
    uniswapV2BurnsCurrent)
    call_uniswapV2BurnsCurrent
    ;;
    uniswapV2GetBundlesHistorical)
    call_uniswapV2GetBundlesHistorical
    ;;
    uniswapV2GetBurnsHistorical)
    call_uniswapV2GetBurnsHistorical
    ;;
    uniswapV2GetLiquidityPositionSnapshotsHistorical)
    call_uniswapV2GetLiquidityPositionSnapshotsHistorical
    ;;
    uniswapV2GetLiquidityPositionsHistorical)
    call_uniswapV2GetLiquidityPositionsHistorical
    ;;
    uniswapV2GetMintsHistorical)
    call_uniswapV2GetMintsHistorical
    ;;
    uniswapV2GetPairDayDataHistorical)
    call_uniswapV2GetPairDayDataHistorical
    ;;
    uniswapV2GetPairHourDataHistorical)
    call_uniswapV2GetPairHourDataHistorical
    ;;
    uniswapV2GetPairsHistorical)
    call_uniswapV2GetPairsHistorical
    ;;
    uniswapV2GetSwapsHistorical)
    call_uniswapV2GetSwapsHistorical
    ;;
    uniswapV2GetTokenDayDataHistorical)
    call_uniswapV2GetTokenDayDataHistorical
    ;;
    uniswapV2GetTokensHistorical)
    call_uniswapV2GetTokensHistorical
    ;;
    uniswapV2GetTransactionsHistorical)
    call_uniswapV2GetTransactionsHistorical
    ;;
    uniswapV2GetUniswapDayDataHistorical)
    call_uniswapV2GetUniswapDayDataHistorical
    ;;
    uniswapV2GetUniswapFactoriesHistorical)
    call_uniswapV2GetUniswapFactoriesHistorical
    ;;
    uniswapV2GetUsersHistorical)
    call_uniswapV2GetUsersHistorical
    ;;
    uniswapV2LiquidityPositionSnapshotsCurrent)
    call_uniswapV2LiquidityPositionSnapshotsCurrent
    ;;
    uniswapV2LiquidityPositionsCurrent)
    call_uniswapV2LiquidityPositionsCurrent
    ;;
    uniswapV2MintsCurrent)
    call_uniswapV2MintsCurrent
    ;;
    uniswapV2PairDayDataCurrent)
    call_uniswapV2PairDayDataCurrent
    ;;
    uniswapV2PairHourDataCurrent)
    call_uniswapV2PairHourDataCurrent
    ;;
    uniswapV2PairsCurrent)
    call_uniswapV2PairsCurrent
    ;;
    uniswapV2SwapsCurrent)
    call_uniswapV2SwapsCurrent
    ;;
    uniswapV2TokenDayDataCurrent)
    call_uniswapV2TokenDayDataCurrent
    ;;
    uniswapV2TokensCurrent)
    call_uniswapV2TokensCurrent
    ;;
    uniswapV2TransactionsCurrent)
    call_uniswapV2TransactionsCurrent
    ;;
    uniswapV2UniswapDayDataCurrent)
    call_uniswapV2UniswapDayDataCurrent
    ;;
    uniswapV2UniswapFactoriesCurrent)
    call_uniswapV2UniswapFactoriesCurrent
    ;;
    uniswapV2UsersCurrent)
    call_uniswapV2UsersCurrent
    ;;
    uniswapV3BundlesCurrent)
    call_uniswapV3BundlesCurrent
    ;;
    uniswapV3BurnsCurrent)
    call_uniswapV3BurnsCurrent
    ;;
    uniswapV3FactoriesCurrent)
    call_uniswapV3FactoriesCurrent
    ;;
    uniswapV3GetBundlesHistorical)
    call_uniswapV3GetBundlesHistorical
    ;;
    uniswapV3GetBurnsHistorical)
    call_uniswapV3GetBurnsHistorical
    ;;
    uniswapV3GetFactoriesHistorical)
    call_uniswapV3GetFactoriesHistorical
    ;;
    uniswapV3GetMintsHistorical)
    call_uniswapV3GetMintsHistorical
    ;;
    uniswapV3GetPoolDayDataHistorical)
    call_uniswapV3GetPoolDayDataHistorical
    ;;
    uniswapV3GetPoolHourDataHistorical)
    call_uniswapV3GetPoolHourDataHistorical
    ;;
    uniswapV3GetPoolsHistorical)
    call_uniswapV3GetPoolsHistorical
    ;;
    uniswapV3GetPositionSnapshotsHistorical)
    call_uniswapV3GetPositionSnapshotsHistorical
    ;;
    uniswapV3GetPositionsHistorical)
    call_uniswapV3GetPositionsHistorical
    ;;
    uniswapV3GetSwapsHistorical)
    call_uniswapV3GetSwapsHistorical
    ;;
    uniswapV3GetTickDayDataHistorical)
    call_uniswapV3GetTickDayDataHistorical
    ;;
    uniswapV3GetTicksHistorical)
    call_uniswapV3GetTicksHistorical
    ;;
    uniswapV3GetTokenHourDataHistorical)
    call_uniswapV3GetTokenHourDataHistorical
    ;;
    uniswapV3GetTokenV3DayDataHistorical)
    call_uniswapV3GetTokenV3DayDataHistorical
    ;;
    uniswapV3GetTokensHistorical)
    call_uniswapV3GetTokensHistorical
    ;;
    uniswapV3GetTransactionsHistorical)
    call_uniswapV3GetTransactionsHistorical
    ;;
    uniswapV3GetUniswapDayDataHistorical)
    call_uniswapV3GetUniswapDayDataHistorical
    ;;
    uniswapV3MintsCurrent)
    call_uniswapV3MintsCurrent
    ;;
    uniswapV3PoolDayDataCurrent)
    call_uniswapV3PoolDayDataCurrent
    ;;
    uniswapV3PoolHourDataCurrent)
    call_uniswapV3PoolHourDataCurrent
    ;;
    uniswapV3PoolsCurrent)
    call_uniswapV3PoolsCurrent
    ;;
    uniswapV3PositionSnapshotsCurrent)
    call_uniswapV3PositionSnapshotsCurrent
    ;;
    uniswapV3PositionsCurrent)
    call_uniswapV3PositionsCurrent
    ;;
    uniswapV3SwapsCurrent)
    call_uniswapV3SwapsCurrent
    ;;
    uniswapV3TickDayDataCurrent)
    call_uniswapV3TickDayDataCurrent
    ;;
    uniswapV3TicksCurrent)
    call_uniswapV3TicksCurrent
    ;;
    uniswapV3TokenHourDataCurrent)
    call_uniswapV3TokenHourDataCurrent
    ;;
    uniswapV3TokenV3DayDataCurrent)
    call_uniswapV3TokenV3DayDataCurrent
    ;;
    uniswapV3TokensCurrent)
    call_uniswapV3TokensCurrent
    ;;
    uniswapV3TransactionsCurrent)
    call_uniswapV3TransactionsCurrent
    ;;
    uniswapV3UniswapDayDataCurrent)
    call_uniswapV3UniswapDayDataCurrent
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
