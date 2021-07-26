//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/message_reject.dart';
import 'package:openapi/model/position.dart';

class PositionsApi {

  final Dio _dio;

  final Serializers _serializers;

  const PositionsApi(this._dio, this._serializers);

  /// Get open positions
  ///
  /// Get current open positions across all or single exchange.
  Future<Response<BuiltList<Position>>> v1PositionsGet({ 
    String exchangeId,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/v1/positions',
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      queryParameters: <String, dynamic>{
        if (exchangeId != null) r'exchange_id': exchangeId,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    final _response = await _dio.request<dynamic>(
      _request.path,
      data: _bodyData,
      options: _request,
    );

    const _responseType = FullType(BuiltList, [FullType(Position)]);
    final BuiltList<Position> _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as BuiltList<Position>;

    return Response<BuiltList<Position>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      request: _response.request,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
