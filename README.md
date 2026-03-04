# API BRICKS SDK 

![GitHub language count](https://img.shields.io/github/languages/count/api-bricks/api-bricks-sdk)

Welcome to the API BRICKS SDK. This repository contains SDKs for our APIs.

## Our Products

This repository provides SDKs for our main product families: CoinAPI and FinFeedAPI.

### CoinAPI

**Main Website:** [www.coinapi.io](https://www.coinapi.io/)
**Documentation Hub:** [https://docs.coinapi.io/](https://docs.coinapi.io/)

The CoinAPI family includes the following specific APIs and SDKs present in this repository:

| Product Name                        | Description                                                        | Protocols       |
| ----------------------------------- | ------------------------------------------------------------------ | --------------- |
| Market Data API                     | SDK for CoinAPI Market Data API                                    | REST, WebSocket, FIX |
| EMS Cloud Management SDK            | SDK for CoinAPI Execution Management System Managed Cloud REST API | REST            |
| EMS Gateway REST SDK                | SDK for CoinAPI Execution Management System REST API               | REST, WS            |
| EMS Gateway FIX SDK                 | SDK for CoinAPI Execution Management System FIX API                | FIX             |
| Indexes API                         | SDK for CoinAPI Indexes API                                        | REST, WS            |
| Exchange Rates API                  | SDK for CoinAPI Exchange Rates API                                 | REST, WS            |
| Flat Files API Processing Samples   | Examples related to processing GZIP+CSV flat files      | GZIP+CSV        |

*For detailed documentation on each specific API, please refer to the [CoinAPI Documentation Hub](https://docs.coinapi.io/).*

### FinFeedAPI

**Main Website:** [www.finfeedapi.com](https://www.finfeedapi.com/)
**Documentation Hub:** [https://docs.finfeedapi.com/](https://docs.finfeedapi.com/)

The FinFeedAPI family includes the following specific APIs and SDKs present in this repository:

| Product Name                        | Description                                 | Protocols       |
| ----------------------------------- | ------------------------------------------- | --------------- |
| Stock API                           | SDK for FinFeed API Stock API               | REST            |
| SEC API                             | SDK for FinFeed API SEC API                 | REST            |
| Currencies Realtime API             | SDK for FinFeed API Currencies Realtime API | REST            |
| Currencies Historical API           | SDK for FinFeed API Currencies Historical API | REST            |
| Prediction Markets API              | SDK for FinFeed API Prediction Markets API  | REST            |

*For detailed documentation on each specific API, please refer to the [FinFeedAPI Documentation Hub](https://docs.finfeedapi.com/).*

## Repository organization

The repository is organized into two main product families, `coinapi` and `finfeedapi`. Each of these contains subdirectories for specific APIs and their associated SDKs or samples.

### CoinAPI Directories

Directory | Description |
--- | --- |
`coinapi/market-data-api-rest` | SDK for CoinAPI Market Data REST API |
`coinapi/market-data-api-ws` | SDK for CoinAPI Market Data WebSocket API |
`coinapi/market-data-api-fix` | SDK for CoinAPI Market Data FIX API |
`coinapi/ems-cloud-mgmt-api` | SDK for CoinAPI Execution Management System Managed Cloud REST API |
`coinapi/ems-api-rest` | SDK for CoinAPI Execution Management System REST API |
`coinapi/ems-api-fix` | SDK for CoinAPI Execution Management System FIX API |
`coinapi/indexes-api-rest` | SDK for CoinAPI Indexes REST API |
`coinapi/exchange-rates-api-historical` | SDK for CoinAPI Exchange Rates Historical REST API |
`coinapi/exchange-rates-api-realtime` | SDK for CoinAPI Exchange Rates Realtime REST API (this might also cover WebSocket or be split, TBC) |
`coinapi/exchange-rates-api-rest-historical` | SDK for CoinAPI Exchange Rates REST Historical API (potentially redundant or more specific version of `exchange-rates-api-historical`) |
`coinapi/exchange-rates-api-rest-realtime` | SDK for CoinAPI Exchange Rates REST Realtime API (potentially redundant or more specific version of `exchange-rates-api-realtime`) |
`coinapi/flat-files-api-processing-samples` | Examples related to processing GZIP+CSV flat files |

### FinFeedAPI Directories

Directory | Description |
--- | --- |
`finfeedapi/stock-api-rest` | SDK for FinFeed API Stock REST API |
`finfeedapi/sec-api-rest` | SDK for FinFeed API SEC REST API |
`finfeedapi/currencies-api-rest-realtime` | SDK for FinFeed API Currencies Realtime REST API |
`finfeedapi/currencies-api-rest-historical` | SDK for FinFeed API Currencies Historical REST API |
`finfeedapi/prediction-markets-api-rest` | SDK for FinFeed API Prediction Markets REST API |

## OpenAPI Specifications

OpenAPI (formerly Swagger) specification files, typically named `openapi.yaml` or `openapi.json`, are provided for many of the RESTful APIs in this repository. These files define the API's structure and can be used with various tools for documentation generation, client SDK creation, and testing.

You can generally find these specification files within the respective API's directory. Common locations include:
* A `spec/` subdirectory directly within the API's folder (e.g., `coinapi/market-data-api-rest/spec/openapi.yaml`).
* Within language-specific SDK directories, often under an `api/` or similar subdirectory (e.g., `finfeedapi/sec-api-rest/sdk/java/api/openapi.yaml`).

Please explore the individual API directories for the most up-to-date and specific locations of these files.

## Package managers coverage

Language | Package manager | Protocol | Package name | Version/Link |
--- | --- | --- | --- | --- |
C# | NuGet | REST | CoinAPI.REST.V1 | ![Nuget](https://img.shields.io/nuget/v/CoinAPI.REST.v1) |
C# | NuGet | WebSocket | CoinAPI.WebSocket.V1 | ![Nuget](https://img.shields.io/nuget/v/CoinAPI.WebSocket.v1) |
Java | Maven<br/>(GitHub Packages) | REST | io.coinapi.rest.v1 | https://github.com/api-bricks/api-bricks-sdk/packages/397337 |
Java | Maven<br/>(GitHub Packages) | WebSocket | io.coinapi.websocket.v1 | https://github.com/api-bricks/api-bricks-sdk/packages/397352 |
Python3 | PyPI | REST | coinapi.rest.v1 | ![PyPI](https://img.shields.io/pypi/v/coinapi.rest.v1) |

## Language coverage

In this repository you can find libraries that will help you use our API with minimal development effort from languages like:
 * Python
 * R
 * Matlab
 * C#
 * C++
 * .NET
 * Java
 * Ruby
 * Go
 * JavaScript
 * TypeScript
 * Node.js
 * PHP
 * Haskell
 * Objective-C
 * Swift

Feel free to make a Pull Request with proposed changes or create an Issue to which we will respond as soon as possible.

