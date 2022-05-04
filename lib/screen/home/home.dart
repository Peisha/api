// ignore_for_file: prefer_const_constructors

import 'package:appointment_system/screen/chat_page/chat_page.dart';
import 'package:appointment_system/screen/doctor_page/doctor_page.dart';
import 'package:appointment_system/screen/home_page/home_page.dart';
import 'package:appointment_system/theme/colors.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = [HomePage(), DoctorPage(), ChatPage(), Container(), Container()];

  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: _pages
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: primary,
            inactiveColor: Colors.black,
            title: Text('Home'),
            icon: Icon(Icons.home)
          ),
          BottomNavyBarItem(
            activeColor: primary,
            inactiveColor: Colors.black,
            title: Text('Doctor'),
            icon: Icon(Icons.medical_services_rounded)
          ),
          BottomNavyBarItem(
            activeColor: primary,
            inactiveColor: Colors.black,
            title: Text('Chat'),
            icon: Icon(CupertinoIcons.chat_bubble_2_fill)
          ),
          BottomNavyBarItem(
            activeColor: primary,
            inactiveColor: Colors.black,
            title: Text('Booking'),
            icon: Icon(Icons.event_note_rounded)
          ),
          BottomNavyBarItem(
            activeColor: primary,
            inactiveColor: Colors.black,
            title: Text('Account'),
            icon: Icon(Icons.manage_accounts_rounded)
          ),
        ],
      ),
    );
  }

}