# SushiswapMintDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] 
**Transaction** | **String** | Reference to the transaction Mint was included in. | [optional] 
**Timestamp** | **String** | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] 
**Pair** | **String** | Reference to pair. | [optional] 
**To** | **String** | Recipient of liquidity tokens. | [optional] 
**Liquidity** | **String** | Amount of liquidity tokens minted. | [optional] 
**VarSender** | **String** | Address that initiated the liquidity provision. | [optional] 
**Amount0** | **String** | Amount of token0 provided. | [optional] 
**Amount1** | **String** | Amount of token1 provided. | [optional] 
**LogIndex** | **String** | Index in the transaction event was emitted. | [optional] 
**AmountUsd** | **String** | Derived USD value of token0 amount plus token1 amount. | [optional] 
**FeeTo** | **String** | Address of fee recipient (if fee is on). | [optional] 
**FeeLiquidity** | **String** | Amount of liquidity sent to fee recipient (if fee is on). | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SushiswapMintDTO = Initialize-PSOpenAPIToolsSushiswapMintDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Transaction null `
 -Timestamp null `
 -Pair null `
 -To null `
 -Liquidity null `
 -VarSender null `
 -Amount0 null `
 -Amount1 null `
 -LogIndex null `
 -AmountUsd null `
 -FeeTo null `
 -FeeLiquidity null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$SushiswapMintDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

