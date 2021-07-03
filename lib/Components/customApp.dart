import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gronto/Search/searchComponents.dart';
import 'package:gronto/customIcons/app_icons_icons.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

class CustomApp extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  CustomApp({
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}

class CategoryAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String text1;
  final String text2;
  final Color color1;
  final Color color2;
  CategoryAppbar({
    Key key,
    this.text1,
    this.text2,
    this.color1,
    this.color2,
  })  : preferredSize = Size.fromHeight(130.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var h = screenSize.height;
    var w = screenSize.width;
    return AppBar(
        toolbarHeight: h * 0.2,
        backgroundColor: Colors.white,
        elevation: 2,
        titleSpacing: 0,
        title: RichText(
            text: TextSpan(
                text: text1 == null ? "All" : text1,
                style: poppinsStyle.copyWith(
                    color: color1 == null ? appBlack : color1, fontSize: 27),
                children: [
              TextSpan(
                  text: text2 == null ? " Categories" : text2,
                  style: TextStyle(color: color2 == null ? appYellow : color2))
            ])),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, "homeScreen", (r) => false)),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: finalSearch(w: w)));
  }
}

class homeAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  homeAppbar({
    Key key,
  })  : preferredSize = Size.fromHeight(130.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var h = screenSize.height;
    var w = screenSize.width;
    return AppBar(
        toolbarHeight: h * 0.2,
        backgroundColor: Colors.white,
        elevation: 2,
        titleSpacing: 0,
        // title: RichText(
        //     text: TextSpan(
        //         text: "All",
        //         style: poppinsStyle.copyWith(color: appBlack, fontSize: 27),
        //         children: [
        //           TextSpan(text: " Categories", style: TextStyle(color: appYellow))
        //         ])),
        leading: IconButton(
          icon: Icon(Icons.location_on_sharp, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: finalSearch(w: w)));
    // PreferredSize(
    //     preferredSize: Size.fromHeight(kToolbarHeight),
    //     child: SizedBox(
    //       height: h * 0.1,
    //       width: h * 0.43,
    //       child: Search()
    //     )));
  }
}

class finalSearch extends StatelessWidget {
  const finalSearch({
    Key key,
    @required this.w,
  }) : super(key: key);

  final double w;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Container(
        width: w*0.95,

           padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xEEEEEEEE),
          ),
          child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                color: Color(0xEEEEEEEE),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        AppIcons.vector,
                        color: appYellow,
                        size: 18,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0,right:8,bottom:8,left:10),
                        child: TextField(
                          // textAlign: TextAlign.center,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search for Products',
                            hintStyle: poppinsStyle.copyWith(color: Color(0xFF979797),fontWeight: FontWeight.normal)
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                    ),

                  ],
                ),
              ))),
    );
  }
}

class accAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  accAppbar({
    Key key,
  })  : preferredSize = Size.fromHeight(100.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var h = screenSize.height;
    var w = screenSize.width;
    return AppBar(
        toolbarHeight: h * 0.2,
        backgroundColor: Colors.white,
        elevation: 2,
        titleSpacing: 0,
        title: Image.asset(
          "assets/images/mainLogo2.png",
          fit: BoxFit.cover,
          scale: 0.9,
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, "homeScreen", (r) => false)));
  }
}
