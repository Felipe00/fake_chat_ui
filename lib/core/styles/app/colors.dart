import 'dart:ui';

class AppColors {
  // ====================================================
  // Base colors
  // ====================================================
  static const primaryLight = Color(0xFF0066EE);
  static const primary = Color(0xFF0050E5);
  static const primaryDark = Color(0xFF0044CC);
  static final primary_04 = primary.withOpacity(.04);

  static const secondaryLight = Color(0xFF66AAFF);
  static const secondary = Color(0xFF4499FF);
  static const secondaryDark = Color(0xFF4488DD);

  // ====================================================
  // Alerts
  // ====================================================
  static const infoLight = Color(0xFF009AEB);
  static const info = Color(0xFF008AD2);
  static const infoDark = Color(0xFF0079B8);

  static const successLight = Color(0xFF40CF54);
  static const success = Color(0xFF38B449);
  static const successDark = Color(0xFF309C3F);
  static final success_04 = success.withOpacity(.04);

  static const warningLight = Color(0xFFFFE064);
  static const warning = Color(0xFFFFC73E);
  static const warningDark = Color(0xFFE5B338);

  static const dangerLight = Color(0xFFFF584C);
  static const danger = Color(0xFFF44336);
  static const dangerDark = Color(0xFFDB3C31);
  static final danger_04 = danger.withOpacity(.04);

  static const black = Color(0xFF000000);
  static final black_88 = black.withOpacity(.88);
  static final black_56 = black.withOpacity(.56);
  static final black_40 = black.withOpacity(.40);
  static final black_08 = black.withOpacity(.08);
}
