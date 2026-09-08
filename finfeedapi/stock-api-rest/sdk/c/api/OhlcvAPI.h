#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/ohlcv_time_series_exchange_timeseries_item.h"
#include "../model/ohlcv_time_series_timeseries_item.h"
#include "../model/ohlcv_time_series_timeseries_period.h"


// Historical data by exchange
//
// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned.
//
list_t*
OhlcvAPI_v1OhlcvExchangeExchangeIdHistoryGet(apiClient_t *apiClient, char *exchange_id, char *period_id, char *time_start, char *time_end, int *limit);


// Historical data
//
// Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.
//
list_t*
OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(apiClient_t *apiClient, char *exchange_id, char *symbol_id, char *period_id, char *time_start, char *time_end, int *limit);


// Latest data
//
// Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
//
list_t*
OhlcvAPI_v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(apiClient_t *apiClient, char *exchange_id, char *symbol_id, char *period_id, int *limit);


// List all periods
//
// Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
//
list_t*
OhlcvAPI_v1OhlcvPeriodsGet(apiClient_t *apiClient);


