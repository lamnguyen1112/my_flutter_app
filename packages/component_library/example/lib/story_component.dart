import 'package:example/stories.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class StoryComponent extends StatelessWidget {
  const StoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: [...getStories()],
      initialStory: 'My Title',
    );
  }
}
