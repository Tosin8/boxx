import 'package:boxx/model/movie.dart';
import 'package:boxx/screens/detail/popular/detail_screen_widget.dart';
import 'package:boxx/widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';


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
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text('Dune', style: TextStyle(color: Colors.white, fontSize: 25,  fontWeight: FontWeight.w600),), 
                          SizedBox(height: 5,),
                          Text('2021, Denis Villenueve', style: TextStyle(color: Colors.white54, fontSize: 15, fontWeight: FontWeight.w600
                          ),
                          ),
                         
                        ]),
                        Row(
                          children: [
                            Text('8.2', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),),
                            SizedBox(width: 10), 
                            Icon(FontAwesomeIcons.solidStar, color: Colors.yellow,size: 15,)
                          ],
                        ), 
                       
                    ],
                  ),
                  
                    Row(children: [
                      buildTag('Epic'), 
                      const SizedBox(width: 10,), 
                       buildTag('Fantasy'), 
                       const SizedBox(width: 10), 
                        buildTag('Drama'), 
                    ],), 
                    const SizedBox(height: 10), 
                    const Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), 
                    child: ReadMoreText(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more', 
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(color: kButtonColor),
                      lessStyle: TextStyle(color: kButtonColor),
                    
                      
                       style: TextStyle(color: Colors.white70, height: 1.5,
                       fontWeight: FontWeight.w500),
                     
                     
                    ),
                    ), 
                    CastAndCrew(casts: popularItems[0].cast!), 
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0), 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Trailer', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),), 
                        Stack(
                          alignment: Alignment.center, 
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              height: 180,
                              width: double.infinity,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), image: const DecorationImage(image: AssetImage('assets/images/trailer.jpeg'), fit: BoxFit.cover)),
                            ), 
                            Container(
                              padding: const EdgeInsets.all(8), 
                              decoration: const BoxDecoration(shape: BoxShape.circle,  color: Colors.white),
                              child: Icon(FontAwesomeIcons.play, color: kButtonColor.withOpacity(0.8),size: 20,),
                            )
                          ],
                        ), 
                      ],
                    ),
                    ),
                    const SizedBox(height: 30,), 
                     Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: 
                    [Text('Comments',
                     style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      Text('See all', style: TextStyle(color: kButtonColor, fontSize: 18, fontWeight: FontWeight.w400),)
                      ],
                      ), 
                      buildCommentCard(), 
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      )
                      ],
                      ),
                      )

                ]  ,
                ),
             ),
              ],
             )
     ), 
     Positioned(
      top: 40, right: 20, 
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Colors.white70
        ),
        child: IconButton(
          onPressed: (){
            Navigator.pop(context); },
           icon: const Icon(
            FontAwesomeIcons.xmark,
             color: kSearchColor,
             size: 20,)),)), 
            
             Positioned(
              bottom: 30,
      left: 30, right: 30, 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 70,
          color: kButtonColor, 
          alignment: Alignment.center,
          
          child: const Text('Watch Movie', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),), 
      )), 
       ) ], 
    

     ),
     
          );
        
      
    
  }
  Widget buildTag(String title) {
    return Container(
      margin: const EdgeInsets.only(top: 20), padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20), 
      decoration: BoxDecoration(
        color: kSearchColor, borderRadius: BorderRadius.circular(18), 
      ),
      child: Text(title,style: const TextStyle(color: Colors.white, fontSize: 16),),
    ); 
  }

  Widget buildCommentCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20), 
      height: 160,
       child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularItems[0].comments!.length, 
        itemBuilder: (context, index){
          return Container(
            width: 300,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), 
             color: kSearchColor),
              margin: const EdgeInsets.only(right: 15), padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.start, 
      children: [
        Container(
          height: 50,
           width: 50,
         decoration: BoxDecoration(
          
          shape: BoxShape.circle,
           image: DecorationImage(
            image: AssetImage(
              popularItems[0].comments![index]['imageUrl'].toString()
              )
              )
              ),
              ), const SizedBox(width: 10,), 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                Text(popularItems[0].comments![index]['name'], 
                style: const TextStyle(
                  color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ), 
                  const SizedBox(height: 5,),
                   Text(popularItems[0].comments![index]['date'],
                    style: const TextStyle(color: Colors.white60),
                    )
                  ],
                  )
              ],
    ),
    const SizedBox(height: 8,), 
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Text(
    popularItems[0].comments![index]['rating'],
  style: const TextStyle(
    color: Colors.white,
     fontWeight: FontWeight.bold),), const SizedBox(width: 4,),

      const Icon(
        FontAwesomeIcons.solidStar,
       color: Colors.yellow,
        size: 15,)
],)
            ],),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10), 
              child: Text(popularItems[0].comments![index]['comment'], 
              maxLines: 3,
              textAlign: TextAlign.left, overflow: TextOverflow.clip,
              style: TextStyle(color: Colors.white),),)
         ]
          )
        ); 
  },
  )
  );
  }
}
  
