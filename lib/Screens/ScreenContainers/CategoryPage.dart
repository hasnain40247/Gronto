import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var h = screenSize.height;
    var w = screenSize.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return SafeArea(
        top: false,
        bottom: false,
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: w * 0.05),
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: Text(
                          "Fruits",
                          style: poppinsStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                        children: <Widget>[
                          Gridviews(
                            h: h,
                            list: [
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: w * 0.05),
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ExpansionTile(
                        title: Text(
                          "Vegetables",
                          style: poppinsStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                        children: <Widget>[
                          Gridviews(
                            h: h,
                            list: [
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: w * 0.05),
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ExpansionTile(
                        title: Text(
                          "Food Grains & Masala",
                          style: poppinsStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                        children: <Widget>[
                          Gridviews(
                            h: h,
                            list: [
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: w * 0.05),
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ExpansionTile(
                        title: Text(
                          "Breakfast & Dairy",
                          style: poppinsStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                        children: <Widget>[
                          Gridviews(
                            h: h,
                            list: [
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: w * 0.05),
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ExpansionTile(
                        title: Text(
                          "Beverages",
                          style: poppinsStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                        children: <Widget>[
                          Gridviews(
                            h: h,
                            list: [
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: w * 0.05),
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ExpansionTile(
                        title: Text(
                          "Poultry, Meat & Seafood",
                          style: poppinsStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                        children: <Widget>[
                          Gridviews(
                            h: h,
                            list: [
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.05, right: w * 0.05, top: w * 0.05),
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ExpansionTile(
                        title: Text(
                          "Packaged Foods",
                          style: poppinsStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                        children: <Widget>[
                          Gridviews(
                            h: h,
                            list: [
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                              Grids(
                                h: h,
                                text: "Organic",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}

class Gridviews extends StatelessWidget {
  const Gridviews({
    Key key,
    @required this.h,
    this.list,
  }) : super(key: key);

  final double h;
  final List<Widget> list;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        crossAxisCount: 3,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 2.5),
        children: list);
  }
}

class Grids extends StatelessWidget {
  const Grids({
    Key key,
    @required this.h,
    this.text,
  }) : super(key: key);

  final double h;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.black12),
      height: h * 0.24,
      child: Center(
          child: Text(
        text,
        style: poppinsStyle.copyWith(fontSize: 13),
      )),
    );
  }
}
