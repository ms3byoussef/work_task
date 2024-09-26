import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/core/modules/router_module.dart';

class AppRouterModule extends RouterModule {
  AppRouterModule();

  @override
  RootStackRouter get getRouter => WebAppRouter();
}
