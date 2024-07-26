import 'package:flutter/material.dart';
import 'package:seezn_tv_app/src/utils/app_color.dart';
import 'package:seezn_tv_app/src/utils/app_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorDark1F1D2B,
      appBar: AppPage.appBarPG,
      body: const Column(),
    );
  }
}