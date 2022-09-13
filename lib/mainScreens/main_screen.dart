import 'package:driver_app/tabPages/earnings_page.dart';
import 'package:flutter/material.dart';

import '../tabPages/home_page.dart';
import '../tabPages/profile_page.dart';
import '../tabPages/rating_page.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index)
  {
    setState(() {
      selectedIndex = index;
      tabController!  .index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: TabBarView(
       physics: const NeverScrollableScrollPhysics(),
       controller: tabController,
       children: const [
        Home(),
         Earnings(),
         Rating(),
         Profile(),
       ],
     ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
        ],
      ),
    );
  }
}
