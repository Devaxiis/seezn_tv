

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBarWg extends StatelessWidget {
  final Function(int index) onTabChange;
  const NavBarWg({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
            onTabChange:(value)=> onTabChange(value),
            backgroundColor: const Color(0xff1f1d2b),
            rippleColor: const Color(0xff1f1d2b), // tab button ripple color when pressed
            hoverColor: const Color(0xff1f1d2b), // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            curve: Curves.easeOutExpo, // tab animation curves
            duration: const Duration(milliseconds: 900), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: const Color(0xff8b8b8b), // unselected icon color
            activeColor:const Color(0xff12cdd9), // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:const Color(0xff252836), // selected tab background color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            tabs: const [
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
        );
  }
}