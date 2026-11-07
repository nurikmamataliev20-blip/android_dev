import "package:android_dev/screens/home_screen/models/story_model.dart";

StoryModel _s(String name, String seed) => StoryModel(
  username: name,
  avatarUrl: 'https://i.pravatar.cc/100?u=$name',
  imageUrl: 'https://picsum.photos/seed/$seed/600/900',
);

final List<StoryModel> storiesData = [
  _s('anna', 'story1'),
  _s('bek', 'story2'),
  _s('aida', 'story3'),
  _s('nurlan', 'story4'),
  _s('dina', 'story5'),
  _s('timur', 'story6'),
  _s('mira', 'story7'),
  _s('azat', 'story8'),
  _s('sanjar', 'story9'),
  _s('elena', 'story10'),
];