import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe_app/bookmark.dart';
import 'package:food_recipe_app/home_page.dart';
import 'package:food_recipe_app/profile_page.dart';
import 'package:food_recipe_app/receipe_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const ReceipePage(),
    const BookmarkPage(),
    const ProfilePage()
  ];
  void onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: pages.elementAt(pageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                backgroundColor: Colors.yellow,
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.room_service_outlined),
                backgroundColor: Colors.yellow,
                label: 'Recipe'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                backgroundColor: Colors.yellow,
                label: 'Bookmark'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervisor_account_rounded,
                ),
                backgroundColor: Colors.yellow,
                label: 'Profile'),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: pageIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: onItemTapped,
          elevation: 5),
    );
  }
}
