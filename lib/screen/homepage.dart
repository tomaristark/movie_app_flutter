import 'package:flutter/material.dart';
import 'package:movie_app/constant/color.dart';
import 'package:movie_app/constant/dimen.dart';
import 'package:movie_app/constant/string.dart';
import 'package:movie_app/item_view/homepage_item_view.dart';

import '../widget/homepage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body:SizedBox(
        width: double.infinity,
        height:kHomePageHeight,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column( 
              children: [
              const SizedBox(
                width: double.infinity,
                height: kSbAboveSearchBar,
              ),
              const HomePageSearchBar(),
              MovieGenres(),
            const  SizedBox(
                width: double.infinity,
                height: kSB30x,
              ),
            const  RecentMoviesSlider(),
            const  SecondMoviesWidget(
                movWH: kMovieWidgetH150x,
                movRating: kMovieRaing,
                movVote: kMovieVote,
              ),
            const   SizedBox(
                width: double.infinity,
                height: kSB30x,
              ),
            const  TextHome(
                textCat:kHPText1,
                pdRight: kSP250x,),
            const SecondMoviesWidget(
                  movWH: kMovieWidgetH250x,
                  movRating: kMovieRaing,
                movVote: kMovieVote,
                ),
             const   SizedBox(
                width: double.infinity,
                height: kSB30x,
              ),
             const  TextHome(
                textCat:kHPText2,
                pdRight: kSP300x,),
             const  SecondMoviesWidget(
              movWH: kMovieWidgetH220x,
              movRating: kMovieRaing,
                movVote: kMovieVote,),
            const   SizedBox(
                width: double.infinity,
                height: kSB30x,
              ),
             const ActorList(
              actName: kActName,
             )
          ],
            );
          },      
        ),
      ),
    );
  }
}

