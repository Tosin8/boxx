import 'package:boxx/widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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