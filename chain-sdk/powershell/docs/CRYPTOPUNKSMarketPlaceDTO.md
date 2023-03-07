# CRYPTOPUNKSMarketPlaceDTO
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
**Slug** | **String** |  | [optional] 
**SchemaVersion** | **String** |  | [optional] 
**SubgraphVersion** | **String** |  | [optional] 
**MethodologyVersion** | **String** |  | [optional] 
**CollectionCount** | **Int32** |  | [optional] 
**TradeCount** | **Int32** |  | [optional] 
**CumulativeTradeVolumeEth** | **String** |  | [optional] 
**MarketplaceRevenueEth** | **String** |  | [optional] 
**CreatorRevenueEth** | **String** |  | [optional] 
**TotalRevenueEth** | **String** |  | [optional] 
**CumulativeUniqueTraders** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CRYPTOPUNKSMarketPlaceDTO = Initialize-PSOpenAPIToolsCRYPTOPUNKSMarketPlaceDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -BlockRange null `
 -Id null `
 -Name null `
 -Slug null `
 -SchemaVersion null `
 -SubgraphVersion null `
 -MethodologyVersion null `
 -CollectionCount null `
 -TradeCount null `
 -CumulativeTradeVolumeEth null `
 -MarketplaceRevenueEth null `
 -CreatorRevenueEth null `
 -TotalRevenueEth null `
 -CumulativeUniqueTraders null
```

- Convert the resource to JSON
```powershell
$CRYPTOPUNKSMarketPlaceDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

