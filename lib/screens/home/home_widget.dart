// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:boxx/screens/detail/popular/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:boxx/widget/constant.dart';

import '../../model/movie.dart';

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


class CustomCard extends StatelessWidget {
  final MovieModel movieModel; 
  const CustomCard({
    Key? key,
    required this.movieModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailScreen()));
      },
      child: Stack( 
        children: [
          Container(
            height: 200, width: 140,
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: LinearGradient(colors: [Colors.black.withOpacity(0.8), Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            margin: const EdgeInsets.symmetric(horizontal: 10),
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(image: AssetImage(movieModel.imageAsset!, ), fit: BoxFit.cover)),
          ),
          Positioned(
            left: 15, 
            right: 15,
        bottom: 0, 
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text(movieModel.movieName!, 
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white, 
                    fontSize: 16, fontWeight: FontWeight.bold),), 
                    // const SizedBox(height: 4,), 
                    Text(movieModel.year!,
                    maxLines: 1,
                     style: const TextStyle(color: Colors.white54, fontSize: 14, fontWeight: FontWeight.w300),), 
                    const SizedBox(height: 5,)
                  ],
                )), 
                const SizedBox(height: 20), Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(movieModel.movieRating!, 
                maxLines: 1,
                overflow: TextOverflow.clip,style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),), 
                const SizedBox(width: 5,), 
                const Icon(FontAwesomeIcons.solidStar, size: 15, color: Colors.yellow)],)
              ],
            ))
        ],
      ),
    );
  }
}
 