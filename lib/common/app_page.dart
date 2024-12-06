import 'package:flutter/material.dart';
import 'package:seezn_tv_app/common/route/route.dart';
import 'package:seezn_tv_app/features/presentation/ui/all_movie_screen.dart';
import 'package:seezn_tv_app/features/presentation/ui/home_screen.dart';
import 'package:seezn_tv_app/features/presentation/ui/profile_screen.dart';
import 'package:seezn_tv_app/features/presentation/ui/saved_screen.dart';
import 'package:seezn_tv_app/features/presentation/ui/search_screen.dart';
import 'package:seezn_tv_app/common/app_color.dart';

sealed class AppPage {
  static const appMainPG = [
    HomeScreen(),
    AllMovieScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];

  static AppBar appBarPG(
      {required BuildContext context,
      required String title,
      required bool rightIcon}) {
    return AppBar(
      // leading: const Icon(Icons.home,
      // color: AppColor.colorBlueAccent12CDD9,),
      automaticallyImplyLeading: false,
      actions: rightIcon
          ? [
              GestureDetector(
                  onTap: () {
                    context.navigatePush(const SearchScreen());
                  },
                  child: const Icon(
                    Icons.search,
                    color: AppColor.colorWhiteFFFFFF,
                  )),
              const SizedBox(width: 20),
            ]
          : null,
      title: Text(
        title,
        style: const TextStyle(
            color: AppColor.colorBlueAccent12CDD9,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
