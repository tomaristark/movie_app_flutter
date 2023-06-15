import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/dimen.dart';
import 'package:movie_app/constant/string.dart';
import 'package:movie_app/screen/moviedetails.dart';

import '../constant/color.dart';



class SecondMoviesWidget extends StatelessWidget {
  const SecondMoviesWidget({super.key, required this.movWH, required this.movRating,required this.movVote});
  final double movWH;
  final String movRating;
  final String movVote;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height:movWH,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(right: kSP20x),
            child: Stack(
              children:[ GestureDetector(
                onTap: (){
                   Navigator.push(context,
             MaterialPageRoute(builder: (context)=> MovieDetailsPage()));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(kMDCARadius20x),
                    child: SizedBox(
                      width: kSB200x,
                      height: movWH,
                      child:CachedNetworkImage(
                      imageUrl: kImageMario ,
                        placeholder: (context, url) => Image.asset(kLoadImage),
                      fit: BoxFit.fill,)
                    ),
                  ),
              ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: kSP30x),
                      child: Text("Super Mario",style: TextStyle(
                    fontSize: kFS18x,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryTextColor
                  ),
                  ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child:Padding(
                      padding: const EdgeInsets.only(left: kSP10x),
                      child: Row(
                        children: [
                        const   Icon(Icons.star_border_outlined,color: Colors.yellow,),
                          Padding(
                            padding:const EdgeInsets.only(left:kSP3x ,right: kSP20x),
                            child: Text(movRating,style:const TextStyle(
                              color: kSecondaryTextColor,
                              fontSize: kFS12x),
                            ),
                          ),
                          Text(movVote,style: const TextStyle(
                            color:  kSecondaryTextColor
                          ),
                          )
                        ],
                      ),
                    )),

                ]
            ),
          );
        }
        ),
    );
   
  }
}

class TextHome extends StatelessWidget {
  const TextHome({super.key,required this.textCat,required this.pdRight});
  final String textCat;
  final double pdRight;
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(right: pdRight ,bottom: kSP10x),
                child: Text(textCat,
                style: const TextStyle(
                  color: kPrimaryTextColor,
                  fontSize: kFS20x,
                  fontWeight: FontWeight.w500
                ),
                ),
                );
  }
}