// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseWrapperImpl<T> _$$ResponseWrapperImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResponseWrapperImpl<T>(
      status: $enumDecodeNullable(_$StatusEnumEnumMap, json['status']) ??
          StatusEnum.initial,
      code: (json['code'] as num?)?.toInt() ?? HttpStatus.ok,
      errorMessage: json['errorMessage'] as String? ?? '',
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$$ResponseWrapperImplToJson<T>(
  _$ResponseWrapperImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': _$StatusEnumEnumMap[instance.status]!,
      'code': instance.code,
      'errorMessage': instance.errorMessage,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

const _$StatusEnumEnumMap = {
  StatusEnum.initial: 'initial',
  StatusEnum.loading: 'loading',
  StatusEnum.success: 'success',
  StatusEnum.error: 'error',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
