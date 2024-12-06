import 'package:seezn_tv_app/library.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppPage.appBarPG(
          context: context, title: "Profile", rightIcon: false),
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
