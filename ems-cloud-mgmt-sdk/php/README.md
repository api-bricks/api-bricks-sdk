# OpenAPIClient-php

This section will provide necessary information about the `CoinAPI EMS REST API` protocol.
<br/>
This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>      
<br/><br/>
Implemented Standards:

  * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)
  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)
  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)
   
### Endpoints
<table>
  <thead>
    <tr>
      <th>Deployment method</th>
      <th>Environment</th>
      <th>Url</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Managed Cloud</td>
      <td>Production</td>
      <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>
    </tr>
    <tr>
      <td>Managed Cloud</td>
      <td>Sandbox</td>
      <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>
    </tr>
    <tr>
      <td>Self Hosted</td>
      <td>Production</td>
      <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>
    </tr>
    <tr>
      <td>Self Hosted</td>
      <td>Sandbox</td>
      <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>
    </tr>
  </tbody>
</table>

### Authentication
If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls. 
<br/><br/>
If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:

 1. Custom authorization header named `X-CoinAPI-Key` with the API Key
 2. Query string parameter named `apikey` with the API Key
 3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.

#### Custom authorization header
You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.
Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like:
<br/><br/>
`X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`
<aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>
#### Query string authorization parameter
You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.
Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this: 
<br/><br/>
`GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY`
<aside class=\"notice\">Query string method may be more practical for development activities.</aside>


For more information, please visit [https://www.coinapi.io](https://www.coinapi.io).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new OpenAPI\Client\Api\BalancesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$exchange_id = KRAKEN; // string | Filter the balances to the specific exchange.

try {
    $result = $apiInstance->v1BalancesGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BalancesApi->v1BalancesGet: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**v1BalancesGet**](docs/Api/BalancesApi.md#v1balancesget) | **GET** /v1/balances | Get balances
*OrdersApi* | [**v1OrdersCancelAllPost**](docs/Api/OrdersApi.md#v1orderscancelallpost) | **POST** /v1/orders/cancel/all | Cancel all orders request
*OrdersApi* | [**v1OrdersCancelPost**](docs/Api/OrdersApi.md#v1orderscancelpost) | **POST** /v1/orders/cancel | Cancel order request
*OrdersApi* | [**v1OrdersGet**](docs/Api/OrdersApi.md#v1ordersget) | **GET** /v1/orders | Get open orders
*OrdersApi* | [**v1OrdersHistoryTimeStartTimeEndGet**](docs/Api/OrdersApi.md#v1ordershistorytimestarttimeendget) | **GET** /v1/orders/history/{time_start}/{time_end} | History of order changes
*OrdersApi* | [**v1OrdersPost**](docs/Api/OrdersApi.md#v1orderspost) | **POST** /v1/orders | Send new order
*OrdersApi* | [**v1OrdersStatusClientOrderIdGet**](docs/Api/OrdersApi.md#v1ordersstatusclientorderidget) | **GET** /v1/orders/status/{client_order_id} | Get order execution report
*PositionsApi* | [**v1PositionsGet**](docs/Api/PositionsApi.md#v1positionsget) | **GET** /v1/positions | Get open positions

## Models

- [Balance](docs/Model/Balance.md)
- [BalanceDataInner](docs/Model/BalanceDataInner.md)
- [Fills](docs/Model/Fills.md)
- [MessageError](docs/Model/MessageError.md)
- [MessageReject](docs/Model/MessageReject.md)
- [OrdSide](docs/Model/OrdSide.md)
- [OrdStatus](docs/Model/OrdStatus.md)
- [OrdType](docs/Model/OrdType.md)
- [OrderCancelAllRequest](docs/Model/OrderCancelAllRequest.md)
- [OrderCancelSingleRequest](docs/Model/OrderCancelSingleRequest.md)
- [OrderExecutionReport](docs/Model/OrderExecutionReport.md)
- [OrderExecutionReportAllOf](docs/Model/OrderExecutionReportAllOf.md)
- [OrderHistory](docs/Model/OrderHistory.md)
- [OrderNewSingleRequest](docs/Model/OrderNewSingleRequest.md)
- [Position](docs/Model/Position.md)
- [PositionDataInner](docs/Model/PositionDataInner.md)
- [RejectReason](docs/Model/RejectReason.md)
- [TimeInForce](docs/Model/TimeInForce.md)
- [ValidationError](docs/Model/ValidationError.md)

## Authorization
All endpoints do not require authorization.
## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

support@coinapi.io

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `v1`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
