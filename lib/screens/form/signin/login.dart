import 'package:boxx/screens/form/signin/login_widget.dart';
import 'package:boxx/screens/splash/splash.dart';
import 'package:boxx/widget/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      body: Container(
        width: double.infinity, 
        height: double.infinity,
        decoration: const BoxDecoration(

          color: kBkgColor, 
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
Padding( 
  padding: const EdgeInsets.only(left: 0),  
  child: IconButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SplashScreen())); 
  }, 
  icon: const Icon(Icons.arrow_back_ios, 
  color: Colors.white,)),
), 
const SizedBox(height: 50), 

Center(child: Image.asset('assets/icons/logo.png')), 
const SizedBox(height: 8), 
const LoginForm(), 
          ],
        )
      ),
    );
  }
}