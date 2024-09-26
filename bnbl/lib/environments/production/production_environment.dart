import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ProductionEnvironment {
  static const String _productionUrl = "baseUrl";
  String get productionUrl => dotenv.get(_productionUrl);
}
