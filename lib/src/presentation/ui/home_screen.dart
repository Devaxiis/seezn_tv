import 'package:seezn_tv_app/library.dart';
import 'package:seezn_tv_app/src/config/apis.dart';
import 'package:seezn_tv_app/src/config/route/route.dart';
import 'package:seezn_tv_app/src/domain/models/all_video/results_data_ms.dart';
import 'package:seezn_tv_app/src/injector.dart';
import 'package:seezn_tv_app/src/presentation/ui/detail_screen.dart';
import 'package:seezn_tv_app/src/presentation/widget/main_latest_card_wg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ResultsDataMs> fetchData = [];
  List<Widget> items = [
    const CarouselCardWg(image: AppImages.spidermanImg),
    const CarouselCardWg(image: AppImages.tigerImg),
    const CarouselCardWg(image: AppImages.spidermanImg),
    const CarouselCardWg(image: AppImages.kinoImg),
  ];

  @override
  void initState() {
    super.initState();
    repository.getAllData(Apis.api).then((value) {
      fetchData = value!.results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        setState(() {});
        return repository.getAllData(Apis.api).then((value) {
                fetchData = value!.results;
              });
      },
      child: Scaffold(
        backgroundColor: AppColor.colorDark1F1D2B,
        appBar: AppPage.appBarPG(
            context: context, title: "Seezn TV", rightIcon: true),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Trending",
                  style: AppStyle.mainTrandingST,
                ),
              ),
              CarouselWg(items: items),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Latest Movies",
                  style: AppStyle.mainTrandingST,
                ),
              ),
              SizedBox(
                height: 240,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: fetchData.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: MainLatestCardWg(
                          data: fetchData[index],
                          onTab: () {
                            context.navigatePush(DetailScreen(
                              videoData: fetchData[index],
                            ));
                          },
                        ),
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Latest TV Serial",
                  style: AppStyle.mainTrandingST,
                ),
              ),
              SizedBox(
                height: 240,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: fetchData.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: MainLatestCardWg(
                          data: fetchData[index],
                          onTab: () {
                            context.navigatePush(DetailScreen(
                              videoData: fetchData[index],
                            ));
                          },
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
