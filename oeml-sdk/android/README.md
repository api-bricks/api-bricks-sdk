# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.BalancesApi;

public class BalancesApiExample {

    public static void main(String[] args) {
        BalancesApi apiInstance = new BalancesApi();
        String exchangeId = KRAKEN; // String | Filter the balances to the specific exchange.
        try {
            List<Balance> result = apiInstance.v1BalancesGet(exchangeId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BalancesApi#v1BalancesGet");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BalancesApi* | [**v1BalancesGet**](docs/BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances
*OrdersApi* | [**v1OrdersCancelAllPost**](docs/OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
*OrdersApi* | [**v1OrdersCancelPost**](docs/OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
*OrdersApi* | [**v1OrdersGet**](docs/OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
*OrdersApi* | [**v1OrdersPost**](docs/OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
*OrdersApi* | [**v1OrdersStatusClientOrderIdGet**](docs/OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report
*PositionsApi* | [**v1PositionsGet**](docs/PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get open positions


## Documentation for Models

 - [Balance](docs/Balance.md)
 - [BalanceData](docs/BalanceData.md)
 - [Fills](docs/Fills.md)
 - [Message](docs/Message.md)
 - [OrdSide](docs/OrdSide.md)
 - [OrdStatus](docs/OrdStatus.md)
 - [OrdType](docs/OrdType.md)
 - [OrderCancelAllRequest](docs/OrderCancelAllRequest.md)
 - [OrderCancelSingleRequest](docs/OrderCancelSingleRequest.md)
 - [OrderExecutionReport](docs/OrderExecutionReport.md)
 - [OrderExecutionReportAllOf](docs/OrderExecutionReportAllOf.md)
 - [OrderNewSingleRequest](docs/OrderNewSingleRequest.md)
 - [Position](docs/Position.md)
 - [PositionData](docs/PositionData.md)
 - [Severity](docs/Severity.md)
 - [TimeInForce](docs/TimeInForce.md)
 - [ValidationError](docs/ValidationError.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@coinapi.io

