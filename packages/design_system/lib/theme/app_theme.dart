import 'package:design_system/theme/app_colors.dart';
import 'package:design_system/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final AppTextTheme textTheme;
  final AppColors colors;

  const AppTheme({
    required this.textTheme,
    required this.colors,
  });

  @override
  ThemeExtension<AppTheme> copyWith({
    AppTextTheme? textTheme,
    AppColors? colors,
  }) {
    return AppTheme(
      textTheme: textTheme ?? this.textTheme,
      colors: colors ?? this.colors,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this;
    return AppTheme(
      textTheme: other.textTheme,
      colors: other.colors,
    );
  }
}

extension AppThemeExtention on BuildContext {
  AppTheme get _theme => Theme.of(this).extension<AppTheme>()!;
  AppTextTheme get textTheme => _theme.textTheme;
  AppColors get colors => _theme.colors;
}
