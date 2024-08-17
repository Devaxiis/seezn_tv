import 'package:flutter/material.dart';
import 'package:seezn_tv_app/src/config/route/route.dart';
import 'package:seezn_tv_app/src/presentation/ui/main_home_screen.dart';
import 'package:seezn_tv_app/src/utils/app_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
        (_){
          // ignore: use_build_context_synchronously
          context.navigateReplacement(const MainHomeScreen());
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1f1d2b),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(),
              Text("Seezn Tv",style: AppStyle.splashTextST,),
              Text("Powered by devaxis",style: AppStyle.splashText2ST,)
            ],
          ),
        ),
      ),
    );
  }
}
