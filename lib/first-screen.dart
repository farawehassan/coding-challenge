import 'package:flutter/material.dart';
import 'package:sterling_coding_challenge/utils/reusable-widgets.dart';
import 'package:sterling_coding_challenge/utils/size-config.dart';

class FirstScreen extends StatefulWidget {

  static const String id = 'first_screen';

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  /// This variables holds a boolean value to show if the page is on important tab
  bool _important = false;

  /// This variables holds a boolean value to show if the page is on planned tab
  bool _planned = true;

  /// This variables holds a boolean value to show if crodox is selected
  bool _crodox = false;

  /// This variables holds a boolean value to show if the meeting with mark is selected
  bool _mark = true;

  /// This variables holds a map of string and boolean values for days in May
  /// to show in this page
  Map<int, bool> _days = {
    15: false,
    20: true,
    24: false,
    25: false,
    26: false,
    27: false,
    28: false,
    29: false,
  };

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF4F6FA),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30, 80, 20, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hello,',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0C0C0C).withOpacity(0.2),
                          letterSpacing: -0.24
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '\nAbdur Rahman',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0C0C0C),
                                letterSpacing: -0.24
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile.jpg'),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: (SizeConfig.screenWidth / 5.2) - 18,
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 22),
                    decoration: BoxDecoration(
                      color: Color(0xFFE8E8E8),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      if(!mounted)return;
                      setState(() {
                        _important = true;
                        _planned = false;
                      });
                    },
                    child: Container(
                      width: (SizeConfig.screenWidth / 2.4) - 18,
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 22),
                      decoration: BoxDecoration(
                        color: _important ? Color(0xFF553C8D) : Color(0xFFE8E8E8),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Center(
                        child: Text(
                          'Important',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: _important ? Color(0xFFFFFFFF) : Color(0xFF0C0C0C),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      if(!mounted)return;
                      setState(() {
                        _planned = true;
                        _important = false;
                      });
                    },
                    child: Container(
                      width: (SizeConfig.screenWidth / 2.4) - 18,
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 22),
                      decoration: BoxDecoration(
                        color: _planned ? Color(0xFF553C8D) : Color(0xFFE8E8E8),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Center(
                        child: Text(
                          'Plannned',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: _planned ? Color(0xFFFFFFFF) : Color(0xFF0C0C0C),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){

                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Color(0xFF0C0C0C),
                          ),
                        ),
                        Text(
                          "May 2020",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0C0C0C)
                          ),
                        ),
                        IconButton(
                          onPressed: (){

                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Color(0xFF0C0C0C),
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            if(!mounted)return;
                            setState(() {
                              _days[15] = true;
                              _days.forEach((k, v) {
                                if(k != 15){
                                  _days[k] = false;
                                }
                              });
                            });
                          },
                          child: DateContainer(
                            value: _days[15],
                            date: 'Fri',
                            day: 15,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(!mounted)return;
                            setState(() {
                              _days[20] = true;
                              _days.forEach((k, v) {
                                if(k != 20){
                                  _days[k] = false;
                                }
                              });
                            });
                          },
                          child: DateContainer(
                            value: _days[20],
                            date: 'Wed',
                            day: 20,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(!mounted)return;
                            setState(() {
                              _days[24] = true;
                              _days.forEach((k, v) {
                                if(k != 24){
                                  _days[k] = false;
                                }
                              });
                            });
                          },
                          child: DateContainer(
                            value: _days[24],
                            date: 'Sun',
                            day: 24,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(!mounted)return;
                            setState(() {
                              _days[25] = true;
                              _days.forEach((k, v) {
                                if(k != 25){
                                  _days[k] = false;
                                }
                              });
                            });
                          },
                          child: DateContainer(
                            value: _days[25],
                            date: 'Mon',
                            day: 25,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(!mounted)return;
                            setState(() {
                              _days[26] = true;
                              _days.forEach((k, v) {
                                if(k != 26){
                                  _days[k] = false;
                                }
                              });
                            });
                          },
                          child: DateContainer(
                            value: _days[26],
                            date: 'Tue',
                            day: 26,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(!mounted)return;
                            setState(() {
                              _days[27] = true;
                              _days.forEach((k, v) {
                                if(k != 27){
                                  _days[k] = false;
                                }
                              });
                            });
                          },
                          child: DateContainer(
                            value: _days[27],
                            date: 'Wed',
                            day: 27,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(!mounted)return;
                            setState(() {
                              _days[28] = true;
                              _days.forEach((k, v) {
                                if(k != 28){
                                  _days[k] = false;
                                }
                              });
                            });
                          },
                          child: DateContainer(
                            value: _days[28],
                            date: 'Thur',
                            day: 28,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(!mounted)return;
                            setState(() {
                              _days[29] = true;
                              _days.forEach((k, v) {
                                if(k != 29){
                                  _days[k] = false;
                                }
                              });
                            });
                          },
                          child: DateContainer(
                            value: _days[29],
                            date: 'Fri',
                            day: 29,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    if(!mounted)return;
                    setState(() {
                      _crodox = !_crodox;
                    });
                  },
                  child: Container(
                    width: SizeConfig.screenWidth - 50,
                    padding: EdgeInsets.all(22),
                    margin: EdgeInsets.fromLTRB(30, 0, 20, 30),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8E8E8),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Project Review : Crodox",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF0C0C0C),
                                          decoration: _crodox ? TextDecoration.lineThrough : TextDecoration.none
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF553C8D),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.access_alarms_outlined,
                                      color: Color(0xFF0C0C0C).withOpacity(0.5),
                                      size: 12,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      "02:30 PM - 03:45 PM",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF0C0C0C).withOpacity(0.5)
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: _crodox ? Color(0xFF553C8D) : Color(0xFFFFFFFF),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xFF0C0C0C).withOpacity(0.3), width: 1)
                              ),
                              child: _crodox ? Center(
                                child: Icon(
                                    Icons.check,
                                    color: Color(0xFFFFFFFF),
                                    size: 18
                                ),
                              ) : Container(),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          "An illustration design should be handover to smith today for review.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF0C0C0C).withOpacity(0.5)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 20, 16),
                  child: Text(
                    "Completed",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0C0C0C)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    if(!mounted)return;
                    setState(() {
                      _mark = !_mark;
                    });
                  },
                  child: Container(
                    width: SizeConfig.screenWidth - 50,
                    padding: EdgeInsets.all(22),
                    margin: EdgeInsets.fromLTRB(30, 0, 20, 30),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8E8E8),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Meeting with Mark",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF0C0C0C),
                                      decoration: _mark ? TextDecoration.lineThrough : TextDecoration.none
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.access_alarms_outlined,
                                      color: Color(0xFF0C0C0C).withOpacity(0.5),
                                      size: 12,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      "10:30 AM - 11:00 AM",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF0C0C0C).withOpacity(0.5)
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: _mark ? Color(0xFF553C8D) : Color(0xFFFFFFFF),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xFF0C0C0C).withOpacity(0.3), width: 1)
                              ),
                              child: _mark ? Center(
                                child: Icon(
                                    Icons.check,
                                    color: Color(0xFFFFFFFF),
                                    size: 18
                                ),
                              ) : Container(),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          "An illustration design should be handover to smith today for review.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF0C0C0C).withOpacity(0.5)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }

}
