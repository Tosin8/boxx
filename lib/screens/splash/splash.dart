import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/bkg_video.mp4') 
    ..initialize().then((_){
_controller.play(); 
_controller.setLooping(true); 
setState(() {
  
});
    }); 
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                
                width: _controller.value.size, 
                height: _controller.value.size , 
                child: VideoPlayer(_controller),
                ),
            ),
          )
        ],
      )
    );
  }
}
