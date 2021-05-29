import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';
import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/screenProfile/widgets/menu_list.dart';
import 'package:eapteka/screens/screenProfile/widgets/list.dart';
import 'package:story_view/story_view.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back,
              color: Colors.black.withAlpha(120), size: 27),
          shadowColor: Colors.white,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Container(
              child: Row(
            children: <Widget>[
              SizedBox(
                width: size.width * 0.21,
              ),
              Text(
                'Профиль',
                style: TextStyle(color: Colors.black.withAlpha(120)),
              ),
            ],
          )),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10),
              child: profile_Notification,
            ),
          ],
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Text(
                        "Петров Петр Петрович",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.4,
                            color: profileName),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        "Редактировать контактные данные",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.4,
                            color: profileName),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    height: size.height * 0.15,
                    child: ProfileList(),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.16,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Colors.black.withAlpha(20), width: 2)),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: size.width * 0.9,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Expanded(child: Container(
                  
                    child: MenuList(),
                  ))
                  
                ])));
  }
}
