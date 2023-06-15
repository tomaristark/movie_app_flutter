import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/dimen.dart';
import 'package:movie_app/constant/string.dart';
import 'package:movie_app/widget/homepage_widget.dart';
import 'package:movie_app/widget/moviedetail_widget.dart';

import '../constant/color.dart';
import '../screen/homepage.dart';

class PhotoAppBar extends StatelessWidget {
  const PhotoAppBar({super.key ,required this.imgURL,required this.movieName});
  final String imgURL;
  final String movieName ;
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder:(BuildContext context, bool innerBoxIsScrolled) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            backgroundColor: kPrimaryColor,
            expandedHeight: kExpandH,
            flexibleSpace: FlexibleSpaceBar(
              background:Stack(
                children:[
                  SizedBox(
                    width: double.infinity,
                    child: CachedNetworkImage(
                      imageUrl: imgURL ,
                        placeholder: (context, url) => Image.asset(kLoadImage),
                      fit: BoxFit.fill,)
                      ),
                   const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text( kMovieGenre,
                      style: TextStyle(
                        color: kSecondaryTextColor,
                      ),
                      ),
                    ),
                    Positioned(
                      top: kSP50x,
                      left: kSP10x,
                      child: GestureDetector(
                        onTap:(){
                           Navigator.pop(context,
                                 MaterialPageRoute(builder: (context)=>const  HomePage()));
                        } ,
                        child: Container(
                          width: kCT30x,
                          height: kCT30x,
                          decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kSecondaryColor
                          ),
                          child: const Icon(Icons.arrow_back,color:kIconColor),
                        ),
                      ),
                    )
                ] ),
              title: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(right: kSP50x),
                  child: Text(movieName,style: const TextStyle(
                    fontSize: kFS18x
                  ),),
                )),

            ),

          ),
        ],
        body:ListView(  
          children:const  [
            Column(
              children: [
                MovieDetailHeadText(textInMovieDetail: kMovieStrLine1),
                SizedBox(
                  width: double.infinity,
                  height: kSB130x,
                  child: Text(kMovieDetailText,style: TextStyle(
                    color: kSecondaryTextColor,
                    fontSize: kFS13x,
                  ),
                  ),
                ),
                MovieDetailHeadText(textInMovieDetail: kMovieStrLine2),
                CastList(topTextCL: kActorT, botTextCL: "Ben Affleck"),
                SizedBox(
                  height:kSB20x,
                ),
                MovieDetailHeadText(textInMovieDetail: kMovieStrLine3),
                CastList(topTextCL: kCrewT, botTextCL: "Walter Murch"),
                 SizedBox(
                  height: kSB20x,
                ),
                MovieDetailHeadText(textInMovieDetail: kMovieStrLine4),
              SizedBox(
                  height: kSB10x
                ),
                ProductionList(studioName: "Universal Picture"),
                MovieDetailHeadText(textInMovieDetail: kMovieStrLine5),
                SizedBox(height: kSB10x),
                SecondMoviesWidget(
                  movWH:kMovieWidgetH250x,
                  movRating: kMovieRaing,
                movVote: kMovieVote,)
              


              ],
            )
          ],

        )
        );
  }
}
class ProductionList extends StatelessWidget {
  const ProductionList({super.key,required this.studioName});
  final String studioName;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: kSB80x,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
       itemCount: 10,
       itemBuilder:(context ,index){
        return SizedBox(
          width: kSB150x,
          height:kSB100x,
          child: Column(
            children: [
              CircleAvatar(
                radius: kMDCARadius,
                backgroundImage: CachedNetworkImageProvider(kImageMario),
              ),
              Text(studioName,style:const  TextStyle(
                fontSize: kFS15x,
                color: kSecondaryTextColor,
              ),)
            ],
          ),
        );
       }),
    );
  }
}