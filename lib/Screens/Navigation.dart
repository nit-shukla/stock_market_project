import 'package:flutter/material.dart';


import 'AccountScreen.dart';
import 'Exchange.dart';
import 'Homescreen.dart';
import 'Portfoliyo.dart';
import 'history_page.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MyHomeScreen(),
    MyPortFoliyo(),
    MyExchange(),
    MyHistory(),
    MyAccount(),
    Text(
      'Index 4: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Colors.grey),
            label: 'Portfoliyo',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_exchange,
              color: Colors.grey,
            ),
            label: 'Exchange',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Colors.grey,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 6, 20, 36),
        onTap: _onItemTapped,
      ),
    );
  }
}
