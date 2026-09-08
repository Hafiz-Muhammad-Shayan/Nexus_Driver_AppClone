import 'package:flutter/material.dart';
import 'package:nexus_driver_appclone/colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:nexus_driver_appclone/jobs.dart';
import 'package:nexus_driver_appclone/mian_navigator.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "Job 1",
      "Job 2",
      "Job 3",
      "Job 4",
      "Job 5",
      "Job 6",
      "Job 7",
      "Job 8",
    ];
    final valueListenable = ValueNotifier<String?>(null);
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

          SafeArea(
              child: Column(
          children: [
          SizedBox(
              height: 30,
            ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/jobsheader.png",
                  ),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                        builder: (context) => MianNavigator(),));
                    },
                    child: Icon(
                        Icons.arrow_back,
                      color: icon_color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "JOB DETAILS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),

          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF003A1D),
                        const Color(0xFF002512),
                        Color(0xFF00130D),
                      ],
                    ),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color(0xFF7CFF00),
                        width: 0.7,
                      ),
                      top: BorderSide(
                        color: Color(0xFF7CFF00),
                        width: 0.7,
                      ),
                    ),
                  ),
                  child: Icon(
                    Icons.business_center,
                    color: icon_color,
                    size: 22,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Congratulation,",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "You have done your job,",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),


                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Here you have your job details",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF22C345),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),


              ],
            ),
          ),
          SizedBox(
              height: 20,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: const Row(
                      children: [
                      Expanded(
                      child: Text(
                      "Last 7 Days",
                      style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                      ),
                      ),
                      ],
                      ),
                      items: items
                          .map(
                      (String item) => DropdownItem<String>(
                      value: item,
                      height: 40,
                      child: Text(
                      item,
                      style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                      ),
                      ),
                      )
                          .toList(),
                      valueListenable: valueListenable,
                      onChanged: (value) {
                      valueListenable.value = value;
                      },
                      buttonStyleData: ButtonStyleData(
                      height: 50,
                      width: 160,
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                      color: icon_color,
                      ),
                      // color: Color(0xFF00130D),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFF003A1D),
                            const Color(0xFF002512),
                            Color(0xFF00130D),
                          ],
                        ),
                      ),
                      elevation: 2,
                      ),
                      iconStyleData: const IconStyleData(
                      icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                        size: 24,
                        color: Color(0xFF39FF14),
                      ),
                      // iconSize: 15,
                      iconEnabledColor: Colors.white,
                      iconDisabledColor: Colors.grey,
                      ),
                      dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 320,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      // color: Colors.redAccent,
                      gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                      const Color(0xFF003A1D),
                      const Color(0xFF002512),
                      Color(0xFF00130D),
                      ],
                      ),
                      ),
                      offset: const Offset(0, 0),
                      scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: WidgetStateProperty.all<double>(6),
                      thumbVisibility: WidgetStateProperty.all<bool>(true),
                      ),
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.only(left: 14, right: 14),
                      ),
                      ),
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              height: 20,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Jobs(),
                    Jobs(),
                    Jobs(),
                    Jobs(),
                    Jobs(),
                    Jobs(),
                  ],
                ),
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
