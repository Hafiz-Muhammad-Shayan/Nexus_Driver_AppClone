import 'package:flutter/material.dart';
import 'package:nexus_driver_appclone/colors.dart';

class BookingScrn extends StatelessWidget {
  const BookingScrn({super.key});

  @override
  Widget build(BuildContext context) {
    double conHeight = 160;
    double conWidth = 120;
    var conBorder = Color(0xFF4CFF1A).withOpacity(0.40);
    var conDash = Color(0xFF78FF35);
    var fontColor = Color(0xFF78FF35);
    var iconColor = Color(0xFF8CFF3F);
    double iconSize = 35;
    var conDash1 = Color(0xFF4CFF1A);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
                "assets/images/booking_background.png",
                fit: BoxFit.fill,
              ),
          ),
          Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.10),
              )),

          SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
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
                              "Bookings",
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
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: conHeight,
                            width: conWidth,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: conBorder,
                                  width: 1.5,
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                          "Present",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: fontColor,
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: conDash,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 1,
                                          color: conDash,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20),
                                              child: Icon(
                                                  Icons.calendar_month,
                                                  color: iconColor,
                                                  size: iconSize,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 5,
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 46,
                                        color: conDash1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: conHeight,
                            width: conWidth,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: conBorder,
                                width: 1.5,
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Past",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: fontColor,
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: conDash,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 1,
                                          color: conDash,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20),
                                              child: Icon(
                                                Icons.calendar_month,
                                                color: iconColor,
                                                size: iconSize,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 5,
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 46,
                                        color: conDash1,
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
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: conHeight,
                            width: conWidth,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: conBorder,
                                width: 1.5,
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Future",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: fontColor,
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: conDash,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 1,
                                          color: conDash,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20),
                                              child: Icon(
                                                Icons.calendar_month,
                                                color: iconColor,
                                                size: iconSize,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 5,
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 46,
                                        color: conDash1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: conHeight,
                            width: conWidth,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: conBorder,
                                width: 1.5,
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "FOB",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: fontColor,
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: conDash,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 1,
                                          color: conDash,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20),
                                              child: Icon(
                                                Icons.calendar_month,
                                                color: iconColor,
                                                size: iconSize,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 5,
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 46,
                                        color: conDash1,
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
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: conHeight,
                            width: conWidth,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: conBorder,
                                width: 1.5,
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Missed",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: fontColor,
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: conDash,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 1,
                                          color: conDash,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20),
                                              child: Icon(
                                                Icons.calendar_month,
                                                color: iconColor,
                                                size: iconSize,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 5,
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 46,
                                        color: conDash1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: conHeight,
                            width: conWidth,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: conBorder,
                                width: 1.5,
                              ),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10,right: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Declined",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: fontColor,
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 20,
                                        color: conDash,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 1,
                                          color: conDash,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20),
                                              child: Icon(
                                                Icons.calendar_month,
                                                color: iconColor,
                                                size: iconSize,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 5,
                                  // ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 46,
                                        color: conDash1,
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


                  ],
                ),
              )),
        ],
      ),
    );
  }
}
