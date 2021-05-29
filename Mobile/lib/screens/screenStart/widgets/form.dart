import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../resources/icons.dart';
import '../../../resources/icons.dart';

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
          top: 60,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          child: Row(
            children: [
              
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    hintText: 'Найти персонажа',
                  ),
                ),
              ),
              
              SizedBox(
                width: 10,
              ),
              
            ],
          ),
        ));
  }
}
