import 'package:dashboard/dasshboard/mydash.dart';
import 'package:dashboard/dasshboard/resposive_lay.dart';
import 'package:flutter/material.dart';

int _currentSelectedButton = 0;

class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          if (!respodivelayout.isphone(context))
            Container(
                margin: EdgeInsets.all(constant.kpaading),
                height: double.infinity,
                child: Image.asset("asset/Group 1.png"))
          else
            IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          SizedBox(width: constant.kpaading),
          if (respodivelayout.iscumputer(context))
            OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(constant.kpaading / 2),
                child: Text("Admin Panel"),
              ),
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white, width: 0.4)),
            ),
          if (!respodivelayout.isphone(context))
            Container(
              margin: EdgeInsets.all(constant.kpaading),
              height: double.infinity,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0, 0),
                  spreadRadius: 1,
                  blurRadius: 10,
                )
              ], shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundColor: constant.bluelight,
                radius: 30,
                backgroundImage: AssetImage(
                  "images/profile.png",
                ),
              ),
            ),
        ],
      ),
    );
  }
}
