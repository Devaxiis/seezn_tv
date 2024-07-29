

import '../../../library.dart';

class MainAppbarWG extends StatelessWidget {
  const MainAppbarWG({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        // leading: const Icon(Icons.home,
        // color: AppColor.colorBlueAccent12CDD9,),
        actions: [
          GestureDetector(
            onTap: (){
              
            },
            child: const Icon(Icons.search,color: AppColor.colorWhiteFFFFFF,)),
          const SizedBox(width: 20),
        ],
        title: const Text("Seezn TV",style: TextStyle(
          color: AppColor.colorBlueAccent12CDD9,
          fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
      
      );
      }
      }
