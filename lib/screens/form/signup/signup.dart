import 'package:boxx/widget/constant.dart';
import 'package:flutter/material.dart';

import '../../splash/splash.dart';
import 'signup_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBkgColor,
        leading: IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> const SplashScreen()));},
         icon: const Icon(Icons.arrow_back_ios, 
         color: Colors.white,)),
      ),
      body: Container(
        width: double.infinity, height: double.infinity,
        decoration: const BoxDecoration(color: kBkgColor),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30), 
          
          
          Center(child: Image.asset('assets/icons/logo.png')), 
          const SizedBox(height: 8), 
          const SignUpForm(), 
            ],
          ),
        )
      ),
    );
  }
}