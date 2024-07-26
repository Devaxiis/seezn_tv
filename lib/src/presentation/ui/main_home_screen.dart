import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:seezn_tv_app/src/presentation/ui/home_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/profile_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/saved_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/search_screen.dart';

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
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(vertical: 14),
        child: GNav(
            backgroundColor: Color(0xff1f1d2b),
            rippleColor: Color(0xff1f1d2b), // tab button ripple color when pressed
            hoverColor: Color(0xff1f1d2b), // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            curve: Curves.easeOutExpo, // tab animation curves
            duration: Duration(milliseconds: 900), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Color(0xff8b8b8b), // unselected icon color
            activeColor:Color(0xff12cdd9), // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:Color(0xff252836), // selected tab background color
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search_rounded,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.bookmark,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ]
        ),
      ),
    );
  }
}
