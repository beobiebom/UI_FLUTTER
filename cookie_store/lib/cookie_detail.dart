import 'package:flutter/material.dart';
import "package:cookie_store/bottom_bar.dart";
class CookieDetail extends StatelessWidget {
  final assetPath,cookiePrice,cookieName;

  CookieDetail({this.assetPath,this.cookiePrice,this.cookieName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back,
              color:Color(0xFF545D68)
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Pickup",
          style: TextStyle(
              fontFamily: "Varela",
              fontSize: 20.0,
              color: Color(0xFF545D68)
          ),
        ),
        actions: [
          IconButton(
              icon:Icon(
                Icons.notifications_none,
                color: Color(0xFF545D68),
              )
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.only(left:15.0),
            child: Text(
              cookieName,
              style: TextStyle(
                color: Colors.red,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Varela",
              ),
            ),
          ),
          SizedBox(height: 15.0,),
          Hero(
            tag:assetPath,
            child: Image.asset(
              assetPath,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 10.0,),
          Center(
            child: Text(
              cookiePrice,
              style: TextStyle(
                fontSize: 25.0,
                color:Colors.red,
                fontFamily: "Varela",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Center(
            child: Text(
              cookieName,
              style: TextStyle(
                fontSize: 25.0,
                color:Colors.black,
                fontFamily: "Varela",
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(
            Icons.fastfood
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
