import 'package:flutter/material.dart';

import '../../../library.dart';

class MainLatestCardWg extends StatelessWidget {
  Function() onTab;
  MainLatestCardWg({super.key, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTab(),
      child: Container(
        height: 230,
        width: 150,
        decoration: const BoxDecoration(
            color: AppColor.colorSoft252836,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  child: SizedBox(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      child: const Image(
                        image: AppImages.spidermanImg,
                        fit: BoxFit.cover,
                      )),
                )),
            Expanded(
                child: DefaultTextStyle(
              style: const TextStyle(color: AppColor.colorWhiteFFFFFF),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
}
