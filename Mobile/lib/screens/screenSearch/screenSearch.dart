import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';
import 'package:eapteka/screens/screenSearch/widgets/form.dart';
import 'package:eapteka/screens/screenStart/widgets/story_page_view.dart';
import 'package:story_view/story_view.dart';

class ScreenSearch extends StatefulWidget {
  ScreenSearch({key}) : super(key: key);

  @override
  _ScreenSearch createState() => _ScreenSearch();
}

class _ScreenSearch extends State<ScreenSearch> {
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
            height: size.height*0.05,
          ),
          MyCustomForm(),
        ]),
      ),
    );
  }
}






