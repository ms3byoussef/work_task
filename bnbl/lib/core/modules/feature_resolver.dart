import 'package:bnbl/core/modules/injection_module.dart';
import 'package:bnbl/core/modules/router_module.dart';

abstract class FeatureResolver {
  RouterModule? get routerModule;

  InjectionModule? get injectionModule;
}
