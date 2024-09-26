import 'dart:async';

import 'package:bnbl/application.dart';
import 'package:bnbl/config/app_resolver.dart';
import 'package:bnbl/core/config/build_config.dart';
import 'package:bnbl/core/modules/app_builder.dart';
import 'package:bnbl/core/modules/app_injection_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final navKey = GlobalKey<NavigatorState>();

abstract class StartApp {
  final BuildConfig buildConfig;
  late final AppFeaturesBuilder featuresBuilder;

  StartApp(this.buildConfig);

  Future<void> startApp() async {
    await runZonedGuarded<Future<void>>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        await dotenv.load(fileName: buildConfig.getString("env") ?? '');

        featuresBuilder = AppFeaturesBuilder(
          featureResolvers: [
            AppResolver(),
          ],
          navigatorKey: navKey,
        );
        await AppInjectionComponent.instance.registerModules(
          modules: featuresBuilder.modules,
          config: buildConfig,
        );
        runApp(
          App(
            featuresBuilder: featuresBuilder,
          ),
        );
      },
      (error, stack) {},
    );
  }
}
