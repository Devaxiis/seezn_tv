
import 'package:flutter/material.dart';
import 'package:seezn_tv_app/src/utils/app_color.dart';

sealed class AppStyle{

  static const splashTextST = TextStyle(
          fontFamily: "Montserrat",
          color: AppColor.colorBlueAccent12CDD9,
          fontSize: 30,
          fontWeight: FontWeight.w700
        );
  static const splashText2ST = TextStyle(
          fontFamily: "Montserrat",
          color: AppColor.colorWhiteFFFFFF,
          fontSize: 10,
          fontWeight: FontWeight.w400
        );
  static const mainTrandingST = TextStyle(
          fontFamily: "Montserrat",
          color: AppColor.colorWhiteFFFFFF,
          fontSize: 20,
          fontWeight: FontWeight.w600
        );


}