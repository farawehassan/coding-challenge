import 'package:flutter/material.dart';
import 'second-screen.dart';
import 'first-screen.dart';

class Index extends StatefulWidget {

  static const String id = 'index_page';

  final currentIndex;

  Index({@required this.currentIndex});

  @override
  _IndexState createState() => _IndexState(this.currentIndex);
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {

  _IndexState(this.currentIndex);

  /// Current index of the bottom navigation
  int currentIndex;

  /// Navigating classes for the bottom navigation
  final List<Widget> _children = [
    FirstScreen(),
    FirstScreen(),
    SecondScreen(),
  ];

  /// This variable holds value where my animation should begin and end
  Animation<double> _animation;

  /// This variable holds my animation controller
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 20, end: 50).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F6FA),
      body: Stack(
        children: [
          _children[currentIndex],
          Align(
            alignment: currentIndex == 2
                ? Alignment.bottomLeft
                : Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(50, 0, 50, 10),
              child: _navigationIndicator(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0, 1),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFDEDEDF),
                width: 0.5,
              )
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            selectedLabelStyle: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
            selectedItemColor: Color(0xFF553C8D),
            unselectedItemColor: Color(0xFFE8E8E8),
            onTap: _onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Icon(
                    Icons.home,
                    size: 28,
                    color: Color(0xFFE8E8E8),
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Icon(
                    Icons.home,
                    size: 28,
                    color: Color(0xFF553C8D),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5C6F2),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 24,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                activeIcon: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFFF5C6F2),
                      borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 24,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Icon(
                    Icons.settings,
                    size: 28,
                    color: Color(0xFFE8E8E8),
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Icon(
                    Icons.settings,
                    size: 28,
                    color: Color(0xFF1939B4),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Navigating to other bottom tabs
  void _onTabTapped(int index) {
    if (!mounted) return;
    setState(() {
      currentIndex = index;
    });
  }

  Widget _navigationIndicator() {
    return Icon(
      Icons.arrow_downward_rounded,
      size: _animation.value,
      color: currentIndex == 2 ? Color(0xFF1939B4) : Color(0xFF553C8D),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

}
