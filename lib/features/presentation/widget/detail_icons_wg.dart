import 'package:flutter/material.dart';
import 'package:seezn_tv_app/common/route/route.dart';
import 'package:seezn_tv_app/domain/models/one_video/one_video_data_ms.dart';
import 'package:seezn_tv_app/features/presentation/ui/watch_screen.dart';

import '../../../library.dart';

class DetailIconsWg extends StatelessWidget {
  const DetailIconsWg({super.key, required this.fetchData});

  final OneVideoDataMs? fetchData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              context.navigatePush(WatchScreen(
                  videoUrl: fetchData,
                  isPop: false));
            },
            child: Container(
              height: 48,
              width: 115,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: const BoxDecoration(
                  color: AppColor.colorOrangeFF8700,
                  borderRadius: BorderRadius.all(Radius.circular(32))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: AppColor.colorWhiteFFFFFF,
                  ),
                  Text(
                    "Play",
                    style: AppStyle.detailPlayST,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.navigatePush(WatchScreen(
                videoUrl: fetchData,
                isPop: true,
              ));
            },
            child: Container(
              height: 48,
              width: 48,
              decoration: const BoxDecoration(
                  color: AppColor.colorSoft252836, shape: BoxShape.circle),
              child: const Icon(
                Icons.shop_two_rounded,
                color: AppColor.colorWhiteFFFFFF,
              ),
            ),
          ),
          Container(
            height: 48,
            width: 48,
            decoration: const BoxDecoration(
                color: AppColor.colorSoft252836, shape: BoxShape.circle),
            child: const Icon(
              Icons.save_rounded,
              color: AppColor.colorWhiteFFFFFF,
            ),
          ),
        ],
      ),
    );
  }
}
