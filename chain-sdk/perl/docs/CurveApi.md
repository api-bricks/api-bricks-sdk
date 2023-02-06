# WWW::OpenAPIClient::CurveApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CurveApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curve_accounts__current**](CurveApi.md#curve_accounts__current) | **GET** /dapps/curve/accounts/current | Accounts (current)
[**curve_add_liquidity_events__current**](CurveApi.md#curve_add_liquidity_events__current) | **GET** /dapps/curve/addLiquidityEvents/current | AddLiquidityEvents (current)
[**curve_admin_fee_change_logs__current**](CurveApi.md#curve_admin_fee_change_logs__current) | **GET** /dapps/curve/adminFeeChangeLogs/current | AdminFeeChangeLogs (current)
[**curve_amplification_coeff_change_logs__current**](CurveApi.md#curve_amplification_coeff_change_logs__current) | **GET** /dapps/curve/amplificationCoeffChangeLogs/current | AmplificationCoeffChangeLogs (current)
[**curve_coins__current**](CurveApi.md#curve_coins__current) | **GET** /dapps/curve/coins/current | Coins (current)
[**curve_contract_versions__current**](CurveApi.md#curve_contract_versions__current) | **GET** /dapps/curve/contractVersions/current | ContractVersions (current)
[**curve_contracts__current**](CurveApi.md#curve_contracts__current) | **GET** /dapps/curve/contracts/current | Contracts (current)
[**curve_daily_volumes__current**](CurveApi.md#curve_daily_volumes__current) | **GET** /dapps/curve/dailyVolumes/current | DailyVolumes (current)
[**curve_exchanges__current**](CurveApi.md#curve_exchanges__current) | **GET** /dapps/curve/exchanges/current | Exchanges (current)
[**curve_fee_change_logs__current**](CurveApi.md#curve_fee_change_logs__current) | **GET** /dapps/curve/feeChangeLogs/current | FeeChangeLogs (current)
[**curve_gauge_deposits__current**](CurveApi.md#curve_gauge_deposits__current) | **GET** /dapps/curve/gaugeDeposits/current | GaugeDeposits (current)
[**curve_gauge_liquidities__current**](CurveApi.md#curve_gauge_liquidities__current) | **GET** /dapps/curve/gaugeLiquidities/current | GaugeLiquidities (current)
[**curve_gauge_total_weights__current**](CurveApi.md#curve_gauge_total_weights__current) | **GET** /dapps/curve/gaugeTotalWeights/current | GaugeTotalWeights (current)
[**curve_gauge_type_weights__current**](CurveApi.md#curve_gauge_type_weights__current) | **GET** /dapps/curve/gaugeTypeWeights/current | GaugeTypeWeights (current)
[**curve_gauge_types__current**](CurveApi.md#curve_gauge_types__current) | **GET** /dapps/curve/gaugeTypes/current | GaugeTypes (current)
[**curve_gauge_weight_votes__current**](CurveApi.md#curve_gauge_weight_votes__current) | **GET** /dapps/curve/gaugeWeightVotes/current | GaugeWeightVotes (current)
[**curve_gauge_weights__current**](CurveApi.md#curve_gauge_weights__current) | **GET** /dapps/curve/gaugeWeights/current | GaugeWeights (current)
[**curve_gauge_withdraws__current**](CurveApi.md#curve_gauge_withdraws__current) | **GET** /dapps/curve/gaugeWithdraws/current | GaugeWithdraws (current)
[**curve_gauges__current**](CurveApi.md#curve_gauges__current) | **GET** /dapps/curve/gauges/current | Gauges (current)
[**curve_get_accounts__historical**](CurveApi.md#curve_get_accounts__historical) | **GET** /dapps/curve/accounts/historical | Accounts (historical)
[**curve_get_add_liquidity_events__historical**](CurveApi.md#curve_get_add_liquidity_events__historical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical)
[**curve_get_admin_fee_change_logs__historical**](CurveApi.md#curve_get_admin_fee_change_logs__historical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical)
[**curve_get_amplification_coeff_change_logs__historical**](CurveApi.md#curve_get_amplification_coeff_change_logs__historical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical)
[**curve_get_coins__historical**](CurveApi.md#curve_get_coins__historical) | **GET** /dapps/curve/coins/historical | Coins (historical)
[**curve_get_contract_versions__historical**](CurveApi.md#curve_get_contract_versions__historical) | **GET** /dapps/curve/contractVersions/historical | ContractVersions (historical)
[**curve_get_contracts__historical**](CurveApi.md#curve_get_contracts__historical) | **GET** /dapps/curve/contracts/historical | Contracts (historical)
[**curve_get_daily_volumes__historical**](CurveApi.md#curve_get_daily_volumes__historical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical)
[**curve_get_exchanges__historical**](CurveApi.md#curve_get_exchanges__historical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical)
[**curve_get_fee_change_logs__historical**](CurveApi.md#curve_get_fee_change_logs__historical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical)
[**curve_get_gauge_deposits__historical**](CurveApi.md#curve_get_gauge_deposits__historical) | **GET** /dapps/curve/gaugeDeposits/historical | GaugeDeposits (historical)
[**curve_get_gauge_liquidities__historical**](CurveApi.md#curve_get_gauge_liquidities__historical) | **GET** /dapps/curve/gaugeLiquidities/historical | GaugeLiquidities (historical)
[**curve_get_gauge_total_weights__historical**](CurveApi.md#curve_get_gauge_total_weights__historical) | **GET** /dapps/curve/gaugeTotalWeights/historical | GaugeTotalWeights (historical)
[**curve_get_gauge_type_weights__historical**](CurveApi.md#curve_get_gauge_type_weights__historical) | **GET** /dapps/curve/gaugeTypeWeights/historical | GaugeTypeWeights (historical)
[**curve_get_gauge_types__historical**](CurveApi.md#curve_get_gauge_types__historical) | **GET** /dapps/curve/gaugeTypes/historical | GaugeTypes (historical)
[**curve_get_gauge_weight_votes__historical**](CurveApi.md#curve_get_gauge_weight_votes__historical) | **GET** /dapps/curve/gaugeWeightVotes/historical | GaugeWeightVotes (historical)
[**curve_get_gauge_weights__historical**](CurveApi.md#curve_get_gauge_weights__historical) | **GET** /dapps/curve/gaugeWeights/historical | GaugeWeights (historical)
[**curve_get_gauge_withdraws__historical**](CurveApi.md#curve_get_gauge_withdraws__historical) | **GET** /dapps/curve/gaugeWithdraws/historical | GaugeWithdraws (historical)
[**curve_get_gauges__historical**](CurveApi.md#curve_get_gauges__historical) | **GET** /dapps/curve/gauges/historical | Gauges (historical)
[**curve_get_hourly_volumes__historical**](CurveApi.md#curve_get_hourly_volumes__historical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical)
[**curve_get_lp_tokens__historical**](CurveApi.md#curve_get_lp_tokens__historical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical)
[**curve_get_pools__historical**](CurveApi.md#curve_get_pools__historical) | **GET** /dapps/curve/pools/historical | Pools (historical)
[**curve_get_proposal_votes__historical**](CurveApi.md#curve_get_proposal_votes__historical) | **GET** /dapps/curve/proposalVotes/historical | ProposalVotes (historical)
[**curve_get_proposals__historical**](CurveApi.md#curve_get_proposals__historical) | **GET** /dapps/curve/proposals/historical | Proposals (historical)
[**curve_get_remove_liquidity_events__historical**](CurveApi.md#curve_get_remove_liquidity_events__historical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical)
[**curve_get_remove_liquidity_one_events__historical**](CurveApi.md#curve_get_remove_liquidity_one_events__historical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical)
[**curve_get_system_states__historical**](CurveApi.md#curve_get_system_states__historical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical)
[**curve_get_tokens__historical**](CurveApi.md#curve_get_tokens__historical) | **GET** /dapps/curve/tokens/historical | Tokens (historical)
[**curve_get_transfer_ownership_events__historical**](CurveApi.md#curve_get_transfer_ownership_events__historical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical)
[**curve_get_underlying_coins__historical**](CurveApi.md#curve_get_underlying_coins__historical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical)
[**curve_get_voting_apps__historical**](CurveApi.md#curve_get_voting_apps__historical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical)
[**curve_get_weekly_volumes__historical**](CurveApi.md#curve_get_weekly_volumes__historical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical)
[**curve_hourly_volumes__current**](CurveApi.md#curve_hourly_volumes__current) | **GET** /dapps/curve/hourlyVolumes/current | HourlyVolumes (current)
[**curve_lp_tokens__current**](CurveApi.md#curve_lp_tokens__current) | **GET** /dapps/curve/lpTokens/current | LpTokens (current)
[**curve_pools__current**](CurveApi.md#curve_pools__current) | **GET** /dapps/curve/pools/current | Pools (current)
[**curve_proposal_votes__current**](CurveApi.md#curve_proposal_votes__current) | **GET** /dapps/curve/proposalVotes/current | ProposalVotes (current)
[**curve_proposals__current**](CurveApi.md#curve_proposals__current) | **GET** /dapps/curve/proposals/current | Proposals (current)
[**curve_remove_liquidity_events__current**](CurveApi.md#curve_remove_liquidity_events__current) | **GET** /dapps/curve/removeLiquidityEvents/current | RemoveLiquidityEvents (current)
[**curve_remove_liquidity_one_events__current**](CurveApi.md#curve_remove_liquidity_one_events__current) | **GET** /dapps/curve/removeLiquidityOneEvents/current | RemoveLiquidityOneEvents (current)
[**curve_system_states__current**](CurveApi.md#curve_system_states__current) | **GET** /dapps/curve/systemStates/current | SystemStates (current)
[**curve_tokens__current**](CurveApi.md#curve_tokens__current) | **GET** /dapps/curve/tokens/current | Tokens (current)
[**curve_transfer_ownership_events__current**](CurveApi.md#curve_transfer_ownership_events__current) | **GET** /dapps/curve/transferOwnershipEvents/current | TransferOwnershipEvents (current)
[**curve_underlying_coins__current**](CurveApi.md#curve_underlying_coins__current) | **GET** /dapps/curve/underlyingCoins/current | UnderlyingCoins (current)
[**curve_voting_apps__current**](CurveApi.md#curve_voting_apps__current) | **GET** /dapps/curve/votingApps/current | VotingApps (current)
[**curve_weekly_volumes__current**](CurveApi.md#curve_weekly_volumes__current) | **GET** /dapps/curve/weeklyVolumes/current | WeeklyVolumes (current)


# **curve_accounts__current**
> ARRAY[CurveAccountDTO] curve_accounts__current()

Accounts (current)

Gets accounts.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_accounts__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_accounts__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveAccountDTO]**](CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_add_liquidity_events__current**
> ARRAY[CurveAddLiquidityEventDTO] curve_add_liquidity_events__current()

AddLiquidityEvents (current)

Gets addLiquidityEvents.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_add_liquidity_events__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_add_liquidity_events__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveAddLiquidityEventDTO]**](CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_admin_fee_change_logs__current**
> ARRAY[CurveAdminFeeChangeLogDTO] curve_admin_fee_change_logs__current()

AdminFeeChangeLogs (current)

Gets adminFeeChangeLogs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_admin_fee_change_logs__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_admin_fee_change_logs__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveAdminFeeChangeLogDTO]**](CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_amplification_coeff_change_logs__current**
> ARRAY[CurveAmplificationCoeffChangeLogDTO] curve_amplification_coeff_change_logs__current()

AmplificationCoeffChangeLogs (current)

Gets amplificationCoeffChangeLogs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_amplification_coeff_change_logs__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_amplification_coeff_change_logs__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveAmplificationCoeffChangeLogDTO]**](CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_coins__current**
> ARRAY[CurveCoinDTO] curve_coins__current()

Coins (current)

Gets coins.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_coins__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_coins__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveCoinDTO]**](CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_contract_versions__current**
> ARRAY[CurveContractVersionDTO] curve_contract_versions__current()

ContractVersions (current)

Gets contractVersions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_contract_versions__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_contract_versions__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveContractVersionDTO]**](CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_contracts__current**
> ARRAY[CurveContractDTO] curve_contracts__current()

Contracts (current)

Gets contracts.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_contracts__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_contracts__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveContractDTO]**](CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_daily_volumes__current**
> ARRAY[CurveDailyVolumeDTO] curve_daily_volumes__current()

DailyVolumes (current)

Gets dailyVolumes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_daily_volumes__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_daily_volumes__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveDailyVolumeDTO]**](CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_exchanges__current**
> ARRAY[CurveExchangeDTO] curve_exchanges__current(pool => $pool)

Exchanges (current)

Gets exchanges.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_exchanges__current(pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_exchanges__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveExchangeDTO]**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_fee_change_logs__current**
> ARRAY[CurveFeeChangeLogDTO] curve_fee_change_logs__current()

FeeChangeLogs (current)

Gets feeChangeLogs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_fee_change_logs__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_fee_change_logs__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveFeeChangeLogDTO]**](CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_gauge_deposits__current**
> ARRAY[CurveGaugeDepositDTO] curve_gauge_deposits__current()

GaugeDeposits (current)

Gets gaugeDeposits.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_gauge_deposits__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_gauge_deposits__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveGaugeDepositDTO]**](CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_gauge_liquidities__current**
> ARRAY[CurveGaugeLiquidityDTO] curve_gauge_liquidities__current()

GaugeLiquidities (current)

Gets gaugeLiquidities.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_gauge_liquidities__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_gauge_liquidities__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveGaugeLiquidityDTO]**](CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_gauge_total_weights__current**
> ARRAY[CurveGaugeTotalWeightDTO] curve_gauge_total_weights__current()

GaugeTotalWeights (current)

Gets gaugeTotalWeights.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_gauge_total_weights__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_gauge_total_weights__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveGaugeTotalWeightDTO]**](CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_gauge_type_weights__current**
> ARRAY[CurveGaugeTypeWeightDTO] curve_gauge_type_weights__current()

GaugeTypeWeights (current)

Gets gaugeTypeWeights.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_gauge_type_weights__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_gauge_type_weights__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveGaugeTypeWeightDTO]**](CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_gauge_types__current**
> ARRAY[CurveGaugeTypeDTO] curve_gauge_types__current()

GaugeTypes (current)

Gets gaugeTypes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_gauge_types__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_gauge_types__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveGaugeTypeDTO]**](CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_gauge_weight_votes__current**
> ARRAY[CurveGaugeWeightVoteDTO] curve_gauge_weight_votes__current()

GaugeWeightVotes (current)

Gets gaugeWeightVotes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_gauge_weight_votes__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_gauge_weight_votes__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveGaugeWeightVoteDTO]**](CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_gauge_weights__current**
> ARRAY[CurveGaugeWeightDTO] curve_gauge_weights__current()

GaugeWeights (current)

Gets gaugeWeights.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_gauge_weights__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_gauge_weights__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveGaugeWeightDTO]**](CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_gauge_withdraws__current**
> ARRAY[CurveGaugeWithdrawDTO] curve_gauge_withdraws__current()

GaugeWithdraws (current)

Gets gaugeWithdraws.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_gauge_withdraws__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_gauge_withdraws__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveGaugeWithdrawDTO]**](CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_gauges__current**
> ARRAY[CurveGaugeDTO] curve_gauges__current()

Gauges (current)

Gets gauges.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_gauges__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_gauges__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveGaugeDTO]**](CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_accounts__historical**
> ARRAY[CurveAccountDTO] curve_get_accounts__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address)

Accounts (historical)

Gets accounts.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $address = "address_example"; # string | 

eval {
    my $result = $api_instance->curve_get_accounts__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_accounts__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **address** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveAccountDTO]**](CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_add_liquidity_events__historical**
> ARRAY[CurveAddLiquidityEventDTO] curve_get_add_liquidity_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

AddLiquidityEvents (historical)

Gets addLiquidityEvents.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_add_liquidity_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_add_liquidity_events__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveAddLiquidityEventDTO]**](CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_admin_fee_change_logs__historical**
> ARRAY[CurveAdminFeeChangeLogDTO] curve_get_admin_fee_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

AdminFeeChangeLogs (historical)

Gets adminFeeChangeLogs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_admin_fee_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_admin_fee_change_logs__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveAdminFeeChangeLogDTO]**](CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_amplification_coeff_change_logs__historical**
> ARRAY[CurveAmplificationCoeffChangeLogDTO] curve_get_amplification_coeff_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

AmplificationCoeffChangeLogs (historical)

Gets amplificationCoeffChangeLogs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_amplification_coeff_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_amplification_coeff_change_logs__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveAmplificationCoeffChangeLogDTO]**](CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_coins__historical**
> ARRAY[CurveCoinDTO] curve_get_coins__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

Coins (historical)

Gets coins.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Identifier, format: (pool_id)-(coin_index).
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_coins__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_coins__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Identifier, format: (pool_id)-(coin_index). | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveCoinDTO]**](CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_contract_versions__historical**
> ARRAY[CurveContractVersionDTO] curve_get_contract_versions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address)

ContractVersions (historical)

Gets contractVersions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $address = "address_example"; # string | 

eval {
    my $result = $api_instance->curve_get_contract_versions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_contract_versions__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **address** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveContractVersionDTO]**](CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_contracts__historical**
> ARRAY[CurveContractDTO] curve_get_contracts__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Contracts (historical)

Gets contracts.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_contracts__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_contracts__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveContractDTO]**](CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_daily_volumes__historical**
> ARRAY[CurveDailyVolumeDTO] curve_get_daily_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

DailyVolumes (historical)

Gets dailyVolumes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_daily_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_daily_volumes__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveDailyVolumeDTO]**](CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_exchanges__historical**
> ARRAY[CurveExchangeDTO] curve_get_exchanges__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

Exchanges (historical)

Gets exchanges.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_exchanges__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_exchanges__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveExchangeDTO]**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_fee_change_logs__historical**
> ARRAY[CurveFeeChangeLogDTO] curve_get_fee_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

FeeChangeLogs (historical)

Gets feeChangeLogs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_fee_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_fee_change_logs__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveFeeChangeLogDTO]**](CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauge_deposits__historical**
> ARRAY[CurveGaugeDepositDTO] curve_get_gauge_deposits__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

GaugeDeposits (historical)

Gets gaugeDeposits.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauge_deposits__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauge_deposits__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveGaugeDepositDTO]**](CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauge_liquidities__historical**
> ARRAY[CurveGaugeLiquidityDTO] curve_get_gauge_liquidities__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user)

GaugeLiquidities (historical)

Gets gaugeLiquidities.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $user = "user_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauge_liquidities__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauge_liquidities__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **user** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveGaugeLiquidityDTO]**](CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauge_total_weights__historical**
> ARRAY[CurveGaugeTotalWeightDTO] curve_get_gauge_total_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

GaugeTotalWeights (historical)

Gets gaugeTotalWeights.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauge_total_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauge_total_weights__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveGaugeTotalWeightDTO]**](CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauge_type_weights__historical**
> ARRAY[CurveGaugeTypeWeightDTO] curve_get_gauge_type_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

GaugeTypeWeights (historical)

Gets gaugeTypeWeights.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauge_type_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauge_type_weights__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveGaugeTypeWeightDTO]**](CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauge_types__historical**
> ARRAY[CurveGaugeTypeDTO] curve_get_gauge_types__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, name => $name)

GaugeTypes (historical)

Gets gaugeTypes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $name = "name_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauge_types__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauge_types__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **name** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveGaugeTypeDTO]**](CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauge_weight_votes__historical**
> ARRAY[CurveGaugeWeightVoteDTO] curve_get_gauge_weight_votes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user)

GaugeWeightVotes (historical)

Gets gaugeWeightVotes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $user = "user_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauge_weight_votes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauge_weight_votes__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **user** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveGaugeWeightVoteDTO]**](CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauge_weights__historical**
> ARRAY[CurveGaugeWeightDTO] curve_get_gauge_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

GaugeWeights (historical)

Gets gaugeWeights.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauge_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauge_weights__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveGaugeWeightDTO]**](CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauge_withdraws__historical**
> ARRAY[CurveGaugeWithdrawDTO] curve_get_gauge_withdraws__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

GaugeWithdraws (historical)

Gets gaugeWithdraws.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauge_withdraws__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauge_withdraws__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveGaugeWithdrawDTO]**](CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges__historical**
> ARRAY[CurveGaugeDTO] curve_get_gauges__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, pool => $pool)

Gauges (historical)

Gets gauges.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $address = "address_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauges__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **address** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveGaugeDTO]**](CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_hourly_volumes__historical**
> ARRAY[CurveHourlyVolumeDTO] curve_get_hourly_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

HourlyVolumes (historical)

Gets hourlyVolumes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_hourly_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_hourly_volumes__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveHourlyVolumeDTO]**](CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_lp_tokens__historical**
> ARRAY[CurveLpTokenDTO] curve_get_lp_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, name => $name, symbol => $symbol, pool => $pool)

LpTokens (historical)

Gets lpTokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $address = "address_example"; # string | 
my $name = "name_example"; # string | 
my $symbol = "symbol_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_lp_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, name => $name, symbol => $symbol, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_lp_tokens__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **address** | **string**|  | [optional] 
 **name** | **string**|  | [optional] 
 **symbol** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveLpTokenDTO]**](CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_pools__historical**
> ARRAY[CurvePoolDTO] curve_get_pools__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, name => $name)

Pools (historical)

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Pool address.
my $name = "name_example"; # string | Pool's human-readable name.

eval {
    my $result = $api_instance->curve_get_pools__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_pools__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Pool address. | [optional] 
 **name** | **string**| Pool&#39;s human-readable name. | [optional] 

### Return type

[**ARRAY[CurvePoolDTO]**](CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_proposal_votes__historical**
> ARRAY[CurveProposalVoteDTO] curve_get_proposal_votes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

ProposalVotes (historical)

Gets proposalVotes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_proposal_votes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_proposal_votes__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveProposalVoteDTO]**](CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_proposals__historical**
> ARRAY[CurveProposalDTO] curve_get_proposals__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

Proposals (historical)

Gets proposals.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_proposals__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_proposals__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveProposalDTO]**](CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_remove_liquidity_events__historical**
> ARRAY[CurveRemoveLiquidityEventDTO] curve_get_remove_liquidity_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

RemoveLiquidityEvents (historical)

Gets removeLiquidityEvents.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_remove_liquidity_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_remove_liquidity_events__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveRemoveLiquidityEventDTO]**](CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_remove_liquidity_one_events__historical**
> ARRAY[CurveRemoveLiquidityOneEventDTO] curve_get_remove_liquidity_one_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

RemoveLiquidityOneEvents (historical)

Gets removeLiquidityOneEvents.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_remove_liquidity_one_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_remove_liquidity_one_events__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveRemoveLiquidityOneEventDTO]**](CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_system_states__historical**
> ARRAY[CurveSystemStateDTO] curve_get_system_states__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

SystemStates (historical)

Gets systemStates.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Singleton ID, equals to 'current'.

eval {
    my $result = $api_instance->curve_get_system_states__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_system_states__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Singleton ID, equals to &#39;current&#39;. | [optional] 

### Return type

[**ARRAY[CurveSystemStateDTO]**](CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_tokens__historical**
> ARRAY[CurveTokenDTO] curve_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, name => $name, symbol => $symbol)

Tokens (historical)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $address = "address_example"; # string | 
my $name = "name_example"; # string | 
my $symbol = "symbol_example"; # string | 

eval {
    my $result = $api_instance->curve_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address, name => $name, symbol => $symbol);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_tokens__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **address** | **string**|  | [optional] 
 **name** | **string**|  | [optional] 
 **symbol** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveTokenDTO]**](CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_transfer_ownership_events__historical**
> ARRAY[CurveTransferOwnershipEventDTO] curve_get_transfer_ownership_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

TransferOwnershipEvents (historical)

Gets transferOwnershipEvents.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_transfer_ownership_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_transfer_ownership_events__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveTransferOwnershipEventDTO]**](CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_underlying_coins__historical**
> ARRAY[CurveUnderlyingCoinDTO] curve_get_underlying_coins__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

UnderlyingCoins (historical)

Gets underlyingCoins.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Equals to: (pool_id)-(coin_index).
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_underlying_coins__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_underlying_coins__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Equals to: (pool_id)-(coin_index). | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveUnderlyingCoinDTO]**](CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_voting_apps__historical**
> ARRAY[CurveVotingAppDTO] curve_get_voting_apps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address)

VotingApps (historical)

Gets votingApps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | App address.
my $address = "address_example"; # string | 

eval {
    my $result = $api_instance->curve_get_voting_apps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, address => $address);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_voting_apps__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| App address. | [optional] 
 **address** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveVotingAppDTO]**](CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_weekly_volumes__historical**
> ARRAY[CurveWeeklyVolumeDTO] curve_get_weekly_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool)

WeeklyVolumes (historical)

Gets weeklyVolumes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pool = "pool_example"; # string | 

eval {
    my $result = $api_instance->curve_get_weekly_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pool => $pool);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_weekly_volumes__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pool** | **string**|  | [optional] 

### Return type

[**ARRAY[CurveWeeklyVolumeDTO]**](CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_hourly_volumes__current**
> ARRAY[CurveHourlyVolumeDTO] curve_hourly_volumes__current()

HourlyVolumes (current)

Gets hourlyVolumes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_hourly_volumes__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_hourly_volumes__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveHourlyVolumeDTO]**](CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_lp_tokens__current**
> ARRAY[CurveLpTokenDTO] curve_lp_tokens__current()

LpTokens (current)

Gets lpTokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_lp_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_lp_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveLpTokenDTO]**](CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_pools__current**
> ARRAY[CurvePoolDTO] curve_pools__current(id => $id)

Pools (current)

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $id = "id_example"; # string | Pool address.

eval {
    my $result = $api_instance->curve_pools__current(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_pools__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Pool address. | [optional] 

### Return type

[**ARRAY[CurvePoolDTO]**](CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_proposal_votes__current**
> ARRAY[CurveProposalVoteDTO] curve_proposal_votes__current()

ProposalVotes (current)

Gets proposalVotes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_proposal_votes__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_proposal_votes__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveProposalVoteDTO]**](CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_proposals__current**
> ARRAY[CurveProposalDTO] curve_proposals__current()

Proposals (current)

Gets proposals.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_proposals__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_proposals__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveProposalDTO]**](CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_remove_liquidity_events__current**
> ARRAY[CurveRemoveLiquidityEventDTO] curve_remove_liquidity_events__current()

RemoveLiquidityEvents (current)

Gets removeLiquidityEvents.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_remove_liquidity_events__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_remove_liquidity_events__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveRemoveLiquidityEventDTO]**](CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_remove_liquidity_one_events__current**
> ARRAY[CurveRemoveLiquidityOneEventDTO] curve_remove_liquidity_one_events__current()

RemoveLiquidityOneEvents (current)

Gets removeLiquidityOneEvents.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_remove_liquidity_one_events__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_remove_liquidity_one_events__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveRemoveLiquidityOneEventDTO]**](CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_system_states__current**
> ARRAY[CurveSystemStateDTO] curve_system_states__current()

SystemStates (current)

Gets systemStates.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_system_states__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_system_states__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveSystemStateDTO]**](CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_tokens__current**
> ARRAY[CurveTokenDTO] curve_tokens__current()

Tokens (current)

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveTokenDTO]**](CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_transfer_ownership_events__current**
> ARRAY[CurveTransferOwnershipEventDTO] curve_transfer_ownership_events__current()

TransferOwnershipEvents (current)

Gets transferOwnershipEvents.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_transfer_ownership_events__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_transfer_ownership_events__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveTransferOwnershipEventDTO]**](CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_underlying_coins__current**
> ARRAY[CurveUnderlyingCoinDTO] curve_underlying_coins__current()

UnderlyingCoins (current)

Gets underlyingCoins.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_underlying_coins__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_underlying_coins__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveUnderlyingCoinDTO]**](CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_voting_apps__current**
> ARRAY[CurveVotingAppDTO] curve_voting_apps__current()

VotingApps (current)

Gets votingApps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_voting_apps__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_voting_apps__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveVotingAppDTO]**](CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_weekly_volumes__current**
> ARRAY[CurveWeeklyVolumeDTO] curve_weekly_volumes__current()

WeeklyVolumes (current)

Gets weeklyVolumes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);


eval {
    my $result = $api_instance->curve_weekly_volumes__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_weekly_volumes__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveWeeklyVolumeDTO]**](CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

