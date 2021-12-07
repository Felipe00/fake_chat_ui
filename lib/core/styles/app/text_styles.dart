import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colors.dart';
import 'typography.dart';

class AppTextStyles {
  static TextStyle title = AppTypography.h2.copyWith(color: AppColors.black_88);
  static TextStyle titleEmphasis = AppTypography.h2
      .copyWith(color: AppColors.black_56, fontWeight: FontWeight.bold);

  static TextStyle body =
      AppTypography.body.copyWith(color: AppColors.black_56);

  static TextStyle bodyEmphasis = AppTypography.body
      .copyWith(color: AppColors.black_56, fontWeight: FontWeight.bold);

  static TextStyle bodyEmphasis_88 = AppTypography.body
      .copyWith(color: AppColors.black_88, fontWeight: FontWeight.bold);
}
