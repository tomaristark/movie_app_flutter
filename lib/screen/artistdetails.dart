
import 'package:flutter/material.dart';
import 'package:movie_app/constant/string.dart';
import 'package:movie_app/item_view/artistdetail_item_view.dart';

import '../constant/color.dart';

class ActorDetail extends StatelessWidget {
  const ActorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: ActorAppBar(
        artistName:kActName, 
        artistBioFP: kArtistBioFirstText, 
        artistBioSP: kArtistBioSecText, 
        artistBioThP: kArtistBioThirdText, 
        artistPlace: kArtistBirth, 
        artistBirth: kArtistBirth, 
        artistDead: kArtistDead, 
        artistGender: kArtistGender,
         artistPopularity: kArtistPopularity)
       );

  }
}