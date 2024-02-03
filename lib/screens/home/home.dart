import 'package:boxx/widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../model/movie.dart';
import 'home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // items
  List<MovieModel> foryouItemsList = List.of(forYourImages);
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: kBkgColor,
    body: Stack(
      children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(), 
          scrollDirection: Axis.vertical, 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 34, horizontal: 30), 
              child: Row(
                children: [
                  Text('Hi, James', style: TextStyle(color: Colors.white, fontSize: 25),)
                ],
              ),), 
             // const SizedBox(height: 2), 
              searchBox(),
              SizedBox(height: 20), 
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: Text('For you', 
                
                style: TextStyle(color: Colors.white54, 
                fontSize: 20, fontWeight: FontWeight.w300),),
              ), 
              foryoucardsLayout(forYourImages), 
            ],
          ),
        )
      ],
    ),
    );
  }

  Widget foryoucardsLayout(List<MovieModel> movieList){
    return SizedBox(); 
  }
}

