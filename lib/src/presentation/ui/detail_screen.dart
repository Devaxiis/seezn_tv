import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:seezn_tv_app/library.dart';
import 'package:seezn_tv_app/src/config/apis.dart';
import 'package:seezn_tv_app/src/config/route/route.dart';
import 'package:seezn_tv_app/src/domain/models/all_video/results_data_ms.dart';
import 'package:seezn_tv_app/src/domain/models/one_video/one_video_data_ms.dart';
import 'package:seezn_tv_app/src/injector.dart';
import 'package:seezn_tv_app/src/presentation/ui/watch_screen.dart';
import 'package:seezn_tv_app/src/presentation/widget/detail_icons_wg.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.videoData});

  final ResultsDataMs videoData;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  OneVideoDataMs? fetchData = OneVideoDataMs(
      id: 0,
      view: 0,
      count: {},
      breaks: [],
      poster_desktop: "",
      poster_mobile: "",
      poster_card: "",
      poster_video: "",
      title: "",
      description: "",
      age_limit: 0,
      release_date: "",
      upload_at: "",
      kadrs: [],
      genre: [],
      category: [],
      contents: [],
      ova: [],
      chronology: [],
      tags: []);
  double value = 0;
  @override
  void initState() {
    super.initState();
    repository
        .getOneVideoData(Apis.api, widget.videoData.id)
        .whenComplete(() {})
        .then((v) {
      fetchData = v;
      value = fetchData!.count["count"]!.toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        setState(() {});
        return repository
            .getOneVideoData(Apis.api, widget.videoData.id)
            .whenComplete(() {})
            .then((v) {
          fetchData = v;
          value = fetchData!.count["count"]!.toDouble();
        });
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 620,
                width: MediaQuery.sizeOf(context).width,
                // alignment: Alignment.center,
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
                child: SafeArea(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: ColoredBox(
                                  color: AppColor.colorSoft252836,
                                  child: IconButton(
                                      onPressed: () {
                                        context.navigateBack();
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back_ios_new,
                                        color: AppColor.colorWhiteFFFFFF,
                                      ))),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  widget.videoData.title,
                  style: AppStyle.detailTitleST,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: RatingStars(
                  value: value,
                  starBuilder: (index, color) => Icon(
                    Icons.star,
                    color: color,
                  ),
                  starCount: 5,
                  starSize: 20,
                  maxValue: 5,
                  starSpacing: 2,
                  valueLabelPadding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                  valueLabelMargin: const EdgeInsets.only(right: 8),
                  starOffColor: const Color(0xffe7e8ea),
                  starColor: Colors.yellow,
                ),
              ),
              const SizedBox(height: 25),
              DetailIconsWg(fetchData: fetchData),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    const Icon(
                      Icons.date_range_outlined,
                      color: AppColor.colorGrey92929D,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      fetchData!.release_date,
                      style: AppStyle.detailReleaseDateST,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    const Icon(
                      Icons.crop_portrait_outlined,
                      color: AppColor.colorGrey92929D,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      widget.videoData.genre[0].genre.item,
                      style: AppStyle.detailGenreST,
                    ),
                  ],
                ),
              ),
                            ],
              ),
               const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Kichik hikoya:",
                  style: AppStyle.detailShortStoryST,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "${fetchData!.description}",
                  style: AppStyle.detailDescriptionST,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
