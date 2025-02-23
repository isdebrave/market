part of 'home_menus_bloc.dart';

abstract class HomeMenusEvent {}

class GetHomeMenusEvent extends HomeMenusEvent {
  GetHomeMenusEvent({
    required this.homeAppBarType,
  });

  final String homeAppBarType;
}
