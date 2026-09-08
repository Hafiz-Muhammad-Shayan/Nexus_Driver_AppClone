import 'package:flutter/material.dart';
import 'package:nexus_driver_appclone/colors.dart';
import 'package:nexus_driver_appclone/profile_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Color(0xFF00130D),
            ),
          ),

          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.10),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 180,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/profileScreenBackground.png",

                                ),
                              fit: BoxFit.fill,
                              opacity: 0.3,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xFF00FF66),
                                      width: 2.5,
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/profilePic.png",

                                        ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                    "01",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.location_pin,
                                      color: icon_color,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "ROSELANDS RESIDENTAIL HOME,CACKLE STREET,BREEK",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 90,top: 60),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ProfileText(
                                txt1: "Full Name",
                                txt2: "01",
                              ),
                              ProfileText(
                                txt1: "Email",
                                txt2: "SHAYAN@GMAIL.COM",
                              ),
                              Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Address",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,

                                      ),
                                    ),
                                    Text(
                                      "ROSELANDS RESIDENTIAL",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                            Shadow(
                                              color: Color(0xFF6FED25),
                                              blurRadius: 15,
                                            ),
                                            Shadow(
                                              color: Color(0xFF6FED25),
                                              blurRadius: 15,
                                            ),
                                          ]
                                      ),
                                    ),
                                    Text(
                                      "HOME,CACKLE STREET,",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                            Shadow(
                                              color: Color(0xFF6FED25),
                                              blurRadius: 15,
                                            ),
                                            Shadow(
                                              color: Color(0xFF6FED25),
                                              blurRadius: 15,
                                            ),
                                          ]
                                      ),
                                    ),
                                    Text(
                                      "BREDE,RYE TN31 6EB",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                            Shadow(
                                              color: Color(0xFF6FED25),
                                              blurRadius: 15,
                                            ),
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
                          ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Address",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,

                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "5463787652",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                    Shadow(
                                                      color: Color(0xFF6FED25),
                                                      blurRadius: 15,
                                                    ),
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
                                  ],
                                ),
                              ),
                              ProfileText(
                                txt1: "Joining Date",
                                txt2: "05-08-2026",
                              ),
                              ProfileText(
                                txt1: "Allotted vehicle",
                                txt2: "SALOON",
                              ),
                              ProfileText(
                                txt1: "CURRENT vehicle",
                                txt2: "SALOON",
                              ),
                              InkWell(
                                onTap: (){},
                                child: Row(
                                  children: [
                                    Text(
                                        "View Document",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xBE2CFF06),
                                        shadows: [
                                          Shadow(
                                              color: Color(0xFF6FED25),
                                            blurRadius: 15,
                                          ),
                                          Shadow(
                                            color: Color(0xFF6FED25),
                                            blurRadius: 15,
                                          ),
                                        ]
                                      ),
                                    ),
                                  ],
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),),

        ],
      ),
    );
  }
}
