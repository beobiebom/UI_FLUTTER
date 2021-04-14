import 'package:cookie_store/bottom_bar.dart';
import 'package:cookie_store/cookie_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color:Color(0xFF545D68)
          ),
          onPressed: () {},
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
        padding: EdgeInsets.only(left: 20.0),
        children: [
          SizedBox(height: 15.0,),
          Text(
            "Categories",
            style: TextStyle(
              fontFamily: "Varela",
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0,),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right:45.0),
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                child:Container(
                  alignment:Alignment.center ,
                  height: 40.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colors.red
                    )
                  ),
                  child: Text(
                    "Cookies",
                    style: TextStyle(
                      fontFamily: "Varela",
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              Tab(
                  child:Text(
                    "Cookies",
                    style: TextStyle(
                        fontFamily: "Varela",
                        fontSize: 21.0
                    ),
                  )
              ),
              Tab(
                  child:Text(
                    "Cookies",
                    style: TextStyle(
                        fontFamily: "Varela",
                        fontSize: 21.0
                    ),
                  )
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height -50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ],
            ),
          )
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
