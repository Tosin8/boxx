import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, 
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left:20),
                child: Icon(Icons.mail_outline_outlined, color: Colors.white.withOpacity(0.8),
                ),
                
              ), 
              labelText: 'Email address',
              
              contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.blueAccent), 
                gapPadding: 10, ),
        
                focusedBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(20), 
            borderSide: const BorderSide(color: Colors.blueAccent), 
            gapPadding: 10, 
          ),
          errorBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.redAccent), 
          borderRadius: BorderRadius.circular(20), 
          ),
  focusedErrorBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.redAccent), 
          borderRadius: BorderRadius.circular(20), 
          ),
              
              labelStyle: TextStyle(color: Colors.white.withOpacity(0.8))
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter email';
              }
              return null; 
            },
          
            ),
            const SizedBox(height: 20), 
             TextFormField(
              style: const TextStyle(color: Colors.white),
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
                borderSide: const BorderSide(color: Colors.blueAccent), 
                gapPadding: 10, ),
        
                focusedBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(20), 
            borderSide: const BorderSide(color: Colors.blueAccent), 
            gapPadding: 10, 
          ),
              focusedErrorBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.redAccent), 
          borderRadius: BorderRadius.circular(20), 
          ),

           errorBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.redAccent), 
          borderRadius: BorderRadius.circular(20), 
          ),
              labelStyle: TextStyle(color: Colors.white.withOpacity(0.8))
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter password';
              }
              return null; 
            },
            ),
          
              const SizedBox(height: 20), 
              GestureDetector( 
                onTap: (){
                  if(_formKey.currentState!.validate()){

                  }
                },
                child: Container(
                  height: 60, width: 180,
                  decoration: BoxDecoration(
                    color: Colors.blue, 
                    borderRadius: BorderRadius.circular(20), 
                  ),
                  child: const Align(child: Text('Create Account', textAlign: TextAlign.center, 
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),)),
                ),
              ), 
              const SizedBox(height: 25), 
              const Text('- OR - ', style: TextStyle(color: Colors.white, fontSize: 18),), 
              Row(children: [],)
          ],
        ),
      ),
    );
  }
}