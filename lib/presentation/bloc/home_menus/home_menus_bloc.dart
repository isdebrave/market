import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market/core/common/result/result.dart';
import 'package:market/core/common/status.dart';
import 'package:market/domain/model/home_menus/home_menus_model.dart';
import 'package:market/domain/usecase/get_home_menus_usecase.dart';

part 'home_menus_bloc.freezed.dart';
part 'home_menus_event.dart';
part 'home_menus_state.dart';

@injectable
class HomeMenusBloc extends Bloc<HomeMenusEvent, HomeMenusState> {
  HomeMenusBloc(this._usecase) : super(const HomeMenusState()) {
    on<GetHomeMenusEvent>(getHomeMenus);
  }

  final GetHomeMenusUsecase _usecase;

  void getHomeMenus(
    GetHomeMenusEvent event,
    Emitter<HomeMenusState> emit,
  ) async {
    emit(state.copyWith(status: StatusEnum.loading));

    final Result<List<HomeMenusModel>> response =
        await _usecase.getHomeMenus(homeAppBarType: event.homeAppBarType);

    await Future<void>.delayed(const Duration(seconds: 1));

    response.when(
      success: (SuccessResponse<List<HomeMenusModel>> successData) {
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
