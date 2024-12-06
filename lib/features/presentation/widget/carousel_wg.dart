import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:seezn_tv_app/library.dart';
import 'package:seezn_tv_app/common/route/route.dart';
import 'package:seezn_tv_app/domain/models/all_video/results_data_ms.dart';
import 'package:seezn_tv_app/features/presentation/ui/detail_screen.dart';

class CarouselWg extends StatelessWidget {
  const CarouselWg({super.key, required this.items});
  final List<ResultsDataMs> items;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, value) {
        return GestureDetector(
          onTap: () {
            context.navigatePush(DetailScreen(videoData: items[index]));
          },
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    items[index].poster_mobile,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    color: AppColor.colorBlack171725.withOpacity(0.4),
                    child: Text(
                      items[index].title,
                      style: AppStyle.detailTitleST,
                    ))),
          ),
        );
      },
      options: CarouselOptions(
        height: 380,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
