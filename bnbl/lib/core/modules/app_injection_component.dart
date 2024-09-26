// ignore_for_file: file_names

import 'package:bnbl/core/config/build_config.dart';
import 'package:bnbl/core/di/core_injector_container.dart';

import 'injection_module.dart';

class AppInjectionComponent {
  AppInjectionComponent._();

  static AppInjectionComponent instance = AppInjectionComponent._();

  Future<void> registerModules({
    required List<InjectionModule> modules,
    required BuildConfig config,
  }) async {
    for (final module in modules) {
      await module.registerDependencies(
        injector: getIt,
        buildConfig: config,
      );
    }
  }
}
