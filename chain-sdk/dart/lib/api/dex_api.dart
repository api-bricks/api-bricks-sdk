//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DexApi {
  DexApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Batches (current)
  ///
  /// Gets batches.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexBatchesCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/batches/current';

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
    );
  }

  /// Batches (current)
  ///
  /// Gets batches.
  Future<List<DexBatchDTO>?> dexBatchesCurrent() async {
    final response = await dexBatchesCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexBatchDTO>') as List)
        .cast<DexBatchDTO>()
        .toList();

    }
    return null;
  }

  /// Deposits (current)
  ///
  /// Gets deposits.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexDepositsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/deposits/current';

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
    );
  }

  /// Deposits (current)
  ///
  /// Gets deposits.
  Future<List<DexDepositDTO>?> dexDepositsCurrent() async {
    final response = await dexDepositsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexDepositDTO>') as List)
        .cast<DexDepositDTO>()
        .toList();

    }
    return null;
  }

  /// Batches (historical)
  ///
  /// Gets batches.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier.
  Future<Response> dexGetBatchesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/batches/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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
    );
  }

  /// Batches (historical)
  ///
  /// Gets batches.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier.
  Future<List<DexBatchDTO>?> dexGetBatchesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetBatchesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexBatchDTO>') as List)
        .cast<DexBatchDTO>()
        .toList();

    }
    return null;
  }

  /// Deposits (historical)
  ///
  /// Gets deposits.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (transaction hash)-(token id).
  ///
  /// * [String] user:
  ///   User address.
  Future<Response> dexGetDepositsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/deposits/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
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
    );
  }

  /// Deposits (historical)
  ///
  /// Gets deposits.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (transaction hash)-(token id).
  ///
  /// * [String] user:
  ///   User address.
  Future<List<DexDepositDTO>?> dexGetDepositsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    final response = await dexGetDepositsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexDepositDTO>') as List)
        .cast<DexDepositDTO>()
        .toList();

    }
    return null;
  }

  /// Orders (historical)
  ///
  /// Gets orders.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (owner address)-(order id)
  ///
  /// * [String] buyToken:
  ///   Identifier of token that was bought.
  ///
  /// * [String] sellToken:
  ///   Identifier of token that was sold.
  Future<Response> dexGetOrdersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? buyToken, String? sellToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/orders/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (buyToken != null) {
      queryParams.addAll(_queryParams('', 'buy_token', buyToken));
    }
    if (sellToken != null) {
      queryParams.addAll(_queryParams('', 'sell_token', sellToken));
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
    );
  }

  /// Orders (historical)
  ///
  /// Gets orders.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (owner address)-(order id)
  ///
  /// * [String] buyToken:
  ///   Identifier of token that was bought.
  ///
  /// * [String] sellToken:
  ///   Identifier of token that was sold.
  Future<List<DexOrderDTO>?> dexGetOrdersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? buyToken, String? sellToken, }) async {
    final response = await dexGetOrdersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, buyToken: buyToken, sellToken: sellToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexOrderDTO>') as List)
        .cast<DexOrderDTO>()
        .toList();

    }
    return null;
  }

  /// Prices (historical)
  ///
  /// Gets prices.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (token id)-(batch id).
  Future<Response> dexGetPricesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/prices/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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
    );
  }

  /// Prices (historical)
  ///
  /// Gets prices.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (token id)-(batch id).
  Future<List<DexPriceDTO>?> dexGetPricesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetPricesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexPriceDTO>') as List)
        .cast<DexPriceDTO>()
        .toList();

    }
    return null;
  }

  /// Solutions (historical)
  ///
  /// Gets solutions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<Response> dexGetSolutionsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/solutions/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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
    );
  }

  /// Solutions (historical)
  ///
  /// Gets solutions.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<List<DexSolutionDTO>?> dexGetSolutionsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetSolutionsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexSolutionDTO>') as List)
        .cast<DexSolutionDTO>()
        .toList();

    }
    return null;
  }

  /// Stats (historical)
  ///
  /// Gets stats.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<Response> dexGetStatsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/stats/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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
    );
  }

  /// Stats (historical)
  ///
  /// Gets stats.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<List<DexStatsDTO>?> dexGetStatsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetStatsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexStatsDTO>') as List)
        .cast<DexStatsDTO>()
        .toList();

    }
    return null;
  }

  /// Tokens (historical)
  ///
  /// Gets tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] address:
  ///   
  ///
  /// * [String] symbol:
  ///   
  ///
  /// * [String] name:
  ///   
  Future<Response> dexGetTokensHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? address, String? symbol, String? name, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/tokens/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (address != null) {
      queryParams.addAll(_queryParams('', 'address', address));
    }
    if (symbol != null) {
      queryParams.addAll(_queryParams('', 'symbol', symbol));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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
    );
  }

  /// Tokens (historical)
  ///
  /// Gets tokens.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] address:
  ///   
  ///
  /// * [String] symbol:
  ///   
  ///
  /// * [String] name:
  ///   
  Future<List<DexTokenDTO>?> dexGetTokensHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? address, String? symbol, String? name, }) async {
    final response = await dexGetTokensHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, address: address, symbol: symbol, name: name, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexTokenDTO>') as List)
        .cast<DexTokenDTO>()
        .toList();

    }
    return null;
  }

  /// Trades (historical)
  ///
  /// Gets trades.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] buyToken:
  ///   
  ///
  /// * [String] sellToken:
  ///   
  Future<Response> dexGetTradesHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? buyToken, String? sellToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/trades/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (buyToken != null) {
      queryParams.addAll(_queryParams('', 'buy_token', buyToken));
    }
    if (sellToken != null) {
      queryParams.addAll(_queryParams('', 'sell_token', sellToken));
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
    );
  }

  /// Trades (historical)
  ///
  /// Gets trades.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] buyToken:
  ///   
  ///
  /// * [String] sellToken:
  ///   
  Future<List<DexTradeDTO>?> dexGetTradesHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? buyToken, String? sellToken, }) async {
    final response = await dexGetTradesHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, buyToken: buyToken, sellToken: sellToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexTradeDTO>') as List)
        .cast<DexTradeDTO>()
        .toList();

    }
    return null;
  }

  /// Users (historical)
  ///
  /// Gets users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<Response> dexGetUsersHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/users/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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
    );
  }

  /// Users (historical)
  ///
  /// Gets users.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   
  Future<List<DexUserDTO>?> dexGetUsersHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, }) async {
    final response = await dexGetUsersHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexUserDTO>') as List)
        .cast<DexUserDTO>()
        .toList();

    }
    return null;
  }

  /// WithdrawRequests (historical)
  ///
  /// Gets withdrawRequests.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (transaction hash)-(id).
  ///
  /// * [String] user:
  ///   
  Future<Response> dexGetWithdrawRequestsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/withdrawRequests/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
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
    );
  }

  /// WithdrawRequests (historical)
  ///
  /// Gets withdrawRequests.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (transaction hash)-(id).
  ///
  /// * [String] user:
  ///   
  Future<List<DexWithdrawRequestDTO>?> dexGetWithdrawRequestsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    final response = await dexGetWithdrawRequestsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexWithdrawRequestDTO>') as List)
        .cast<DexWithdrawRequestDTO>()
        .toList();

    }
    return null;
  }

  /// Withdraws (historical)
  ///
  /// Gets withdraws.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (transaction hash)-(id).
  ///
  /// * [String] user:
  ///   
  Future<Response> dexGetWithdrawsHistoricalWithHttpInfo({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/withdraws/historical';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startBlock != null) {
      queryParams.addAll(_queryParams('', 'startBlock', startBlock));
    }
    if (endBlock != null) {
      queryParams.addAll(_queryParams('', 'endBlock', endBlock));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
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
    );
  }

  /// Withdraws (historical)
  ///
  /// Gets withdraws.
  ///
  /// Parameters:
  ///
  /// * [int] startBlock:
  ///   The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  ///
  /// * [int] endBlock:
  ///   The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  ///
  /// * [DateTime] startDate:
  ///   The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  ///
  /// * [DateTime] endDate:
  ///   The end date of timeframe.
  ///
  /// * [String] id:
  ///   Identifier, format: (transaction hash)-(id).
  ///
  /// * [String] user:
  ///   
  Future<List<DexWithdrawDTO>?> dexGetWithdrawsHistorical({ int? startBlock, int? endBlock, DateTime? startDate, DateTime? endDate, String? id, String? user, }) async {
    final response = await dexGetWithdrawsHistoricalWithHttpInfo( startBlock: startBlock, endBlock: endBlock, startDate: startDate, endDate: endDate, id: id, user: user, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexWithdrawDTO>') as List)
        .cast<DexWithdrawDTO>()
        .toList();

    }
    return null;
  }

  /// Orders (current)
  ///
  /// Gets orders.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexOrdersCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/orders/current';

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
    );
  }

  /// Orders (current)
  ///
  /// Gets orders.
  Future<List<DexOrderDTO>?> dexOrdersCurrent() async {
    final response = await dexOrdersCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexOrderDTO>') as List)
        .cast<DexOrderDTO>()
        .toList();

    }
    return null;
  }

  /// Prices (current)
  ///
  /// Gets prices.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexPricesCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/prices/current';

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
    );
  }

  /// Prices (current)
  ///
  /// Gets prices.
  Future<List<DexPriceDTO>?> dexPricesCurrent() async {
    final response = await dexPricesCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexPriceDTO>') as List)
        .cast<DexPriceDTO>()
        .toList();

    }
    return null;
  }

  /// Solutions (current)
  ///
  /// Gets solutions.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexSolutionsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/solutions/current';

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
    );
  }

  /// Solutions (current)
  ///
  /// Gets solutions.
  Future<List<DexSolutionDTO>?> dexSolutionsCurrent() async {
    final response = await dexSolutionsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexSolutionDTO>') as List)
        .cast<DexSolutionDTO>()
        .toList();

    }
    return null;
  }

  /// Stats (current)
  ///
  /// Gets stats.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexStatsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/stats/current';

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
    );
  }

  /// Stats (current)
  ///
  /// Gets stats.
  Future<List<DexStatsDTO>?> dexStatsCurrent() async {
    final response = await dexStatsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexStatsDTO>') as List)
        .cast<DexStatsDTO>()
        .toList();

    }
    return null;
  }

  /// Tokens (current)
  ///
  /// Gets tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexTokensCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/tokens/current';

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
    );
  }

  /// Tokens (current)
  ///
  /// Gets tokens.
  Future<List<DexTokenDTO>?> dexTokensCurrent() async {
    final response = await dexTokensCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexTokenDTO>') as List)
        .cast<DexTokenDTO>()
        .toList();

    }
    return null;
  }

  /// Trades (current)
  ///
  /// Gets trades.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexTradesCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/trades/current';

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
    );
  }

  /// Trades (current)
  ///
  /// Gets trades.
  Future<List<DexTradeDTO>?> dexTradesCurrent() async {
    final response = await dexTradesCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexTradeDTO>') as List)
        .cast<DexTradeDTO>()
        .toList();

    }
    return null;
  }

  /// Users (current)
  ///
  /// Gets users.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexUsersCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/users/current';

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
    );
  }

  /// Users (current)
  ///
  /// Gets users.
  Future<List<DexUserDTO>?> dexUsersCurrent() async {
    final response = await dexUsersCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexUserDTO>') as List)
        .cast<DexUserDTO>()
        .toList();

    }
    return null;
  }

  /// WithdrawRequests (current)
  ///
  /// Gets withdrawRequests.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexWithdrawRequestsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/withdrawRequests/current';

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
    );
  }

  /// WithdrawRequests (current)
  ///
  /// Gets withdrawRequests.
  Future<List<DexWithdrawRequestDTO>?> dexWithdrawRequestsCurrent() async {
    final response = await dexWithdrawRequestsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexWithdrawRequestDTO>') as List)
        .cast<DexWithdrawRequestDTO>()
        .toList();

    }
    return null;
  }

  /// Withdraws (current)
  ///
  /// Gets withdraws.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dexWithdrawsCurrentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/dapps/dex/withdraws/current';

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
    );
  }

  /// Withdraws (current)
  ///
  /// Gets withdraws.
  Future<List<DexWithdrawDTO>?> dexWithdrawsCurrent() async {
    final response = await dexWithdrawsCurrentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DexWithdrawDTO>') as List)
        .cast<DexWithdrawDTO>()
        .toList();

    }
    return null;
  }
}
