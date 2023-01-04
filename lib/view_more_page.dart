import 'package:flutter/material.dart';

class ViewMore extends StatefulWidget {
  const ViewMore({super.key});

  @override
  State<ViewMore> createState() => _ViewMoreState();
}

class _ViewMoreState extends State<ViewMore> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff763EDE)),
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        title: const Text(
          'View More Section',
          style: TextStyle(
            color: Color(0xff763EDE),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/image.jpeg'),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black,
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is container');
              },
              child: Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                color: !isSwitch
                    ? const Color(0xff763EDE)
                    : const Color.fromARGB(255, 62, 121, 222),
                child: const Center(
                  child: Text(
                    'This is a image!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: ((bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                })),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Color(0xFFFAFAFA),
                ),
              ),
              onPressed: () {
                debugPrint('Elevated Button Click!');
              },
              child: const Text(
                'Elevated Button Click!',
                style: TextStyle(
                  color: Color(0xff763EDE),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button Click!');
              },
              child: const Text(
                'Text button',
                style: TextStyle(
                  color: Color(0xff763EDE),
                ),
              ),
            ),
            Image.network(
                'https://www.tastingtable.com/img/gallery/coffee-brands-ranked-from-worst-to-best/l-intro-1645231221.jpg'),
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/800px-A_small_cup_of_coffee.JPG'),
          ],
        ),
      ),
    );
  }
}
