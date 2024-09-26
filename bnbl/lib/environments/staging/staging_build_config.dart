// ignore_for_file: overridden_fields

import 'package:bnbl/core/config/build_config.dart';
import 'package:injectable/injectable.dart';

class StagingBuildConfig extends BuildConfig {
  @override
  Map<String, dynamic> configs = {'env': '.env.dev'};

  @override
  String get environment => Environment.dev;
}
