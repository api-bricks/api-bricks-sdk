//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/balance.dart';
import 'package:openapi/src/model/balance_data_inner.dart';
import 'package:openapi/src/model/fills.dart';
import 'package:openapi/src/model/message_error.dart';
import 'package:openapi/src/model/message_reject.dart';
import 'package:openapi/src/model/ord_side.dart';
import 'package:openapi/src/model/ord_status.dart';
import 'package:openapi/src/model/ord_type.dart';
import 'package:openapi/src/model/order_cancel_all_request.dart';
import 'package:openapi/src/model/order_cancel_single_request.dart';
import 'package:openapi/src/model/order_execution_report.dart';
import 'package:openapi/src/model/order_execution_report_all_of.dart';
import 'package:openapi/src/model/order_history.dart';
import 'package:openapi/src/model/order_new_single_request.dart';
import 'package:openapi/src/model/position.dart';
import 'package:openapi/src/model/position_data_inner.dart';
import 'package:openapi/src/model/reject_reason.dart';
import 'package:openapi/src/model/time_in_force.dart';
import 'package:openapi/src/model/validation_error.dart';

part 'serializers.g.dart';

@SerializersFor([
  Balance,
  BalanceDataInner,
  Fills,
  MessageError,
  MessageReject,
  OrdSide,
  OrdStatus,
  OrdType,
  OrderCancelAllRequest,
  OrderCancelSingleRequest,
  OrderExecutionReport,
  OrderExecutionReportAllOf,$OrderExecutionReportAllOf,
  OrderHistory,
  OrderNewSingleRequest,$OrderNewSingleRequest,
  Position,
  PositionDataInner,
  RejectReason,
  TimeInForce,
  ValidationError,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrderExecutionReport)]),
        () => ListBuilder<OrderExecutionReport>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Balance)]),
        () => ListBuilder<Balance>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrderHistory)]),
        () => ListBuilder<OrderHistory>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Position)]),
        () => ListBuilder<Position>(),
      )
      ..add(OrderExecutionReportAllOf.serializer)
      ..add(OrderNewSingleRequest.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
