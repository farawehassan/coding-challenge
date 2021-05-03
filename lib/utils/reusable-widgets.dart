import 'package:flutter/material.dart';
import 'size-config.dart';

/// This stateless widget class returns a container to be used in [SecondScreen]
/// for details option
class ScreenOneDetails extends StatelessWidget {

  /// This value holds icon data of the details
  final IconData icon;

  /// This value holds the text of the details
  final String text;

  /// Constructor for my [ScreenOneDetails] class
  const ScreenOneDetails({
    Key key,
    @required this.icon,
    @required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
          color: Color(0xFF1939B4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 15,
            color: Color(0xFFFFFFFF),
          ),
          SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color(0xFFFFFFFF)
            ),
          ),
        ],
      ),
    );
  }

}

/// This stateless widget class returns a container to be used in [FirstScreen]
/// for date
class DateContainer extends StatelessWidget {

  /// This value holds the status of date if it is selected
  final bool value;

  /// This value holds the date in string eg Wed
  final String date;

  /// This value holds the status of day in integer eg 20
  final int day;

  /// Constructor for my [DateContainer] class
  const DateContainer({
    Key key,
    @required this.value,
    @required this.date,
    @required this.day
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 80,
      margin: EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
        color: value ? Color(0xFF553C8D) : Color(0xFFE8E8E8),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: value ? Color(0xFFFFFFFF) : Color(0xFF0C0C0C)
            ),
          ),
          SizedBox(height: 5),
          Text(
            "$day",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: value ? Color(0xFFFFFFFF) : Color(0xFF0C0C0C)
            ),
          ),
        ],
      ),
    );
  }
}
