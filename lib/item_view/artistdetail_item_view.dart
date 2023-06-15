import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/dimen.dart';
import 'package:movie_app/constant/string.dart';
import 'package:movie_app/widget/artistdetail_widget.dart';
import 'package:movie_app/widget/homepage_widget.dart';

import '../constant/color.dart';
import '../screen/homepage.dart';

class ActorAppBar extends StatelessWidget {
  const ActorAppBar({super.key,
  required this.artistName, required this.artistBioFP, 
  required this.artistBioSP, required this.artistBioThP,
   required this.artistPlace, required this.artistBirth,
    required this.artistDead, required this.artistGender, 
    required this.artistPopularity});
  final String artistName;
  final String artistBioFP;
  final String artistBioSP;
  final String artistBioThP;
  final String artistPlace;
  final String artistBirth;
  final String artistDead;
  final String artistGender;
  final String artistPopularity;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>[
          SliverAppBar(
             automaticallyImplyLeading: false,
            pinned: true,
            backgroundColor: kPrimaryColor,
            expandedHeight: kExpandH,
            flexibleSpace: FlexibleSpaceBar(
              background : Stack(
                children:[
                  SizedBox(
                    width: double.infinity,
                    child: CachedNetworkImage(
                  fit: BoxFit.fill,
                     imageUrl: kImageMario,
                     progressIndicatorBuilder: (context, url, downloadProgress) => Image.asset(kLoadImage)
                     
                  ),
                    ),
                    Positioned(
                      top: kSP50x,
                      left: kSP10x,
                      child: GestureDetector(
                        onTap:(){
                           Navigator.pop(context,
                                 MaterialPageRoute(builder: (context)=> HomePage()));
                        } ,
                        child: Container(
                          width: kCT30x,
                          height: kCT30x,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kSecondaryColor
                          ),
                          child: Icon(Icons.arrow_back,color: kIconColor,),
                        ),
                      ),
                    )
                ] ),
              title: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(right: kSP50x),
                  child: Text(artistName,textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: kFS18x
                  ),),
                )
                )
            ),
          )
        ],
         body: ListView(
          children:  [
            Column(
              children: [
            const   ArtistHeading(artistHeading: kArtHead1),
            const     Divider(color:kDvdColor),
               ArtistBioText(artistBioText: artistBioFP),
               ArtistBioText(artistBioText:artistBioSP),
               ArtistBioText(artistBioText: artistBioThP),
              const  SizedBox(
                  height: kSB30x,
                ),
             const   ArtistHeading(artistHeading: kArtHead2),
             const   Divider(color:kDvdColor),
                Column(
                  children: [
                   MoreInfoText(leftMoreinfoText: kArtistDetail1, rightMoreinfoText: artistPlace),
                   MoreInfoText(leftMoreinfoText: kArtistDetail2, rightMoreinfoText: artistBirth),
                   MoreInfoText(leftMoreinfoText: kArtistDetail3, rightMoreinfoText: artistDead),
                   MoreInfoText(leftMoreinfoText: kArtistDetail4, rightMoreinfoText: artistGender),
                   MoreInfoText(leftMoreinfoText: kArtistDetail5, rightMoreinfoText: artistPopularity),
                  ],

                ),
             const   SizedBox(
                  height: kSB10x,
                ),
            const    ArtistHeading(artistHeading: "Known For"),
            const    Divider(color: kDvdColor,),
                const SecondMoviesWidget(
                  movWH: kMovieWidgetH240x,
                  movRating: kMovieRaing,
                movVote: kMovieVote,)

              ],
            )
          ],
         )
         );
  }
}