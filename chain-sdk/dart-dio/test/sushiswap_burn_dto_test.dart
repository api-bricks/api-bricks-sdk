import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for SushiswapBurnDTO
void main() {
  final instance = SushiswapBurnDTOBuilder();
  // TODO add properties to the builder and call build()

  group(SushiswapBurnDTO, () {
    // DateTime entryTime
    test('to test the property `entryTime`', () async {
      // TODO
    });

    // DateTime recvTime
    test('to test the property `recvTime`', () async {
      // TODO
    });

    // Number of block in which entity was recorded.
    // int blockNumber
    test('to test the property `blockNumber`', () async {
      // TODO
    });

    // Identifier, format: (transaction id):(transaction.burns.length).
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Reference to the transaction Burn was included in.
    // String transaction
    test('to test the property `transaction`', () async {
      // TODO
    });

    // Timestamp of Burn, used to sort recent liquidity removals.
    // String timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Reference to pair.
    // String pair
    test('to test the property `pair`', () async {
      // TODO
    });

    // Amount of liquidity tokens burned.
    // String liquidity
    test('to test the property `liquidity`', () async {
      // TODO
    });

    // Address that initiated the liquidity removal.
    // String sender
    test('to test the property `sender`', () async {
      // TODO
    });

    // Amount of token0 removed.
    // String amount0
    test('to test the property `amount0`', () async {
      // TODO
    });

    // Amount of token1 removed.
    // String amount1
    test('to test the property `amount1`', () async {
      // TODO
    });

    // Recipient of tokens.
    // String to
    test('to test the property `to`', () async {
      // TODO
    });

    // Index in the transaction event was emitted.
    // String logIndex
    test('to test the property `logIndex`', () async {
      // TODO
    });

    // Derived amount based on available prices of tokens.
    // String amountUsd
    test('to test the property `amountUsd`', () async {
      // TODO
    });

    // 
    // bool complete
    test('to test the property `complete`', () async {
      // TODO
    });

    // Address of fee recipient (if fee is on).
    // String feeTo
    test('to test the property `feeTo`', () async {
      // TODO
    });

    // Amount of tokens sent to fee recipient (if fee is on).
    // String feeLiquidity
    test('to test the property `feeLiquidity`', () async {
      // TODO
    });

    // 
    // int vid
    test('to test the property `vid`', () async {
      // TODO
    });

  });
}
