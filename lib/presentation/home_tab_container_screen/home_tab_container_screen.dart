import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';
import 'package:nasir_s_doctorplant_app/presentation/home_page/home_page.dart';

import '../account_container_screen/account_container_screen.dart';
import '../account_page/account_page.dart';
import '../app_navigation_screen/app_navigation_screen.dart';

class HomeTabContainerScreen extends StatefulWidget {
  const HomeTabContainerScreen({Key? key}) : super(key: key);

  @override
  _HomeTabContainerScreenState createState() => _HomeTabContainerScreenState();
}

class _HomeTabContainerScreenState extends State<HomeTabContainerScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: CircleAvatar(
            // Replace with your custom ImageView
           // backgroundImage: AssetImage('assets/images/profile_pic.png'), // Use ImageConstant for your imagePath
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.grey),
            onPressed: () {
              // Handle notifications icon press
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.grey),
            onPressed: () {
              // Handle settings icon press
            },
          ),
          SizedBox(width: screenWidth * 0.04),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Text(
              "Bonjour Ahmed",
              style: TextStyle(
                color: Colors.grey[800], // Replace with your app theme color
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Text(
              "Plants Médicinales",
              style: TextStyle(
                color: Colors.black, // Replace with your app theme color
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          _buildTabview(screenWidth),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Replace with actual pages
                Container(color: Colors.red), 
                Container(color: Colors.green),
                Container(color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildTabview(double screenWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
          color: Colors.green[50], // Adjust this color to match the UI
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.green[300], // Adjust this color to match the UI
          ),
          tabs: [
            Tab(text: "Digestives"),
            Tab(text: "Relaxantes"),
            Tab(text: "Antiseptiques"),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.scanner),
        label: 'Scanner',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ],
    currentIndex: 0,
    selectedItemColor: Colors.green[800],
    onTap: (int index) {
      // Handle navigation bar tap
      if (index == 2) {
        // Navigate to the AccountPage when "Settings" is tapped
        Navigator.push(context, MaterialPageRoute(builder: (context) => AppNavigationScreen()));
      }
    },
  );
}

}
