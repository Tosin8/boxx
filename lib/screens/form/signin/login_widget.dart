import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left:20),
                child: Icon(Icons.mail_outline_outlined, color: Colors.white.withOpacity(0.8),),
                
              ), 
              labelText: 'Email address',
              contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blueAccent), 
                gapPadding: 10, ),
        
                focusedBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(20), 
            borderSide: const BorderSide(color: Colors.blueAccent), 
            gapPadding: 10, 
          ),
              
              labelStyle: TextStyle(color: Colors.white.withOpacity(0.8))
            ),
            ),
            SizedBox(height: 10), 
             TextFormField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left:20),
                child: Icon(Icons.lock_outline, color: Colors.white.withOpacity(0.8),),
                
              ), 
              labelText: 'Password',
              contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blueAccent), 
                gapPadding: 10, ),
        
                focusedBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(20), 
            borderSide: const BorderSide(color: Colors.blueAccent), 
            gapPadding: 10, 
          ),
              
              labelStyle: TextStyle(color: Colors.white.withOpacity(0.8))
            ),
            ),
              SizedBox(height: 10), 
              Container(
                height: 60, width: 120,
                decoration: BoxDecoration(
                  color: Colors.blue, 
                  borderRadius: BorderRadius.circular(20), 
                ),
              )
          ],
        ),
      ),
    );
  }
}