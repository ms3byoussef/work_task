import 'package:auto_route/auto_route.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/screens/add_transaction_screen.dart';
import 'package:bnbl/feature/presentation/camera_screen/camera_screen.dart';
import 'package:bnbl/feature/presentation/scanner_view/scanner_screen.dart';
import 'package:bnbl/feature/presentation/success_view/success_screen.dart';
import 'package:bnbl/feature/presentation/transaction_details_view/transaction_details_screen.dart';
import 'package:bnbl/feature/presentation/transaction_receipt_view/transaction_receipt_screen.dart';
import 'package:bnbl/splash/splash_screen.dart';
import 'package:flutter/material.dart';

part 'web_app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class WebAppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          keepHistory: true,
          page: AddTransactionRoute.page,
        ),
        AutoRoute(
          page: CameraRoute.page,
        ),
        AutoRoute(
          page: QRScannerRoute.page,
        ),
        AutoRoute(
          page: SuccessRoute.page,
        ),
        AutoRoute(
          page: TransactionDetailsRoute.page,
        ),
        AutoRoute(
          keepHistory: true,
          page: TransactionReceiptRoute.page,
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
