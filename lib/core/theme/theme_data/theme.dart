import 'package:flutter/material.dart';

import '../color/colors.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.scaffoldBackgroundColor,
    elevation: 2,
    shadowColor: Colors.black.withValues(alpha: 0.5),
  ),
);
