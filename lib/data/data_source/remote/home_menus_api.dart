import 'package:dio/dio.dart';
import 'package:market/data/dto/home_menus/home_menus_dto.dart';
import 'package:market/data/dto/view_module/view_module_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'home_menus_api.g.dart';

@RestApi()
abstract class HomeMenusApi {
  factory HomeMenusApi(Dio dio, {String? baseUrl}) = _HomeMenusApi;

  @GET('/api/menus/{mall_type}')
  Future<List<HomeMenusDto>> getHomeMenus({
    @Path('mall_type') required String homeAppBarType,
  });

  @GET('/api/view-modules/{tab_id}')
  Future<List<ViewModuleDto>> getViewModules({
    @Path('tab_id') required int tabId,
  });
}
