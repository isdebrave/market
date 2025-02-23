part of 'home_menus_bloc.dart';

@freezed
class HomeMenusState with _$HomeMenusState {
  const factory HomeMenusState({
    @Default(StatusEnum.initial) StatusEnum status,
    @Default(HttpStatus.ok) int statusCode,
    @Default(<HomeMenusModel>[]) List<HomeMenusModel> data,
    @Default('') String errorMessage,
  }) = _HomeMenusState;
}
