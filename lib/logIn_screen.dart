import 'package:flutter/material.dart';
import 'package:nexus_driver_appclone/colors.dart';
import 'package:nexus_driver_appclone/profile.dart';
import 'package:nexus_driver_appclone/regist_token.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
                "assets/images/loginScreen.png",
                fit: BoxFit.fill,
              ),
          ),
          // Dark overlay
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 310,left: 10),
                  child: Row(
                    children: [
                      Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0,left: 10),
                  child: Row(
                    children: [
                      Text(
                        "Please Sign in to Continue",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // ================= USERNAME  01 =================

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xCC001611),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Color(0xFF39FF14),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF39FF14).withOpacity(0.25),
                        blurRadius: 14,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: TextField(
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    cursorColor: Color(0xFF39FF14),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '01',
                      hintStyle: TextStyle(
                        color: Color(0xFFBDBDBD),
                        fontSize: 18,
                      ),
                      prefixIcon: Container(
                        margin:  EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF39FF14),
                            width: 1.5,
                          ),
                        ),
                        child: Icon(
                          Icons.person,
                          color: Color(0xFF39FF14),
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                    height: 18,
                ),

                // ================= PASSWORD =================

                Container(
                  height: 50,
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
                    // controller: passwordController,
                    obscureText: true,
                    style:  TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    cursorColor:  Color(0xFF39FF14),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle:  TextStyle(
                        color: Color(0xFFBDBDBD),
                        fontSize: 18,
                      ),

                      prefixIcon: Container(
                        margin:  EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF39FF14),
                            width: 1.5,
                          ),
                        ),
                        child: Icon(
                          Icons.lock,
                          color: Color(0xFF39FF14),
                          size: 15,
                        ),
                      ),

                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Color(0xFF39FF14),
                        size: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    // ================= Login =================
                    Expanded(
                      child: SizedBox(
                        width: 20,
                        height: 38,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                              builder: (context) => RegistToken(),));
                            // Authentication Token
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF10B936),
                            foregroundColor: Colors.white,
                            // elevation: 12,
                            shadowColor: const Color(0xFF39FF68).withOpacity(0.45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Color(0xFF6DFF82),
                                width: 1.2,
                              ),
                            ),
                          ),

                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),


                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // ================= AUTHENTICATE =================
                    Expanded(
                      child: SizedBox(
                        width: 120,
                        height: 38,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => Profile(),
                                ));
                            // Authenticate
                            // AutModBotmsheet(
                            //   context,
                            // );

                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: const Color(0xFF63D66D),

                            side: const BorderSide(
                              color: Color(0xFF39FF14),
                              width: 1.5,
                            ),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Authenticate',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
                // Expanded(
                //   child: Container(
                //     height: 20,
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //       color: Colors.grey,
                //       borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                //     ),
                //     child: Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 20),
                //       child: Column(
                //         children: [
                //           SizedBox(
                //             height: 10,
                //           ),
                //
                //           Container(
                //              height: 5,
                //              width: 100,
                //              decoration: BoxDecoration(
                //                borderRadius: BorderRadius.circular(10),
                //                color: Colors.deepPurple,
                //              ),
                //
                //            ),
                //
                //           SizedBox(
                //             height: 30,
                //           ),
                //
                //
                //           SizedBox(
                //             height: 20,
                //           ),
                //           Row(
                //             children: [
                //               Expanded(
                //                 child: Container(
                //                   height: 40,
                //                   width: 50,
                //                   decoration: BoxDecoration(
                //                     color: btn1Color,
                //                     borderRadius: BorderRadius.circular(20),
                //
                //                   ),
                //                   child: Row(
                //                     children: [
                //                       SizedBox(
                //                         width: 7,
                //                       ),
                //                       CircleAvatar(
                //                         radius: 15,
                //                         backgroundColor: Colors.white,
                //                         child: Icon(
                //                           Icons.lock,
                //                           size: 20,
                //                           color: btn1Color,
                //                         ),
                //                       ),
                //                       SizedBox(
                //                         width: 10,
                //                       ),
                //                       Text(
                //                         "Password",
                //                         style: TextStyle(
                //                           color: btn1_txtColor,
                //                           fontWeight: FontWeight.w600,
                //                           fontSize: 15,
                //                         ),
                //                       ),
                //                       Spacer(),
                //                       Icon(
                //                           Icons.visibility_off,
                //                           size: 20,
                //                           color: btn1_txtColor,
                //                       ),
                //                       SizedBox(
                //                         width: 10,
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //
                //           SizedBox(
                //             height: 30,
                //           ),
                //
                //
                //
                //
                //
                //
                //
                //
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
