import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for DexOrderDTO
void main() {
  final instance = DexOrderDTOBuilder();
  // TODO add properties to the builder and call build()

  group(DexOrderDTO, () {
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

    // Identifier, format: (owner address)-(order id)
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Reference to owner.
    // String owner
    test('to test the property `owner`', () async {
      // TODO
    });

    // Order id.
    // int orderId
    test('to test the property `orderId`', () async {
      // TODO
    });

    // Batch id from which order became valid.
    // String fromBatchId
    test('to test the property `fromBatchId`', () async {
      // TODO
    });

    // Start of epoch in which order was placed and became valid.
    // String fromEpoch
    test('to test the property `fromEpoch`', () async {
      // TODO
    });

    // Batch id until which trade was still valid.
    // String untilBatchId
    test('to test the property `untilBatchId`', () async {
      // TODO
    });

    // End of epoch in which order was placed.
    // String untilEpoch
    test('to test the property `untilEpoch`', () async {
      // TODO
    });

    // Identifier of token that was bought.
    // String buyToken
    test('to test the property `buyToken`', () async {
      // TODO
    });

    // Identifier of token that was sold.
    // String sellToken
    test('to test the property `sellToken`', () async {
      // TODO
    });

    // Price enumerator.
    // String priceNumerator
    test('to test the property `priceNumerator`', () async {
      // TODO
    });

    // Price denominator.
    // String priceDenominator
    test('to test the property `priceDenominator`', () async {
      // TODO
    });

    // Maximum sell amount.
    // String maxSellAmount
    test('to test the property `maxSellAmount`', () async {
      // TODO
    });

    // Minimum receive amount.
    // String minReceiveAmount
    test('to test the property `minReceiveAmount`', () async {
      // TODO
    });

    // Sold volume.
    // String soldVolume
    test('to test the property `soldVolume`', () async {
      // TODO
    });

    // Bought volume.
    // String boughtVolume
    test('to test the property `boughtVolume`', () async {
      // TODO
    });

    // Epoch in which order was created.
    // String createEpoch
    test('to test the property `createEpoch`', () async {
      // TODO
    });

    // Epoch in which order was cancelled.
    // String cancelEpoch
    test('to test the property `cancelEpoch`', () async {
      // TODO
    });

    // Epoch in which order was deleted.
    // String deleteEpoch
    test('to test the property `deleteEpoch`', () async {
      // TODO
    });

    // Transaction hash.
    // String txHash
    test('to test the property `txHash`', () async {
      // TODO
    });

    // Event index within transaction.
    // String txLogIndex
    test('to test the property `txLogIndex`', () async {
      // TODO
    });

    // 
    // int vid
    test('to test the property `vid`', () async {
      // TODO
    });

  });
}
