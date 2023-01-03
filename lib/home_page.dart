import 'package:flutter/material.dart';
import 'package:login_page/home.dart';

class HomePage extends StatefulWidget {
  final String email;
  const HomePage({super.key, required this.email});

  @override
  State<StatefulWidget> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<HomePage> {
  int currentPage = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: currentPage == 0
            ? const Color(0xff763EDE)
            : const Color(0xFF3B3051),
        title: Column(
          children: [
            Text('Welcome back, ${widget.email}'),
          ],
        ),
      ),
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: _widgetOptions.elementAt(currentPage)),
          const Align(alignment: Alignment.center, child: Home()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 1,
        backgroundColor: const Color(0xFFFFFFFF),
        child: const Icon(
          Icons.add,
          color: Color(0xff763EDE),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: const Color(0xFF28154A),
        selectedItemColor: const Color(0xFFFFFFFF),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xff763EDE)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Color(0xFF3B3051)),
        ],
        currentIndex: currentPage,
        onTap: _onItemTapped,
      ),
    );
  }
}
