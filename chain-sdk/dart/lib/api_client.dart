//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://onchain.coinapi.io', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType, {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'CRYPTOPUNKSBidDTO':
          return CRYPTOPUNKSBidDTO.fromJson(value);
        case 'CRYPTOPUNKSCollectionDTO':
          return CRYPTOPUNKSCollectionDTO.fromJson(value);
        case 'CRYPTOPUNKSCollectionDailySnapshotDTO':
          return CRYPTOPUNKSCollectionDailySnapshotDTO.fromJson(value);
        case 'CRYPTOPUNKSDataSourcesDTO':
          return CRYPTOPUNKSDataSourcesDTO.fromJson(value);
        case 'CRYPTOPUNKSItemDTO':
          return CRYPTOPUNKSItemDTO.fromJson(value);
        case 'CRYPTOPUNKSMarketPlaceDTO':
          return CRYPTOPUNKSMarketPlaceDTO.fromJson(value);
        case 'CRYPTOPUNKSMarketplaceDailySnapshotDTO':
          return CRYPTOPUNKSMarketplaceDailySnapshotDTO.fromJson(value);
        case 'CRYPTOPUNKSTradeDTO':
          return CRYPTOPUNKSTradeDTO.fromJson(value);
        case 'CRYPTOPUNKSUserDTO':
          return CRYPTOPUNKSUserDTO.fromJson(value);
        case 'CowOrderDTO':
          return CowOrderDTO.fromJson(value);
        case 'CowSettlementDTO':
          return CowSettlementDTO.fromJson(value);
        case 'CowTokenDTO':
          return CowTokenDTO.fromJson(value);
        case 'CowTradeDTO':
          return CowTradeDTO.fromJson(value);
        case 'CowUserDTO':
          return CowUserDTO.fromJson(value);
        case 'CurveAccountDTO':
          return CurveAccountDTO.fromJson(value);
        case 'CurveAddLiquidityEventDTO':
          return CurveAddLiquidityEventDTO.fromJson(value);
        case 'CurveAdminFeeChangeLogDTO':
          return CurveAdminFeeChangeLogDTO.fromJson(value);
        case 'CurveAmplificationCoeffChangeLogDTO':
          return CurveAmplificationCoeffChangeLogDTO.fromJson(value);
        case 'CurveCoinDTO':
          return CurveCoinDTO.fromJson(value);
        case 'CurveContractDTO':
          return CurveContractDTO.fromJson(value);
        case 'CurveContractVersionDTO':
          return CurveContractVersionDTO.fromJson(value);
        case 'CurveDailyVolumeDTO':
          return CurveDailyVolumeDTO.fromJson(value);
        case 'CurveExchangeDTO':
          return CurveExchangeDTO.fromJson(value);
        case 'CurveFeeChangeLogDTO':
          return CurveFeeChangeLogDTO.fromJson(value);
        case 'CurveGaugeDTO':
          return CurveGaugeDTO.fromJson(value);
        case 'CurveGaugeDepositDTO':
          return CurveGaugeDepositDTO.fromJson(value);
        case 'CurveGaugeLiquidityDTO':
          return CurveGaugeLiquidityDTO.fromJson(value);
        case 'CurveGaugeTotalWeightDTO':
          return CurveGaugeTotalWeightDTO.fromJson(value);
        case 'CurveGaugeTypeDTO':
          return CurveGaugeTypeDTO.fromJson(value);
        case 'CurveGaugeTypeWeightDTO':
          return CurveGaugeTypeWeightDTO.fromJson(value);
        case 'CurveGaugeWeightDTO':
          return CurveGaugeWeightDTO.fromJson(value);
        case 'CurveGaugeWeightVoteDTO':
          return CurveGaugeWeightVoteDTO.fromJson(value);
        case 'CurveGaugeWithdrawDTO':
          return CurveGaugeWithdrawDTO.fromJson(value);
        case 'CurveHourlyVolumeDTO':
          return CurveHourlyVolumeDTO.fromJson(value);
        case 'CurveLpTokenDTO':
          return CurveLpTokenDTO.fromJson(value);
        case 'CurvePoolDTO':
          return CurvePoolDTO.fromJson(value);
        case 'CurveProposalDTO':
          return CurveProposalDTO.fromJson(value);
        case 'CurveProposalVoteDTO':
          return CurveProposalVoteDTO.fromJson(value);
        case 'CurveRemoveLiquidityEventDTO':
          return CurveRemoveLiquidityEventDTO.fromJson(value);
        case 'CurveRemoveLiquidityOneEventDTO':
          return CurveRemoveLiquidityOneEventDTO.fromJson(value);
        case 'CurveSystemStateDTO':
          return CurveSystemStateDTO.fromJson(value);
        case 'CurveTokenDTO':
          return CurveTokenDTO.fromJson(value);
        case 'CurveTransferOwnershipEventDTO':
          return CurveTransferOwnershipEventDTO.fromJson(value);
        case 'CurveUnderlyingCoinDTO':
          return CurveUnderlyingCoinDTO.fromJson(value);
        case 'CurveVotingAppDTO':
          return CurveVotingAppDTO.fromJson(value);
        case 'CurveWeeklyVolumeDTO':
          return CurveWeeklyVolumeDTO.fromJson(value);
        case 'DexBatchDTO':
          return DexBatchDTO.fromJson(value);
        case 'DexDepositDTO':
          return DexDepositDTO.fromJson(value);
        case 'DexOrderDTO':
          return DexOrderDTO.fromJson(value);
        case 'DexPriceDTO':
          return DexPriceDTO.fromJson(value);
        case 'DexSolutionDTO':
          return DexSolutionDTO.fromJson(value);
        case 'DexStatsDTO':
          return DexStatsDTO.fromJson(value);
        case 'DexTokenDTO':
          return DexTokenDTO.fromJson(value);
        case 'DexTradeDTO':
          return DexTradeDTO.fromJson(value);
        case 'DexUserDTO':
          return DexUserDTO.fromJson(value);
        case 'DexWithdrawDTO':
          return DexWithdrawDTO.fromJson(value);
        case 'DexWithdrawRequestDTO':
          return DexWithdrawRequestDTO.fromJson(value);
        case 'NumericsBigInteger':
          return NumericsBigInteger.fromJson(value);
        case 'SushiswapBundleDTO':
          return SushiswapBundleDTO.fromJson(value);
        case 'SushiswapBurnDTO':
          return SushiswapBurnDTO.fromJson(value);
        case 'SushiswapDayDataDTO':
          return SushiswapDayDataDTO.fromJson(value);
        case 'SushiswapFactoryDTO':
          return SushiswapFactoryDTO.fromJson(value);
        case 'SushiswapHourDataDTO':
          return SushiswapHourDataDTO.fromJson(value);
        case 'SushiswapLiquidityPositionDTO':
          return SushiswapLiquidityPositionDTO.fromJson(value);
        case 'SushiswapLiquidityPositionSnapshotDTO':
          return SushiswapLiquidityPositionSnapshotDTO.fromJson(value);
        case 'SushiswapMintDTO':
          return SushiswapMintDTO.fromJson(value);
        case 'SushiswapPairDTO':
          return SushiswapPairDTO.fromJson(value);
        case 'SushiswapPairDayDataDTO':
          return SushiswapPairDayDataDTO.fromJson(value);
        case 'SushiswapPairHourDataDTO':
          return SushiswapPairHourDataDTO.fromJson(value);
        case 'SushiswapSwapDTO':
          return SushiswapSwapDTO.fromJson(value);
        case 'SushiswapTokenDTO':
          return SushiswapTokenDTO.fromJson(value);
        case 'SushiswapTokenDayDataDTO':
          return SushiswapTokenDayDataDTO.fromJson(value);
        case 'SushiswapTransactionDTO':
          return SushiswapTransactionDTO.fromJson(value);
        case 'SushiswapUserDTO':
          return SushiswapUserDTO.fromJson(value);
        case 'TransactionsETradeAggressiveSide':
          return TransactionsETradeAggressiveSideTypeTransformer().decode(value);
        case 'UniswapV2BundleDTO':
          return UniswapV2BundleDTO.fromJson(value);
        case 'UniswapV2BurnDTO':
          return UniswapV2BurnDTO.fromJson(value);
        case 'UniswapV2LiquidityPositionDTO':
          return UniswapV2LiquidityPositionDTO.fromJson(value);
        case 'UniswapV2LiquidityPositionSnapshotDTO':
          return UniswapV2LiquidityPositionSnapshotDTO.fromJson(value);
        case 'UniswapV2MintDTO':
          return UniswapV2MintDTO.fromJson(value);
        case 'UniswapV2PairDTO':
          return UniswapV2PairDTO.fromJson(value);
        case 'UniswapV2PairDayDataDTO':
          return UniswapV2PairDayDataDTO.fromJson(value);
        case 'UniswapV2PairHourDataDTO':
          return UniswapV2PairHourDataDTO.fromJson(value);
        case 'UniswapV2SwapDTO':
          return UniswapV2SwapDTO.fromJson(value);
        case 'UniswapV2TokenDTO':
          return UniswapV2TokenDTO.fromJson(value);
        case 'UniswapV2TokenDayDataDTO':
          return UniswapV2TokenDayDataDTO.fromJson(value);
        case 'UniswapV2TransactionDTO':
          return UniswapV2TransactionDTO.fromJson(value);
        case 'UniswapV2UniswapDayDataDTO':
          return UniswapV2UniswapDayDataDTO.fromJson(value);
        case 'UniswapV2UniswapFactoryDTO':
          return UniswapV2UniswapFactoryDTO.fromJson(value);
        case 'UniswapV2UserDTO':
          return UniswapV2UserDTO.fromJson(value);
        case 'UniswapV3BundleDTO':
          return UniswapV3BundleDTO.fromJson(value);
        case 'UniswapV3BurnDTO':
          return UniswapV3BurnDTO.fromJson(value);
        case 'UniswapV3FactoryDTO':
          return UniswapV3FactoryDTO.fromJson(value);
        case 'UniswapV3MintDTO':
          return UniswapV3MintDTO.fromJson(value);
        case 'UniswapV3PoolDTO':
          return UniswapV3PoolDTO.fromJson(value);
        case 'UniswapV3PoolDayDataDTO':
          return UniswapV3PoolDayDataDTO.fromJson(value);
        case 'UniswapV3PoolHourDataDTO':
          return UniswapV3PoolHourDataDTO.fromJson(value);
        case 'UniswapV3PositionDTO':
          return UniswapV3PositionDTO.fromJson(value);
        case 'UniswapV3PositionSnapshotDTO':
          return UniswapV3PositionSnapshotDTO.fromJson(value);
        case 'UniswapV3SwapDTO':
          return UniswapV3SwapDTO.fromJson(value);
        case 'UniswapV3TickDTO':
          return UniswapV3TickDTO.fromJson(value);
        case 'UniswapV3TickDayDataDTO':
          return UniswapV3TickDayDataDTO.fromJson(value);
        case 'UniswapV3TokenDTO':
          return UniswapV3TokenDTO.fromJson(value);
        case 'UniswapV3TokenHourDataDTO':
          return UniswapV3TokenHourDataDTO.fromJson(value);
        case 'UniswapV3TokenV3DayDataDTO':
          return UniswapV3TokenV3DayDataDTO.fromJson(value);
        case 'UniswapV3TransactionDTO':
          return UniswapV3TransactionDTO.fromJson(value);
        case 'UniswapV3UniswapDayDataDTO':
          return UniswapV3UniswapDayDataDTO.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
