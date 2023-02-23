export * from './balancesApi';
import { BalancesApi } from './balancesApi';
export * from './ordersApi';
import { OrdersApi } from './ordersApi';
export * from './positionsApi';
import { PositionsApi } from './positionsApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [BalancesApi, OrdersApi, PositionsApi];
