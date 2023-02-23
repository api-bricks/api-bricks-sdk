//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrdersApi {
  OrdersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel all orders request
  ///
  /// This request cancels all open orders on single specified exchange.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderCancelAllRequest] orderCancelAllRequest (required):
  ///   OrderCancelAllRequest object.
  Future<Response> v1OrdersCancelAllPostWithHttpInfo(OrderCancelAllRequest orderCancelAllRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders/cancel/all';

    // ignore: prefer_final_locals
    Object? postBody = orderCancelAllRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Cancel all orders request
  ///
  /// This request cancels all open orders on single specified exchange.
  ///
  /// Parameters:
  ///
  /// * [OrderCancelAllRequest] orderCancelAllRequest (required):
  ///   OrderCancelAllRequest object.
  Future<MessageReject?> v1OrdersCancelAllPost(OrderCancelAllRequest orderCancelAllRequest,) async {
    final response = await v1OrdersCancelAllPostWithHttpInfo(orderCancelAllRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageReject',) as MessageReject;
    
    }
    return null;
  }

  /// Cancel order request
  ///
  /// Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderCancelSingleRequest] orderCancelSingleRequest (required):
  ///   OrderCancelSingleRequest object.
  Future<Response> v1OrdersCancelPostWithHttpInfo(OrderCancelSingleRequest orderCancelSingleRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders/cancel';

    // ignore: prefer_final_locals
    Object? postBody = orderCancelSingleRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Cancel order request
  ///
  /// Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
  ///
  /// Parameters:
  ///
  /// * [OrderCancelSingleRequest] orderCancelSingleRequest (required):
  ///   OrderCancelSingleRequest object.
  Future<OrderExecutionReport?> v1OrdersCancelPost(OrderCancelSingleRequest orderCancelSingleRequest,) async {
    final response = await v1OrdersCancelPostWithHttpInfo(orderCancelSingleRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderExecutionReport',) as OrderExecutionReport;
    
    }
    return null;
  }

  /// Get open orders
  ///
  /// Get last execution reports for open orders across all or single exchange.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId:
  ///   Filter the open orders to the specific exchange.
  Future<Response> v1OrdersGetWithHttpInfo({ String? exchangeId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (exchangeId != null) {
      queryParams.addAll(_queryParams('', 'exchange_id', exchangeId));
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

  /// Get open orders
  ///
  /// Get last execution reports for open orders across all or single exchange.
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId:
  ///   Filter the open orders to the specific exchange.
  Future<List<OrderExecutionReport>?> v1OrdersGet({ String? exchangeId, }) async {
    final response = await v1OrdersGetWithHttpInfo( exchangeId: exchangeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderExecutionReport>') as List)
        .cast<OrderExecutionReport>()
        .toList();

    }
    return null;
  }

  /// History of order changes
  ///
  /// Based on the date range, all changes registered in the orderbook.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] timeStart (required):
  ///   Start date
  ///
  /// * [String] timeEnd (required):
  ///   End date
  Future<Response> v1OrdersHistoryTimeStartTimeEndGetWithHttpInfo(String timeStart, String timeEnd,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders/history/{time_start}/{time_end}'
      .replaceAll('{time_start}', timeStart)
      .replaceAll('{time_end}', timeEnd);

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

  /// History of order changes
  ///
  /// Based on the date range, all changes registered in the orderbook.
  ///
  /// Parameters:
  ///
  /// * [String] timeStart (required):
  ///   Start date
  ///
  /// * [String] timeEnd (required):
  ///   End date
  Future<List<OrderHistory>?> v1OrdersHistoryTimeStartTimeEndGet(String timeStart, String timeEnd,) async {
    final response = await v1OrdersHistoryTimeStartTimeEndGetWithHttpInfo(timeStart, timeEnd,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderHistory>') as List)
        .cast<OrderHistory>()
        .toList();

    }
    return null;
  }

  /// Send new order
  ///
  /// This request creating new order for the specific exchange.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderNewSingleRequest] orderNewSingleRequest (required):
  ///   OrderNewSingleRequest object.
  Future<Response> v1OrdersPostWithHttpInfo(OrderNewSingleRequest orderNewSingleRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders';

    // ignore: prefer_final_locals
    Object? postBody = orderNewSingleRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Send new order
  ///
  /// This request creating new order for the specific exchange.
  ///
  /// Parameters:
  ///
  /// * [OrderNewSingleRequest] orderNewSingleRequest (required):
  ///   OrderNewSingleRequest object.
  Future<OrderExecutionReport?> v1OrdersPost(OrderNewSingleRequest orderNewSingleRequest,) async {
    final response = await v1OrdersPostWithHttpInfo(orderNewSingleRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderExecutionReport',) as OrderExecutionReport;
    
    }
    return null;
  }

  /// Get order execution report
  ///
  /// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientOrderId (required):
  ///   The unique identifier of the order assigned by the client.
  Future<Response> v1OrdersStatusClientOrderIdGetWithHttpInfo(String clientOrderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orders/status/{client_order_id}'
      .replaceAll('{client_order_id}', clientOrderId);

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

  /// Get order execution report
  ///
  /// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
  ///
  /// Parameters:
  ///
  /// * [String] clientOrderId (required):
  ///   The unique identifier of the order assigned by the client.
  Future<OrderExecutionReport?> v1OrdersStatusClientOrderIdGet(String clientOrderId,) async {
    final response = await v1OrdersStatusClientOrderIdGetWithHttpInfo(clientOrderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderExecutionReport',) as OrderExecutionReport;
    
    }
    return null;
  }
}
