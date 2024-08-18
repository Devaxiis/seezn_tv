import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seezn_tv_app/library.dart';
import 'package:seezn_tv_app/src/config/apis.dart';
import 'package:seezn_tv_app/src/config/route/route.dart';
import 'package:seezn_tv_app/src/domain/models/all_video/results_data_ms.dart';
import 'package:seezn_tv_app/src/injector.dart';
import 'package:seezn_tv_app/src/presentation/ui/detail_screen.dart';
import 'package:seezn_tv_app/src/presentation/widget/main_latest_card_wg.dart';

import '../bloc/all_data_bloc/bloc/all_data_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ResultsDataMs> fetchData = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<AllDataBloc>().add(AllDataCustomEvent());
        return Future.delayed(const Duration(milliseconds: 500));
      },
      child: BlocListener<AllDataBloc, AllDataState>(
        listener: (context, state) {
          if (state is AllDataCustomSuccess) {
            fetchData = state.fetchData;
          }
          if (state is AllDataCustomFailure) {
            context.read<AllDataBloc>().add(AllDataCustomEvent());
          }
          if (state is AllDataCustomLoading) {
            isLoading = true;
          }
        },
        child: Scaffold(
          backgroundColor: AppColor.colorDark1F1D2B,
          appBar: AppPage.appBarPG(
              context: context, title: "Seezn TV", rightIcon: true),
          body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Stack(
              children: [
                BlocBuilder<AllDataBloc, AllDataState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            "Trending",
                            style: AppStyle.mainTrandingST,
                          ),
                        ),
                        CarouselWg(items: fetchData),
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
                    );
                  },
                ),
                if (isLoading)
                  Center(child: CircularProgressIndicator.adaptive())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
