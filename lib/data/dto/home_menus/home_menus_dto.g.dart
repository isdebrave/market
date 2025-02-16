// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_menus_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeMenusDtoImpl _$$HomeMenusDtoImplFromJson(Map<String, dynamic> json) =>
    _$HomeMenusDtoImpl(
      title: json['title'] as String? ?? '',
      tabId: (json['tabId'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$HomeMenusDtoImplToJson(_$HomeMenusDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'tabId': instance.tabId,
    };
