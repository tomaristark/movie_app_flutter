import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/color.dart';
import 'package:movie_app/constant/dimen.dart';
import 'package:movie_app/constant/string.dart';

class MovieDetailHeadText extends StatelessWidget {
  const MovieDetailHeadText({super.key,required this.textInMovieDetail});
  final String textInMovieDetail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kSB30x,
      child: Text(textInMovieDetail,style: const TextStyle(
        fontSize: kFS25x,
        color: kPrimaryTextColor
      ),),
    );
  }
}


class CastList extends StatelessWidget {
  const CastList({super.key,required this.topTextCL,required this.botTextCL});
  final String topTextCL;
  final String botTextCL;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: kSB50x,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder:(context ,index){
                          return  SizedBox(
                            width: kSB130x,
                            height: kSB50x,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                  const CircleAvatar(
                    radius: kMDCARadius20x,
                    backgroundImage: CachedNetworkImageProvider(kImageMario)
                    ),
                    SizedBox(
                      width: kSB90x,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:const  EdgeInsets.only(right: kSP32x),
                            child: Text(topTextCL,textAlign: TextAlign.left,
                            style:const  TextStyle(
                              color: kPrimaryTextColor,
                              fontSize: kFS16x,
                            
                            ),),
                          ),
                          Text(botTextCL,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: kSecondaryTextColor
                          ),)
                        ],
                      ),
                    )
                              ],
                            ),
                          )
                          ;
                        }
                        ),
                );
  }
}
