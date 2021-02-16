import 'package:openapi/api.dart';
import 'package:openapi/api/balances_api.dart';
import 'package:test/test.dart';


/// tests for BalancesApi
void main() {
  final instance = Openapi().getBalancesApi();

  group(BalancesApi, () {
    // Get balances
    //
    // Get current currency balance from all or single exchange.
    //
    //Future<BuiltList<Balance>> v1BalancesGet({ String exchangeId }) async
    test('test v1BalancesGet', () async {
      // TODO
    });

  });
}
