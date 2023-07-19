import 'package:flutter/material.dart';

class respodivelayout extends StatelessWidget {
  final Widget tiny;
  final Widget phone;
  final Widget tablet;
  final Widget largeTablet;
  final Widget cumputer;

  const respodivelayout({
    required this.tiny,
    required this.phone,
    required this.tablet,
    required this.largeTablet,
    required this.cumputer,
  });
  static final int tinyheghtlimit = 100;
  static final int tinylimit = 270;
  static final int phonelimit = 550;
  static final int tablelimit = 800;
  static final int largetablelimit = 1100;

  static bool istinyheghtlimit(BuildContext context) =>
      MediaQuery.of(context).size.height < tinyheghtlimit;

  static bool istinylimit(BuildContext context) =>
      MediaQuery.of(context).size.height < tinylimit;

  static bool isphone(BuildContext context) =>
      MediaQuery.of(context).size.height < phonelimit &&
      MediaQuery.of(context).size.width >= tinylimit;

  static bool istabletlimit(BuildContext context) =>
      MediaQuery.of(context).size.height < tablelimit &&
      MediaQuery.of(context).size.width >= phonelimit;

  static bool islargetablettlimit(BuildContext context) =>
      MediaQuery.of(context).size.height < largetablelimit &&
      MediaQuery.of(context).size.width >= tablelimit;

  static bool iscumputer(BuildContext context) =>
      MediaQuery.of(context).size.height >= largetablelimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxHeight < tinylimit ||
          constraints.maxHeight < tinyheghtlimit) {
        return tiny;
      }
      if (constraints.maxWidth < phonelimit) {
        return phone;
      }
      if (constraints.maxWidth < tablelimit) {
        return tablet;
      }
      if (constraints.maxWidth < largetablelimit) {
        return largeTablet;
      } else {
        return cumputer;
      }
    });
  }
}
