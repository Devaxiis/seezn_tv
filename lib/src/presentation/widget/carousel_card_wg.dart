import 'package:flutter/material.dart';
import 'package:seezn_tv_app/src/utils/app_color.dart';

class CarouselCardWg extends StatelessWidget {
  final AssetImage image;
  const CarouselCardWg({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.colorSoft252836,
          image: DecorationImage(image: image,fit: BoxFit.cover),
          borderRadius: const BorderRadius.all( Radius.circular(16))
      ));
  }
}