import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'fills.jser.dart';

class Fills {
   /* Execution time. */
  @Alias('time', isNullable: false,  )
  final DateTime time;
   /* Execution price. */
  @Alias('price', isNullable: false,  )
  final num price;
   /* Executed quantity. */
  @Alias('amount', isNullable: false,  )
  final num amount;
  

  Fills(
      

{
     this.time = null,  
     this.price = null,  
     this.amount = null 
    
    }
  );

  @override
  String toString() {
    return 'Fills[time=$time, price=$price, amount=$amount, ]';
  }
}

@GenSerializer(nullableFields: true)
class FillsSerializer extends Serializer<Fills> with _$FillsSerializer {

}

