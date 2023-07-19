import 'package:flutter/material.dart';

class Panelcenter extends StatefulWidget {
  const Panelcenter({super.key});

  @override
  State<Panelcenter> createState() => _PanelcenterState();
}

class _PanelcenterState extends State<Panelcenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
    );
  }
}
