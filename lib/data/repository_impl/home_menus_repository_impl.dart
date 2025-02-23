import 'package:injectable/injectable.dart';
import 'package:market/core/common/response_wrapper/response_wrapper.dart';
import 'package:market/core/common/status.dart';
import 'package:market/data/data_source/remote/home_menus_api.dart';
import 'package:market/data/dto/home_menus/home_menus_dto.dart';
import 'package:market/data/mapper/home_menus_mapper.dart';
import 'package:market/domain/model/home_menus/home_menus_model.dart';
import 'package:market/domain/repository/menus_repository.dart';

@Singleton(as: HomeMenusRepository)
class HomeMenusRepositoryImpl extends HomeMenusRepository {
  HomeMenusRepositoryImpl(this._api);

  final HomeMenusApi _api;

  @override
  Future<ResponseWrapper<List<HomeMenusModel>>> getHomeMenus({
    required String homeAppBarType,
  }) async {
    final List<HomeMenusDto> response =
        await _api.getHomeMenus(homeAppBarType: homeAppBarType);

    return ResponseWrapper<List<HomeMenusModel>>(
      status: StatusEnum.success,
      data: response.map((HomeMenusDto e) => e.toModel()).toList(),
    );
  }
}
