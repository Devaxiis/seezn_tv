import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seezn_tv_app/src/presentation/widget/carousel_card_wg.dart';
import 'package:seezn_tv_app/src/presentation/widget/carousel_wg.dart';
import 'package:seezn_tv_app/src/utils/app_color.dart';
import 'package:seezn_tv_app/src/utils/app_decoration.dart';
import 'package:seezn_tv_app/src/utils/app_image.dart';
import 'package:seezn_tv_app/src/utils/app_page.dart';
import 'package:seezn_tv_app/src/utils/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> items = [
    const CarouselCardWg(image: AppImages.spidermanImg),
    const CarouselCardWg(image: AppImages.tigerImg),
    const CarouselCardWg(image: AppImages.spidermanImg),
    const CarouselCardWg(image: AppImages.kinoImg),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorDark1F1D2B,
      appBar: AppPage.appBarPG,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Trending",style: AppStyle.mainTrandingST,),
          ),
          CarouselWg(items: items),
           const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Latest movies",style: AppStyle.mainTrandingST,),
          ),
          

        ],
      ),
    );
  }
}