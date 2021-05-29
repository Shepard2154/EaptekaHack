import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/screenStart/widgets/dataList.dart';
import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import '../../../theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';

class StartBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
height: size.height*0.10,
width: size.width*0.9,

         decoration: BoxDecoration(
              
             
               
              borderRadius: BorderRadius.circular(15),
            
          color: Colors.white,
           image: DecorationImage(
          image: AssetImage(
              'assets/images/banner.png'),
          fit: BoxFit.fill,
        
        
      ),
              
            )
    );
  
}}
