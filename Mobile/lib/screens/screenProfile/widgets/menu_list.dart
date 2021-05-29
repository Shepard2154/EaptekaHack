import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/screenStart/widgets/dataList.dart';
import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import '../../../theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';
import 'package:eapteka/screens/screenProfile/widgets/dataList.dart';

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child: Column(
            children: <Widget>[
              Container(
                height: size.height * 0.04,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        
                        Container(
                            
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  menuList[index],
                                ),
                              ],
                            )),
                      ],
                    ),
                    Container(
                     
                     
                      child: Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                        size: 26,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  
                  padding: EdgeInsets.only(right:10),
                  child: Divider(
                    color: Colors.black,
                  )),
            ],
          ));
        });
  }
}
