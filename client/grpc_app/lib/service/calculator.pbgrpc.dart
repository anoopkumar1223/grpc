///
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'calculator.pb.dart' as $0;
export 'calculator.pb.dart';

class CalculateClient extends $grpc.Client {
  static final _$add = $grpc.ClientMethod<$0.sendNumbers, $0.getResult>(
      '/calculatorProto.Calculate/add',
      ($0.sendNumbers value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.getResult.fromBuffer(value));
  static final _$subtract = $grpc.ClientMethod<$0.sendNumbers, $0.getResult>(
      '/calculatorProto.Calculate/subtract',
      ($0.sendNumbers value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.getResult.fromBuffer(value));
  static final _$multiply = $grpc.ClientMethod<$0.sendNumbers, $0.getResult>(
      '/calculatorProto.Calculate/multiply',
      ($0.sendNumbers value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.getResult.fromBuffer(value));
  static final _$divide = $grpc.ClientMethod<$0.sendNumbers, $0.getResult>(
      '/calculatorProto.Calculate/divide',
      ($0.sendNumbers value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.getResult.fromBuffer(value));

  CalculateClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.getResult> add($0.sendNumbers request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$add, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.getResult> subtract($0.sendNumbers request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$subtract, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.getResult> multiply($0.sendNumbers request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$multiply, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.getResult> divide($0.sendNumbers request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$divide, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class CalculateServiceBase extends $grpc.Service {
  $core.String get $name => 'calculatorProto.Calculate';

  CalculateServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.sendNumbers, $0.getResult>(
        'add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.sendNumbers.fromBuffer(value),
        ($0.getResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.sendNumbers, $0.getResult>(
        'subtract',
        subtract_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.sendNumbers.fromBuffer(value),
        ($0.getResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.sendNumbers, $0.getResult>(
        'multiply',
        multiply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.sendNumbers.fromBuffer(value),
        ($0.getResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.sendNumbers, $0.getResult>(
        'divide',
        divide_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.sendNumbers.fromBuffer(value),
        ($0.getResult value) => value.writeToBuffer()));
  }

  $async.Future<$0.getResult> add_Pre(
      $grpc.ServiceCall call, $async.Future<$0.sendNumbers> request) async {
    return add(call, await request);
  }

  $async.Future<$0.getResult> subtract_Pre(
      $grpc.ServiceCall call, $async.Future<$0.sendNumbers> request) async {
    return subtract(call, await request);
  }

  $async.Future<$0.getResult> multiply_Pre(
      $grpc.ServiceCall call, $async.Future<$0.sendNumbers> request) async {
    return multiply(call, await request);
  }

  $async.Future<$0.getResult> divide_Pre(
      $grpc.ServiceCall call, $async.Future<$0.sendNumbers> request) async {
    return divide(call, await request);
  }

  $async.Future<$0.getResult> add(
      $grpc.ServiceCall call, $0.sendNumbers request);
  $async.Future<$0.getResult> subtract(
      $grpc.ServiceCall call, $0.sendNumbers request);
  $async.Future<$0.getResult> multiply(
      $grpc.ServiceCall call, $0.sendNumbers request);
  $async.Future<$0.getResult> divide(
      $grpc.ServiceCall call, $0.sendNumbers request);
}
