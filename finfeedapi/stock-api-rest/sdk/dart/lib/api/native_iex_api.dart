//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NativeIEXApi {
  NativeIEXApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Admin Messages
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<Response> v1NativeIexAdminMessagesSymbolGetWithHttpInfo(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/admin/messages/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get Admin Messages
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<List<ModelsAdminMessageModel>?> v1NativeIexAdminMessagesSymbolGet(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    final response = await v1NativeIexAdminMessagesSymbolGetWithHttpInfo(symbol, date: date, timeStart: timeStart, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsAdminMessageModel>') as List)
        .cast<ModelsAdminMessageModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get System Events
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<Response> v1NativeIexAdminSystemEventGetWithHttpInfo({ DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/admin/system-event';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get System Events
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Parameters:
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<List<IEXSystemEventSystemEventModel>?> v1NativeIexAdminSystemEventGet({ DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    final response = await v1NativeIexAdminSystemEventGetWithHttpInfo(date: date, timeStart: timeStart, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IEXSystemEventSystemEventModel>') as List)
        .cast<IEXSystemEventSystemEventModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Level-1 Quotes
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<Response> v1NativeIexLevel1QuoteSymbolGetWithHttpInfo(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/level1-quote/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get Level-1 Quotes
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<List<IEXQuoteUpdateQuoteUpdateModel>?> v1NativeIexLevel1QuoteSymbolGet(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    final response = await v1NativeIexLevel1QuoteSymbolGetWithHttpInfo(symbol, date: date, timeStart: timeStart, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IEXQuoteUpdateQuoteUpdateModel>') as List)
        .cast<IEXQuoteUpdateQuoteUpdateModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Level-2 Price Level Book
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<Response> v1NativeIexLevel2PriceLevelUpdateSymbolGetWithHttpInfo(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/level2-price-level-update/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get Level-2 Price Level Book
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<List<IEXPriceLevelUpdatePriceLevelUpdateModel>?> v1NativeIexLevel2PriceLevelUpdateSymbolGet(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    final response = await v1NativeIexLevel2PriceLevelUpdateSymbolGetWithHttpInfo(symbol, date: date, timeStart: timeStart, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IEXPriceLevelUpdatePriceLevelUpdateModel>') as List)
        .cast<IEXPriceLevelUpdatePriceLevelUpdateModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Level-3 Order Book
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<Response> v1NativeIexLevel3OrderBookSymbolGetWithHttpInfo(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/level3-order-book/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get Level-3 Order Book
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<List<ModelsOrderBookModel>?> v1NativeIexLevel3OrderBookSymbolGet(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    final response = await v1NativeIexLevel3OrderBookSymbolGetWithHttpInfo(symbol, date: date, timeStart: timeStart, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsOrderBookModel>') as List)
        .cast<ModelsOrderBookModel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Trades
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<Response> v1NativeIexTradeSymbolGetWithHttpInfo(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/iex/trade/{symbol}'
      .replaceAll('{symbol}', symbol);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Get Trades
  ///
  /// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
  ///
  /// Parameters:
  ///
  /// * [String] symbol (required):
  ///   The symbol identifier
  ///
  /// * [DateTime] date:
  ///   UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  ///
  /// * [String] timeStart:
  ///   Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  ///
  /// * [int] limit:
  ///   Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
  Future<List<IEXTradeTradeModel>?> v1NativeIexTradeSymbolGet(String symbol, { DateTime? date, String? timeStart, int? limit, Future<void>? abortTrigger, }) async {
    final response = await v1NativeIexTradeSymbolGetWithHttpInfo(symbol, date: date, timeStart: timeStart, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IEXTradeTradeModel>') as List)
        .cast<IEXTradeTradeModel>()
        .toList(growable: false);

    }
    return null;
  }
}
