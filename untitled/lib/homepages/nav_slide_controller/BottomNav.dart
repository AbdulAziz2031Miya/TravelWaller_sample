import 'package:flutter/material.dart';
import '../pages.dart';
class LastTab2 extends StatefulWidget {
  @override
  State<LastTab2> createState() => _LastTab2State();
}

class _LastTab2State extends State<LastTab2> {
  int _currentIndex = 0 ;
  final List<Widget> _children=[
    SearchPage(),
    FavoritePage(),
    RewardsPages(),
    BookingPages(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index:_currentIndex,
          children:_children,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          elevation: 5.0,
          backgroundColor: Colors.blue,
          iconSize:24,
          onTap:onTabTapped,
          currentIndex:_currentIndex,
          items: [

            BottomNavigationBarItem(

              backgroundColor: Colors.grey.shade300,
              icon: new Icon (Icons.search),
              label:'Search',
            ),
            BottomNavigationBarItem(
              icon:  new Icon (Icons.favorite),
              label:'Favorite',
            ),
            BottomNavigationBarItem(
              icon:  new  Icon (Icons.money),
              label:'Rewards',
            ),
            BottomNavigationBarItem(
              icon:  new Icon (Icons.book_online),
              label:'Booking',
            ),
            BottomNavigationBarItem(
              icon:  new  Icon (Icons.settings),
              label:'Setting',
            ),
          ],
        ));
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
