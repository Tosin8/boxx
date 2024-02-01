import 'package:flutter/material.dart';

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
              width: 150, 
              height: 300,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  
                  Radius.circular(30), 
                  ),
              border: Border.all(color: Colors.white), 
              ),
              child: const Align(
                child: Text('Log In',
                 style: TextStyle(color: Colors.white,
                  fontSize: 18,
                 fontWeight: FontWeight.bold),)),
            ),
          ), 
          GestureDetector( 
            onTap: (){},
            child: Container(
              width: 150, 
              height: 300,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: const BorderRadius.all(
                  
                  Radius.circular(30), 
                  ),
               
              ),
              child: const Align(
                child: Text('Create Account',
                 style: TextStyle(color: Colors.white,
                  fontSize: 18,
                 fontWeight: FontWeight.bold),)),
            ),
          ), 
        ]

      ),
    );
  }
}