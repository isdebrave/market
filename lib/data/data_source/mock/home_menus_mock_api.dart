import 'dart:convert';

import 'package:market/data/data_source/mock/home_menus_mock_data.dart';
import 'package:market/data/data_source/remote/home_menus_api.dart';
import 'package:market/data/dto/home_menus/home_menus_dto.dart';
import 'package:market/presentation/cubit/home_app_bar_cubit.dart';

class HomeMenusMockApi implements HomeMenusApi {
  @override
  Future<List<HomeMenusDto>> getHomeMenus({
    required String homeAppBarType,
  }) =>
      Future<List<HomeMenusDto>>(
        () => parser(homeAppBarType == HomeAppBarEnum.market.name
            ? HomeMenusMockData.market
            : HomeMenusMockData.beauty),
      );

  List<HomeMenusDto> parser(String source) {
    final List<dynamic> json = jsonDecode(source);

    return json.map((dynamic e) => HomeMenusDto.fromJson(e)).toList();
  }
}
