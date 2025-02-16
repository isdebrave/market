import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_menus_dto.freezed.dart';
part 'home_menus_dto.g.dart';

@freezed
class HomeMenusDto with _$HomeMenusDto {
  const factory HomeMenusDto({
    @Default('') String title,
    @Default(-1) int tabId,
  }) = _HomeMenusDto;

  factory HomeMenusDto.fromJson(Map<String, dynamic> json) =>
      _$HomeMenusDtoFromJson(json);
}
