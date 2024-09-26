abstract class BuildConfig {
  Map<String, dynamic> configs = {};

  String get environment;

  bool? getBool(String key) =>
      _getValueWithKeyOrThrowInCaseOfDifferentType<bool>(key);

  double? getDouble(String key) =>
      _getValueWithKeyOrThrowInCaseOfDifferentType<double>(key);

  int? getInt(String key) =>
      _getValueWithKeyOrThrowInCaseOfDifferentType<int>(key);

  String? getString(String key) =>
      _getValueWithKeyOrThrowInCaseOfDifferentType<String>(key);

  T? _getValueWithKeyOrThrowInCaseOfDifferentType<T>(String key) {
    if (configs.isNotEmpty && configs.containsKey(key)) {
      final value = configs[key];
      if (value is T) {
        return value;
      } else {
        throw const FormatException(
            'The value you are trying to get is not the same type that this function returns!');
      }
    } else {
      return null;
    }
  }
}
