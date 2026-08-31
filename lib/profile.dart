import 'package:flutter/material.dart';
import 'package:nexus_driver_appclone/logIn_screen.dart';

import 'colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

void AutModBotmsheet(BuildContext context){
  List<String> tokensList = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"];
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context){
        return Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: [

                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),

                  ),
                  width: double.infinity,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onTap: (){},
                    maxLines: null,
                    minLines: null,
                    expands: true,
                    style: TextStyle(
                      color: btn1_txtColor,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      constraints: BoxConstraints(
                          maxHeight: 200,
                      ),
                      contentPadding: EdgeInsets.zero,
                      fillColor: Colors.grey,
                      hintText: "Search driver......",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: btn1_txtColor,
                        fontWeight: FontWeight.w600,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          color: btn1_txtColor,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    // color: Colors.red,
                    child: ListView.builder(
                      itemCount: tokensList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context) => LoginScreen(),),
                                );

                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Row(
                                  children: [
                                    Text("${tokensList[index]}"),

                                  ],
                                ),
                              ),
                            ),
                          );
                        },),
                  ),
                ),
              ],
            ),
          ),
        );
      }
  );
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
                  Container(
                    height: 68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: btn1_borderColor,
                      )
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onTap: (){},
                      maxLines: null,
                      minLines: null,
                      expands: true,
                      style: TextStyle(
                        color: btn1_txtColor,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        constraints: BoxConstraints(maxHeight: 200),
                        // contentPadding: EdgeInsets.zero,
                        fillColor: btn1Color,
                        hintText: "Authentication Token",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: btn1_txtColor,
                          fontWeight: FontWeight.w600,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Icon(
                            Icons.shield_outlined,
                            color: btn1_txtColor,
                            size: 28,
                          ),
                        ),
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
                        AutModBotmsheet(
                          context,
                        );

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
