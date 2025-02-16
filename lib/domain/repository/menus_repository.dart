import 'package:market/core/common/response_wrapper/response_wrapper.dart';
import 'package:market/domain/model/home_menus/home_menus_model.dart';
import 'package:market/domain/repository/repository.dart';

abstract class HomeMenusRepository extends Repository {
  Future<ResponseWrapper<List<HomeMenusModel>>> getHomeMenus({
    required String homeAppBarType,
  });
}
