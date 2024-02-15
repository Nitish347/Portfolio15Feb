import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/View/home_view.dart';

import 'constants.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(0.04.sw),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Portfolio",
                      style: TextStyle(fontSize: 0.03.sh, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: 0.15.sw,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.red,
                          ),
                          Icon(
                            CupertinoIcons.bell_fill,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              TabBar(indicatorColor: Colors.red, tabs: tabsList),
              Expanded(
                child: SizedBox(
                    height: 0.9.sh,
                    child: const TabBarView(children: [
                      HomeView(),
                      Center(
                        child: Text("Saved"),
                      ),
                      Center(
                        child: Text("Shared"),
                      ),
                      Center(
                        child: Text("Achievement"),
                      )
                    ])),
              )
            ],
          ),
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
