
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/dimen.dart';
import 'package:movie_app/constant/string.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_app/screen/artistdetails.dart';
import 'package:movie_app/screen/searchpage.dart';
import '../constant/color.dart';
//Search Bar
class HomePageSearchBar extends StatelessWidget {
  const HomePageSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:kSearchBoxHeight,
      width: kSearchBoxWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: kSearchBarWidth,
            child: TextField(
              onChanged: (text){print(text);},
              decoration: InputDecoration(
                filled: true,
                fillColor:kSearchBarColor ,
                hintText: kSearchBoxHintText,
                hintStyle: const TextStyle(
                  color:  kSecondaryTextColor,
                  fontSize: 18
                ),
                //textfield in container
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(kSearchBarRadius),
                  borderSide:const  BorderSide(color: kSearchBarFocusBorderColor)
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(kSearchBarRadius)
                )
              ),
            ),
          ),
        Container(
          width: kSearchButtonWidth,
          height: kSearchButtonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSearchButtonRadius),
            color:kSecondaryColor
          ),
          child: IconButton(onPressed: (){
            Navigator.push(context,
             MaterialPageRoute(builder: (context)=> const SearchPage()));
          }, 
                splashColor:kIconButtonSplashColor,
          icon: const Icon(Icons.search,size: kSearchIconSize,
          color: kIconColor,)),
        )
        ],
      ),
    );
  }
}
//MOVIE GENRES
class MovieGenres extends StatelessWidget {
  MovieGenres({super.key});
  final List <String>movieGenres= kMovieGenreList;
  final bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kMovieGenreSbHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movieGenres.length,
        itemBuilder:(context ,index){
            String currentItem = movieGenres[index];
            return GestureDetector(
              onTap: (){print("select");},
              child: Padding(
                padding: const EdgeInsets.only(left: kBetweenMGContainer),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kMGRadius),
                    color: (isSelected)?kSecondaryColor:kUnSelectedColor,
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.only(left: kSP8x,right:kSP8x,top: kSP10x),
                    child: Text(currentItem,style: const TextStyle(
                      color: kPrimaryTextColor
                    ),
                    ),
                  ),
                ),
              ),
            );
        }
        ),
    );
  }
}

class RecentMoviesSlider extends StatelessWidget {
  const RecentMoviesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [CarouselSlider(
  options: CarouselOptions(
    height: kRecentMovieSliderH,
  autoPlay: true,
  enlargeCenterPage: true,
  viewportFraction: kRecentMovieSliderVPF
  ),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Stack(
         children:[ ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:SizedBox(
              width: kRecentMovieSliderH,
              child: CachedNetworkImage(
                  fit: BoxFit.fill,
                     imageUrl: kImageMario,
                     progressIndicatorBuilder: (context, url, downloadProgress) => Image.asset(kLoadImage)
                     
                  ),
              ),   
            ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: kCT50x,
                  height: kCT50x,
                  decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    shape: BoxShape.circle
                  ),
                  child:const  Icon(Icons.play_arrow_outlined,
                  color: kIconColor),
                ),
              )
            ]
        );
      },
    );
  }).toList(),
),
Container(
  width: double.infinity,
  height: kRecentMovieSliderH,
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [ 
        kPrimaryColor,
        Colors.transparent,
    ])
  ),
  ),    
      ],
    );
  }
}

class ActorList extends StatelessWidget {
  const ActorList({super.key,required this.actName});
  final String actName;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
    options: CarouselOptions(
    height: kMovieWidgetH350x,
    enlargeCenterPage: true,
    viewportFraction: 0.7
    ),
    items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
    return GestureDetector(
      onTap: (){
    Navigator.push(context,
     MaterialPageRoute(builder: (context)=> ActorDetail()));
      },
      child: Stack(
       children:[ ClipRRect(
          borderRadius: BorderRadius.circular(kBDRadius),
          child:SizedBox(
            width: kSB280x,
            child: CachedNetworkImage(
                  fit: BoxFit.fill,
                     imageUrl: kImageMario,
                     progressIndicatorBuilder: (context, url, downloadProgress) => Image.asset(kLoadImage)
                  ),
            ),   
          ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: kSP30x),
                child: Text(
                 actName,style:const TextStyle(
                    fontSize: kFS25x,
                    color: kPrimaryTextColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
            ),
            Container(
    width: double.infinity,
    height: kCT350x,
    decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [ 
    Colors.black,
    Colors.transparent,
    Colors.transparent,
    ])
    ),
    ),    
          ]
      ),
    );
      },
    );
    }).toList(),
    ); 
  }
}