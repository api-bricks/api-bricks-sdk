import 'package:jaguar_serializer/jaguar_serializer.dart';



class OrdSide {
  /// The underlying value of this enum member.
  final String value;

  const OrdSide._internal(this.value);

  /// Side of order. 
  static const OrdSide BUY = const OrdSide._internal('BUY');
  /// Side of order. 
  static const OrdSide SELL = const OrdSide._internal('SELL');
}

class OrdSideFieldProcessor implements FieldProcessor<OrdSide, String> {
    const OrdSideFieldProcessor();

    OrdSide deserialize(String data) {
        switch (data) {
            case 'BUY': return OrdSide.BUY;
            case 'SELL': return OrdSide.SELL;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(OrdSide item) {
        return item.value;
    }
}

