import 'package:market/data/dto/home_menus/home_menus_dto.dart';
import 'package:market/data/dto/view_module/view_module_dto.dart';
import 'package:market/domain/model/home_menus/home_menus_model.dart';
import 'package:market/domain/model/view_module/view_module_model.dart';

extension HomeMenusDtoExt on HomeMenusDto {
  HomeMenusModel toModel() => HomeMenusModel(
        title: title,
        tabId: tabId,
      );
}

extension ViewModuleDtoExt on ViewModuleDto {
  ViewModuleModel toModel() => ViewModuleModel(
        type: type,
        title: title,
        subtitle: subtitle,
        imageUrl: imageUrl,
      );
}
