import 'package:jaguar_serializer/jaguar_serializer.dart';



class OrdType {
  /// The underlying value of this enum member.
  final String value;

  const OrdType._internal(this.value);

  /// Order types are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-type\&quot;&gt;OEML / Starter Guide / Order parameters / Order type&lt;/a&gt; 
  static const OrdType LIMIT = const OrdType._internal('LIMIT');
}

class OrdTypeFieldProcessor implements FieldProcessor<OrdType, String> {
    const OrdTypeFieldProcessor();

    OrdType deserialize(String data) {
        switch (data) {
            case 'LIMIT': return OrdType.LIMIT;
            default: throw('Unknown enum value to decode: $data');
        }
    }

    String serialize(OrdType item) {
        return item.value;
    }
}

