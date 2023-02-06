import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MetadataApi
void main() {
  final instance = Openapi().getMetadataApi();

  group(MetadataApi, () {
    // List all chains.
    //
    //Future metadataChainsGet() async
    test('test metadataChainsGet', () async {
      // TODO
    });

    // List all decentralized applications.
    //
    //Future metadataDappsGet() async
    test('test metadataDappsGet', () async {
      // TODO
    });

  });
}
