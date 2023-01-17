# SushiswapBurnDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (transaction id):(transaction.burns.length). | [optional] 
**Transaction** | **String** | Reference to the transaction Burn was included in. | [optional] 
**Timestamp** | **String** | Timestamp of Burn, used to sort recent liquidity removals. | [optional] 
**Pair** | **String** | Reference to pair. | [optional] 
**Liquidity** | **String** | Amount of liquidity tokens burned. | [optional] 
**VarSender** | **String** | Address that initiated the liquidity removal. | [optional] 
**Amount0** | **String** | Amount of token0 removed. | [optional] 
**Amount1** | **String** | Amount of token1 removed. | [optional] 
**To** | **String** | Recipient of tokens. | [optional] 
**LogIndex** | **String** | Index in the transaction event was emitted. | [optional] 
**AmountUsd** | **String** | Derived amount based on available prices of tokens. | [optional] 
**Complete** | **Boolean** |  | [optional] 
**FeeTo** | **String** | Address of fee recipient (if fee is on). | [optional] 
**FeeLiquidity** | **String** | Amount of tokens sent to fee recipient (if fee is on). | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SushiswapBurnDTO = Initialize-PSOpenAPIToolsSushiswapBurnDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Transaction null `
 -Timestamp null `
 -Pair null `
 -Liquidity null `
 -VarSender null `
 -Amount0 null `
 -Amount1 null `
 -To null `
 -LogIndex null `
 -AmountUsd null `
 -Complete null `
 -FeeTo null `
 -FeeLiquidity null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$SushiswapBurnDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

