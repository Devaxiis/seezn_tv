import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/services.dart';
import 'package:seezn_tv_app/library.dart';
import 'package:seezn_tv_app/src/config/route/route.dart';
import 'package:seezn_tv_app/src/domain/models/one_video/one_video_data_ms.dart';
import 'package:seezn_tv_app/src/presentation/ui/splash_screen.dart';
import 'package:video_player/video_player.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({super.key, required this.videoUrl, required this.isPop});
  final OneVideoDataMs? videoUrl;
  final bool isPop;
  @override
  State<WatchScreen> createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  late FlickManager flickManager;
  late VideoPlayerController controller;
  late final url;
  bool popCan = false;
  @override
  void initState() {
    super.initState();
    url = Uri.parse(widget.videoUrl!.contents[0].sources[0].link);
  }

  @override
  void didChangeDependencies() {
    controller = VideoPlayerController.networkUrl(url);
    super.didChangeDependencies();
    flickManager = FlickManager(videoPlayerController: controller);
  }
  
  void getQualityVideo(int a){
     switch (a) {

       case 1:url = Uri.parse(widget.videoUrl!.contents[0].sources[0].link);
         break;
       case 2:url = Uri.parse(widget.videoUrl!.contents[0].sources[1].link);
         break;
       case 3:url = Uri.parse(widget.videoUrl!.contents[0].sources[2].link);
         break;
     }
     setState(() {
       
     });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) async {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exit App',style: TextStyle(color: AppColor.colorWhiteFFFFFF)),
            content: const Text('Are you sure you want to exit the app?',style: TextStyle(color: AppColor.colorWhiteFFFFFF)),
            backgroundColor: AppColor.colorBlueAccent12CDD9,
            actions: [
              ElevatedButton(
                child: const Text('No',style: TextStyle(color: AppColor.colorBlueAccent12CDD9),),
                onPressed: () {
                  popCan = false;
                  context.navigateBack();
                },
              ),
              ElevatedButton(
                child: const Text('Yes',style: TextStyle(color: AppColor.colorBlueAccent12CDD9)),
                onPressed: () {
                  popCan = true;
                  controller.dispose();
                  context.navigateBack();
                  context.navigateBack();
                },
              ),
            ],
          ),
        );
        setState(() {});
      },
      canPop: widget.isPop? true:false,
      child: Scaffold(
        backgroundColor: AppColor.colorDark1F1D2B,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: FlickVideoPlayer(
                  flickManager: flickManager,
                ),
              ),
              const SizedBox(height: 20),

              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  color: AppColor.colorBlack171725,
                  borderRadius: BorderRadius.circular(22)
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Quality",style: TextStyle(color: AppColor.colorWhiteFFFFFF),),
                      Icon(
                        Icons.arrow_drop_down_rounded,color: AppColor.colorWhiteFFFFFF,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
