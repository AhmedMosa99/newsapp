import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:news_app/ui/components/Carousel.dart';
import 'package:news_app/ui/components/Categories.dart';
import 'package:news_app/ui/components/ItemCategory.dart';
import 'package:news_app/ui/components/SearchtextFeild.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          SearhTextFeild(),
          SizedBox(
            height: 20,
          ),
         Carousel(), 
          Categorylist(),
       ItemCategory(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon:Image(image: AssetImage("images/Chart.png")),
              label: 'ScoutList',
            ),
             BottomNavigationBarItem(
               icon:Image(image: AssetImage("images/Profile.png")),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            _selectedIndex = index;
            setState(() {});
          },
        ),
      ),
    );
  }
}
