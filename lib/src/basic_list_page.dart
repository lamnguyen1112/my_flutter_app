import 'package:flutter/material.dart';

class BasicListPage extends StatelessWidget {
  const BasicListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic List'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('title'),
          ),
          ListTile(
            title: Text('title 2'),
          )
        ],
      ),
    );
  }
}
