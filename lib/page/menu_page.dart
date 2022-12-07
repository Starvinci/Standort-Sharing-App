import 'package:flutter/material.dart';
import 'package:gian_app_v1/page/acitivity/activity_page.dart';
import 'package:gian_app_v1/page/new/new_page.dart';
import 'package:gian_app_v1/page/pic/picture_page.dart';
import 'package:gian_app_v1/page/map/map_page.dart';
import 'package:gian_app_v1/page/profile/profile_page.dart';





class MainScreenPage extends StatefulWidget {
  const MainScreenPage( {super.key});

  @override
  State<MainScreenPage> createState() => MainScreen();
} 

class MainScreen extends State<MainScreenPage> {
  int _selectedIndex = 0;
  


  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    const foto_page(),
    const map_page(),
    const new_page(),
    const AppBarExample(),
    ProfilePage()
  ];

  //navigation handle 
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
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //backgroundColor: Color.fromARGB(255, 174, 199, 220),
            icon: Icon(Icons.video_file),
            label: 'Fotos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_pin),
            label: 'Karte',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_sharp),
            label: 'Neu',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_rounded),
            label: 'Aktivitäten',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}