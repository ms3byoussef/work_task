import 'package:bnbl/config/di/app_injection_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  initializerName: r'$initAppDependenciesGetIt',
  preferRelativeImports: true,
  // asExtension: false,
)
void configurePaytallyDependencies(GetIt getIt, String? environment) =>
    getIt.$initAppDependenciesGetIt(environment: environment);
