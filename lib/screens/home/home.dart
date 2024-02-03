import 'package:boxx/widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kBkgColor,
    body: Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(), 
          scrollDirection: Axis.vertical, 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.symmetric(vertical: 34, horizontal: 30), 
              child: Row(
                children: [
                  Text('Hi, James', style: TextStyle(color: Colors.white, fontSize: 25),)
                ],
              ),), 
             // const SizedBox(height: 2), 
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20), 
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  
                  keyboardType: TextInputType.name,
                  enableSuggestions: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    fillColor: kSearchColor, 
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.white.withOpacity(0.6),
                      ),
                    ), 
                    labelText: 'Search', 
                    labelStyle: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.6)), 
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: kSearchColor), 
                gapPadding: 10, ),
        
                focusedBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(20), 
            borderSide: const BorderSide(color: kSearchColor), 
            gapPadding: 10, 
          ),
                  ),
                 
                ),
              ),
            ],
          ),
        )
      ],
    ),
    );
  }
}