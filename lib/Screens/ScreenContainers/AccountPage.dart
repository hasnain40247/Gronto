import 'package:flutter/material.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

import 'CategoryPage.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
              // left: w * 0.05, right: w * 0.05, top: w * 0.05
              Container(
                child: Padding(
                  padding:  EdgeInsets.only(top:w*0.1,left:w*0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello, Hasnain!",style: poppinsStyle.copyWith(fontSize: 25),),
                      ListTile(
                        contentPadding: EdgeInsets.only(right: 10),
                        leading: Text("7032422042 | hnsikora@gmail.com",style: TextStyle(color: Color(0xFF747373)),),
                        trailing: IconButton(onPressed: ()=>{}, icon: Icon(Icons.edit,color: appBlack, size: 20,)),

                      )
                    ],
                  ),
                ),
              ),
              AccountTiles(
                  text: "Past Orders", icon: Icons.shopping_cart_outlined,w: w,),
              AccountTiles(
                text: "Your Favourites",
                icon: Icons.favorite_outline_rounded,
                w: w,
              ),
              AccountTiles(
                text: "Customer Support",
                icon: Icons.headset_mic_outlined,
                w: w,
              ),
              AccountTiles(
                text: "Saved Cards",
                icon: Icons.credit_card,
w: w,              ),
              AccountTiles(
                  text: "Saved UPI", icon: Icons.mobile_friendly_rounded,w: w,),
              AccountTiles(
                text: "Notifications",
                icon: Icons.notifications_none,
                w: w,
              ),
              AccountTiles(
                text: "Logout",
                icon: Icons.logout,
                w: w,
              ),
            ],
          ),
        ));
  }
}

class AccountTiles extends StatelessWidget {
  const AccountTiles({
    Key key,
    this.text,
    this.icon, this.w,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final w;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      elevation: 2,
      child: ListTile(

        contentPadding: EdgeInsets.only(left: w*0.1,top: w*0.025,bottom: w*0.025),
        horizontalTitleGap: 2,
        leading: Icon(
          icon,
          color: appBlack,
        ),
        tileColor: Colors.white,
        title: Text(
          text,
          style: poppinsStyle.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
