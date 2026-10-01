#ifndef _NativeIEXManager_H_
#define _NativeIEXManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "IEXPriceLevelUpdate.PriceLevelUpdateModel.h"
#include "IEXQuoteUpdate.QuoteUpdateModel.h"
#include "IEXSystemEvent.SystemEventModel.h"
#include "IEXTrade.TradeModel.h"
#include "Models.AdminMessageModel.h"
#include "Models.OrderBookModel.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup NativeIEX NativeIEX
 * \ingroup Operations
 *  @{
 */
class NativeIEXManager {
public:
	NativeIEXManager();
	virtual ~NativeIEXManager();

/*! \brief Get Admin Messages. *Synchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexAdminMessagesSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.AdminMessageModel>, Error, void* )
	, void* userData);

/*! \brief Get Admin Messages. *Asynchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexAdminMessagesSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.AdminMessageModel>, Error, void* )
	, void* userData);


/*! \brief Get System Events. *Synchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexAdminSystemEventGetSync(char * accessToken,
	std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXSystemEvent.SystemEventModel>, Error, void* )
	, void* userData);

/*! \brief Get System Events. *Asynchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexAdminSystemEventGetAsync(char * accessToken,
	std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXSystemEvent.SystemEventModel>, Error, void* )
	, void* userData);


/*! \brief Get Level-1 Quotes. *Synchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel1QuoteSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXQuoteUpdate.QuoteUpdateModel>, Error, void* )
	, void* userData);

/*! \brief Get Level-1 Quotes. *Asynchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel1QuoteSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXQuoteUpdate.QuoteUpdateModel>, Error, void* )
	, void* userData);


/*! \brief Get Level-2 Price Level Book. *Synchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel2PriceLevelUpdateSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXPriceLevelUpdate.PriceLevelUpdateModel>, Error, void* )
	, void* userData);

/*! \brief Get Level-2 Price Level Book. *Asynchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel2PriceLevelUpdateSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXPriceLevelUpdate.PriceLevelUpdateModel>, Error, void* )
	, void* userData);


/*! \brief Get Level-3 Order Book. *Synchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel3OrderBookSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.OrderBookModel>, Error, void* )
	, void* userData);

/*! \brief Get Level-3 Order Book. *Asynchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel3OrderBookSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.OrderBookModel>, Error, void* )
	, void* userData);


/*! \brief Get Trades. *Synchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexTradeSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXTrade.TradeModel>, Error, void* )
	, void* userData);

/*! \brief Get Trades. *Asynchronous*
 *
 * Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
 * \param symbol The symbol identifier *Required*
 * \param date UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
 * \param timeStart Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
 * \param limit Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexTradeSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXTrade.TradeModel>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://api-historical.stock.finfeedapi.com";
	}
};
/** @}*/

}
}
#endif /* NativeIEXManager_H_ */
