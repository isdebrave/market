// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_menus_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeMenusState {
  StatusEnum get status => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  List<HomeMenusModel> get data => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of HomeMenusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeMenusStateCopyWith<HomeMenusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeMenusStateCopyWith<$Res> {
  factory $HomeMenusStateCopyWith(
          HomeMenusState value, $Res Function(HomeMenusState) then) =
      _$HomeMenusStateCopyWithImpl<$Res, HomeMenusState>;
  @useResult
  $Res call(
      {StatusEnum status,
      int statusCode,
      List<HomeMenusModel> data,
      String errorMessage});
}

/// @nodoc
class _$HomeMenusStateCopyWithImpl<$Res, $Val extends HomeMenusState>
    implements $HomeMenusStateCopyWith<$Res> {
  _$HomeMenusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeMenusState
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
              as List<HomeMenusModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeMenusStateImplCopyWith<$Res>
    implements $HomeMenusStateCopyWith<$Res> {
  factory _$$HomeMenusStateImplCopyWith(_$HomeMenusStateImpl value,
          $Res Function(_$HomeMenusStateImpl) then) =
      __$$HomeMenusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusEnum status,
      int statusCode,
      List<HomeMenusModel> data,
      String errorMessage});
}

/// @nodoc
class __$$HomeMenusStateImplCopyWithImpl<$Res>
    extends _$HomeMenusStateCopyWithImpl<$Res, _$HomeMenusStateImpl>
    implements _$$HomeMenusStateImplCopyWith<$Res> {
  __$$HomeMenusStateImplCopyWithImpl(
      _$HomeMenusStateImpl _value, $Res Function(_$HomeMenusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeMenusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusCode = null,
    Object? data = null,
    Object? errorMessage = null,
  }) {
    return _then(_$HomeMenusStateImpl(
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
              as List<HomeMenusModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeMenusStateImpl implements _HomeMenusState {
  const _$HomeMenusStateImpl(
      {this.status = StatusEnum.initial,
      this.statusCode = HttpStatus.ok,
      final List<HomeMenusModel> data = const <HomeMenusModel>[],
      this.errorMessage = ''})
      : _data = data;

  @override
  @JsonKey()
  final StatusEnum status;
  @override
  @JsonKey()
  final int statusCode;
  final List<HomeMenusModel> _data;
  @override
  @JsonKey()
  List<HomeMenusModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'HomeMenusState(status: $status, statusCode: $statusCode, data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeMenusStateImpl &&
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

  /// Create a copy of HomeMenusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeMenusStateImplCopyWith<_$HomeMenusStateImpl> get copyWith =>
      __$$HomeMenusStateImplCopyWithImpl<_$HomeMenusStateImpl>(
          this, _$identity);
}

abstract class _HomeMenusState implements HomeMenusState {
  const factory _HomeMenusState(
      {final StatusEnum status,
      final int statusCode,
      final List<HomeMenusModel> data,
      final String errorMessage}) = _$HomeMenusStateImpl;

  @override
  StatusEnum get status;
  @override
  int get statusCode;
  @override
  List<HomeMenusModel> get data;
  @override
  String get errorMessage;

  /// Create a copy of HomeMenusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeMenusStateImplCopyWith<_$HomeMenusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
