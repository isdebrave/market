import 'package:injectable/injectable.dart';
import 'package:market/core/common/response_wrapper/response_wrapper.dart';
import 'package:market/core/common/result/result.dart';
import 'package:market/core/common/status.dart';
import 'package:market/domain/model/view_module/view_module_model.dart';
import 'package:market/domain/repository/home_menus_repository.dart';

@singleton
class GetViewModulesUsecase {
  const GetViewModulesUsecase(this._repository);

  final HomeMenusRepository _repository;

  Future<Result<List<ViewModuleModel>>> getViewModules({
    required int tabId,
  }) async {
    final ResponseWrapper<List<ViewModuleModel>> response =
        await _repository.getViewModules(tabId: tabId);

    return response.status.isSuccess
        ? Result<List<ViewModuleModel>>.success(
            SuccessResponse<List<ViewModuleModel>>(
              code: response.code,
              data: response.data ?? <ViewModuleModel>[],
            ),
          )
        : Result<List<ViewModuleModel>>.error(
            ErrorResponse(
              code: response.code,
              errorMessage: response.errorMessage,
            ),
          );
  }
}
