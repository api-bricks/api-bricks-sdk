import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/message_reject.dart';
import 'package:openapi/model/position.dart';

part 'positions_api.jretro.dart';

@GenApiClient()
class PositionsApi extends ApiClient with _$PositionsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    PositionsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get open positions
    ///
    /// Get current open positions across all or single exchange.
    @GetReq(path: "/v1/positions")
    Future<List<Position>> v1PositionsGet(
        
            @QueryParam("exchange_id") String exchangeId
        ) {
        return super.v1PositionsGet(
        
        exchangeId

        ).timeout(timeout);
    }


}
