import 'package:bnbl/environments/staging/staging_build_config.dart';
import 'package:bnbl/environments/start_app.dart';

class StagingApp extends StartApp {
  StagingApp() : super(StagingBuildConfig());
}

Future<void> main() => StagingApp().startApp();
