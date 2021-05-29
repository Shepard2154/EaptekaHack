import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';
import 'widgets/form.dart';
import 'widgets/recomended_list.dart';
import 'widgets/banner.dart';
import 'widgets/day_list.dart';
import 'package:eapteka/screens/screenStart/widgets/story_page_view.dart';
import 'package:story_view/story_view.dart';

class ScreenStart extends StatefulWidget {
  ScreenStart({key}) : super(key: key);

  @override
  _ScreenStart createState() => _ScreenStart();
}

class _ScreenStart extends State<ScreenStart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundScreens,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: backgroundScreens,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
          SizedBox(
            height: size.height * 0.06,
          ),
          Text(
            "Еаптека рекомендует",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.4),
          ),
          
          SizedBox(height: size.height * 0.03,),
          Container(
            padding: EdgeInsets.symmetric(vertical:2),
            height: size.height*0.17,
            child: RecomendedList(),),
           SizedBox(height: size.height * 0.03,),
               Text(
            "Товары дня",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.4),
          ),
          
          SizedBox(height: size.height*0.03),
          Container(
            padding: EdgeInsets.symmetric(vertical:2),
            height: size.height*0.31,
            child: DayList(),),
           SizedBox(height: size.height * 0.07,),
            StartBanner(), 
          
        ]),
      ),
    );
  }
}






