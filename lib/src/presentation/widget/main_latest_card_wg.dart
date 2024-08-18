import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:seezn_tv_app/src/domain/models/all_video/results_data_ms.dart';

import '../../../library.dart';

// ignore: must_be_immutable
class MainLatestCardWg extends StatelessWidget {
  final Function() onTab;
  final ResultsDataMs data;
  const MainLatestCardWg({super.key, required this.onTab, required this.data});

  @override
  Widget build(BuildContext context) {
    print("----------");
    log("${data.poster_mobile}");
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
                      child: CachedNetworkImage(
                        imageUrl: data.poster_mobile,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator.adaptive()),
                        )
                      // Image.network(
                      //   data.poster_mobile,
                      //   fit: BoxFit.cover,
                      // ),
                      ),
                )),
            Expanded(
                child: DefaultTextStyle(
              style: const TextStyle(color: AppColor.colorWhiteFFFFFF),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("${data.title}",style: TextStyle(),overflow: TextOverflow.ellipsis,),
                      Text("${data.release_date}",overflow: TextOverflow.ellipsis,),
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
