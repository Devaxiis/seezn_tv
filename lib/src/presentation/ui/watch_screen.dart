import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/services.dart';
import 'package:seezn_tv_app/library.dart';
import 'package:seezn_tv_app/src/config/route/route.dart';
import 'package:seezn_tv_app/src/presentation/ui/splash_screen.dart';
import 'package:video_player/video_player.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({super.key, required this.videoUrl});
  final String videoUrl;
  @override
  State<WatchScreen> createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  late FlickManager flickManager;
  late final controller;
  late final url;
  bool popCan = false;
  @override
  void initState() {
    super.initState();
    url = Uri.parse(widget.videoUrl);
  }

  @override
  void didChangeDependencies() {
    controller = VideoPlayerController.networkUrl(url);
    super.didChangeDependencies();
    flickManager = FlickManager(videoPlayerController: controller);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) async {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit App'),
            content: Text('Are you sure you want to exit the app?'),
            actions: [
              ElevatedButton(
                child: Text('No'),
                onPressed: () {
                  popCan = false;
                  context.navigateBack();
                },
              ),
              ElevatedButton(
                child: Text('Yes'),
                onPressed: () {
                  popCan = true;
                  context.navigateBack();
                  context.navigateBack();
                },
              ),
            ],
          ),
        );
        setState(() {});
      },
      canPop: false,
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
                  systemUIOverlay: [
                    SystemUiOverlay.top
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
