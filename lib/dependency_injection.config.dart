// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:market/data/data_source/mock/home_menus_mock_api.dart' as _i210;
import 'package:market/data/data_source/remote/home_menus_api.dart' as _i336;
import 'package:market/data/repository_impl/home_menus_repository_impl.dart'
    as _i276;
import 'package:market/domain/repository/menus_repository.dart' as _i579;
import 'package:market/domain/usecase/get_home_menus_usecase.dart' as _i816;
import 'package:market/presentation/bloc/home_menus/home_menus_bloc.dart'
    as _i996;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i336.HomeMenusApi>(() => _i210.HomeMenusMockApi());
    gh.singleton<_i579.HomeMenusRepository>(
        () => _i276.HomeMenusRepositoryImpl(gh<_i336.HomeMenusApi>()));
    gh.singleton<_i816.GetHomeMenusUsecase>(
        () => _i816.GetHomeMenusUsecase(gh<_i579.HomeMenusRepository>()));
    gh.factory<_i996.HomeMenusBloc>(
        () => _i996.HomeMenusBloc(gh<_i816.GetHomeMenusUsecase>()));
    return this;
  }
}
