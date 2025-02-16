// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_menus_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeMenusDto _$HomeMenusDtoFromJson(Map<String, dynamic> json) {
  return _HomeMenusDto.fromJson(json);
}

/// @nodoc
mixin _$HomeMenusDto {
  String get title => throw _privateConstructorUsedError;
  int get tabId => throw _privateConstructorUsedError;

  /// Serializes this HomeMenusDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeMenusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeMenusDtoCopyWith<HomeMenusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeMenusDtoCopyWith<$Res> {
  factory $HomeMenusDtoCopyWith(
          HomeMenusDto value, $Res Function(HomeMenusDto) then) =
      _$HomeMenusDtoCopyWithImpl<$Res, HomeMenusDto>;
  @useResult
  $Res call({String title, int tabId});
}

/// @nodoc
class _$HomeMenusDtoCopyWithImpl<$Res, $Val extends HomeMenusDto>
    implements $HomeMenusDtoCopyWith<$Res> {
  _$HomeMenusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeMenusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? tabId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tabId: null == tabId
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeMenusDtoImplCopyWith<$Res>
    implements $HomeMenusDtoCopyWith<$Res> {
  factory _$$HomeMenusDtoImplCopyWith(
          _$HomeMenusDtoImpl value, $Res Function(_$HomeMenusDtoImpl) then) =
      __$$HomeMenusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int tabId});
}

/// @nodoc
class __$$HomeMenusDtoImplCopyWithImpl<$Res>
    extends _$HomeMenusDtoCopyWithImpl<$Res, _$HomeMenusDtoImpl>
    implements _$$HomeMenusDtoImplCopyWith<$Res> {
  __$$HomeMenusDtoImplCopyWithImpl(
      _$HomeMenusDtoImpl _value, $Res Function(_$HomeMenusDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeMenusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? tabId = null,
  }) {
    return _then(_$HomeMenusDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tabId: null == tabId
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeMenusDtoImpl implements _HomeMenusDto {
  const _$HomeMenusDtoImpl({this.title = '', this.tabId = -1});

  factory _$HomeMenusDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeMenusDtoImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int tabId;

  @override
  String toString() {
    return 'HomeMenusDto(title: $title, tabId: $tabId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeMenusDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.tabId, tabId) || other.tabId == tabId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, tabId);

  /// Create a copy of HomeMenusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeMenusDtoImplCopyWith<_$HomeMenusDtoImpl> get copyWith =>
      __$$HomeMenusDtoImplCopyWithImpl<_$HomeMenusDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeMenusDtoImplToJson(
      this,
    );
  }
}

abstract class _HomeMenusDto implements HomeMenusDto {
  const factory _HomeMenusDto({final String title, final int tabId}) =
      _$HomeMenusDtoImpl;

  factory _HomeMenusDto.fromJson(Map<String, dynamic> json) =
      _$HomeMenusDtoImpl.fromJson;

  @override
  String get title;
  @override
  int get tabId;

  /// Create a copy of HomeMenusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeMenusDtoImplCopyWith<_$HomeMenusDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
