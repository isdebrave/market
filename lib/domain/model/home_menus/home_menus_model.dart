import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_menus_model.freezed.dart';
part 'home_menus_model.g.dart';

@freezed
class HomeMenusModel with _$HomeMenusModel {
  const factory HomeMenusModel({
    required String title,
    required int tabId,
  }) = _HomeMenusModel;

  factory HomeMenusModel.fromJson(Map<String, dynamic> json) =>
      _$HomeMenusModelFromJson(json);
}
