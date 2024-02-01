import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class btn extends StatefulWidget {
  const btn({super.key});

  @override
  State<btn> createState() => _btnState();
}

class _btnState extends State<btn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector( 
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  
                  Radius.circular(30), 
                  ),
              
              ),
              child: const Align(
                child: Text('Log In',
                 style: TextStyle(color: Colors.white,
                  fontSize: 18,
                 fontWeight: FontWeight.bold),)),
            ),
          )
        ]

      ),
    );
  }
}