import 'package:market/core/common/response_wrapper/response_wrapper.dart';
import 'package:market/core/common/result/result.dart';
import 'package:market/core/common/status.dart';
import 'package:market/domain/model/home_menus/home_menus_model.dart';
import 'package:market/domain/repository/menus_repository.dart';

class GetHomeMenusUsecase {
  const GetHomeMenusUsecase(this._repository);

  final HomeMenusRepository _repository;

  Future<Result<List<HomeMenusModel>>> getHomeMenus({
    required String homeAppBarType,
  }) async {
    final ResponseWrapper<List<HomeMenusModel>> response =
        await _repository.getHomeMenus(homeAppBarType: homeAppBarType);

    return response.status.isSuccess
        ? Result<List<HomeMenusModel>>.success(
            SuccessResponse<List<HomeMenusModel>>(
              code: response.code,
              data: response.data ?? <HomeMenusModel>[],
            ),
          )
        : Result<List<HomeMenusModel>>.error(
            ErrorResponse(
              code: response.code,
              errorMessage: response.errorMessage,
            ),
          );
  }
}
