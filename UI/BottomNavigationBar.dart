import 'package:course_flutter/UI/HomePage(1,2,3).dart/HomePage1.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/HomePage2.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/Homepage3.dart';
import 'package:flutter/material.dart';

class bottomNavigationBar extends StatefulWidget {
  bottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int selectedindex = 0;
  List<Widget> WidgetPage = [
    MainPage(),
    BookingPage(),
    UserInfoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
                selectedItemColor: Color.fromRGBO(50, 183, 104, 10),
                unselectedItemColor: Color.fromRGBO(75, 85, 99, 75),
                currentIndex: selectedindex,
                onTap: (index) {
                  setState(() {
                    selectedindex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(
                      Icons.home_filled,
                      size: 30.0,
                    ),
                  ),
                  BottomNavigationBarItem(
                      label: '',
                      icon: Icon(
                        Icons.note,
                        size: 30.0,
                      )),
                  BottomNavigationBarItem(
                      label: '',
                      icon: Icon(
                        Icons.supervised_user_circle_outlined,
                        size: 29.0,
                      )),
                ]),
          )),
      body: WidgetPage.elementAt(selectedindex),
    );
  }
}
