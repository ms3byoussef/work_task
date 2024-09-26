import 'package:bnbl/core/modules/feature_resolver.dart';
import 'package:bnbl/core/modules/injection_module.dart';
import 'package:bnbl/core/routers/app_router.dart';
import 'package:flutter/material.dart';

class AppFeaturesBuilder {
  final List<FeatureResolver> featureResolvers;
  final AppRouter _routers;

  AppFeaturesBuilder(
      {required this.featureResolvers, GlobalKey<NavigatorState>? navigatorKey})
      : _routers = AppRouter(
            routers: featureResolvers
                .where((element) => element.routerModule != null)
                .map((e) => e.routerModule!.getRouter)
                .toList(),
            navigatorKey: navigatorKey);

  List<InjectionModule> get modules => featureResolvers
      .where((element) => element.injectionModule != null)
      .map((e) => e.injectionModule!)
      .toList();

  AppRouter get routers => _routers;
}
