# EMS - REST API API Client


This section will provide necessary information about the `CoinAPI EMS REST API` protocol.\n<br/>\nThis API is also available in the Postman application: <a href="https://postman.coinapi.io/" target="_blank">https://postman.coinapi.io/</a>      \n<br/><br/>\nImplemented Standards:\n\n  * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)\n  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)\n  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)\n   \n### Endpoints\n<table>\n  <thead>\n    <tr>\n      <th>Deployment method</th>\n      <th>Environment</th>\n      <th>Url</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <td>Managed Cloud</td>\n      <td>Production</td>\n      <td>Use <a href="#ems-docs-sh">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>\n    </tr>\n    <tr>\n      <td>Managed Cloud</td>\n      <td>Sandbox</td>\n      <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>\n    </tr>\n    <tr>\n      <td>Self Hosted</td>\n      <td>Production</td>\n      <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>\n    </tr>\n    <tr>\n      <td>Self Hosted</td>\n      <td>Sandbox</td>\n      <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>\n    </tr>\n  </tbody>\n</table>\n\n### Authentication\nIf the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls. \n<br/><br/>\nIf the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:\n\n 1. Custom authorization header named `X-CoinAPI-Key` with the API Key\n 2. Query string parameter named `apikey` with the API Key\n 3. <a href="#certificate">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.\n\n#### Custom authorization header\nYou can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.\nAssuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like:\n<br/><br/>\n`X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`\n<aside class="success">This method is recommended by us and you should use it in production environments.</aside>\n#### Query string authorization parameter\nYou can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.\nAssuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this: \n<br/><br/>\n`GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY`\n<aside class="notice">Query string method may be more practical for development activities.</aside>\n

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

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASBalancesApi* | [**v1BalancesGet**](OASBalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances
*OASOrdersApi* | [**v1OrdersCancelAllPost**](OASOrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
*OASOrdersApi* | [**v1OrdersCancelPost**](OASOrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
*OASOrdersApi* | [**v1OrdersGet**](OASOrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
*OASOrdersApi* | [**v1OrdersHistoryTimeStartTimeEndGet**](OASOrdersApi.md#v1OrdersHistoryTimeStartTimeEndGet) | **GET** /v1/orders/history/{time_start}/{time_end} | History of order changes
*OASOrdersApi* | [**v1OrdersPost**](OASOrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
*OASOrdersApi* | [**v1OrdersStatusClientOrderIdGet**](OASOrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report
*OASPositionsApi* | [**v1PositionsGet**](OASPositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get open positions


## Documentation for Models

 - [OASBalance](OASBalance.md)
 - [OASBalanceDataInner](OASBalanceDataInner.md)
 - [OASFills](OASFills.md)
 - [OASMessageError](OASMessageError.md)
 - [OASMessageReject](OASMessageReject.md)
 - [OASOrdSide](OASOrdSide.md)
 - [OASOrdStatus](OASOrdStatus.md)
 - [OASOrdType](OASOrdType.md)
 - [OASOrderCancelAllRequest](OASOrderCancelAllRequest.md)
 - [OASOrderCancelSingleRequest](OASOrderCancelSingleRequest.md)
 - [OASOrderExecutionReport](OASOrderExecutionReport.md)
 - [OASOrderExecutionReportAllOf](OASOrderExecutionReportAllOf.md)
 - [OASOrderHistory](OASOrderHistory.md)
 - [OASOrderNewSingleRequest](OASOrderNewSingleRequest.md)
 - [OASPosition](OASPosition.md)
 - [OASPositionDataInner](OASPositionDataInner.md)
 - [OASRejectReason](OASRejectReason.md)
 - [OASTimeInForce](OASTimeInForce.md)
 - [OASValidationError](OASValidationError.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Author

support@coinapi.io

