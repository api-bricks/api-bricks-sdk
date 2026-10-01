import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for NativeIEXApi
void main() {
  final instance = Openapi().getNativeIEXApi();

  group(NativeIEXApi, () {
    // Get Admin Messages
    //
    // Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
    //
    //Future<BuiltList<ModelsAdminMessageModel>> v1NativeIexAdminMessagesSymbolGet(String symbol, { DateTime date, String timeStart, int limit }) async
    test('test v1NativeIexAdminMessagesSymbolGet', () async {
      // TODO
    });

    // Get System Events
    //
    // Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
    //
    //Future<BuiltList<IEXSystemEventSystemEventModel>> v1NativeIexAdminSystemEventGet({ DateTime date, String timeStart, int limit }) async
    test('test v1NativeIexAdminSystemEventGet', () async {
      // TODO
    });

    // Get Level-1 Quotes
    //
    // Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
    //
    //Future<BuiltList<IEXQuoteUpdateQuoteUpdateModel>> v1NativeIexLevel1QuoteSymbolGet(String symbol, { DateTime date, String timeStart, int limit }) async
    test('test v1NativeIexLevel1QuoteSymbolGet', () async {
      // TODO
    });

    // Get Level-2 Price Level Book
    //
    // Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
    //
    //Future<BuiltList<IEXPriceLevelUpdatePriceLevelUpdateModel>> v1NativeIexLevel2PriceLevelUpdateSymbolGet(String symbol, { DateTime date, String timeStart, int limit }) async
    test('test v1NativeIexLevel2PriceLevelUpdateSymbolGet', () async {
      // TODO
    });

    // Get Level-3 Order Book
    //
    // Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
    //
    //Future<BuiltList<ModelsOrderBookModel>> v1NativeIexLevel3OrderBookSymbolGet(String symbol, { DateTime date, String timeStart, int limit }) async
    test('test v1NativeIexLevel3OrderBookSymbolGet', () async {
      // TODO
    });

    // Get Trades
    //
    // Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
    //
    //Future<BuiltList<IEXTradeTradeModel>> v1NativeIexTradeSymbolGet(String symbol, { DateTime date, String timeStart, int limit }) async
    test('test v1NativeIexTradeSymbolGet', () async {
      // TODO
    });

  });
}
