import 'package:flutter/cupertino.dart';
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
      body:  SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: 240,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 230,
                      width: 150,
                      decoration: const BoxDecoration(
                      color: AppColor.colorSoft252836,
                        borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child:SizedBox(
                              height: MediaQuery.sizeOf(context).height,
                              width: MediaQuery.sizeOf(context).width,
                              child: const Image(image: AppImages.spidermanImg,fit: BoxFit.cover,))),
                           Expanded(child: DefaultTextStyle(
                            style: const TextStyle(
                              color: AppColor.colorWhiteFFFFFF
                            ),
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height,
                              width: MediaQuery.sizeOf(context).width,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Salom"),
                                    Text("Narx"),
                                  ],
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  );
                }
                ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Latest TV Serial",style: AppStyle.mainTrandingST,),
            ),
            SizedBox(
              height: 240,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 230,
                      width: 150,
                      decoration: const BoxDecoration(
                      color: AppColor.colorSoft252836,
                        borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child:SizedBox(
                              height: MediaQuery.sizeOf(context).height,
                              width: MediaQuery.sizeOf(context).width,
                              child: const Image(image: AppImages.spidermanImg,fit: BoxFit.cover,))),
                           Expanded(child: DefaultTextStyle(
                            style: const TextStyle(
                              color: AppColor.colorWhiteFFFFFF
                            ),
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height,
                              width: MediaQuery.sizeOf(context).width,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Salom"),
                                    Text("Narx"),
                                  ],
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  );
                }
                ),
            )
            
        
          ],
        ),
      ),
    );
  }
}