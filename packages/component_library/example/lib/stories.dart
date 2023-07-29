import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

List<Story> getStories() {
  return [
    Story(
        name: 'My Title',
        builder: (context) {
          return const MyTitle(value: 'Hello world');
        }),
    Story(
        name: 'Button',
        builder: (context) {
          return const ElevatedButton(onPressed: null, child: Text('Hihi'));
        })
  ];
}
