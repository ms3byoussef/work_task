import 'package:bnbl/environments/production/production_build_config.dart';
import 'package:bnbl/environments/start_app.dart';

class ProductionApp extends StartApp {
  ProductionApp() : super(ProductionBuildConfig());
}

Future<void> main() => ProductionApp().startApp();
