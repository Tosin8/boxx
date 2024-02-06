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
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                )
              ],
            ),
          )
        ],
      )
    );
  }
}