import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:market/core/common/status.dart';

part 'response_wrapper.freezed.dart';
part 'response_wrapper.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseWrapper<T> with _$ResponseWrapper<T> {
  const factory ResponseWrapper({
    @Default(StatusEnum.initial) StatusEnum status,
    @Default(HttpStatus.ok) int code,
    @Default('') String errorMessage,
    T? data,
  }) = _ResponseWrapper<T>;

  factory ResponseWrapper.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ResponseWrapperFromJson(json, fromJsonT);
}
