import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:seezn_tv_app/src/presentation/ui/home_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/profile_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/saved_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/search_screen.dart';
import 'package:seezn_tv_app/src/presentation/widget/nav_bar_wg.dart';

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
      backgroundColor: const Color(0xff1f1d2b),
      body: PageView(
        controller: controller,
        children: const [
          HomeScreen(),
          SearchScreen(),
          SavedScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: NavBarWg(onTabChange: (value) {
              controller.animateToPage(value, duration: const Duration(milliseconds: 500), curve: Curves.linear);
            })      ),
    );
  }
}
