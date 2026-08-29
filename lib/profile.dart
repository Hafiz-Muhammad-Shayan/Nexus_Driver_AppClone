import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // ================= BACKGROUND =================
          Positioned.fill(
            child: Image.asset(
              "assets/images/background_image.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // Dark overlay
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.15),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [

                  SizedBox(
                      height: 100,
                  ),

                  // ================= LOGO =================
                  Image.asset(
                    "assets/images/cabFlow_logo.png",
                    width: 300,
                    fit: BoxFit.contain,
                  ),

                  SizedBox(
                    height: 85,
                  ),

                  // ================= AUTHENTICATION TOKEN =================
                  SizedBox(
                    width: double.infinity,
                    height: 68,
                    child: ElevatedButton(
                      onPressed: () {
                        // Authentication Token
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2F8F46),
                        foregroundColor: Colors.white,
                        // elevation: 12,
                        shadowColor: const Color(0xFF39FF68).withOpacity(0.45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: const BorderSide(
                            color: Color(0xFF6DFF82),
                            width: 1.2,
                          ),
                        ),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.shield_outlined,
                            size: 28,
                          ),

                          SizedBox(
                            width: 15,
                          ),

                          Text(
                            'Authentication Token',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  // ================= AUTHENTICATE =================
                  SizedBox(
                    width: double.infinity,
                    height: 68,
                    child: OutlinedButton(
                      onPressed: () {
                        // Authenticate
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF63D66D),

                        side: const BorderSide(
                          color: Color(0xFF63D66D),
                          width: 1.5,
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.account_circle_outlined,
                            size: 31,
                          ),

                          SizedBox(
                            width: 15,
                          ),

                          Text(
                            'Authenticate',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
