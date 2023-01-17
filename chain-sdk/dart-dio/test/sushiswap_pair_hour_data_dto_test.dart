import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for SushiswapPairHourDataDTO
void main() {
  final instance = SushiswapPairHourDataDTOBuilder();
  // TODO add properties to the builder and call build()

  group(SushiswapPairHourDataDTO, () {
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

    // Identifier, format: (pair id)-(hour start timestamp).
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Hour start timestamp.
    // int date
    test('to test the property `date`', () async {
      // TODO
    });

    // Reference to pair.
    // String pair
    test('to test the property `pair`', () async {
      // TODO
    });

    // Reserve of token0 (updated during each transaction on pair).
    // String reserve0
    test('to test the property `reserve0`', () async {
      // TODO
    });

    // Reserve of token1 (updated during each transaction on pair).
    // String reserve1
    test('to test the property `reserve1`', () async {
      // TODO
    });

    // Reserve of token0 plus token1 stored as a derived USD amount.
    // String reserveUsd
    test('to test the property `reserveUsd`', () async {
      // TODO
    });

    // Total amount of token0 swapped throughout hour.
    // String volumeToken0
    test('to test the property `volumeToken0`', () async {
      // TODO
    });

    // Total amount of token1 swapped throughout hour.
    // String volumeToken1
    test('to test the property `volumeToken1`', () async {
      // TODO
    });

    // Total volume within pair throughout hour.
    // String volumeUsd
    test('to test the property `volumeUsd`', () async {
      // TODO
    });

    // Amount of transactions on pair throughout hour.
    // String txCount
    test('to test the property `txCount`', () async {
      // TODO
    });

    // 
    // int vid
    test('to test the property `vid`', () async {
      // TODO
    });

  });
}
