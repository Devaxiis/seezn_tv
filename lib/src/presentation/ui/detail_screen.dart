import 'package:cached_network_image/cached_network_image.dart';
import 'package:seezn_tv_app/library.dart';
import 'package:seezn_tv_app/src/config/apis.dart';
import 'package:seezn_tv_app/src/config/route/route.dart';
import 'package:seezn_tv_app/src/domain/models/all_video/results_data_ms.dart';
import 'package:seezn_tv_app/src/domain/models/one_video/one_video_data_ms.dart';
import 'package:seezn_tv_app/src/injector.dart';
import 'package:seezn_tv_app/src/presentation/ui/watch_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.videoData});

  final ResultsDataMs videoData;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late OneVideoDataMs? fetchData;
  @override
  void initState() {
    super.initState();
    repository
        .getOneVideoData(Apis.api, widget.videoData.id)
        .whenComplete(() {})
        .then((v) {
      fetchData = v;
      
    });
  }

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
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
              image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    "${widget.videoData.poster_mobile}",
                  ),
                  fit: BoxFit.cover),
            ),
            child: IconButton(
                onPressed: () {
                  context.navigatePush(WatchScreen(
                    videoUrl: fetchData!.contents[0].sources[0].link,
                  ));
                },
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
