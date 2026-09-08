import 'package:flutter/material.dart';
import 'package:nexus_driver_appclone/colors.dart';

class Jobs extends StatelessWidget {
  const Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Container(
        width: double.infinity,
        height: 123,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF003A1D),
              const Color(0xFF002512),
              Color(0xFF00130D),
            ],
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: borderColor,
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: icon_color,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                      "2A CHAPLIN ROAD, LONDON NW2 5PN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.flag_rounded,
                    color: Colors.red,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "ACLAND BURGHLEY SCHOOL, 93 BURGHLEY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  Text(
                    "ROAD, LONDON NWS 1UJ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
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
                      height: 0.5,
                      width: 20,
                      color: icon_color,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                      Icons.calendar_month,
                      size: 16,
                      color: icon_color,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                      "2026-8-28",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,


                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF00130D),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: icon_color,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.monetization_on,
                          color: icon_color,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                            "Fare : 8.72£",
                          style: TextStyle(
                            color: icon_color,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
