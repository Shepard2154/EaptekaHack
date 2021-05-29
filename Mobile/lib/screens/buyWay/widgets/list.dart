import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/screenStart/widgets/dataList.dart';
import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import '../../../theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';
import 'package:eapteka/screens/screenProfile/widgets/dataList.dart';
import 'package:eapteka/screens/buyWay/product.dart';

class BuyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          height: size.height * 0.17,
                          width: size.width * 0.34,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('assets/images/no_photo.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                      ],
                    )),
                    SizedBox(
                      width: size.width*0.04,
                    ),
                    Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                svgStar,
                                svgStar,
                                svgStar,
                                svgStar,
                                svgStar,
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.25,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.black.withAlpha(80),
                            )
                          ],
                        )),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Лекарство, таблетки\n20шт",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Производитель:",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4,
                              color: Colors.black.withAlpha(100)),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        Text(
                          "в наличии",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4,
                              color: profileName),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "239 ₽",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.4,
                                  color: Colors.black),
                            ),
                            SizedBox(
                          width: size.width * 0.3,
                        ),
                            Container(
                                width: 30.0,
                                height: 30.0,
                                margin: EdgeInsets.only(bottom: 3),
                                child: new RawMaterialButton(
                                  fillColor: carButtonColor,
                                  shape: new CircleBorder(),
                                  elevation: 0.0,
                                  child: svgCartButton,
                                  onPressed: () {

                                     Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProductScreen()));
                                  },
                                ))
                          ],
                        ),
                         SizedBox(
                          height: size.height * 0.003,
                        ),
                        Text(
                              "219 ₽ цена по Подписке",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.4,
                                  color: Colors.black.withAlpha(100)),
                            ),
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.002,
                ),
                Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Divider(
                      color: Colors.black,
                    )),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ]));
        });
  }
}
