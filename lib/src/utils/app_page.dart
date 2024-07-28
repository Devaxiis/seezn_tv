import 'package:flutter/material.dart';
import 'package:seezn_tv_app/src/presentation/ui/home_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/profile_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/saved_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/search_screen.dart';
import 'package:seezn_tv_app/src/utils/app_color.dart';

sealed class AppPage{

  static const appMainPG = [ 
          HomeScreen(),
          SearchScreen(),
          SavedScreen(),
          ProfileScreen(),
        ];

  static AppBar appBarPG = AppBar(
        // leading: const Icon(Icons.home,
        // color: AppColor.colorBlueAccent12CDD9,),
        title: const Text("Seezn TV",style: TextStyle(
          color: AppColor.colorBlueAccent12CDD9,
          fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
      ); 

          

}