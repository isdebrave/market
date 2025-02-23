part of 'view_module_bloc.dart';

abstract class ViewModuleEvent {}

class GetViewModuleEvent extends ViewModuleEvent {
  GetViewModuleEvent({
    required this.tabId,
  });

  final int tabId;
}
