import 'package:flutter/material.dart';

class VideoBkg extends StatefulWidget {
  const VideoBkg({super.key});

  @override
  State<VideoBkg> createState() => _VideoBkgState();
}

class _VideoBkgState extends State<VideoBkg> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset
  } 

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}