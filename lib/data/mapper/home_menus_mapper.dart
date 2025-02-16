import 'package:market/data/dto/home_menus/home_menus_dto.dart';
import 'package:market/domain/model/home_menus/home_menus_model.dart';

extension HomeMenusDtoExt on HomeMenusDto {
  HomeMenusModel toModel() => HomeMenusModel(title: title, tabId: tabId);
}
