import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class StagingEnvironment {
  static const String _baseUrl = "baseUrl";

  String get devBaseUrl => dotenv.get(_baseUrl);
}
