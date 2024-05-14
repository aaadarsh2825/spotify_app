import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/screens/home.dart';
import 'package:spotify_app/screens/search.dart';
import 'package:spotify_app/screens/yourlibaray.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  final Tabs = [Home(), Search(), YourLibaray()];
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (currentIndex){
          print("Current Index is $currentIndex");
          currentTabIndex = currentIndex;
          setState(() {

          });
        },
        selectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black45,
        items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,),label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white,),label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books, color: Colors.white,),label: 'Your Libaray')
      ],),
    )  ;
  }
}