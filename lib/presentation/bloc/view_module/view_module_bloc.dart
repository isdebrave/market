import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market/core/common/result/result.dart';
import 'package:market/core/common/status.dart';
import 'package:market/domain/model/view_module/view_module_model.dart';
import 'package:market/domain/usecase/get_view_modules_usecase.dart';

part 'view_module_bloc.freezed.dart';
part 'view_module_event.dart';
part 'view_module_state.dart';

@injectable
class ViewModuleBloc extends Bloc<ViewModuleEvent, ViewModuleState> {
  ViewModuleBloc(this._usecase) : super(const ViewModuleState()) {
    on<GetViewModuleEvent>(getViewModules);
  }

  final GetViewModulesUsecase _usecase;

  void getViewModules(
    GetViewModuleEvent event,
    Emitter<ViewModuleState> emit,
  ) async {
    emit(state.copyWith(status: StatusEnum.loading));

    final Result<List<ViewModuleModel>> response =
        await _usecase.getViewModules(tabId: event.tabId);

    await Future<void>.delayed(const Duration(seconds: 1));

    response.when(
      success: (SuccessResponse<List<ViewModuleModel>> successData) {
        emit(
          state.copyWith(
            status: StatusEnum.success,
            statusCode: successData.code,
            data: successData.data,
          ),
        );
      },
      error: (ErrorResponse errorData) {
        emit(
          state.copyWith(
            status: StatusEnum.error,
            statusCode: errorData.code,
            errorMessage: errorData.errorMessage,
          ),
        );
      },
    );
  }
}
