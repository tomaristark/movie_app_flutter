
import 'package:flutter/material.dart';
import 'package:movie_app/constant/color.dart';
import 'package:movie_app/constant/string.dart';
import 'package:movie_app/item_view/moviedetails_item_view.dart';


class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:kPrimaryColor,
      body:PhotoAppBar(
        imgURL: kImageMario,
        movieName: kMovieName,
      ),
       );
  }
}