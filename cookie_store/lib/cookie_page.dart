import 'package:flutter/material.dart';
import 'package:cookie_store/cookie_detail.dart';

class CookiePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: Column(
        children: [
          SizedBox(height:15.0),
          Container(
            padding: EdgeInsets.only(right:15.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height -100.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.7,
              children: [
                buildCard('Cookie mint', '\$3.99', 'assets/cookiemint.jpg',
                    false, false, context),
                buildCard('Cookie cream', '\$5.99', 'assets/cookiecream.jpg',
                    true, false, context),
                buildCard('Cookie classic', '\$1.99',
                    'assets/cookieclassic.jpg', false, true, context),
                buildCard('Cookie choco', '\$2.99', 'assets/cookiechoco.jpg',
                    false, false, context)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildCard(String name,String price, String imgPath, bool added,bool isFavorite,context){
    return Padding(
      padding:EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CookieDetail(
                  assetPath: imgPath,
                  cookiePrice:price,
                  cookieName: name
              )));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow:[
              BoxShadow(
                color:Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0
              )
            ],
            color:Colors.white
          ),
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavorite? Icon(Icons.favorite, color: Color(0xFFEF7532))
                        : Icon(Icons.favorite_border,
                        color: Color(0xFFEF7532))
                  ],
                ),
              ),
              Hero(
                tag: imgPath,
                child:Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain
                    )
                  ),
                )
              ),
              SizedBox(height: 7.0,),
              Text(
                price,
                style: TextStyle(
                    color: Color(0xFFCC8053),
                    fontFamily: 'Varela',
                    fontSize: 14.0
                ),
              ),
              Text(name,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 14.0)
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(color: Color(0xFFEBEBEB), height: 1.0)
              ),
              Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (!added) ...[
                          Icon(Icons.shopping_basket,
                              color: Color(0xFFD17E50), size: 12.0),
                          Text('Add to cart',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  color: Color(0xFFD17E50),
                                  fontSize: 12.0))
                        ],
                        if (added) ...[
                          Icon(Icons.remove_circle_outline,
                              color: Color(0xFFD17E50), size: 12.0),
                          Text('3',
                              style: TextStyle(
                                  fontFamily: 'Varela',
                                  color: Color(0xFFD17E50),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0)),
                          Icon(Icons.add_circle_outline,
                              color: Color(0xFFD17E50), size: 12.0),
                        ]
                      ])
              )
            ],
          ),
        ),
      ),
    );
  }

}
