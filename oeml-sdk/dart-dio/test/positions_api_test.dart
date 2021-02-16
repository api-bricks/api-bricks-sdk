import 'package:openapi/api.dart';
import 'package:openapi/api/positions_api.dart';
import 'package:test/test.dart';


/// tests for PositionsApi
void main() {
  final instance = Openapi().getPositionsApi();

  group(PositionsApi, () {
    // Get open positions
    //
    // Get current open positions across all or single exchange.
    //
    //Future<BuiltList<Position>> v1PositionsGet({ String exchangeId }) async
    test('test v1PositionsGet', () async {
      // TODO
    });

  });
}
