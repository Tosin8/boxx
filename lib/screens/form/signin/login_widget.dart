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
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            
            prefixIcon: Icon(Icons.mail_outline_outlined, color: Colors.white,), 
            labelText: 'Email',
            
            labelStyle: TextStyle(color: Colors.white)
          ),
          ),
        ],
      ),
    );
  }
}