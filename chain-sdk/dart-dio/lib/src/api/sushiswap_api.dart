//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/curve_exchange_dto.dart';
import 'package:openapi/src/model/dex_trade_dto.dart';
import 'package:openapi/src/model/sushiswap_bundle_dto.dart';
import 'package:openapi/src/model/sushiswap_burn_dto.dart';
import 'package:openapi/src/model/sushiswap_day_data_dto.dart';
import 'package:openapi/src/model/sushiswap_factory_dto.dart';
import 'package:openapi/src/model/sushiswap_hour_data_dto.dart';
import 'package:openapi/src/model/sushiswap_liquidity_position_dto.dart';
import 'package:openapi/src/model/sushiswap_liquidity_position_snapshot_dto.dart';
import 'package:openapi/src/model/sushiswap_mint_dto.dart';
import 'package:openapi/src/model/sushiswap_pair_day_data_dto.dart';
import 'package:openapi/src/model/sushiswap_pair_dto.dart';
import 'package:openapi/src/model/sushiswap_pair_hour_data_dto.dart';
import 'package:openapi/src/model/sushiswap_swap_dto.dart';
import 'package:openapi/src/model/sushiswap_token_day_data_dto.dart';
import 'package:openapi/src/model/sushiswap_token_dto.dart';
import 'package:openapi/src/model/sushiswap_transaction_dto.dart';
import 'package:openapi/src/model/sushiswap_user_dto.dart';

class SushiswapApi {

  final Dio _dio;

  final Serializers _serializers;

  const SushiswapApi(this._dio, this._serializers);

  /// Exchanges (current) 🔥
  /// Gets exchanges.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CurveExchangeDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CurveExchangeDTO>>> curveGetExchangesCurrent({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/exchanges/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<CurveExchangeDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CurveExchangeDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CurveExchangeDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CurveExchangeDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Trades (current) 🔥
  /// Gets trades.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<DexTradeDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<DexTradeDTO>>> dexGetTradesCurrent({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/trades/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<DexTradeDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(DexTradeDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<DexTradeDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<DexTradeDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Bundles (historical) 🔥
  /// Gets bundles.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Hardcoded to '1'.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapBundleDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapBundleDTO>>> sushiswapGetBundlesHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/bundles/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapBundleDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapBundleDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapBundleDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapBundleDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Burns (historical) 🔥
  /// Gets burns.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [pair] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapBurnDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapBurnDTO>>> sushiswapGetBurnsHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pair,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/burns/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pair != null) r'pair': encodeQueryParameter(_serializers, pair, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapBurnDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapBurnDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapBurnDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapBurnDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// DayDatas (historical) 🔥
  /// Gets daydatas.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Unix timestamp for start of day / 86400 giving a unique day index.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapDayDataDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapDayDataDTO>>> sushiswapGetDayDatasHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/daydatas/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapDayDataDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapDayDataDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapDayDataDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapDayDataDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Factorys (historical) 🔥
  /// Gets factorys.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Factory address.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapFactoryDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapFactoryDTO>>> sushiswapGetFactorysHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/factorys/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapFactoryDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapFactoryDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapFactoryDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapFactoryDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// HourDatas (historical) 🔥
  /// Gets hourdatas.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Start of hour timestamp.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapHourDataDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapHourDataDTO>>> sushiswapGetHourDatasHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/hourdatas/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapHourDataDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapHourDataDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapHourDataDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapHourDataDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// LiquidityPositionSnapshots (historical) 🔥
  /// Gets liquiditypositionsnapshots.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [user] 
  /// * [pair] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapLiquidityPositionSnapshotDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapLiquidityPositionSnapshotDTO>>> sushiswapGetLiquidityPositionSnapshotsHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? user,
    String? pair,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/liquiditypositionsnapshots/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (user != null) r'user': encodeQueryParameter(_serializers, user, const FullType(String)),
      if (pair != null) r'pair': encodeQueryParameter(_serializers, pair, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapLiquidityPositionSnapshotDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapLiquidityPositionSnapshotDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapLiquidityPositionSnapshotDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapLiquidityPositionSnapshotDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// LiquidityPositions (historical) 🔥
  /// Gets liquiditypositions.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [user] 
  /// * [pair] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapLiquidityPositionDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapLiquidityPositionDTO>>> sushiswapGetLiquidityPositionsHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? user,
    String? pair,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/liquiditypositions/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (user != null) r'user': encodeQueryParameter(_serializers, user, const FullType(String)),
      if (pair != null) r'pair': encodeQueryParameter(_serializers, pair, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapLiquidityPositionDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapLiquidityPositionDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapLiquidityPositionDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapLiquidityPositionDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Mints (historical) 🔥
  /// Gets mints.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [pair] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapMintDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapMintDTO>>> sushiswapGetMintsHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pair,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/mints/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pair != null) r'pair': encodeQueryParameter(_serializers, pair, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapMintDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapMintDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapMintDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapMintDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PairDayDatas (historical) 🔥
  /// Gets pairdaydatas.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [pair] 
  /// * [token0] 
  /// * [token1] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapPairDayDataDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapPairDayDataDTO>>> sushiswapGetPairDayDatasHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pair,
    String? token0,
    String? token1,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/pairdaydatas/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pair != null) r'pair': encodeQueryParameter(_serializers, pair, const FullType(String)),
      if (token0 != null) r'token_0': encodeQueryParameter(_serializers, token0, const FullType(String)),
      if (token1 != null) r'token_1': encodeQueryParameter(_serializers, token1, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapPairDayDataDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapPairDayDataDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapPairDayDataDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapPairDayDataDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// PairHourDatas (historical) 🔥
  /// Gets pairhourdatas.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [pair] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapPairHourDataDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapPairHourDataDTO>>> sushiswapGetPairHourDatasHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pair,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/pairhourdatas/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pair != null) r'pair': encodeQueryParameter(_serializers, pair, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapPairHourDataDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapPairHourDataDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapPairHourDataDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapPairHourDataDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Pairs (historical) 🔥
  /// Gets pairs.
  ///
  /// Parameters:
  /// * [startBlock] 
  /// * [endBlock] 
  /// * [startDate] 
  /// * [endDate] 
  /// * [id] 
  /// * [name] 
  /// * [token0] 
  /// * [token1] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapPairDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapPairDTO>>> sushiswapGetPairsHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? name,
    String? token0,
    String? token1,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/pairs/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
      if (token0 != null) r'token_0': encodeQueryParameter(_serializers, token0, const FullType(String)),
      if (token1 != null) r'token_1': encodeQueryParameter(_serializers, token1, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapPairDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapPairDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapPairDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapPairDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Pools (current) 🔥
  /// Gets pools.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapPairDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapPairDTO>>> sushiswapGetPoolsCurrent({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/pools/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapPairDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapPairDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapPairDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapPairDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Swaps (current) 🔥
  /// Gets swaps.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapSwapDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapSwapDTO>>> sushiswapGetSwapsCurrent({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/swaps/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapSwapDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapSwapDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapSwapDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapSwapDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Swaps (historical) 🔥
  /// Gets swaps.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Transaction hash plus index in Transaction swap array.
  /// * [pair] - Reference to pair.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapSwapDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapSwapDTO>>> sushiswapGetSwapsHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? pair,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/swaps/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (pair != null) r'pair': encodeQueryParameter(_serializers, pair, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapSwapDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapSwapDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapSwapDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapSwapDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TokenDayDatas (historical) 🔥
  /// Gets tokendaydatas.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Identifier, day start timestamp in unix / 86400.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapTokenDayDataDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapTokenDayDataDTO>>> sushiswapGetTokenDayDatasHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/tokendaydatas/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapTokenDayDataDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapTokenDayDataDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapTokenDayDataDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapTokenDayDataDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Tokens (current) 🔥
  /// Gets tokens.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapTokenDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapTokenDTO>>> sushiswapGetTokensCurrent({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/tokens/current';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapTokenDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapTokenDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapTokenDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapTokenDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Tokens (historical) 🔥
  /// Gets tokens.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Token address.
  /// * [symbol] - Token symbol.
  /// * [name] - Token name.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapTokenDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapTokenDTO>>> sushiswapGetTokensHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    String? symbol,
    String? name,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/tokens/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (symbol != null) r'symbol': encodeQueryParameter(_serializers, symbol, const FullType(String)),
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapTokenDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapTokenDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapTokenDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapTokenDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Transactions (historical) 🔥
  /// Gets transactions.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - Ethereum transaction hash.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapTransactionDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapTransactionDTO>>> sushiswapGetTransactionsHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/transactions/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapTransactionDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapTransactionDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapTransactionDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapTransactionDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Users (historical) 🔥
  /// Gets users.
  ///
  /// Parameters:
  /// * [startBlock] - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  /// * [endBlock] - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  /// * [startDate] - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  /// * [endDate] - The end date of timeframe.
  /// * [id] - User address.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SushiswapUserDTO>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<SushiswapUserDTO>>> sushiswapGetUsersHistorical({ 
    int? startBlock,
    int? endBlock,
    DateTime? startDate,
    DateTime? endDate,
    String? id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dapps/sushiswap/users/historical';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (startBlock != null) r'startBlock': encodeQueryParameter(_serializers, startBlock, const FullType(int)),
      if (endBlock != null) r'endBlock': encodeQueryParameter(_serializers, endBlock, const FullType(int)),
      if (startDate != null) r'startDate': encodeQueryParameter(_serializers, startDate, const FullType(DateTime)),
      if (endDate != null) r'endDate': encodeQueryParameter(_serializers, endDate, const FullType(DateTime)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SushiswapUserDTO> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(SushiswapUserDTO)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<SushiswapUserDTO>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<SushiswapUserDTO>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
