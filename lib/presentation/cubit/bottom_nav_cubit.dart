import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/core/theme/config/icon_config.dart';

enum BottomNavEnum { home, category, search, user }

class BottomNavCubit extends Cubit<BottomNavEnum> {
  BottomNavCubit() : super(BottomNavEnum.home);

  void changeIndex(int index) => emit(BottomNavEnum.values[index]);
}

extension BottomNavEnumExt on BottomNavEnum {
  String get icon {
    switch (this) {
      case BottomNavEnum.home:
        return IconConfig.navHome;

      case BottomNavEnum.category:
        return IconConfig.navCategory;

      case BottomNavEnum.search:
        return IconConfig.navSearch;

      case BottomNavEnum.user:
        return IconConfig.navUser;
    }
  }

  String get activeIcon {
    switch (this) {
      case BottomNavEnum.home:
        return IconConfig.navHomeOn;

      case BottomNavEnum.category:
        return IconConfig.navCategoryOn;

      case BottomNavEnum.search:
        return IconConfig.navSearchOn;

      case BottomNavEnum.user:
        return IconConfig.navUserOn;
    }
  }
}
