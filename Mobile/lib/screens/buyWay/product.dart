import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:eapteka/theme/color_theme.dart';
import 'package:eapteka/resources/images.dart';
import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/screenProfile/widgets/menu_list.dart';
import 'package:eapteka/screens/screenProfile/widgets/list.dart';
import 'package:story_view/story_view.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      backgroundColor: Colors.white,
      bottomSheet: BottomSheet(
              elevation: 10,
              backgroundColor: Colors.white,
              onClosing: () {
                // Do something
              },
              builder: (BuildContext ctx) => Container(
                    width: double.infinity,
                    height: size.height*0.22,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.black.withAlpha(20), width: 2)),
                    child: Container(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                onPressed: null,
                
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                    primary: Colors.teal, backgroundColor: profileName ),
                child: Container(
                    width: size.width * 0.7,
                    height: size.height * 0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                    "Купить за 239 ₽",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                        color: Colors.white),
                  ),
                      ],
                    )),
              ),
              SizedBox(
                height: size.height*0.02,
              ),
              OutlinedButton(
                onPressed: null,
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.teal,
                ),
                child: Container(
                     width: size.width * 0.7,
                    height: size.height * 0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                    "Оформить подписку",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                        color: profileName),
                  ),
                      ],
                    )),
              ),
            ],
          ),
                      
                    ),
                  )),
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
                width: size.width * 0.24,
              ),
              Text(
                'Заказ',
                style: TextStyle(color: Colors.black.withAlpha(120)),
              ),
            ],
          )),
          actions: <Widget>[
            Icon(
              Icons.share,
              color: Colors.black.withAlpha(100),
              size: 22,
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(Icons.favorite, color: Colors.black.withAlpha(100)),
            ),
          ],
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * 0.05),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.25),
                      Container(
                        height: size.height * 0.20,
                        width: size.width * 0.42,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/no_photo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  Text(
                    "Лекарство, таблетки 20шт",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                        color: Colors.black),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    children: <Widget>[
                      svgStar,
                      svgStar,
                      svgStar,
                      svgStar,
                      svgStar,
                      SizedBox(width: size.width * 0.05),
                      Text(
                        "7 отзывов",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.4,
                            color: Colors.black.withAlpha(100)),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    children: <Widget>[
                      Text('239 ₽',
                          style: TextStyle(
                              color: priceColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text('255 ₽',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough))),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: <Widget>[
                      Text(
                        "219 ₽ цена по Подписке",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.4,
                            color: Colors.black.withAlpha(100)),
                      ),
                      SizedBox(
                        width: size.width * 0.27,
                      ),
                      Text(
                        "В наличии",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.4,
                            color: profileName),
                      ),
                    ],
                  ),
                    SizedBox(height: size.height * 0.05),
                    Text(
                    "Заказ онлайн",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                        color: Colors.black),
                  ),
                   SizedBox(height: size.height * 0.03),
                  Text(
                    "Доставка сегодня",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                        color: Colors.black),
                  ),
                   SizedBox(height: size.height * 0.02),
                  Text(
                    "Самовывоз сегодня",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4,
                        color: Colors.black),
                  ),
                ])));
  }
}
