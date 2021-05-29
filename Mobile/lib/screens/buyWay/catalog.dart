import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';
import 'package:eapteka/screens/screenSearch/widgets/form.dart';
import 'package:eapteka/screens/screenStart/widgets/story_page_view.dart';
import 'package:story_view/story_view.dart';
import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/buyWay/widgets/list.dart';

class ScreenCatalog extends StatefulWidget {
  ScreenCatalog({key}) : super(key: key);

  @override
  _ScreenCatalog createState() => _ScreenCatalog();
}

class _ScreenCatalog extends State<ScreenCatalog> {
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
                height: size.height * 0.05,
              ),
              MyCustomForm(),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "14 результатов",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.4,
                    color: Colors.black.withAlpha(120)),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Divider(
                    color: Colors.black.withAlpha(40),
                  )),
                   SizedBox(
                height: size.height * 0.005,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "По популярности",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                        color: Colors.black),
                  ),
                   SizedBox(
                width: size.width * 0.02,
              ),
                  up_down,
                  SizedBox(
                    width: size.width * 0.27,
                  ),
                  Text(
                    "Фильтры",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                        color: Colors.black),
                  ),
                  
                ],
              ),
              Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Divider(
                    color: Colors.black.withAlpha(50),
                  )),
                  SizedBox(
                height: size.height * 0.01,
              ),
              Expanded(child: Container(child: BuyList(),))
            ]),
      ),
    );
  }
}
