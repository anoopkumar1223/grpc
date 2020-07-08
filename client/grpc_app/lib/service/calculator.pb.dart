///
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class sendNumbers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('sendNumbers', package: const $pb.PackageName('calculatorProto'), createEmptyInstance: create)
    ..aInt64(1, 'a')
    ..aInt64(2, 'b')
    ..hasRequiredFields = false
  ;

  sendNumbers._() : super();
  factory sendNumbers() => create();
  factory sendNumbers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory sendNumbers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  sendNumbers clone() => sendNumbers()..mergeFromMessage(this);
  sendNumbers copyWith(void Function(sendNumbers) updates) => super.copyWith((message) => updates(message as sendNumbers));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static sendNumbers create() => sendNumbers._();
  sendNumbers createEmptyInstance() => create();
  static $pb.PbList<sendNumbers> createRepeated() => $pb.PbList<sendNumbers>();
  @$core.pragma('dart2js:noInline')
  static sendNumbers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<sendNumbers>(create);
  static sendNumbers _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get a => $_getI64(0);
  @$pb.TagNumber(1)
  set a($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get b => $_getI64(1);
  @$pb.TagNumber(2)
  set b($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => clearField(2);
}

class getResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('getResult', package: const $pb.PackageName('calculatorProto'), createEmptyInstance: create)
    ..aInt64(1, 'result')
    ..hasRequiredFields = false
  ;

  getResult._() : super();
  factory getResult() => create();
  factory getResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  getResult clone() => getResult()..mergeFromMessage(this);
  getResult copyWith(void Function(getResult) updates) => super.copyWith((message) => updates(message as getResult));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static getResult create() => getResult._();
  getResult createEmptyInstance() => create();
  static $pb.PbList<getResult> createRepeated() => $pb.PbList<getResult>();
  @$core.pragma('dart2js:noInline')
  static getResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getResult>(create);
  static getResult _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get result => $_getI64(0);
  @$pb.TagNumber(1)
  set result($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

