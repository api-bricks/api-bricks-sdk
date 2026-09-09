//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OHLCVApi {
  OHLCVApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Historical data by exchange
  ///
  /// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between `time_end` and `time_start` cannot be higher than 1 day. The `period_id` cannot be higher than `1DAY`. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
  ///
  /// * [String] periodId (required):
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
  ///
  /// * [String] timeStart (required):
  ///   Timeseries starting time in ISO 8601
  ///
  /// * [String] timeEnd (required):
  ///   Timeseries ending time in ISO 8601
  Future<Response> v1OhlcvExchangesExchangeIdHistoryGetWithHttpInfo(String exchangeId, String periodId, String timeStart, String timeEnd, { Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ohlcv/exchanges/{exchange_id}/history'
      .replaceAll('{exchange_id}', exchangeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'period_id', periodId));
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
      queryParams.addAll(_queryParams('', 'time_end', timeEnd));

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

  /// Historical data by exchange
  ///
  /// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between `time_end` and `time_start` cannot be higher than 1 day. The `period_id` cannot be higher than `1DAY`. :::
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
  ///
  /// * [String] periodId (required):
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
  ///
  /// * [String] timeStart (required):
  ///   Timeseries starting time in ISO 8601
  ///
  /// * [String] timeEnd (required):
  ///   Timeseries ending time in ISO 8601
  Future<List<OhlcvExchangeTimeseriesItem>?> v1OhlcvExchangesExchangeIdHistoryGet(String exchangeId, String periodId, String timeStart, String timeEnd, { Future<void>? abortTrigger, }) async {
    final response = await v1OhlcvExchangesExchangeIdHistoryGetWithHttpInfo(exchangeId, periodId, timeStart, timeEnd, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OhlcvExchangeTimeseriesItem>') as List)
        .cast<OhlcvExchangeTimeseriesItem>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all periods
  ///
  /// Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1OhlcvPeriodsGetWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ohlcv/periods';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// List all periods
  ///
  /// Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
  Future<List<V1TimeseriesPeriod>?> v1OhlcvPeriodsGet({ Future<void>? abortTrigger, }) async {
    final response = await v1OhlcvPeriodsGetWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1TimeseriesPeriod>') as List)
        .cast<V1TimeseriesPeriod>()
        .toList(growable: false);

    }
    return null;
  }

  /// Historical data
  ///
  /// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier of requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [String] periodId (required):
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
  ///
  /// * [String] timeStart:
  ///   Timeseries starting time in ISO 8601
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601
  ///
  /// * [int] limit:
  ///   Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1OhlcvSymbolIdHistoryGetWithHttpInfo(String symbolId, String periodId, { String? timeStart, String? timeEnd, int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ohlcv/{symbol_id}/history'
      .replaceAll('{symbol_id}', symbolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'period_id', periodId));
    if (timeStart != null) {
      queryParams.addAll(_queryParams('', 'time_start', timeStart));
    }
    if (timeEnd != null) {
      queryParams.addAll(_queryParams('', 'time_end', timeEnd));
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

  /// Historical data
  ///
  /// Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier of requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [String] periodId (required):
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
  ///
  /// * [String] timeStart:
  ///   Timeseries starting time in ISO 8601
  ///
  /// * [String] timeEnd:
  ///   Timeseries ending time in ISO 8601
  ///
  /// * [int] limit:
  ///   Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1TimeseriesItem>?> v1OhlcvSymbolIdHistoryGet(String symbolId, String periodId, { String? timeStart, String? timeEnd, int? limit, Future<void>? abortTrigger, }) async {
    final response = await v1OhlcvSymbolIdHistoryGetWithHttpInfo(symbolId, periodId, timeStart: timeStart, timeEnd: timeEnd, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1TimeseriesItem>') as List)
        .cast<V1TimeseriesItem>()
        .toList(growable: false);

    }
    return null;
  }

  /// Latest data
  ///
  /// Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier of requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [String] periodId (required):
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
  ///
  /// * [int] limit:
  ///   Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<Response> v1OhlcvSymbolIdLatestGetWithHttpInfo(String symbolId, String periodId, { int? limit, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/ohlcv/{symbol_id}/latest'
      .replaceAll('{symbol_id}', symbolId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'period_id', periodId));
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

  /// Latest data
  ///
  /// Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::
  ///
  /// Parameters:
  ///
  /// * [String] symbolId (required):
  ///   Symbol identifier of requested timeseries (from the Metadata -> Symbols)
  ///
  /// * [String] periodId (required):
  ///   Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
  ///
  /// * [int] limit:
  ///   Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  Future<List<V1TimeseriesItem>?> v1OhlcvSymbolIdLatestGet(String symbolId, String periodId, { int? limit, Future<void>? abortTrigger, }) async {
    final response = await v1OhlcvSymbolIdLatestGetWithHttpInfo(symbolId, periodId, limit: limit, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1TimeseriesItem>') as List)
        .cast<V1TimeseriesItem>()
        .toList(growable: false);

    }
    return null;
  }
}
