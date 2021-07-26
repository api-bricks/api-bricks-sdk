# OEML - REST API API Client


This section will provide necessary information about the `CoinAPI OEML REST API` protocol.\nThis API is also available in the Postman application: <a href="https://postman.coinapi.io/" target="_blank">https://postman.coinapi.io/</a>      \n

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASBalancesApi api = new OASBalancesApi();

Map<String, Object> params = new Map<String, Object>{
    'exchangeId' => KRAKEN
};

try {
    // cross your fingers
    List<OASBalance> result = api.v1BalancesGet(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASBalancesApi* | [**v1BalancesGet**](OASBalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances
*OASOrdersApi* | [**v1OrdersCancelAllPost**](OASOrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
*OASOrdersApi* | [**v1OrdersCancelPost**](OASOrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
*OASOrdersApi* | [**v1OrdersGet**](OASOrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
*OASOrdersApi* | [**v1OrdersPost**](OASOrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
*OASOrdersApi* | [**v1OrdersStatusClientOrderIdGet**](OASOrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report
*OASPositionsApi* | [**v1PositionsGet**](OASPositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get open positions


## Documentation for Models

 - [OASBalance](OASBalance.md)
 - [OASBalanceData](OASBalanceData.md)
 - [OASFills](OASFills.md)
 - [OASMessageReject](OASMessageReject.md)
 - [OASOrdSide](OASOrdSide.md)
 - [OASOrdStatus](OASOrdStatus.md)
 - [OASOrdType](OASOrdType.md)
 - [OASOrderCancelAllRequest](OASOrderCancelAllRequest.md)
 - [OASOrderCancelSingleRequest](OASOrderCancelSingleRequest.md)
 - [OASOrderExecutionReport](OASOrderExecutionReport.md)
 - [OASOrderExecutionReportAllOf](OASOrderExecutionReportAllOf.md)
 - [OASOrderNewSingleRequest](OASOrderNewSingleRequest.md)
 - [OASPosition](OASPosition.md)
 - [OASPositionData](OASPositionData.md)
 - [OASRejectReason](OASRejectReason.md)
 - [OASTimeInForce](OASTimeInForce.md)
 - [OASValidationError](OASValidationError.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Author

support@coinapi.io

