import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:seezn_tv_app/src/presentation/ui/home_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/profile_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/saved_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/search_screen.dart';
import 'package:seezn_tv_app/src/presentation/widget/nav_bar_wg.dart';
import 'package:seezn_tv_app/src/utils/app_color.dart';
import 'package:seezn_tv_app/src/utils/app_page.dart';

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
