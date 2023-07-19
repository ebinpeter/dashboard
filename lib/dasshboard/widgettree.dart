import 'package:dashboard/appbar/customappbar.dart';
import 'package:dashboard/dasshboard/pannelcenter.dart';
import 'package:dashboard/dasshboard/pannelsmall.dart';
import 'package:dashboard/dasshboard/resposive_lay.dart';
import 'package:flutter/material.dart';

import 'drawepagge.dart';

class Widgrttree extends StatefulWidget {
  const Widgrttree({super.key});

  @override
  State<Widgrttree> createState() => _WidgrttreeState();
}

class _WidgrttreeState extends State<Widgrttree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          child: (respodivelayout.istinylimit(context) ||
                  respodivelayout.istinyheghtlimit(context)
              ? Container()
              : AppBarWidget()),
          preferredSize: Size(double.infinity, 100)),
      body: respodivelayout(
        tiny: Container(),
        phone: Panelcenter(),
        tablet: Row(
          children: [
            Expanded(child: Panelcenter()),
            Expanded(child: Pannelsamll())
          ],
        ),
        cumputer: Row(
          children: [
            Expanded(child: Drawerpge()),
            Expanded(flex: 3, child: Panelcenter()),
            Expanded(child: Pannelsamll())
          ],
        ),
        largeTablet: Row(
          children: [
            Expanded(child: Panelcenter()),
            Expanded(child: Pannelsamll())
          ],
        ),
      ),
      drawer: Drawerpge(),
    );
  }
}
