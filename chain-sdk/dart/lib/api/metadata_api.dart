//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MetadataApi {
  MetadataApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all chains.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> metadataChainsGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/metadata/chains';

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

  /// List all chains.
  Future<void> metadataChainsGet() async {
    final response = await metadataChainsGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Gets dapp by name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dappName (required):
  ///   
  Future<Response> metadataDappsDappNameGetWithHttpInfo(String dappName,) async {
    // ignore: prefer_const_declarations
    final path = r'/metadata/dapps/{dappName}'
      .replaceAll('{dappName}', dappName);

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

  /// Gets dapp by name.
  ///
  /// Parameters:
  ///
  /// * [String] dappName (required):
  ///   
  Future<void> metadataDappsDappNameGet(String dappName,) async {
    final response = await metadataDappsDappNameGetWithHttpInfo(dappName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all decentralized applications.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> metadataDappsGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/metadata/dapps';

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

  /// List all decentralized applications.
  Future<void> metadataDappsGet() async {
    final response = await metadataDappsGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
