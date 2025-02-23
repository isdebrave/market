// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_module_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewModuleState {
  StatusEnum get status => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  List<ViewModuleModel> get data => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ViewModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewModuleStateCopyWith<ViewModuleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewModuleStateCopyWith<$Res> {
  factory $ViewModuleStateCopyWith(
          ViewModuleState value, $Res Function(ViewModuleState) then) =
      _$ViewModuleStateCopyWithImpl<$Res, ViewModuleState>;
  @useResult
  $Res call(
      {StatusEnum status,
      int statusCode,
      List<ViewModuleModel> data,
      String errorMessage});
}

/// @nodoc
class _$ViewModuleStateCopyWithImpl<$Res, $Val extends ViewModuleState>
    implements $ViewModuleStateCopyWith<$Res> {
  _$ViewModuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewModuleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? data = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEnum,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ViewModuleModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewModuleStateImplCopyWith<$Res>
    implements $ViewModuleStateCopyWith<$Res> {
  factory _$$ViewModuleStateImplCopyWith(_$ViewModuleStateImpl value,
          $Res Function(_$ViewModuleStateImpl) then) =
      __$$ViewModuleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusEnum status,
      int statusCode,
      List<ViewModuleModel> data,
      String errorMessage});
}

/// @nodoc
class __$$ViewModuleStateImplCopyWithImpl<$Res>
    extends _$ViewModuleStateCopyWithImpl<$Res, _$ViewModuleStateImpl>
    implements _$$ViewModuleStateImplCopyWith<$Res> {
  __$$ViewModuleStateImplCopyWithImpl(
      _$ViewModuleStateImpl _value, $Res Function(_$ViewModuleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewModuleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? data = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ViewModuleStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusEnum,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ViewModuleModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ViewModuleStateImpl implements _ViewModuleState {
  const _$ViewModuleStateImpl(
      {this.status = StatusEnum.initial,
      this.statusCode = HttpStatus.ok,
      final List<ViewModuleModel> data = const <ViewModuleModel>[],
      this.errorMessage = ''})
      : _data = data;

  @override
  @JsonKey()
  final StatusEnum status;
  @override
  @JsonKey()
  final int statusCode;
  final List<ViewModuleModel> _data;
  @override
  @JsonKey()
  List<ViewModuleModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ViewModuleState(status: $status, statusCode: $statusCode, data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewModuleStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, statusCode,
      const DeepCollectionEquality().hash(_data), errorMessage);

  /// Create a copy of ViewModuleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewModuleStateImplCopyWith<_$ViewModuleStateImpl> get copyWith =>
      __$$ViewModuleStateImplCopyWithImpl<_$ViewModuleStateImpl>(
          this, _$identity);
}

abstract class _ViewModuleState implements ViewModuleState {
  const factory _ViewModuleState(
      {final StatusEnum status,
      final int statusCode,
      final List<ViewModuleModel> data,
      final String errorMessage}) = _$ViewModuleStateImpl;

  @override
  StatusEnum get status;
  @override
  int get statusCode;
  @override
  List<ViewModuleModel> get data;
  @override
  String get errorMessage;

  /// Create a copy of ViewModuleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewModuleStateImplCopyWith<_$ViewModuleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
