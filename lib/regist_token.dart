import 'package:flutter/material.dart';
import 'package:nexus_driver_appclone/colors.dart';
import 'package:nexus_driver_appclone/dashBoard.dart';
import 'package:nexus_driver_appclone/mian_navigator.dart';

class RegistToken extends StatelessWidget {
  const RegistToken({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/NTG_backImg.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200,left: 20,right: 20),
            child: Column(
              children: [
                Text(
                    "Please Enter the",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize:  20,
                  ),
                ),
                Text(
                    "Register Token Number",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color:  Color(0xCC001611),
                    borderRadius: BorderRadius.circular(18),

                    border: Border.all(
                      color:  Color(0xFF39FF14),
                      width: 1.5,
                    ),

                    boxShadow: [
                      BoxShadow(
                        color:  Color(0xFF39FF14).withOpacity(0.25),
                        blurRadius: 14,
                        spreadRadius: 1,
                      ),
                    ],
                  ),

                  child: TextField(

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),

                    cursorColor: Color(0xFF39FF14),

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'NTG 00',
                      hintStyle: TextStyle(
                        color: Color(0xFFBDBDBD),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),

                      prefixIcon: Container(
                        margin:  EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF39FF14),
                            width: 1.5,
                          ),

                          boxShadow: [
                            BoxShadow(
                              color:  Color(0xFF39FF14).withOpacity(0.25),
                              blurRadius: 8,
                            ),
                          ],
                        ),

                        child: Icon(
                          Icons.credit_card,
                          color: Color(0xFF39FF14),
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      InkWell(
                        child: Text(
                            "Forgot Token Number?",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            color: Color(0xFF39FF14),
                        ),
                        ),
                        onTap: (){},
                      ),
                      Spacer(),
                      InkWell(
                        child: Text(
                            "ASK ADMIN",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF39FF14),
                          ),
                        ),
                        onTap: (){},
                      ),


                    ],
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => MianNavigator(),));
                  },
                  child: Container(
                    height: 40,
                    width: 280,
                    child: Center(
                        child: Text(
                            "Confirm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF32E312),
                          Color(0xFF10B936),
                          Color(0xFF006B24),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      border: Border.all(
                          color: btn1_borderColor,),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
