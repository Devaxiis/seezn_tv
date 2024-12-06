import 'package:flutter/material.dart';
import 'package:seezn_tv_app/common/app_color.dart';

sealed class AppDecoration{
  
static const simpleDC =  BoxDecoration(
        color: AppColor.colorSoft252836,
        borderRadius: BorderRadius.all(Radius.circular(16))
      );

}