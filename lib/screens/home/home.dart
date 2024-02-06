import 'dart:ui';

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

  List<MovieModel> popularItemsList = List.of(popularImages);
  List<MovieModel> genreItemList = List.of(genresList); 
  List<MovieModel> legendaryItemList = List.of(legendaryImages);

  PageController pageController = PageController(
    viewportFraction: 0.9,
     initialPage: 0 ); 

     int currentPage = 0; 



      // indicators

      List tabBarIcons = [
        FontAwesomeIcons.house, 
        FontAwesomeIcons.heart,
        FontAwesomeIcons.compass,
        FontAwesomeIcons.user,
      ]; 

  List<Widget> buildPageIndicatorsWidget() {
    List<Widget> list =[];
    for(int i = 0; i<foryouItemsList.length; i++){
      list.add(i == currentPage ? _indicator(true) : _indicator(false) );
    }
    return list; 
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration:  const Duration(milliseconds: 150), 
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: 8.0,
      decoration:  BoxDecoration(
        
        color: isActive ? Colors.white : Colors.white24, borderRadius: BorderRadius.circular(20)),
      ); 
  }


@override
  void dispose() {
   
    super.dispose();
  }

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
              Align(
                alignment: Alignment.center,
                child:                   Container(
                  padding: const EdgeInsets.all(8.0), 
                  decoration: BoxDecoration(
                    color: kSearchColor,
                     borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min, 
                    children: buildPageIndicatorsWidget(),),
                ),
                
              ), 
              const SizedBox(height: 10), 
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Popular', 
                        
                        style: TextStyle(color: Colors.white54, 
                        fontSize: 20, fontWeight: FontWeight.w300),),
                        Text('See All', 
                        
                        style: TextStyle(color: Colors.blueAccent, 
                        fontSize: 18, fontWeight: FontWeight.w300),),
                      ],
                    ),
                  ],
                ),
              ), 
              movieListBuilder(popularImages), 
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Genre', 
                        
                        style: TextStyle(color: Colors.white54, 
                        fontSize: 20, fontWeight: FontWeight.w300),),
                        Text('See All', 
                        
                        style: TextStyle(color: Colors.blueAccent, 
                        fontSize: 18, fontWeight: FontWeight.w300),),
                      ],
                    ),
                  ],
                ),
              ), 
              genresBuilder(genresList), 
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Legendary', 
                        
                        style: TextStyle(color: Colors.white54, 
                        fontSize: 20, fontWeight: FontWeight.w300),),
                        Text('See All', 
                        
                        style: TextStyle(color: Colors.blueAccent, 
                        fontSize: 18, fontWeight: FontWeight.w300),),
                      ],
                    ),
                  ],
                ),
              ), 
              movieListBuilder(legendaryItemList), 
            ],
          ),
        ), 
        Positioned(
          bottom: 20,
          left: 25, right: 25, 
          
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter( 
              filter: ImageFilter.blur(
                sigmaX: 25.0, sigmaY: 25.0, 
              ), 
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kSearchColor.withOpacity(.9), 
                ),
                
                  width: MediaQuery.of(context).size.width,
              height: 60,    
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ...tabBarIcons.map((e) => Icon(e, color: e == FontAwesomeIcons.house ? Colors.white : Colors.white54,
                                        size: 25,), 
                                        )
                                      ],
                                    ),
                    ),
                      ),
            ),
          )), 
      ],
    ),
    );
  }

  Widget foryoucardsLayout(List<MovieModel> movieList){
    return  SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
    
      child: PageView.builder(
        physics: const ClampingScrollPhysics(),
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

Widget movieListBuilder(List<MovieModel> movieList){
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 20, vertical: 10
    ),
    height: MediaQuery.of(context).size.height * 0.33,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: movieList.length, 
      itemBuilder:(context, index) {
        return CustomCard(
          movieModel: movieList[index],); 
        
      },
       ),
  ); 
}
 
}


Widget genresBuilder(List<MovieModel> genresList){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    // height: MediaQuery.of(context).size.height * 0.20,
    height: 200,
    child: ListView.builder(
      itemCount: genresList.length, 
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Stack(
        children: [
          Container(
            width: 250, 
          
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  genresList[index].imageAsset.toString(), 
                  ), fit: BoxFit.cover), 
            ),
            margin: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 30), 
          ), 
          Positioned(
            bottom: 0, left: 20,
            child: Text(genresList[index].movieName.toString(), 
          style: TextStyle(
            color: Colors.white,
             fontSize: 15, 
             fontWeight: FontWeight.bold),))
        ],
      );
    } ),
    
  ); 
}

Widget movieListBuilder(List<MovieModel> movieList){
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 20, vertical: 10
    ),
   // height: MediaQuery.of(context).size.height * 0.33,
   height: 300,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: movieList.length, 
      itemBuilder:(context, index) {
        return CustomCard(
          movieModel: movieList[index],); 
        
      },
       ),
  ); 
}
 
