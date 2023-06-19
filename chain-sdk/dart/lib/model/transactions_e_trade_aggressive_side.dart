//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TransactionsETradeAggressiveSide {
  /// Instantiate a new enum with the provided [value].
  const TransactionsETradeAggressiveSide._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const buy = TransactionsETradeAggressiveSide._(r'Buy');
  static const sell = TransactionsETradeAggressiveSide._(r'Sell');
  static const estimatedBuy = TransactionsETradeAggressiveSide._(r'EstimatedBuy');
  static const estimatedSell = TransactionsETradeAggressiveSide._(r'EstimatedSell');
  static const unknown = TransactionsETradeAggressiveSide._(r'Unknown');

  /// List of all possible values in this [enum][TransactionsETradeAggressiveSide].
  static const values = <TransactionsETradeAggressiveSide>[
    buy,
    sell,
    estimatedBuy,
    estimatedSell,
    unknown,
  ];

  static TransactionsETradeAggressiveSide? fromJson(dynamic value) => TransactionsETradeAggressiveSideTypeTransformer().decode(value);

  static List<TransactionsETradeAggressiveSide> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TransactionsETradeAggressiveSide>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransactionsETradeAggressiveSide.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TransactionsETradeAggressiveSide] to String,
/// and [decode] dynamic data back to [TransactionsETradeAggressiveSide].
class TransactionsETradeAggressiveSideTypeTransformer {
  factory TransactionsETradeAggressiveSideTypeTransformer() => _instance ??= const TransactionsETradeAggressiveSideTypeTransformer._();

  const TransactionsETradeAggressiveSideTypeTransformer._();

  String encode(TransactionsETradeAggressiveSide data) => data.value;

  /// Decodes a [dynamic value][data] to a TransactionsETradeAggressiveSide.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TransactionsETradeAggressiveSide? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Buy': return TransactionsETradeAggressiveSide.buy;
        case r'Sell': return TransactionsETradeAggressiveSide.sell;
        case r'EstimatedBuy': return TransactionsETradeAggressiveSide.estimatedBuy;
        case r'EstimatedSell': return TransactionsETradeAggressiveSide.estimatedSell;
        case r'Unknown': return TransactionsETradeAggressiveSide.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TransactionsETradeAggressiveSideTypeTransformer] instance.
  static TransactionsETradeAggressiveSideTypeTransformer? _instance;
}

