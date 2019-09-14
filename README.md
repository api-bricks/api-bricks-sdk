# CoinAPI-SDK

![GitHub language count](https://img.shields.io/github/languages/count/coinapi/coinapi-sdk)

Welcome to the CoinAPI SDK. This repository contain SDK for our API documented at https://docs.coinapi.io/ 

## Package managers coverage

Language | Package manager | Protocol | Package name | Version/Link |
--- | --- | --- | --- | --- |
C# | NuGet | REST | CoinAPI.REST.V1 | ![Nuget](https://img.shields.io/nuget/v/CoinAPI.REST.v1) |
C# | NuGet | WebSocket | CoinAPI.WebSocket.V1 | ![Nuget](https://img.shields.io/nuget/v/CoinAPI.WebSocket.v1) |
Java | Maven | REST | io.coinapi.rest.v1 | ![Sonatype Nexus (Releases)](https://img.shields.io/nexus/r/io.coinapi.rest/v1?server=https%3A%2F%2Foss.sonatype.org) |
Java | Maven | WebSocket | io.coinapi.websocket.v1 | ![Sonatype Nexus (Releases)](https://img.shields.io/nexus/r/io.coinapi.websocket/v1?server=https%3A%2F%2Foss.sonatype.org) |
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

Feel free to make Pull Request with proposed changes or create an Issue on which we respond as soon as possible.

# WebSocket connection example

 1. Download `wscat` npm package (https://www.npmjs.com/package/wscat) using `npm install -g wscat` command
 2. Establish connection to us by command `wscat --connect wss://ws.coinapi.io/v1/`
 3. Send this json `{ "type": "hello", "apikey": "TYPE_YOUR_API_KEY_HERE", "heartbeat": false, "subscribe_data_type": ["trade", "quote", "book50"] }`
 4. Right now you are receiving messages
 
 ## Unofficial SDK's
 
 Feel free to continue the effort to extend the coverage of this SDK.
 
 * Rust: https://github.com/soerenmartius/coinapi-rs


