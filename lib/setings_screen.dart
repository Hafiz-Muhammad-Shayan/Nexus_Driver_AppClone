import 'package:flutter/material.dart';

class SetingsScreen extends StatelessWidget {
  const SetingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              "assets/images/settingsBackground.png",
              fit: BoxFit.fill,
            ),
          ),

          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.15),
            ),
          ),
        ],
      ),
    );
  }
}
