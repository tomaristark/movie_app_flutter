import 'package:flutter/material.dart';
import 'package:movie_app/constant/color.dart';
import 'package:movie_app/screen/homepage.dart';

import '../constant/dimen.dart';
import '../constant/string.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: kSB60x,
          ),
          TextButton(
            onPressed:(){
              Navigator.pop(context,
              MaterialPageRoute(builder: (context)=> HomePage()),
              );
            }, 
          child:const  Row(
            children: [
              Icon(Icons.arrow_back_ios ,
              color: kSecondaryColor,),
              Text(kSearchBoxBack,style: TextStyle(
                color: kSecondaryColor
              ),
              ),
            ],
          )
          ),
          SizedBox(
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
                  fontSize: kFS18x
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
             MaterialPageRoute(builder: (context)=> SearchPage()));
          }, 
                splashColor:kIconButtonSplashColor,
          icon: const Icon(Icons.search,size: kSearchIconSize,
          color: kIconColor,)),
        )
        ],
      ),
    )
        ],
      ),
    );
  }
}