import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/core/theme/config/home_app_bar_config.dart';

enum HomeAppBarEnum { market, beauty }

class HomeAppBarCubit extends Cubit<HomeAppBarEnum> {
  HomeAppBarCubit() : super(HomeAppBarEnum.market);

  void changeIndex(int index) => emit(HomeAppBarEnum.values[index]);
}

extension HomeAppBarEnumExt on HomeAppBarEnum {
  bool get isMarket => this == HomeAppBarEnum.market;

  HomeAppBarConfig get theme {
    switch (this) {
      case HomeAppBarEnum.market:
        return HomeAppBarConfig.market;

      case HomeAppBarEnum.beauty:
        return HomeAppBarConfig.beauty;
    }
  }
}
