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
         
             GestureDetector( 
              onTap: (){
              
              },
              child: FadeInUp(
                delay: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                 duration: const Duration(milliseconds: 1000),
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
          
          const SizedBox(height: 20), 
          GestureDetector( 
            onTap: (){},
            child: FadeInUp(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 1000),
              child: Container(
                width: 250, 
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(
                    
                    Radius.circular(8), 
                    ),
                 
                ),
                child: const Align(
                  child: Text('Create Account',
                   style: TextStyle(color: Colors.white,
                    fontSize: 18,
                   fontWeight: FontWeight.bold),)),
              ),
            ),), 
          
          const SizedBox(height: 20),  
          const Text('By Signing Up, You Agree To Our Terms &\n Conditions and Privacy Policy.', style: TextStyle(color: Colors.white, fontSize: 14, ),
          textAlign: TextAlign.center,
          ), 
          const SizedBox(height: 30), 
        ]

    ); 
    
  }
}



Positioned appLogo() {
    return Positioned(
        bottom: 230, 
          left: 120,
          child: FadeIn(
            duration: const Duration(milliseconds: 500),
            curve: Curves.bounceInOut, 
            child: Column(
              children: [
                Container(
                  width: 150, height: 80,
                  child: Image.asset('assets/icons/logo.png'), 
                  ),
                  const Text('Your Movie Universe', style: TextStyle(color: Colors.white, fontSize: 16),textAlign: TextAlign.center,), 
              ],
            ),
          ));}