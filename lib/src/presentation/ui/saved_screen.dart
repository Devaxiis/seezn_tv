import 'package:flutter/material.dart';

import '../../../library.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppPage.appBarPG(
          context: context, title: "Saved Movies", rightIcon: false),
      body: const Center(
        child: Text(
          "Proccesing...",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "Montserat",
              fontWeight: FontWeight.normal,
              color: AppColor.colorBlueAccent12CDD9),
        ),
      ),
    );
  }
}
