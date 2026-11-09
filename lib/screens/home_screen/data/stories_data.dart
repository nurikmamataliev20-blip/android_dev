import "package:android_dev/screens/home_screen/models/story_model.dart";

StoryModel _s(String name, String seed) => StoryModel(
  username: name,
  avatarUrl: 'https://i.pravatar.cc/100?u=$name',
  imageUrl: 'https://picsum.photos/seed/$seed/600/900',
);

final List<StoryModel> storiesData = [
  _s('nurik', 'story1'),
  _s('beka', 'story2'),
  _s('aida', 'story3'),
  _s('nurba', 'story4'),
  _s('denko', 'story5'),
  _s('tima', 'story6'),
  _s('baha', 'story7'),
  _s('ars', 'story8'),
  _s('sancho', 'story9'),
  _s('kury', 'story10'),
];