import 'package:flutter/material.dart';
import 'package:meals_app/Screens/Favorites.dart';
import 'package:meals_app/Screens/category_screen.dart';
import 'package:meals_app/Screens/categorylist.dart';

class tabsScreen extends StatefulWidget {
  @override
  State<tabsScreen> createState() => _tabsScreenState();
}

class _tabsScreenState extends State<tabsScreen> {

  List<Map<String,dynamic>>screen = [
    {'pscreen': categoryScreen(), 'title': 'Categories'},
    {'pscreen': FavoriteScreen(), 'title': 'Favorites'}
  ];

  int selectedindex = 0;

  void selectedScreen(int index) {
    setState(() {
      print(index);
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screen[selectedindex]['title'] ),
      ),
      body: screen[selectedindex]['pscreen'] ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: selectedindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
