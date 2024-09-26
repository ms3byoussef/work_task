import 'package:bnbl/config/di/app_injection_module.dart';
import 'package:bnbl/config/router/app_router_module.dart';
import 'package:bnbl/core/modules/feature_resolver.dart';
import 'package:bnbl/core/modules/injection_module.dart';
import 'package:bnbl/core/modules/router_module.dart';

class AppResolver extends FeatureResolver {
  AppResolver();

  @override
  InjectionModule? get injectionModule => AppInjectionModule();

  @override
  RouterModule? get routerModule => AppRouterModule();
}
