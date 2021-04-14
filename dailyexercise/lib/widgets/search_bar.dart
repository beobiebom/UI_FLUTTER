import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25.0 ),
      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 5.0),
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0)
      ),
      alignment: Alignment.center,
      child:TextField(
        decoration: InputDecoration(
            hintText: "Search",
            icon: SvgPicture.asset("assets/icons/search.svg"),
            border: InputBorder.none
        ),
        style: TextStyle(
            height: 1
        ),
      ),
    );
  }
}

