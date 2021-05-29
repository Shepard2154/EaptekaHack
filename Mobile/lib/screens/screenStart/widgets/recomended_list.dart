import 'package:eapteka/screens/screenStart/widgets/dataList.dart';
import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import '../../../theme/color_theme.dart';
import 'package:eapteka/screens/screenStart/widgets/story_page_view.dart';

class RecomendedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: recomendedContext.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            
            onTap: () {
                   actionRecomended = index;
                   Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MoreStories()));
                       

            },
            child: Container(
            
            padding: EdgeInsets.all(5),
            
            decoration: BoxDecoration(
              color: Colors.white,
             image: DecorationImage(
          image: AssetImage(
              recomendedImage[index]),
          fit: BoxFit.fill,
        ),
               
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black.withAlpha(20), width: 2)
              
            ),
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: size.width * 0.35,
            height: size.height * 0.09,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.088,
                ),
                Container(
                  
                  child: 
                  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(recomendedContext[index],style: TextStyle(color: Colors.white),)
          ]))
                  
               
              ],
            ),
          ));
        });
  }
}
