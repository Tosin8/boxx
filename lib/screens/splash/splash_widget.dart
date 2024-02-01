import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class btn extends StatefulWidget {
  const btn({super.key});

  @override
  State<btn> createState() => _btnState();
}

class _btnState extends State<btn> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FadeInUp(
            child: GestureDetector( 
              onTap: (){},
              child: Container(
                width: 250, 
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    
                    Radius.circular(8), 
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
          ), 
          SizedBox(height: 20), 
          GestureDetector( 
            onTap: (){},
            child: Container(
              width: 250, 
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: const BorderRadius.all(
                  
                  Radius.circular(8), 
                  ),
               
              ),
              child: const Align(
                child: Text('Create Account',
                 style: TextStyle(color: Colors.white,
                  fontSize: 18,
                 fontWeight: FontWeight.bold),)),
            ),
          ),
          SizedBox(height: 30),  
        ]

      );
    
  }
}