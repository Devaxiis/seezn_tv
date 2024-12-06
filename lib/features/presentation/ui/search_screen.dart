import '../../../library.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppPage.appBarPG(context: context, title: "Search", rightIcon: false),
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
