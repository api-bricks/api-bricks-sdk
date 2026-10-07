import localVarRequest from 'request';

export * from './marketDataMetadataAsset';
export * from './marketDataMetadataChain';
export * from './marketDataMetadataExchange';
export * from './marketDataMetadataIcon';
export * from './marketDataMetadataSymbol';
export * from './ohlcvExchangeTimeseriesItem';
export * from './v1ChainNetworkAddress';
export * from './v1ExchangeRate';
export * from './v1ExchangeRates';
export * from './v1ExchangeRatesRate';
export * from './v1ExchangeRatesTimeseriesItem';
export * from './v1GeneralData';
export * from './v1LastTrade';
export * from './v1ListingItem';
export * from './v1Metric';
export * from './v1MetricData';
export * from './v1MetricInfo';
export * from './v1OptionExchangeGroup';
export * from './v1OrderBook';
export * from './v1OrderBookBase';
export * from './v1OrderBookDepth';
export * from './v1Quote';
export * from './v1QuoteTrade';
export * from './v1Strike';
export * from './v1SymbolMapping';
export * from './v1TimeseriesItem';
export * from './v1TimeseriesPeriod';
export * from './v1Trade';

import * as fs from 'fs';

export interface RequestDetailedFile {
    value: Buffer;
    options?: {
        filename?: string;
        contentType?: string;
    }
}

export type RequestFile = string | Buffer | fs.ReadStream | RequestDetailedFile;


import { MarketDataMetadataAsset } from './marketDataMetadataAsset';
import { MarketDataMetadataChain } from './marketDataMetadataChain';
import { MarketDataMetadataExchange } from './marketDataMetadataExchange';
import { MarketDataMetadataIcon } from './marketDataMetadataIcon';
import { MarketDataMetadataSymbol } from './marketDataMetadataSymbol';
import { OhlcvExchangeTimeseriesItem } from './ohlcvExchangeTimeseriesItem';
import { V1ChainNetworkAddress } from './v1ChainNetworkAddress';
import { V1ExchangeRate } from './v1ExchangeRate';
import { V1ExchangeRates } from './v1ExchangeRates';
import { V1ExchangeRatesRate } from './v1ExchangeRatesRate';
import { V1ExchangeRatesTimeseriesItem } from './v1ExchangeRatesTimeseriesItem';
import { V1GeneralData } from './v1GeneralData';
import { V1LastTrade } from './v1LastTrade';
import { V1ListingItem } from './v1ListingItem';
import { V1Metric } from './v1Metric';
import { V1MetricData } from './v1MetricData';
import { V1MetricInfo } from './v1MetricInfo';
import { V1OptionExchangeGroup } from './v1OptionExchangeGroup';
import { V1OrderBook } from './v1OrderBook';
import { V1OrderBookBase } from './v1OrderBookBase';
import { V1OrderBookDepth } from './v1OrderBookDepth';
import { V1Quote } from './v1Quote';
import { V1QuoteTrade } from './v1QuoteTrade';
import { V1Strike } from './v1Strike';
import { V1SymbolMapping } from './v1SymbolMapping';
import { V1TimeseriesItem } from './v1TimeseriesItem';
import { V1TimeseriesPeriod } from './v1TimeseriesPeriod';
import { V1Trade } from './v1Trade';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

let enumsMap: {[index: string]: any} = {
}

let typeMap: {[index: string]: any} = {
    "MarketDataMetadataAsset": MarketDataMetadataAsset,
    "MarketDataMetadataChain": MarketDataMetadataChain,
    "MarketDataMetadataExchange": MarketDataMetadataExchange,
    "MarketDataMetadataIcon": MarketDataMetadataIcon,
    "MarketDataMetadataSymbol": MarketDataMetadataSymbol,
    "OhlcvExchangeTimeseriesItem": OhlcvExchangeTimeseriesItem,
    "V1ChainNetworkAddress": V1ChainNetworkAddress,
    "V1ExchangeRate": V1ExchangeRate,
    "V1ExchangeRates": V1ExchangeRates,
    "V1ExchangeRatesRate": V1ExchangeRatesRate,
    "V1ExchangeRatesTimeseriesItem": V1ExchangeRatesTimeseriesItem,
    "V1GeneralData": V1GeneralData,
    "V1LastTrade": V1LastTrade,
    "V1ListingItem": V1ListingItem,
    "V1Metric": V1Metric,
    "V1MetricData": V1MetricData,
    "V1MetricInfo": V1MetricInfo,
    "V1OptionExchangeGroup": V1OptionExchangeGroup,
    "V1OrderBook": V1OrderBook,
    "V1OrderBookBase": V1OrderBookBase,
    "V1OrderBookDepth": V1OrderBookDepth,
    "V1Quote": V1Quote,
    "V1QuoteTrade": V1QuoteTrade,
    "V1Strike": V1Strike,
    "V1SymbolMapping": V1SymbolMapping,
    "V1TimeseriesItem": V1TimeseriesItem,
    "V1TimeseriesPeriod": V1TimeseriesPeriod,
    "V1Trade": V1Trade,
}

// Check if a string starts with another string without using es6 features
function startsWith(str: string, match: string): boolean {
    return str.substring(0, match.length) === match;
}

// Check if a string ends with another string without using es6 features
function endsWith(str: string, match: string): boolean {
    return str.length >= match.length && str.substring(str.length - match.length) === match;
}

const nullableSuffix = " | null";
const optionalSuffix = " | undefined";
const arrayPrefix = "Array<";
const arraySuffix = ">";
const mapPrefix = "{ [key: string]: ";
const mapSuffix = "; }";

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap[expectedType]) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    if(typeMap[discriminatorType]){
                        return discriminatorType; // use the type given in the discriminator
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string): any {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (endsWith(type, nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.serialize(data, subType);
        } else if (endsWith(type, optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.serialize(data, subType);
        } else if (startsWith(type, arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.serialize(datum, subType));
            }
            return transformedData;
        } else if (startsWith(type, mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.serialize(
                    data[key],
                    subType,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            if (!(data instanceof Date)) {
                return data;
            }
            return data.toISOString();
        } else {
            if (enumsMap[type]) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                const value = Object.prototype.hasOwnProperty.call(data, attributeType.name)
                    ? data[attributeType.name]
                    : Object.prototype.hasOwnProperty.call(data, attributeType.baseName)
                        ? data[attributeType.baseName]
                        : undefined;
                instance[attributeType.baseName] = ObjectSerializer.serialize(value, attributeType.type);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string): any {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (endsWith(type, nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.deserialize(data, subType);
        } else if (endsWith(type, optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.deserialize(data, subType);
        } else if (startsWith(type, arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.deserialize(datum, subType));
            }
            return transformedData;
        } else if (startsWith(type, mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.deserialize(
                    data[key],
                    subType,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap[type]) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type);
            }
            return instance;
        }
    }
}

export interface Authentication {
    /**
    * Apply authentication settings to header and query params.
    */
    applyToRequest(requestOptions: localVarRequest.Options): Promise<void> | void;
}

export class HttpBasicAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        requestOptions.auth = {
            username: this.username, password: this.password
        }
    }
}

export class HttpBearerAuth implements Authentication {
    public accessToken: string | (() => string) = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            const accessToken = typeof this.accessToken === 'function'
                            ? this.accessToken()
                            : this.accessToken;
            requestOptions.headers["Authorization"] = "Bearer " + accessToken;
        }
    }
}

export class ApiKeyAuth implements Authentication {
    public apiKey: string = '';

    constructor(private location: string, private paramName: string) {
    }

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (this.location == "query") {
            (<any>requestOptions.qs)[this.paramName] = this.apiKey;
        } else if (this.location == "header" && requestOptions && requestOptions.headers) {
            requestOptions.headers[this.paramName] = this.apiKey;
        } else if (this.location == 'cookie' && requestOptions && requestOptions.headers) {
            if (requestOptions.headers['Cookie']) {
                requestOptions.headers['Cookie'] += '; ' + this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
            else {
                requestOptions.headers['Cookie'] = this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
        }
    }
}

export class OAuth implements Authentication {
    public accessToken: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            requestOptions.headers["Authorization"] = "Bearer " + this.accessToken;
        }
    }
}

export class VoidAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(_: localVarRequest.Options): void {
        // Do nothing
    }
}

export type Interceptor = (requestOptions: localVarRequest.Options) => (Promise<void> | void);
