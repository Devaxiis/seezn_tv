
import 'package:seezn_tv_app/library.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorDark1F1D2B,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: AppPage.appMainPG,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 25),
        child: NavBarWg(onTabChange: (value) {
              controller.animateToPage(value, duration: const Duration(milliseconds: 500), curve: Curves.linear);
            })      ),
    );
  }
}
