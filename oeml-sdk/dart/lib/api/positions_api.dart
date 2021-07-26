//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PositionsApi {
  PositionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get open positions
  ///
  /// Get current open positions across all or single exchange.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId:
  ///   Filter the balances to the specific exchange.
  Future<Response> v1PositionsGetWithHttpInfo({ String exchangeId }) async {
    // Verify required params are set.

    final path = r'/v1/positions';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (exchangeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'exchange_id', exchangeId));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get open positions
  ///
  /// Get current open positions across all or single exchange.
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId:
  ///   Filter the balances to the specific exchange.
  Future<List<Position>> v1PositionsGet({ String exchangeId }) async {
    final response = await v1PositionsGetWithHttpInfo( exchangeId: exchangeId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<Position>') as List)
        .cast<Position>()
        .toList(growable: false);
    }
    return Future<List<Position>>.value(null);
  }
}
