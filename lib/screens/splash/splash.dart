import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'splash_widget.dart';


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
          LayoutBuilder( 
            builder: (context, constraints) {
              return SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox
                
                (
                  width: constraints.maxWidth * _controller.value.aspectRatio, 
                  height: constraints.maxHeight,
                  // width: _controller.value.size.width, 
                  // height: _controller.value.size.height , 
                  child: VideoPlayer(_controller),
                  ),
              ),
            );
            },
            
          ), 
          Positioned(
            top: 30, 
            left: 3,
            child: Container(
              width: 100, height: 60,
              child: Image.asset('assets/icons/logo.png'))), 
          const Align(
             alignment: Alignment.bottomCenter,
            
             child: btn()), 
        ],
      )
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
