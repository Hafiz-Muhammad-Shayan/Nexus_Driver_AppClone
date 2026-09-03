import 'package:flutter/material.dart';
import 'package:nexus_driver_appclone/colors.dart';

class SetingsScreen extends StatefulWidget {
  const SetingsScreen({super.key});

  @override
  State<SetingsScreen> createState() => _SetingsScreenState();
}

class _SetingsScreenState extends State<SetingsScreen> {
  @override
  Widget build(BuildContext context) {
    var iconColor = Color(0xFF8CFF3F);
    bool light = true;
    double coHeight = 60;
    List<String> textList = ["Night Mode","Change Brightness","Add Message Template","Sync Settings","Navigation Type","Privacy Policy","Hide Earning","Delete Account"];

    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              "assets/images/settingsBackgroundPic.png",
              fit: BoxFit.fill,
            ),
          ),

          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.05),
            ),
          ),

          SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.arrow_back,
                            color: iconColor,
                            fontWeight: FontWeight.bold,
                          ),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Settings",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Container(
                      height: coHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: borderColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Icon(
                              Icons.nights_stay_rounded,
                              size: 25,
                              color: iconColor,
                            ),
                          ),
                          Text(
                              "${textList[0]}",
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.w600,
                              ),
                          ),
                          Spacer(),
                          Switch(
                              value:light,
                              activeThumbColor: borderColor,
                              onChanged: (bool value) {
                                setState(() {
                                  light = value;
                                }
                                );
                              },
                          ),

                        ],
                      ),

                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: coHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: borderColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Icon(
                              Icons.brightness_5_outlined,
                              size: 25,
                              color: iconColor,
                            ),
                          ),
                          Text(
                            "${textList[1]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 25,
                                color: borderColor,

                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: coHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: borderColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Icon(
                              Icons.content_paste_rounded,
                              size: 25,
                              color: iconColor,
                            ),
                          ),
                          Text(
                            "${textList[2]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 25,
                              color: borderColor,

                            ),
                          ),

                        ],
                      ),

                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: coHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: borderColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Icon(
                              Icons.settings_suggest,
                              size: 25,
                              color: iconColor,
                            ),
                          ),
                          Text(
                            "${textList[3]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 25,
                              color: borderColor,

                            ),
                          ),

                        ],
                      ),

                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: coHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: borderColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Icon(
                              Icons.compare_arrows,
                              size: 25,
                              color: iconColor,
                            ),
                          ),
                          Text(
                            "${textList[4]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 25,
                              color: borderColor,

                            ),
                          ),

                        ],
                      ),

                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: coHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: borderColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Icon(
                              Icons.shield,
                              size: 25,
                              color: iconColor,
                            ),
                          ),
                          Text(
                            "${textList[5]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 25,
                              color: borderColor,

                            ),
                          ),

                        ],
                      ),

                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: coHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: borderColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Icon(
                              Icons.bar_chart_rounded,
                              size: 25,
                              color: iconColor,
                            ),
                          ),
                          Text(
                            "${textList[6]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Switch(
                            value:light,
                            activeThumbColor: borderColor,
                            onChanged: (bool value) {
                              setState(() {
                                light = value;
                              }
                              );
                            },
                          ),

                        ],
                      ),

                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: coHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: borderColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Icon(
                              Icons.delete_forever,
                              size: 25,
                              color: iconColor,
                            ),
                          ),
                          Text(
                            "${textList[7]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 25,
                              color: borderColor,

                            ),
                          ),

                        ],
                      ),

                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
