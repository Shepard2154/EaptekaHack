import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/screenStart/widgets/dataList.dart';
import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import '../../../theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';

class DayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(5),
            
            decoration: BoxDecoration(
              color: Colors.white,
             
               
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black.withAlpha(20), width: 2)
              
            ),
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: size.width * 0.45,
            
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  width: size.width * 0.3,
            height: size.height * 0.15,
                   decoration: BoxDecoration(
          color: Colors.white,
           image: DecorationImage(
          image: AssetImage(
              'assets/images/no_photo.png'),
          fit: BoxFit.fill,
        ),
        
      ),
        
                ),
                SizedBox(
                  height: size.height * 0.01 ,
                ),
                Text(dayContext[index],style: TextStyle(color: Colors.black.withAlpha(160)),),
                 SizedBox(
                  height: size.height * 0.005 ,
                ),
                Row(children: <Widget>[
                  svgStar,
                  svgStar,
                  svgStar,
                  svgStar,
                  svgStar,
                ],),
                SizedBox(
                  height: size.height * 0.01 ,
                ),
                Row(children: <Widget>[
               Text('239 ₽',style: TextStyle(color: priceColor, fontSize: 20, fontWeight: FontWeight.w500)),
               SizedBox(
                 width: size.width*0.02,
               ),
               Container(
                 
                 margin: EdgeInsets.only(top:5),
                 child: Text('255 ₽', style: TextStyle(decoration: TextDecoration.lineThrough))),
                 SizedBox(
                 width: size.width*0.05,
               ),
                  Container(
      width: 30.0,
      height: 30.0,
      margin: EdgeInsets.only(bottom:3),
      child: new RawMaterialButton(
        fillColor: carButtonColor,
        shape: new CircleBorder(),
        elevation: 0.0,
        child:  svgCartButton,
      onPressed: (){},
  )
               )
              
                ],),

              
              ],
            ),
          );
        });
  }
}
