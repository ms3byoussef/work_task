// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:bnbl/core/di/core_injector_container.dart';
import 'package:bnbl/core/modules/app_builder.dart';
import 'package:bnbl/feature/presentation/camera_screen/cubit/camera_cubit.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatefulWidget {
  final AppFeaturesBuilder featuresBuilder;

  const App({super.key, required this.featuresBuilder});

  @override
  State<App> createState() => _PaytallyAppState();
}

class _PaytallyAppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // Jiffy.locale(context.locale.languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQueryData.fromView(View.of(context));
    if (data.size.shortestSide > 600) {
      // check if its bigger
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
    // if (defaultTargetPlatform == TargetPlatform.android) {
    //   SystemUiHelper.makeStatusBarTransparent();
    // }

    final AutoRouterDelegate delegate = widget.featuresBuilder.routers.delegate(
      navigatorObservers: () => [AppRouteObserver()],
    );

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp.router(
        theme: ThemeData(
          fontFamily: AppText.font,
          extensions: [
            AppTheme(
              textTheme: AppTextTheme(
                headline: AppTextStyle.headlineTextStyle,
                headline2: AppTextStyle.headline2TextStyle,
                subHead: AppTextStyle.subHeadTextStyle,
                subHead2: AppTextStyle.subHead2TextStyle,
                body: AppTextStyle.bodyTextStyle,
                textfield: AppTextStyle.textfieldTextStyle,
                small: AppTextStyle.smallTextStyle,
                small2: AppTextStyle.small2TextStyle,
              ),
              colors: AppColors(
                primaryColor: const Color(0xFF0032EE),
                accentColor: const Color(0xFF12B76A),
                captionColor: const Color(0xFF767676),
                headlineColor: const Color(0xFF1A1A1A),
                blackColor: const Color(0xFF000000),
                greyColor: const Color(0xFF9F9F9F),
              ),
            ),
          ],
        ),
        debugShowCheckedModeBanner: false,
        // scrollBehavior: MyCustomScrollBehavior(),
        routerDelegate: delegate,
        routeInformationParser:
            widget.featuresBuilder.routers.defaultRouteParser(),
        routeInformationProvider:
            widget.featuresBuilder.routers.routeInfoProvider(),
        builder: (BuildContext context, Widget? child) {
          final MediaQueryData data = MediaQuery.of(context);
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<QRScannerCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<CameraCubit>()..initializeCamera(),
              ),
            ],
            child: MediaQuery(
              data: data.copyWith(),
              child: child!,
            ),
          );
        },
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class AppRouteObserver extends RouteObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route.settings.name != null) {
      debugPrint('Route pushed: ${route.settings.name}');
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (route.settings.name != null) {
      debugPrint('Route popped: ${route.settings.name}');
    }
  }
}
