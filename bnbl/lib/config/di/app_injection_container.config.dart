// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../core/di/core_app_module.dart' as _i201;
import '../../environments/production/production_app_module.dart' as _i739;
import '../../environments/production/production_environment.dart' as _i548;
import '../../environments/staging/staging_app_module.dart' as _i881;
import '../../environments/staging/staging_environment.dart' as _i496;
import '../../feature/presentation/add_transaction_view/cubit/transaction_cubit.dart'
    as _i666;
import '../../feature/presentation/camera_screen/cubit/camera_cubit.dart'
    as _i466;
import '../../feature/presentation/scanner_view/cubit/scanner_cubit.dart'
    as _i541;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> $initAppDependenciesGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreAppModule = _$CoreAppModule();
    final stagingAppModule = _$StagingAppModule();
    final productionAppModule = _$ProductionAppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => coreAppModule.prefs,
      preResolve: true,
    );
    gh.factory<_i666.TransactionCubit>(() => _i666.TransactionCubit());
    gh.factory<_i466.CameraCubit>(() => _i466.CameraCubit());
    gh.factory<_i541.QRScannerCubit>(() => _i541.QRScannerCubit());
    gh.lazySingleton<_i548.ProductionEnvironment>(
        () => _i548.ProductionEnvironment());
    gh.lazySingleton<_i496.StagingEnvironment>(
        () => _i496.StagingEnvironment());
    gh.lazySingleton<_i361.Dio>(
      () => stagingAppModule.dioStaging(gh<_i496.StagingEnvironment>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i361.Dio>(
      () =>
          productionAppModule.dioProduction(gh<_i548.ProductionEnvironment>()),
      registerFor: {_prod},
    );
    return this;
  }
}

class _$CoreAppModule extends _i201.CoreAppModule {}

class _$StagingAppModule extends _i881.StagingAppModule {}

class _$ProductionAppModule extends _i739.ProductionAppModule {}
