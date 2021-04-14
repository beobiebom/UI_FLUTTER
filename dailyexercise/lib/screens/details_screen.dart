import 'package:dailyexercise/constants.dart';
import 'package:dailyexercise/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height*0.45 ,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth
              )
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height*0.05,),
                  Text(
                    "Meditation",
                    style: Theme.of(context).textTheme.display1.copyWith(
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  SizedBox(height:10),
                  Text(
                    "3-10 MIN Course",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: size.width*0.6,
                    child: Text(
                      "Live happier and healthier by learning the fundamentals of meditation dasdadasdasdasd"
                    )
                  ),
                  SizedBox(
                    width: size.width*0.5,
                    child: SearchBar()
                  ),
                  Wrap(
                    spacing: 16,
                    runSpacing: 10,
                    children: [
                      SessionCard(
                        sessionNum: 1,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 2,
                        isDone: false,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 3,
                        isDone: false,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 4,
                        isDone: false,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 5,
                        isDone: false,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNum: 6,
                        isDone: false,
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Meditation",
                    style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.all(10),
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,17),
                          blurRadius: 9,
                          spreadRadius: -2,
                          color: kShadowColor,
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Basic 2",
                                style: Theme.of(context).textTheme.subtitle,
                              ),
                              Text(
                                "Start your deepen you practice"
                              )
                            ],
                          )),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child:SvgPicture.asset("assets/icons/Lock.svg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final Function press;
  const SessionCard({
    Key key,
    this.sessionNum,
    this.isDone=false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraint){
      return  ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
            width: constraint.maxWidth/2 - 8,
            decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color:kShadowColor,
                  )
                ]
            ),
            child:Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: isDone ? kBlueColor : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: kBlueColor
                            )
                          ),
                          child:Icon(
                              Icons.play_arrow,
                              color:isDone ? Colors.white : kBlueColor
                          )
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Session $sessionNum",
                        style: Theme.of(context).textTheme.subtitle1,
                      )
                    ],
                  ),
                ),
              ),
            ),
        ),
      );
      }
    );
  }
}
