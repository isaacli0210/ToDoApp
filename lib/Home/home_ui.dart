import 'package:flutter/material.dart';
import 'package:to_do_app/global.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeBlueDark,
      appBar: AppBar(
        backgroundColor: themeBlueDark,
        brightness: Brightness.dark,
        elevation: 0,
        title: Text('Personal'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () => {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 6, 20, 6),
            padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            constraints: BoxConstraints.expand(height: 36),
            decoration: BoxDecoration(
              color: themeBlueLight,
              borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  child: Icon(Icons.search, color: Colors.grey[400], size: 24),
                  onTap: ()=>{},
                ),
                Container(
                  constraints: BoxConstraints.expand(width: 280),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: hintText,
                      hintText: 'Search',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            //color: Color.fromARGB(50, 1, 1, 1),
            margin: EdgeInsets.fromLTRB(2, 6, 2, 2),
            padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
            constraints: BoxConstraints.expand(height: 30),
            child: DefaultTabController(
              length: 4,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  Tab(text: 'Project'),
                  Tab(text: 'Tasks'),
                  Tab(text: 'Meeting'),
                  Tab(text: 'Other'),
                ],
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}