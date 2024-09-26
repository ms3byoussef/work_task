// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'web_app_router.dart';

/// generated route for
/// [AddTransactionScreen]
class AddTransactionRoute extends PageRouteInfo<void> {
  const AddTransactionRoute({List<PageRouteInfo>? children})
      : super(
          AddTransactionRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTransactionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddTransactionScreen();
    },
  );
}

/// generated route for
/// [CameraScreen]
class CameraRoute extends PageRouteInfo<void> {
  const CameraRoute({List<PageRouteInfo>? children})
      : super(
          CameraRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CameraScreen();
    },
  );
}

/// generated route for
/// [QRScannerScreen]
class QRScannerRoute extends PageRouteInfo<void> {
  const QRScannerRoute({List<PageRouteInfo>? children})
      : super(
          QRScannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'QRScannerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const QRScannerScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [SuccessScreen]
class SuccessRoute extends PageRouteInfo<void> {
  const SuccessRoute({List<PageRouteInfo>? children})
      : super(
          SuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'SuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SuccessScreen();
    },
  );
}

/// generated route for
/// [TransactionDetailsScreen]
class TransactionDetailsRoute extends PageRouteInfo<void> {
  const TransactionDetailsRoute({List<PageRouteInfo>? children})
      : super(
          TransactionDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TransactionDetailsScreen();
    },
  );
}

/// generated route for
/// [TransactionReceiptScreen]
class TransactionReceiptRoute
    extends PageRouteInfo<TransactionReceiptRouteArgs> {
  TransactionReceiptRoute({
    Key? key,
    required String imagePath,
    List<PageRouteInfo>? children,
  }) : super(
          TransactionReceiptRoute.name,
          args: TransactionReceiptRouteArgs(
            key: key,
            imagePath: imagePath,
          ),
          initialChildren: children,
        );

  static const String name = 'TransactionReceiptRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransactionReceiptRouteArgs>();
      return TransactionReceiptScreen(
        key: args.key,
        imagePath: args.imagePath,
      );
    },
  );
}

class TransactionReceiptRouteArgs {
  const TransactionReceiptRouteArgs({
    this.key,
    required this.imagePath,
  });

  final Key? key;

  final String imagePath;

  @override
  String toString() {
    return 'TransactionReceiptRouteArgs{key: $key, imagePath: $imagePath}';
  }
}
