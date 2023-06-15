import 'package:flutter/material.dart';

import '../constant/color.dart';




class ArtistHeading extends StatelessWidget {
  const ArtistHeading({super.key, required this.artistHeading});
  final String artistHeading;
  @override
  Widget build(BuildContext context) {
    return  Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(artistHeading,textAlign: TextAlign.left,
                        style: TextStyle(color: kPrimaryTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 25
                        ),
                        ),
                      ),
                    ),
                  ],
                );
  }
}

class ArtistBioText extends StatelessWidget {
  const ArtistBioText({super.key,required this.artistBioText});
  final String artistBioText;

  @override
  Widget build(BuildContext context) {
    return 
     Padding(
       padding: const EdgeInsets.only(top: 10),
       child: SizedBox(
            height: 230,
            child: Text(artistBioText,
           style: TextStyle(color: kSecondaryTextColor,
           fontSize: 18),),
                  ),
     );
  }
}


class MoreInfoText extends StatelessWidget {
  const MoreInfoText({super.key,required this.leftMoreinfoText,required this.rightMoreinfoText});
  final String leftMoreinfoText;
  final String rightMoreinfoText;
  @override
  Widget build(BuildContext context) {
    return  Row(
                children: [
                  SizedBox(
                     width: 180,
                      height: 50,
                     child: Text(
                         leftMoreinfoText,textAlign: TextAlign.left,
                            style: TextStyle(
                              color: kSecondaryTextColor,
                              fontSize: 18
                            ),
                          ),
                        ),
                        
                        SizedBox(
                          width: 180,
                          height: 50,
                          child: Text(
                            rightMoreinfoText,
                            textAlign:TextAlign.left,
                            style: TextStyle(
                              color: kSecondaryTextColor,
                              fontSize: 18
                            ),
                          ),
                        ),

                      ],
                    );
  }
}