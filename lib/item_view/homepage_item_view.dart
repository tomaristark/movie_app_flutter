
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/dimen.dart';
import 'package:movie_app/constant/string.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
          child: IconButton(onPressed: (){}, 
                splashColor:kIconButtonSplashColor,
          icon: const Icon(Icons.search,size: kSearchIconSize,
          color: kSearchIconColor,)),
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
                    child: Text(currentItem,style: TextStyle(
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
    return CachedNetworkImage(
       imageUrl: "https://e0.pxfuel.com/wallpapers/114/292/desktop-wallpaper-iron-man-movie-poster-printable-file-iron-man-poster-thumbnail.jpg",
       progressIndicatorBuilder: (context, url, downloadProgress) => 
               CircularProgressIndicator(value: downloadProgress.progress),
       errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}