import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/BottomNavBar/bottomNavBarProvider.dart';
import 'package:to_do_app/Home/home_ui.dart';
import 'package:to_do_app/Profile/profile_ui.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var currentPage = [
    Home(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavBarProvider>(context);

    return Scaffold(
      body: currentPage[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('')
          )
        ],
      )
    );
  }
}