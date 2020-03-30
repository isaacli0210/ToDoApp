import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/BottomNavBar/bottomNavBar.dart';
import 'package:to_do_app/BottomNavBar/bottomNavBarProvider.dart';

void main() => runApp(ToDoApp());

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<BottomNavBarProvider>(
        child: BottomNavBar(),
        create: (BuildContext context) => BottomNavBarProvider(),
      )
    );
  }
}