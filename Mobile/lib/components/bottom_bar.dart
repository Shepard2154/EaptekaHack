import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eapteka/resources/icons.dart';
import 'package:eapteka/screens/screenStart/screenStart.dart';
import 'package:eapteka/theme/color_theme.dart';
import 'package:eapteka/screens/screenSearch/screenSearch.dart';
import 'package:eapteka/screens/screenProfile/screenProfile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  List<bool> isSelect = <bool>[true, false, false, false];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    ScreenStart(),
    ScreenSearch(),
    Text(
      'Index 2',
      style: optionStyle,
    ),
    ScreenProfile(),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      isSelect.fillRange(0, 4, false);
      _selectedIndex = index;
      isSelect[index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar:  Container(
            

            decoration: BoxDecoration(
                
               
                boxShadow: [
                  BoxShadow(
                    color: shadeBottomBar,
                    spreadRadius:2,
                    blurRadius: 25,
                  ),
                ],
              ),
            child:ClipRRect(
          
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
            
            elevation: 1,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon:  isSelect[0] ? svgNavBarSelect_0  :  svgNavBar_0, title: Text('')),
              BottomNavigationBarItem(
                 icon:  isSelect[1] ? svgNavBarSelect_1  :  svgNavBar_1, title: Text('')),
              BottomNavigationBarItem(
                  icon:  isSelect[2] ? svgNavBarSelect_2  :  svgNavBar_2, title: Text('')),
              BottomNavigationBarItem(
                 icon:  isSelect[3] ? svgNavBarSelect_3  :  svgNavBar_3, title: Text('')),
             
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.blue,
            onTap: _onItemTapped,
            backgroundColor: Colors.white,
          ),)
          
          
        ));
  }
}
