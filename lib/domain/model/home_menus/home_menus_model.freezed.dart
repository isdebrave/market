// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_menus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeMenusModel _$HomeMenusModelFromJson(Map<String, dynamic> json) {
  return _HomeMenusModel.fromJson(json);
}

/// @nodoc
mixin _$HomeMenusModel {
  String get title => throw _privateConstructorUsedError;
  int get tabId => throw _privateConstructorUsedError;

  /// Serializes this HomeMenusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeMenusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeMenusModelCopyWith<HomeMenusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeMenusModelCopyWith<$Res> {
  factory $HomeMenusModelCopyWith(
          HomeMenusModel value, $Res Function(HomeMenusModel) then) =
      _$HomeMenusModelCopyWithImpl<$Res, HomeMenusModel>;
  @useResult
  $Res call({String title, int tabId});
}

/// @nodoc
class _$HomeMenusModelCopyWithImpl<$Res, $Val extends HomeMenusModel>
    implements $HomeMenusModelCopyWith<$Res> {
  _$HomeMenusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeMenusModel
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
abstract class _$$HomeMenusModelImplCopyWith<$Res>
    implements $HomeMenusModelCopyWith<$Res> {
  factory _$$HomeMenusModelImplCopyWith(_$HomeMenusModelImpl value,
          $Res Function(_$HomeMenusModelImpl) then) =
      __$$HomeMenusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int tabId});
}

/// @nodoc
class __$$HomeMenusModelImplCopyWithImpl<$Res>
    extends _$HomeMenusModelCopyWithImpl<$Res, _$HomeMenusModelImpl>
    implements _$$HomeMenusModelImplCopyWith<$Res> {
  __$$HomeMenusModelImplCopyWithImpl(
      _$HomeMenusModelImpl _value, $Res Function(_$HomeMenusModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeMenusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? tabId = null,
  }) {
    return _then(_$HomeMenusModelImpl(
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
class _$HomeMenusModelImpl implements _HomeMenusModel {
  const _$HomeMenusModelImpl({required this.title, required this.tabId});

  factory _$HomeMenusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeMenusModelImplFromJson(json);

  @override
  final String title;
  @override
  final int tabId;

  @override
  String toString() {
    return 'HomeMenusModel(title: $title, tabId: $tabId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeMenusModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.tabId, tabId) || other.tabId == tabId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, tabId);

  /// Create a copy of HomeMenusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeMenusModelImplCopyWith<_$HomeMenusModelImpl> get copyWith =>
      __$$HomeMenusModelImplCopyWithImpl<_$HomeMenusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeMenusModelImplToJson(
      this,
    );
  }
}

abstract class _HomeMenusModel implements HomeMenusModel {
  const factory _HomeMenusModel(
      {required final String title,
      required final int tabId}) = _$HomeMenusModelImpl;

  factory _HomeMenusModel.fromJson(Map<String, dynamic> json) =
      _$HomeMenusModelImpl.fromJson;

  @override
  String get title;
  @override
  int get tabId;

  /// Create a copy of HomeMenusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeMenusModelImplCopyWith<_$HomeMenusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
