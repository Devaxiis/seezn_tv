import 'package:seezn_tv_app/src/presentation/ui/home_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/profile_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/saved_screen.dart';
import 'package:seezn_tv_app/src/presentation/ui/search_screen.dart';

sealed class AppPage{

  static const appMainPG = [ 
          HomeScreen(),
          SearchScreen(),
          SavedScreen(),
          ProfileScreen(),
        ];

}