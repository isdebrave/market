import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:market/data/data_source/mock/home_menus_mock_data.dart';
import 'package:market/data/data_source/remote/home_menus_api.dart';
import 'package:market/data/dto/home_menus/home_menus_dto.dart';
import 'package:market/data/dto/view_module/view_module_dto.dart';
import 'package:market/presentation/cubit/home_app_bar_cubit.dart';

@Singleton(as: HomeMenusApi)
class HomeMenusMockApi implements HomeMenusApi {
  @override
  Future<List<HomeMenusDto>> getHomeMenus({
    required String homeAppBarType,
  }) =>
      Future<List<HomeMenusDto>>(
        () => homeMenuParser(homeAppBarType == HomeAppBarEnum.market.name
            ? HomeMenusMockData.market
            : HomeMenusMockData.beauty),
      );

  List<HomeMenusDto> homeMenuParser(String source) {
    final List<dynamic> json = jsonDecode(source);

    return json.map((dynamic e) => HomeMenusDto.fromJson(e)).toList();
  }

  @override
  Future<List<ViewModuleDto>> getViewModules({
    required int tabId,
  }) {
    String source = '';
    final int remainderId = tabId % 10;

    switch (remainderId) {
      case 1:
        source = HomeMenusMockData.viewModulesByTabIdCaseOne;
      case 2:
        source = HomeMenusMockData.viewModulesByTabIdCaseTwo;
      case 3:
        source = HomeMenusMockData.viewModulesByTabIdCaseThree;
      case 4:
        source = HomeMenusMockData.viewModulesByTabIdCaseFour;
      case 5:
        source = HomeMenusMockData.viewModulesByTabIdCaseFive;
    }

    return Future<List<ViewModuleDto>>(() => viewModuleParser(source));
  }

  List<ViewModuleDto> viewModuleParser(String source) {
    final List<dynamic> json = jsonDecode(source);

    return json.map((dynamic e) => ViewModuleDto.fromJson(e)).toList();
  }
}
