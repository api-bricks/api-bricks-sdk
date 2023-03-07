# CRYPTOPUNKSCollectionDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | **Int64** |  | [optional] 
**BlockRange** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Symbol** | **String** |  | [optional] 
**TotalSupply** | **String** |  | [optional] 
**RoyaltyFee** | **String** |  | [optional] 
**CumulativeTradeVolumeEth** | **String** |  | [optional] 
**MarketplaceRevenueEth** | **String** |  | [optional] 
**CreatorRevenueEth** | **String** |  | [optional] 
**TotalRevenueEth** | **String** |  | [optional] 
**TradeCount** | **Int32** |  | [optional] 
**BuyerCount** | **Int32** |  | [optional] 
**SellerCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CRYPTOPUNKSCollectionDTO = Initialize-PSOpenAPIToolsCRYPTOPUNKSCollectionDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -BlockRange null `
 -Id null `
 -Name null `
 -Symbol null `
 -TotalSupply null `
 -RoyaltyFee null `
 -CumulativeTradeVolumeEth null `
 -MarketplaceRevenueEth null `
 -CreatorRevenueEth null `
 -TotalRevenueEth null `
 -TradeCount null `
 -BuyerCount null `
 -SellerCount null
```

- Convert the resource to JSON
```powershell
$CRYPTOPUNKSCollectionDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

