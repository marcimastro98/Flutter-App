import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text('item ${(index + 1)}'),
          leading: const Icon(Icons.person_add),
          trailing: const Icon(Icons.select_all_rounded),
          onTap: () {
            debugPrint('You select item ${index + 1}');
          },
        );
      }),
    );
  }
}
