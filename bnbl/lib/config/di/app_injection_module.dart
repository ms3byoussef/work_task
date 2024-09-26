import 'dart:async';

import 'package:bnbl/core/config/build_config.dart';
import 'package:bnbl/core/modules/injection_module.dart';
import 'package:get_it/get_it.dart';

import 'app_injection_container.dart';

class AppInjectionModule extends InjectionModule {
  @override
  FutureOr<void> registerDependencies(
      {required GetIt injector, required BuildConfig buildConfig}) async {
    configurePaytallyDependencies(injector, buildConfig.environment);
  }
}
