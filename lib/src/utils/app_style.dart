
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
   /// Detail Screen     
  static const detailPlayST = TextStyle(
                                  fontFamily: "Montserrat",
                                  color: AppColor.colorWhiteFFFFFF);

  static const detailTitleST = TextStyle(
                      fontFamily: "Montserrat",
                      color: AppColor.colorWhiteFFFFFF,
                      fontSize: 20,
                      fontWeight: FontWeight.w400);
  static const detailCategoryST = TextStyle(
                      fontFamily: "Montserrat",
                      color: AppColor.colorWhiteFFFFFF,
                      fontSize: 20,
                      fontWeight: FontWeight.normal);
  static const detailGenreST = TextStyle(
                      fontFamily: "Montserrat",
                      color: AppColor.colorGrey92929D,
                      fontSize: 20,
                      fontWeight: FontWeight.normal);
  static const detailReleaseDateST = TextStyle(
                      fontFamily: "Montserrat",
                      color: AppColor.colorGrey92929D,
                      fontSize: 20,
                      fontWeight: FontWeight.normal);
  static const detailDescriptionST =  TextStyle(
                      fontFamily: "Montserrat",
                      color: AppColor.colorWhiteFFFFFF,
                      fontSize: 14,
                      fontWeight: FontWeight.w500);
  static const detailShortStoryST =  TextStyle(
                      fontFamily: "Montserrat",
                      color: AppColor.colorWhiteFFFFFF,
                      fontSize: 16,
                      fontWeight: FontWeight.w600);


}