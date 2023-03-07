export * from './cRYPTOPUNKSApi';
import { CRYPTOPUNKSApi } from './cRYPTOPUNKSApi';
export * from './cowApi';
import { CowApi } from './cowApi';
export * from './curveApi';
import { CurveApi } from './curveApi';
export * from './dexApi';
import { DexApi } from './dexApi';
export * from './metadataApi';
import { MetadataApi } from './metadataApi';
export * from './sushiswapApi';
import { SushiswapApi } from './sushiswapApi';
export * from './uniswapV2Api';
import { UniswapV2Api } from './uniswapV2Api';
export * from './uniswapV3Api';
import { UniswapV3Api } from './uniswapV3Api';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [CRYPTOPUNKSApi, CowApi, CurveApi, DexApi, MetadataApi, SushiswapApi, UniswapV2Api, UniswapV3Api];
