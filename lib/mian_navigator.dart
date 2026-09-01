import 'package:flutter/material.dart';
import 'package:nexus_driver_appclone/colors.dart';
import 'package:nexus_driver_appclone/dashBoard.dart';
import 'package:nexus_driver_appclone/profile.dart';

class MianNavigator extends StatefulWidget {
  const MianNavigator({super.key});

  @override
  State<MianNavigator> createState() => _MianNavigatorState();
}

class _MianNavigatorState extends State<MianNavigator> {
  int _index = 0;
  final screens = [
    Dashboard(),
    Profile(),
    Dashboard(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,

      body: screens[_index],

      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 1,
        child: BottomNavigationBar(
          // type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
            unselectedItemColor: Color(0xFFBDBDBD),
            selectedItemColor: borderColor,
            currentIndex: _index,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,),
                label: "Home",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.assignment,),
              label: "Jobs",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.pie_chart,),
              label: "My earning",
              ),
              // BottomNavigationBarItem(icon: Icon(Icons.pie_chart,),
              //   label: "My earning",
              // ),
            ],
        ),
      ),

    );
  }
}
