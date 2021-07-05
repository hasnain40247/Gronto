import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var h = screenSize.height;
    var w = screenSize.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return SafeArea(
        top: false,
        bottom: false,
        child:
        Container(
          height: screenSize.height,
          width: screenSize.width,
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: EdgeInsets.only(top: w * 0.1, left: w * 0.1),
                child: Text(
                  "Great Deals and Offers",
                  style:
                      poppinsStyle.copyWith(fontSize: 19,fontWeight: FontWeight.w800, ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.1,right: 8.0),
                        child: Container(
                          height: h * 0.18,
                          width: w * 0.6,
                          child: Image.asset('assets/images/rect.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: h * 0.18,
                          width: w * 0.6,
                          child: Image.asset('assets/images/rect2.png'),
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: EdgeInsets.only(top: w * 0.1, left: w * 0.1),
                child: Text(
                  "Shop From Stores Nearby",
                  style: poppinsStyle.copyWith(fontSize: 19,fontWeight: FontWeight.w800,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.1,right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: h * 0.14,
                          width: w * 0.3,
                          child: Image.asset('assets/images/ratnadeep.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: h * 0.14,
                          width: w * 0.3,
                          child: Image.asset('assets/images/vijetha.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: h * 0.14,
                          width: w * 0.3,
                          child: Image.asset('assets/images/xyz.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: h * 0.14,
                          width: w * 0.3,
                          child: Image.asset('assets/images/ranch.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: h * 0.14,
                          width: w * 0.3,
                          child: Image.asset('assets/images/sai.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: h * 0.14,
                          width: w * 0.3,
                          child: Image.asset('assets/images/ram.png'),
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: EdgeInsets.only(top: w * 0.1, left: w * 0.1),
                child: Text(
                  "Shop By Categories",
                  style: poppinsStyle.copyWith(fontSize: 19,fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.1,right: 8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: h * 0.14,
                            width: w * 0.3,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Group 31.png'),
                                Text(
                                  "Fruits",
                                  style: poppinsStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: h * 0.14,
                            width: w * 0.3,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Group 32.png'),
                                Text(
                                  "Vegetables",
                                  style: poppinsStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: h * 0.14,
                            width: w * 0.3,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Rectangle 15.png'),
                                Text(
                                  "Dairy",
                                  style: poppinsStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )),
                      ),
                    ])),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.1,right: 8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: h * 0.14,
                            width: w * 0.3,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Rectangle 13.png'),
                                Text(
                                  "Beverages",
                                  style: poppinsStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: h * 0.14,
                            width: w * 0.3,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Rectangle 14.png'),
                                Text(
                                  "Household",
                                  style: poppinsStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: h * 0.14,
                            width: w * 0.3,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Rectangle 16.png'),
                                Text(
                                  "Personal Care",
                                  style: poppinsStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )),
                      ),
                    ])),
              ),
            ],
          ),
        ));
  }
}
