#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/iex_price_level_update_price_level_update_model.h"
#include "../model/iex_quote_update_quote_update_model.h"
#include "../model/iex_system_event_system_event_model.h"
#include "../model/iex_trade_trade_model.h"
#include "../model/models_admin_message_model.h"
#include "../model/models_order_book_model.h"


// Get Admin Messages
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);


// Get System Events
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexAdminSystemEventGet(apiClient_t *apiClient, char date, char *time_start, int *limit);


// Get Level-1 Quotes
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);


// Get Level-2 Price Level Book
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);


// Get Level-3 Order Book
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);


// Get Trades
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t*
NativeIEXAPI_v1NativeIexTradeSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);


