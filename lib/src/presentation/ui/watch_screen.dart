import 'package:flutter/material.dart';
import 'package:seezn_tv_app/library.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({super.key});

  @override
  State<WatchScreen> createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500,
            width: MediaQuery.sizeOf(context).width,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
                image: DecorationImage(
                    image: AppImages.spidermanImg, fit: BoxFit.cover)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_outline_rounded,
                  color: AppColor.colorBlueAccent12CDD9,
                  size: 60,
                )),
          ),
          const Text(
            "Spiderman",
            style: TextStyle(
                color: AppColor.colorWhiteFFFFFF,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
          const Text(
            "Spiderman",
            style: TextStyle(
                color: AppColor.colorWhiteFFFFFF,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
          const Text(
            "Spiderman",
            style: TextStyle(
                color: AppColor.colorWhiteFFFFFF,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
          const Text(
            "Spiderman",
            style: TextStyle(
                color: AppColor.colorWhiteFFFFFF,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
