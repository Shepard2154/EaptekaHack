import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/screenStart/widgets/dataList.dart';
import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import '../../../theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';

class ProfileList extends StatelessWidget {
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
                border:
                    Border.all(color: Colors.black.withAlpha(20), width: 2)),
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: size.width * 0.45,
          );
        });
  }
}
