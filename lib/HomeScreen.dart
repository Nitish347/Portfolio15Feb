import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/View/home_view.dart';
import 'package:untitled/home.dart';

import 'constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List tabs = [
    const HomeTab(),
    const Center(
      child: Text("Portfolio"),
    ),
    const Center(
      child: Text("Input"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list_outlined,
              color: Colors.white,
            ),
            label: Text("Filter"),
            backgroundColor: Colors.red,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: Stack(
              children: [
                BottomNavigationBar(
                  unselectedItemColor: Colors.grey,
                  selectedItemColor: Colors.red,
                  showUnselectedLabels: true,
                  showSelectedLabels: true,
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  items: [
                    _buildBottomNavigationBarItem(Icons.home_filled, 'Home', 0),
                    _buildBottomNavigationBarItem(Icons.wallet, 'Portfolio', 1),
                    _buildBottomNavigationBarItem(Icons.input, 'Input', 2),
                    _buildBottomNavigationBarItem(Icons.person, 'Profile', 3),
                  ],
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  left: 1.sw * (_currentIndex / 4),
                  bottom: 0.067.sh,
                  child: Container(
                    height: 5,
                    width: 1.sw / 4,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: tabs[_currentIndex],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData iconData, String label, int index) {
    return BottomNavigationBarItem(
      icon: Icon(iconData, color: _currentIndex == index ? Colors.red : Colors.grey),
      label: label,
    );
  }
}
