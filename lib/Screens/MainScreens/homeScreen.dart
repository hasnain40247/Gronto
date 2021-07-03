import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:gronto/Components/customApp.dart';
import 'package:gronto/Screens/ScreenContainers/AccountPage.dart';
import 'package:gronto/Screens/ScreenContainers/CategoryPage.dart';
import 'package:gronto/Screens/ScreenContainers/HomePage.dart';
import 'package:gronto/Screens/ScreenContainers/ShoppingList.dart';
import 'package:gronto/Search/searchComponents.dart';
import 'package:gronto/customIcons/app_icons_icons.dart';
import 'package:gronto/customIcons/my_flutter_app_icons.dart';
import 'package:gronto/textStyles/poppinStyle.dart';


class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex=0;
  List _screens=[HomePage(),CategoryPage(),ShoppingList(),AccountPage()];
  List _appBars=[homeAppbar(),CategoryAppbar(),CategoryAppbar(text1: "Shopping", text2: " List", color1: appYellow , color2:appBlack),accAppbar()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var h = screenSize.height;
    var w = screenSize.width;
    return WillPopScope(
      onWillPop: () async => false,
      child:
      Scaffold(
          backgroundColor: Colors.white,
          appBar: _appBars[_currentIndex],
          body: _screens[_currentIndex],
          bottomNavigationBar: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 1),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(11.0),
                  topRight: Radius.circular(11.0),
                ),
                child:
                BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _currentIndex,
                  onTap: _updateIndex,
                  unselectedItemColor: appBlack,
                  selectedItemColor: appYellow,
                  selectedFontSize: 13,
                  unselectedFontSize: 10,

                  iconSize: 30,

                  items: [
                    BottomNavigationBarItem(
                        label: "Home",
                        icon: Icon(MyFlutterApp.icone)
                    ),
                    BottomNavigationBarItem(
                      label: "Categories",
                      icon: Icon(MyFlutterApp.iconc),
                    ),
                    BottomNavigationBarItem(
                      label: "List",
                      icon: Icon(MyFlutterApp.iconsb),
                    ),
                    BottomNavigationBarItem(
                      label: "Account",
                      icon: Icon(MyFlutterApp.icona),
                    ),
                  ],
                ),

              )
          )

      )

    );
  }


}