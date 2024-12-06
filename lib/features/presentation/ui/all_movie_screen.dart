
import 'package:seezn_tv_app/library.dart';
import 'package:seezn_tv_app/common/route/route.dart';
import 'package:seezn_tv_app/features/presentation/ui/detail_screen.dart';
import 'package:seezn_tv_app/features/presentation/widget/main_latest_card_wg.dart';

class AllMovieScreen extends StatefulWidget {
  const AllMovieScreen({super.key});

  @override
  State<AllMovieScreen> createState() => _AllMovieScreenState();
}

class _AllMovieScreenState extends State<AllMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppPage.appBarPG(
          context: context, title: "All Movies", rightIcon: false),
      // body: Padding(
      //   padding: const EdgeInsets.only(
      //     left: 20,
      //     right: 20,
      //     top: 10,
      //   ),
      //   child: GridView.builder(
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //       childAspectRatio: 9 / 16,
      //       mainAxisSpacing: 10,
      //       crossAxisSpacing: 10,
      //     ),
      //     itemBuilder: (context, index) {
      //       return MainLatestCardWg(
      //         data: ,
      //         onTab: () {
      //           context.navigatePush(const WatchScreen());
      //         },
      //       );
      //     },
      //   ),
      // ),
   
     );
  }
}
