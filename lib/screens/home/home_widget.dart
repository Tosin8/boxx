// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:boxx/widget/constant.dart';

class searchBox extends StatelessWidget {
  const searchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}


class MovieCarousel extends StatelessWidget {
  final String imageAsset; 
  const MovieCarousel({
    Key? key,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: kButtonColor.withOpacity(0.25), 
          blurRadius: 5, spreadRadius: 1, offset: const Offset(0, 3)), 
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(imageAsset), fit: BoxFit.cover)),
        margin: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 30),
    );
  }
}
