import 'package:flutter/material.dart';

class ProfileText extends StatelessWidget {
  final String txt1;
  final String txt2;

  const ProfileText({
    super.key,
    required this.txt1,
    required this.txt2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "$txt1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,

                ),
              ),
              Text(
                "$txt2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  shadows: [
                      Shadow(
                        color: Color(0xFF6FED25),
                        blurRadius: 15,
                      ),

                    ]

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
