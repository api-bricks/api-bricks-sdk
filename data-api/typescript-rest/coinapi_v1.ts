import { AxiosInstance, AxiosTransformer } from "axios";
declare var require: any;

// this is to support both browser and node
if (typeof window !== 'undefined') {
  (window as any).require = () => { }
  (window as any).exports = {}
}
let axios: AxiosInstance = typeof window === 'undefined' ? require("axios") : (window as any).axios;
var ISO_8601 = /^(?:[1-9]\d{3}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1\d|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[1-9]\d(?:0[48]|[2468][048]|[13579][26])|(?:[2468][048]|[13579][26])00)-02-29)T(?:[01]\d|2[0-3]):[0-5]\d:[0-5]\d(?:\.\d{1,9})?(?:Z|[+-][01]\d:[0-5]\d)$/;
function formatDate(d) {
  return (d.getMonth() + 1) + '/' + d.getDate() + '/' + d.getFullYear();
}

let transformResponse = (axios.defaults.transformResponse as AxiosTransformer[]).concat(function (data) {
  let tmp = item => Object.keys(item).forEach(function (k) {
    // console.log(item[k], ISO_8601.test(item[k]))
    if (ISO_8601.test(item[k])) {
      item[k] = new Date(Date.parse(item[k]));
    }
  });
  tmp(data)
  if(Array.isArray(data)){
    data.forEach(tmp)
  } else {
    tmp(data)
  }

  return data;
})

export default class COIN_API_SDK {
  private api_key = ""
  private headers = {}
  private url = "https://rest.coinapi.io"

  constructor(api_key: string | null = null) {
    if (api_key) {
      this.api_key = api_key
      this.headers = {
        "X-CoinAPI-Key": api_key
      }
      this.url = "https://rest.coinapi.io"
    }
  }

  metadata_list_exchanges() {
    let path = this.url + "/v1/exchanges"
    return axios.get(path, { headers: this.headers, transformResponse })
      .then(resp => {
        return resp.data as Exchange[]
      })
  }

  metadata_list_assets() {
    let path = this.url + "/v1/assets"
    return axios.get(path, { headers: this.headers, transformResponse })
      .then(resp => {
        return resp.data as Asset[]
      })
  }

  metadata_list_symbols() {
    let path = this.url + "/v1/symbols"
    return axios.get(path, { headers: this.headers, transformResponse })
      .then(resp => {
        return resp.data as Symbol[]
      })
  }

  exchange_rates_get_specific_rate(asset_id_base: string, asset_id_quote: string, time: Date | null = null) {
    let path = this.url + `/v1/exchangerate/${asset_id_base}/${asset_id_quote}`
    let params: any = {}
    if (time) { params.time = time.toISOString() }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Exchange_rate
      })
  }

  exchange_rates_get_all_current_rates(asset_id_base: string) {
    let path = this.url + `/v1/exchangerate/${asset_id_base}`
    return axios.get(path, { headers: this.headers, transformResponse })
      .then(resp => {
        return resp.data as {
          asset_id_base: string,
          rates: Exchange_rate[]
        }
      })
  }

  ohlcv_list_all_periods() {
    let path = this.url + `/v1/ohlcv/periods`
    return axios.get(path, { headers: this.headers, transformResponse })
      .then(resp => {
        return resp.data as Ohlcv_period[]
      })
  }

  ohlcv_latest_data(symbol_id: string, period_id: string, limit: number | null = null) {
    let path = this.url + `/v1/ohlcv/${symbol_id}/latest?period_id=${period_id}`
    let params: any = {}
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Ohlcv_data[]
      })
  }

  ohlcv_historic_data(symbol_id: string, period_id: string, time_start: Date, time_end: Date | null = null, limit: number | null = null) {
    let path = this.url + `/v1/ohlcv/${symbol_id}/history?period_id=${period_id}&time_start=${time_start.toISOString()}`
    let params: any = {}
    if (time_end) { params.time = time_end.toISOString() }
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Ohlcv_data[]
      })
  }

  trades_latest_data_all(limit: number | null = null) {
    let path = this.url + `/v1/trades/latest`
    let params: any = {}
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Trade[]
      })
  }

  trades_latest_data_symbol(symbol_id: string, limit: number | null = null) {
    let path = this.url + `/v1/trades/${symbol_id}/latest`
    let params: any = {}
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Trade[]
      })
  }

  trades_historical_data(symbol_id: string, time_start: Date, time_end: Date | null = null, limit: number | null = null) {
    let path = this.url + `/v1/trades/${symbol_id}/history?time_start=${time_start.toISOString()}`
    let params: any = {}
    if (time_end) { params.time = time_end.toISOString() }
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Trade[]
      })
  }

  quotes_current_data_all() {
    let path = this.url + `/v1/quotes/current`
    return axios.get(path, { headers: this.headers, transformResponse })
      .then(resp => {
        return resp.data as Trade[]
      })
  }

  quotes_current_data_symbol(symbol_id: string) {
    let path = this.url + `/v1/quotes/${symbol_id}/current`
    return axios.get(path, { headers: this.headers, transformResponse })
      .then(resp => {
        return resp.data as Trade
      })
  }

  quotes_latest_data_all(limit: number | null = null) {
    let path = this.url + `/v1/quotes/latest`
    let params: any = {}
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Quote[]
      })
  }

  quotes_latest_data_symbol(symbol_id: string, limit: number | null = null) {
    let path = this.url + `/v1/quotes/${symbol_id}/latest`
    let params: any = {}
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Quote[]
      })
  }

  quotes_historical_data(symbol_id: string, time_start: Date, time_end: Date | null = null, limit: number | null = null) {
    let path = this.url + `/v1/quotes/${symbol_id}/history?time_start=${time_start.toISOString()}`
    let params: any = {}
    if (time_end) { params.time = time_end.toISOString() }
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Quote[]
      })
  }

  orderbooks_current_data_all() {
    let path = this.url + `/v1/orderbooks/current`
    let params: any = {}

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Orderbook[]
      })
  }

  orderbooks_current_data_symbol(symbol_id: string) {
    let path = this.url + `/v1/orderbooks/${symbol_id}/current`
    return axios.get(path, { headers: this.headers, transformResponse })
      .then(resp => {
        return resp.data as Orderbook
      })
  }

  orderbooks_latest_data(symbol_id: string, limit: number | null = null) {
    let path = this.url + `/v1/orderbooks/${symbol_id}/latest`
    let params: any = {}
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Orderbook[]
      })
  }

  orderbooks_historical_data(symbol_id: string, time_start: Date, time_end: Date | null = null, limit: number | null = null) {
    let path = this.url + `/v1/orderbooks/${symbol_id}/history?time_start=${time_start.toISOString()}`
    let params: any = {}
    if (time_end) { params.time = time_end.toISOString() }
    if (limit) { params.limit = limit }

    return axios.get(path, { headers: this.headers, transformResponse, params })
      .then(resp => {
        return resp.data as Orderbook[]
      })
  }
}



if (typeof window !== 'undefined') {
  (window as any).COIN_API_SDK = COIN_API_SDK
}

interface Exchange {
  exchange_id: string
  website: string
  name: string
}

interface Asset {
  asset_id: string
  name: string
  type_is_crypto: boolean
}

interface SymbolBase {
  symbol_type: string
}

interface Symbol extends SymbolBase {
  symbol_id: string
  exchange_id: string
  asset_id_base: string
  asset_id_quote: string
}

interface Spot extends Symbol {

}

interface Future {
  future_delivery_time: Date
}

interface Option {
  option_type_is_call: boolean
  option_strike_price: number
  option_contract_unit: number
  option_exercise_style: string
  option_expiration_time: Date
}

interface Exchange_rate {
  time: Date
  asset_id_base: string
  asset_id_quote: string
  rate: number
}

interface Ohlcv_period {
  period_id: string
  length_seconds: number
  length_months: number
  unit_count: number
  unit_name: string
  display_name: string
}

interface Ohlcv_data {
  time_period_start: Date
  time_period_end: Date
  time_open: Date
  time_close: Date
  price_open: number
  price_high: number
  price_low: number
  price_close: number
  volume_traded: number
  trades_count: number
}

interface Trade {
  symbol_id: string
  time_exchange: Date
  time_coinapi: Date
  uuid: string
  price: number
  size: number
  taker_side: string
}

interface Quote {
  symbol_id: string
  time_exchange: Date
  time_coinapi: Date
  ask_price: number
  ask_size: number
  bid_price: number
  bid_size: number
  last_trade: Trade
}

interface Bid {
  price: number
  size: number
}

interface Orderbook {
  symbol_id: string
  time_exchange: Date
  time_coinapi: Date
  asks: Bid[]
  bids: Bid[]
}
