import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sterling_coding_challenge/utils/reusable-widgets.dart';
import 'package:sterling_coding_challenge/utils/size-config.dart';

class SecondScreen extends StatelessWidget {

  static const String id = 'second_screen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF4F6FA),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 60, 20, 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(
                                Icons.menu,
                                color: Color(0xFF0C0C0C)
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF0C0C0C)
                              ),
                            ),
                          ),
                        ]
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF1939B4).withOpacity(0.2),
                            blurRadius: 4,
                            offset: Offset.zero
                          ),
                        ]
                      ),
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 3),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/profile.jpg'),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(top: 30),
                            decoration: BoxDecoration(
                              color: Color(0xFF1939B4),
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontFamily: 'Circular Std Book',
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: Text(
                        "Hi Peter!\nLet's take a ride!",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF0C0C0C)
                        ),
                      ),
                    ),
                    ScreenOneDetails(
                        icon: Icons.adjust,
                        text: 'Scan your engine'
                    ),
                    ScreenOneDetails(
                        icon: Icons.wb_sunny_outlined,
                        text: 'Find nearest spot'
                    ),
                    ScreenOneDetails(
                        icon: Icons.adjust,
                        text: 'Auto detection'
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50, bottom: 16),
                          child: Text(
                            "Community",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF0C0C0C)
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(22),
                              width: (SizeConfig.screenWidth / 1.8) - 14,
                              height: 150,
                              margin: EdgeInsets.only(right: 14),
                              decoration: BoxDecoration(
                                  color: Color(0xFFE8E8E8),
                                  borderRadius: BorderRadius.all(Radius.circular(25))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Manage all difficult\nroad conditions",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF0C0C0C)
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "8:23",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xFF0C0C0C)
                                        ),
                                      ),
                                      Text(
                                        "Todd Stan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xFF0C0C0C).withOpacity(0.2)
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(22),
                                height: 150,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: [0.0, 0.8],
                                      colors: [Color(0xFF131360), Color(0xFF02020A)]
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "How to\nsafely",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                    Text(
                                      "9:10",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFFFFFFFF)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }

}