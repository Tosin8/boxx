import 'package:boxx/model/movie.dart';
import 'package:boxx/widget/constant.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<MovieModel> popularItems = List.of(popularImages); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBkgColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18), 
                    gradient: LinearGradient(colors: [Colors.black.withOpacity(0.8), Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(popularItems[0].imageAsset.toString()),fit: BoxFit.cover
                    )
                  ),
                ), 
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dune', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),), 
                      SizedBox(height: 5,),
                      Text('2021, Denis Villenueve', style: TextStyle(color: Colors.white54, fontSize: 20, fontWeight: FontWeight.w600
                      ),
                      ),
                    ]),
                  
                    

                )
              ],
            ),
          )
        ],
      )
    );
  }
}