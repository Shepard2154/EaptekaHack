import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/screenStart/widgets/dataList.dart';
import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import '../../../theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color:shadeBottomBar.withAlpha(120),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          child: Row(
            children: [
              svgSearchForm,
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextField(
                  
                  decoration: InputDecoration(
                    
                    hintStyle: TextStyle(color: Colors.black.withAlpha(100)),
                    border: InputBorder.none,
                    hintText: '50000 лекарств и товаров',
                  ),
                ),
              ),
             svgMicro,
              SizedBox(
                width: 10,
              ),
              
              svgCamera
            ],
          ),
        ));
  }
}
