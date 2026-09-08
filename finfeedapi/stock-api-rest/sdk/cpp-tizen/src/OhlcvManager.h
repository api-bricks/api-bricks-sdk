#ifndef _OhlcvManager_H_
#define _OhlcvManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "OHLCVTimeSeries.ExchangeTimeseriesItem.h"
#include "OHLCVTimeSeries.TimeseriesItem.h"
#include "OHLCVTimeSeries.TimeseriesPeriod.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Ohlcv Ohlcv
 * \ingroup Operations
 *  @{
 */
class OhlcvManager {
public:
	OhlcvManager();
	virtual ~OhlcvManager();

/*! \brief Historical data by exchange. *Synchronous*
 *
 * Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned.
 * \param exchangeId Exchange identifier of requested timeseries (from the Metadata -> Exchanges) *Required*
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`) *Required*
 * \param timeStart Timeseries starting time in ISO 8601 *Required*
 * \param timeEnd Timeseries ending time in ISO 8601 *Required*
 * \param limit Maximum number of symbol rows to return (1-10000, default 100)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OhlcvExchangeExchangeIdHistoryGetSync(char * accessToken,
	std::string exchangeId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<OHLCVTimeSeries.ExchangeTimeseriesItem>, Error, void* )
	, void* userData);

/*! \brief Historical data by exchange. *Asynchronous*
 *
 * Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned.
 * \param exchangeId Exchange identifier of requested timeseries (from the Metadata -> Exchanges) *Required*
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`) *Required*
 * \param timeStart Timeseries starting time in ISO 8601 *Required*
 * \param timeEnd Timeseries ending time in ISO 8601 *Required*
 * \param limit Maximum number of symbol rows to return (1-10000, default 100)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OhlcvExchangeExchangeIdHistoryGetAsync(char * accessToken,
	std::string exchangeId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<OHLCVTimeSeries.ExchangeTimeseriesItem>, Error, void* )
	, void* userData);


/*! \brief Historical data. *Synchronous*
 *
 * Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.
 * \param exchangeId Exchange identifier of requested timeseries (from the Metadata -> Exchanges) *Required*
 * \param symbolId Symbol identifier of requested timeseries (from the Metadata -> Symbols) *Required*
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`) *Required*
 * \param timeStart Timeseries starting time in ISO 8601
 * \param timeEnd Timeseries ending time in ISO 8601
 * \param limit Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetSync(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<OHLCVTimeSeries.TimeseriesItem>, Error, void* )
	, void* userData);

/*! \brief Historical data. *Asynchronous*
 *
 * Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.
 * \param exchangeId Exchange identifier of requested timeseries (from the Metadata -> Exchanges) *Required*
 * \param symbolId Symbol identifier of requested timeseries (from the Metadata -> Symbols) *Required*
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`) *Required*
 * \param timeStart Timeseries starting time in ISO 8601
 * \param timeEnd Timeseries ending time in ISO 8601
 * \param limit Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetAsync(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<OHLCVTimeSeries.TimeseriesItem>, Error, void* )
	, void* userData);


/*! \brief Latest data. *Synchronous*
 *
 * Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
 * \param exchangeId Exchange identifier of requested timeseries (from the Metadata -> Exchanges) *Required*
 * \param symbolId Symbol identifier of requested timeseries (from the Metadata -> Symbols) *Required*
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`) *Required*
 * \param limit Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetSync(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, int limit, 
	void(* handler)(std::list<OHLCVTimeSeries.TimeseriesItem>, Error, void* )
	, void* userData);

/*! \brief Latest data. *Asynchronous*
 *
 * Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
 * \param exchangeId Exchange identifier of requested timeseries (from the Metadata -> Exchanges) *Required*
 * \param symbolId Symbol identifier of requested timeseries (from the Metadata -> Symbols) *Required*
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`) *Required*
 * \param limit Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetAsync(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, int limit, 
	void(* handler)(std::list<OHLCVTimeSeries.TimeseriesItem>, Error, void* )
	, void* userData);


/*! \brief List all periods. *Synchronous*
 *
 * Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OhlcvPeriodsGetSync(char * accessToken,
	
	void(* handler)(std::list<OHLCVTimeSeries.TimeseriesPeriod>, Error, void* )
	, void* userData);

/*! \brief List all periods. *Asynchronous*
 *
 * Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OhlcvPeriodsGetAsync(char * accessToken,
	
	void(* handler)(std::list<OHLCVTimeSeries.TimeseriesPeriod>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://api-historical.stock.finfeedapi.com";
	}
};
/** @}*/

}
}
#endif /* OhlcvManager_H_ */
