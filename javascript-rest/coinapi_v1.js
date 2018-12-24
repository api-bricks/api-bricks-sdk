"use strict";
// this is to support both browser and node
if (typeof window !== 'undefined') {
    window.require = function () { };
    window.exports = {};
}
var axios = typeof window === 'undefined' ? require("axios") : window.axios;
var ISO_8601 = /^(?:[1-9]\d{3}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1\d|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[1-9]\d(?:0[48]|[2468][048]|[13579][26])|(?:[2468][048]|[13579][26])00)-02-29)T(?:[01]\d|2[0-3]):[0-5]\d:[0-5]\d(?:\.\d{1,9})?(?:Z|[+-][01]\d:[0-5]\d)$/;
var transformResponse = axios.defaults.transformResponse.concat(function (data) {
    var tmp = function (item) { return Object.keys(item).forEach(function (k) {
        // console.log(item[k], ISO_8601.test(item[k]))
        if (ISO_8601.test(item[k])) {
            item[k] = new Date(Date.parse(item[k]));
        }
    }); };
    tmp(data);
    if (Array.isArray(data)) {
        data.forEach(tmp);
    }
    else {
        tmp(data);
    }
    return data;
});
var COIN_API_SDK = (function () {
    function COIN_API_SDK(api_key) {
        if (api_key === void 0) { api_key = null; }
        this.api_key = "";
        this.headers = {};
        this.url = "https://rest-test.coinapi.io";
        if (api_key) {
            this.api_key = api_key;
            this.headers = {
                "X-CoinAPI-Key": api_key
            };
            this.url = "https://rest.coinapi.io";
        }
    }
    COIN_API_SDK.prototype.metadata_list_exchanges = function () {
        var path = this.url + "/v1/exchanges";
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.metadata_list_assets = function () {
        var path = this.url + "/v1/assets";
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.metadata_list_symbols = function () {
        var path = this.url + "/v1/symbols";
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.exchange_rates_get_specific_rate = function (asset_id_base, asset_id_quote, time) {
        if (time === void 0) { time = null; }
        var path = this.url + ("/v1/exchangerate/" + asset_id_base + "/" + asset_id_quote);
        var params = {};
        if (time) {
            params.time = time.toISOString();
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.exchange_rates_get_all_current_rates = function (asset_id_base) {
        var path = this.url + ("/v1/exchangerate/" + asset_id_base);
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.ohlcv_list_all_periods = function () {
        var path = this.url + "/v1/ohlcv/periods";
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.ohlcv_latest_data = function (symbol_id, period_id, limit) {
        if (limit === void 0) { limit = null; }
        var path = this.url + ("/v1/ohlcv/" + symbol_id + "/latest?period_id=" + period_id);
        var params = {};
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.ohlcv_historic_data = function (symbol_id, period_id, time_start, time_end, limit) {
        if (time_end === void 0) { time_end = null; }
        if (limit === void 0) { limit = null; }
        var path = this.url + ("/v1/ohlcv/" + symbol_id + "/history?period_id=" + period_id + "&time_start=" + time_start.toISOString());
        var params = {};
        if (time_end) {
            params.time_end = time_end.toISOString();
        }
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.trades_latest_data_all = function (limit) {
        if (limit === void 0) { limit = null; }
        var path = this.url + "/v1/trades/latest";
        var params = {};
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.trades_latest_data_symbol = function (symbol_id, limit) {
        if (limit === void 0) { limit = null; }
        var path = this.url + ("/v1/trades/" + symbol_id + "/latest");
        var params = {};
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.trades_historical_data = function (symbol_id, time_start, time_end, limit) {
        if (time_end === void 0) { time_end = null; }
        if (limit === void 0) { limit = null; }
        var path = this.url + ("/v1/trades/" + symbol_id + "/history?time_start=" + time_start.toISOString());
        var params = {};
        if (time_end) {
            params.time_end = time_end.toISOString();
        }
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.quotes_current_data_all = function () {
        var path = this.url + "/v1/quotes/current";
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.quotes_current_data_symbol = function (symbol_id) {
        var path = this.url + ("/v1/quotes/" + symbol_id + "/current");
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.quotes_latest_data_all = function (limit) {
        if (limit === void 0) { limit = null; }
        var path = this.url + "/v1/quotes/latest";
        var params = {};
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.quotes_latest_data_symbol = function (symbol_id, limit) {
        if (limit === void 0) { limit = null; }
        var path = this.url + ("/v1/quotes/" + symbol_id + "/latest");
        var params = {};
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.quotes_historical_data = function (symbol_id, time_start, time_end, limit) {
        if (time_end === void 0) { time_end = null; }
        if (limit === void 0) { limit = null; }
        var path = this.url + ("/v1/quotes/" + symbol_id + "/history?time_start=" + time_start.toISOString());
        var params = {};
        if (time_end) {
            params.time_end = time_end.toISOString();
        }
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.orderbooks_current_data_all = function (filter_symbol_id) {
        if (filter_symbol_id === void 0) { filter_symbol_id = null; }
        var path = this.url + "/v1/orderbooks/current";
        var params = {};
        if (filter_symbol_id) {
            params.filter_symbol_id = filter_symbol_id;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.orderbooks_current_data_symbol = function (symbol_id) {
        var path = this.url + ("/v1/orderbooks/" + symbol_id + "/current");
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.orderbooks_latest_data = function (symbol_id, limit) {
        if (limit === void 0) { limit = null; }
        var path = this.url + ("/v1/orderbooks/" + symbol_id + "/latest");
        var params = {};
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    COIN_API_SDK.prototype.orderbooks_historical_data = function (symbol_id, time_start, time_end, limit) {
        if (time_end === void 0) { time_end = null; }
        if (limit === void 0) { limit = null; }
        var path = this.url + ("/v1/orderbooks/" + symbol_id + "/history?time_start=" + time_start.toISOString());
        var params = {};
        if (time_end) {
            params.time_end = time_end.toISOString();
        }
        if (limit) {
            params.limit = limit;
        }
        return axios.get(path, { headers: this.headers, transformResponse: transformResponse, params: params })
            .then(function (resp) {
            return resp.data;
        });
    };
    return COIN_API_SDK;
}());
exports.__esModule = true;
exports["default"] = COIN_API_SDK;
if (typeof window !== 'undefined') {
    window.COIN_API_SDK = COIN_API_SDK;
}
