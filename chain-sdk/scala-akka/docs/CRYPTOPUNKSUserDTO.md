

# UserDTO

A user entity is created for any address that provides liquidity to a pool on Uniswap. This entity can be used to track open positions for users.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **OffsetDateTime** |  |  [optional]
**recvTime** | **OffsetDateTime** |  |  [optional]
**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional]
**id** | **String** | User address. |  [optional]
**usdSwapped** | **String** | Total USD value swapped. |  [optional]
**vid** | **Long** |  |  [optional]



