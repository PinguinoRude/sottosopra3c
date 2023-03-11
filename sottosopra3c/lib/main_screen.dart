import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sottosopra3c/home_screen.dart';
import 'package:sottosopra3c/settings_screen.dart';
import 'favourite_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = const [
    HomeScreen(),
    SettingsScreen(),
    FavouriteScreen(),
  ];
  void chooseIndex(int index){
    setState(() {
      selectedIndex = index;
    });
  }


  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: chooseIndex,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Preferiti"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Impostazioni"),
          ]
          ),
        body: pages.elementAt(selectedIndex),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(child: Image.asset("lib/assets/logo.png", width: 200,)),
        backgroundColor: Colors.white,
        actions: [
          SizedBox(width: 50,)

        ],
      ),
    );
  }
}