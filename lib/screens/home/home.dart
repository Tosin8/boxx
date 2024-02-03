import 'package:boxx/widget/constant.dart';
import 'package:flutter/material.dart';

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
  PageController pageController = PageController(
    viewportFraction: 0.9,
     initialPage: 0 ); 

     int currentPage = 0; 

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
              const searchBox(),
              const SizedBox(height: 20), 
              const Padding(
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
    return  SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
    
      child: PageView.builder(
        controller: pageController,
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return MovieCarousel(imageAsset: movieList[index].imageAsset.toString());

        }, 
        onPageChanged: (int page) {
          setState(() {
            currentPage = page; 
          });
        },
        ),
    ); 
  }

  // indicators
  List<Widget> buildPageIndicatorsWidget() {
    List<Widget> list =[];
    for(int i = 0; i<foryouItemsList.length; i++){
      list.add(i==currentPage ? _indicator ),
    }
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(duration: Duration(milliseconds: 150)); 
  }
}

