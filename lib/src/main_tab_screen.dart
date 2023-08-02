import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/about_page.dart';
import 'package:my_flutter_app/src/basic_list_page.dart';
import 'package:my_flutter_app/src/home_page.dart';
import 'package:my_flutter_app/src/menu_drawer.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BasicListPage(),
    AboutPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      drawerEnableOpenDragGesture: false,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[100],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Basic List'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'About')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
