import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TabController? tabController;
  int selectedIndex = 0
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: TabBarView(
       physics: NeverScrollableScrollPhysics(),
     ),
    );
  }
}
