import 'package:openapi/model/balance_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance.g.dart';

abstract class Balance implements Built<Balance, BalanceBuilder> {

    /// Exchange identifier used to identify the routing destination.
    @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    @nullable
    @BuiltValueField(wireName: r'data')
    BuiltList<BalanceData> get data;

    // Boilerplate code needed to wire-up generated code
    Balance._();

    static void _initializeBuilder(BalanceBuilder b) => b;

    factory Balance([updates(BalanceBuilder b)]) = _$Balance;
    static Serializer<Balance> get serializer => _$balanceSerializer;
}

