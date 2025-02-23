// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_module_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewModuleModel _$ViewModuleModelFromJson(Map<String, dynamic> json) {
  return _ViewModuleModel.fromJson(json);
}

/// @nodoc
mixin _$ViewModuleModel {
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this ViewModuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ViewModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewModuleModelCopyWith<ViewModuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewModuleModelCopyWith<$Res> {
  factory $ViewModuleModelCopyWith(
          ViewModuleModel value, $Res Function(ViewModuleModel) then) =
      _$ViewModuleModelCopyWithImpl<$Res, ViewModuleModel>;
  @useResult
  $Res call({String type, String title, String subtitle, String imageUrl});
}

/// @nodoc
class _$ViewModuleModelCopyWithImpl<$Res, $Val extends ViewModuleModel>
    implements $ViewModuleModelCopyWith<$Res> {
  _$ViewModuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewModuleModelImplCopyWith<$Res>
    implements $ViewModuleModelCopyWith<$Res> {
  factory _$$ViewModuleModelImplCopyWith(_$ViewModuleModelImpl value,
          $Res Function(_$ViewModuleModelImpl) then) =
      __$$ViewModuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String title, String subtitle, String imageUrl});
}

/// @nodoc
class __$$ViewModuleModelImplCopyWithImpl<$Res>
    extends _$ViewModuleModelCopyWithImpl<$Res, _$ViewModuleModelImpl>
    implements _$$ViewModuleModelImplCopyWith<$Res> {
  __$$ViewModuleModelImplCopyWithImpl(
      _$ViewModuleModelImpl _value, $Res Function(_$ViewModuleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = null,
  }) {
    return _then(_$ViewModuleModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewModuleModelImpl implements _ViewModuleModel {
  const _$ViewModuleModelImpl(
      {required this.type,
      required this.title,
      required this.subtitle,
      required this.imageUrl});

  factory _$ViewModuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewModuleModelImplFromJson(json);

  @override
  final String type;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ViewModuleModel(type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewModuleModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, subtitle, imageUrl);

  /// Create a copy of ViewModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewModuleModelImplCopyWith<_$ViewModuleModelImpl> get copyWith =>
      __$$ViewModuleModelImplCopyWithImpl<_$ViewModuleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewModuleModelImplToJson(
      this,
    );
  }
}

abstract class _ViewModuleModel implements ViewModuleModel {
  const factory _ViewModuleModel(
      {required final String type,
      required final String title,
      required final String subtitle,
      required final String imageUrl}) = _$ViewModuleModelImpl;

  factory _ViewModuleModel.fromJson(Map<String, dynamic> json) =
      _$ViewModuleModelImpl.fromJson;

  @override
  String get type;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get imageUrl;

  /// Create a copy of ViewModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewModuleModelImplCopyWith<_$ViewModuleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
