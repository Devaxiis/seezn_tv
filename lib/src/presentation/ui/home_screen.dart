import 'package:seezn_tv_app/library.dart';
import 'package:seezn_tv_app/src/presentation/widget/main_latest_card_wg.dart';

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
      appBar: AppPage.appBarPG(context),
      body: SingleChildScrollView(
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
                  itemBuilder: (_, index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: MainLatestCardWg(),
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
                  itemBuilder: (_, index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: MainLatestCardWg(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
