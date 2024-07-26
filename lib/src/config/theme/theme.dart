import 'package:flutter/material.dart';
import 'package:seezn_tv_app/src/utils/app_color.dart';

sealed class Apptheme{
  static ThemeData get light{
    return ThemeData(
        appBarTheme:const AppBarTheme(
            elevation: 0,
            color: AppColor.colorDark1F1D2B
        ),
        scaffoldBackgroundColor: AppColor.colorDark1F1D2B,
        splashColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black)
    );
  }

  static ThemeData get dark{
    return ThemeData(
        appBarTheme:const AppBarTheme(
            elevation: 0,
            color: AppColor.colorDark1F1D2B
        ),
        scaffoldBackgroundColor: AppColor.colorDark1F1D2B,
        splashColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black)
    );
  }
}