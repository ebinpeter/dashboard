import 'package:dashboard/dasshboard/mydash.dart';
import 'package:dashboard/dasshboard/resposive_lay.dart';
import 'package:flutter/material.dart';

class Drawerpge extends StatefulWidget {
  const Drawerpge({super.key});

  @override
  State<Drawerpge> createState() => _DrawerpgeState();
}

class ButtonInfo {
  String title;
  // IconData? icon;

  ButtonInfo({
    required this.title,
  });
}

int _currentIndex = 0;
List<ButtonInfo> _button_names = [
  ButtonInfo(
    title: "Overall status",
  ),
  ButtonInfo(
    title: "Player Data",
  ),
  ButtonInfo(
    title: "Enabled/Disnabled",
  ),
  ButtonInfo(
    title: "Notification",
  ),
  ButtonInfo(
    title: "Leaderboard",
  ),
  ButtonInfo(
    title: "Settings",
  ),
];

class _DrawerpgeState extends State<Drawerpge> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(constant.kpaading),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Dashboard",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              // trailing: respodivelayout.iscumputer(context)
              //     ?
              // : IconButton(
              //     onPressed: () {},
              //     icon: Icon(
              //       Icons.close,
              //       color: Colors.white,
              //     ),
              //   )
            ),
            ...List.generate(
                _button_names.length,
                (index) => Column(
                      children: [
                        Container(
                          child: ListTile(
                            title: Text(
                              _button_names[index].title,
                              style: TextStyle(color: Colors.white),
                            ),

                            // leading: Padding(padding: EdgeInsets.all(constant.kpaading)
                            // child: Icon,),

                            onTap: () {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                        )
                      ],
                    ))
          ],
        ),
      )),
    );
  }
}
