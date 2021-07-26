//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/balance.dart';
import 'package:openapi/model/balance_data.dart';
import 'package:openapi/model/fills.dart';
import 'package:openapi/model/message_reject.dart';
import 'package:openapi/model/ord_side.dart';
import 'package:openapi/model/ord_status.dart';
import 'package:openapi/model/ord_type.dart';
import 'package:openapi/model/order_cancel_all_request.dart';
import 'package:openapi/model/order_cancel_single_request.dart';
import 'package:openapi/model/order_execution_report.dart';
import 'package:openapi/model/order_execution_report_all_of.dart';
import 'package:openapi/model/order_new_single_request.dart';
import 'package:openapi/model/position.dart';
import 'package:openapi/model/position_data.dart';
import 'package:openapi/model/reject_reason.dart';
import 'package:openapi/model/time_in_force.dart';
import 'package:openapi/model/validation_error.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Balance,
  BalanceData,
  Fills,
  MessageReject,
  OrdSide,
  OrdStatus,
  OrdType,
  OrderCancelAllRequest,
  OrderCancelSingleRequest,
  OrderExecutionReport,
  OrderExecutionReportAllOf,
  OrderNewSingleRequest,
  Position,
  PositionData,
  RejectReason,
  TimeInForce,
  ValidationError,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Balance)]),
        () => ListBuilder<Balance>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OrderExecutionReport)]),
        () => ListBuilder<OrderExecutionReport>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Position)]),
        () => ListBuilder<Position>(),
      )
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
