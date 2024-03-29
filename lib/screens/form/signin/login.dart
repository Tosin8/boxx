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
      appBar: AppBar(
        backgroundColor: kBkgColor, 
      leading: IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> const SplashScreen())); }, 
      icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
      ),
      
      body: Container(
        width: double.infinity, 
        height: double.infinity,
        decoration: const BoxDecoration(

          color: kBkgColor, 
        ),
        
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
       
          const SizedBox(height: 50), 
          
          Center(child: Image.asset('assets/icons/logo.png')), 
          const SizedBox(height: 8), 
          const LoginForm(), 
            ],
          ),
        )
      ),
    );
  }
}