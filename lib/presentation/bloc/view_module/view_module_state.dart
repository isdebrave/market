part of 'view_module_bloc.dart';

@freezed
class ViewModuleState with _$ViewModuleState {
  const factory ViewModuleState({
    @Default(StatusEnum.initial) StatusEnum status,
    @Default(HttpStatus.ok) int statusCode,
    @Default(<ViewModuleModel>[]) List<ViewModuleModel> data,
    @Default('') String errorMessage,
  }) = _ViewModuleState;
}
