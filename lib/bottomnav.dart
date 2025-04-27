import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vegetable_app/cartpage.dart';
import 'package:vegetable_app/orderorder.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Delivery(),
    Center(child: Text('Home', style: TextStyle(fontSize: 12))),
    Center(child: Text('Home', style: TextStyle(fontSize: 12))),
    Center(child: Text('Home', style: TextStyle(fontSize: 12))),
    Center(child: Text('Home', style: TextStyle(fontSize: 12))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 1),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap:
                  (index) => setState(() {
                    _currentIndex = index;
                  }),
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white.withOpacity(0.8),
              selectedFontSize: 12,
              unselectedFontSize: 10,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.wallet),
                  activeIcon: Icon(Icons.wallet),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket),
                  activeIcon: Icon(Icons.shopping_basket),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  activeIcon: Icon(Icons.favorite),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  activeIcon: Icon(Icons.person),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
