import 'package:flutter/material.dart';
import 'package:satellite/SatelliteInfo.dart';
import 'package:satellite/facts.dart';
import 'package:satellite/gallery.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birds-3 Project',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, // Optional: makes UI modern
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    SatelliteInfoPage(),
    GalleryPage(),
    FactsPage(),
    //Center(child: Text('Home', style: TextStyle(fontSize: 30))),
    //Center(child: Text('Satellite Info', style: TextStyle(fontSize: 30))),
    //Center(child: Text('Gallery', style: TextStyle(fontSize: 30))),
    //Center(child: Text('Facts', style: TextStyle(fontSize: 30))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Birds-3 Project'),
        backgroundColor: Colors.lightBlue,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Important for >3 items
        selectedItemColor: Colors.blue, // Selected button color
        unselectedItemColor: Colors.grey, // Unselected buttons color
        selectedFontSize: 14, // Label font size
        unselectedFontSize: 12,
        iconSize: 28, // Make icons bigger
        backgroundColor: Colors.white,
        elevation: 10, // Shadow effect
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch),
            label: 'Satellite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.browse_gallery_outlined),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hearing_rounded),
            label: 'Facts',
          ),
        ],
      ),
    );
  }
}
