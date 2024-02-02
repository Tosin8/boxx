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
                curve: Curves.easeIn, duration: const Duration(milliseconds: 1000),
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
              delay: const Duration(milliseconds: 500),
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
          const Text('Read our Terms & Conditions \nand Privacy Policy before you sign up', style: TextStyle(color: Colors.white, fontSize: 14, ),
          textAlign: TextAlign.center,
          ), 
          const SizedBox(height: 30), 
        ]

    ); 
    
  }
}



Positioned appLogo() {
    return Positioned(
        bottom: 250, 
          left: 120,
          child: FadeIn(
            duration: const Duration(milliseconds: 500),
            curve: Curves.bounceInOut, 
            child: Column(
              children: [
                Container(
                  width: 100, height: 60,
                  child: Image.asset('assets/icons/logo.png'), 
                  ),
                  const Text('Your Movie Universe', style: TextStyle(color: Colors.white, fontSize: 16),textAlign: TextAlign.center,), 
              ],
            ),
          ));}