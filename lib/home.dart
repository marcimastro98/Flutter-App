import 'package:flutter/material.dart';
import 'package:login_page/view_more_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const ViewMore();
            },
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff763EDE)),
      child: const Text('View More'),
    );
  }
}
