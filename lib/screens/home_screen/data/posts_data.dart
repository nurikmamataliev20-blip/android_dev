import "package:android_dev/screens/home_screen/models/comment_model.dart";
import "package:android_dev/screens/home_screen/models/post_model.dart";

CommentModel _c(String author, String text) => CommentModel(
  author: author,
  text: text,
  avatarUrl: 'https://i.pravatar.cc/100?u=$author',
);

String _img(String seed) => 'https://picsum.photos/seed/$seed/800/600';

final List<PostModel> postsData = [
  PostModel(imageUrl: _img('post1'), likeCount: 120, description: 'Утро в горах Ала-Арчи', comments: [
    _c('nurik', 'Красота!'),
    _c('beka', 'Хочу туда'),
  ]),
  PostModel(imageUrl: _img('post2'), likeCount: 87, description: 'Домашний плов по семейному рецепту', comments: [
    _c('aida', 'Напиши рецепт'),
    _c('nurba', 'Выглядит очень вкусно'),
  ]),
  PostModel(imageUrl: _img('post3'), likeCount: 203, description: 'Закончил первое приложение на Flutter', comments: [
    _c('tima', 'Поздравляю!'),
    _c('denko', 'Скинь репозиторий'),
  ]),
  PostModel(imageUrl: _img('post4'), likeCount: 310, description: 'Закат на Иссык-Куле', comments: [
    _c('baha', 'Был там летом'),
    _c('sancho', 'Невероятные цвета'),
  ]),
  PostModel(imageUrl: _img('post5'), likeCount: 45, description: 'Утренняя пробежка в парке', comments: [
    _c('ars', 'Мотивация на уровне'),
    _c('kury', 'Завтра с тобой'),
  ]),
  PostModel(imageUrl: _img('post6'), likeCount: 156, description: 'Новый кофе в центре города', comments: [
    _c('beka', 'Какой адрес?'),
    _c('denko', 'Обожаю капучино'),
  ]),
  PostModel(imageUrl: _img('post7'), likeCount: 98, description: 'Мой кот снова захватил диван', comments: [
    _c('aida', 'Какой милый!'),
    _c('tima', 'Он тут главный'),
  ]),
  PostModel(imageUrl: _img('post8'), likeCount: 274, description: 'Вечерний Бишкек с крыши', comments: [
    _c('nurba', 'Огонь вид'),
    _c('kury', 'Где это снято?'),
  ]),
  PostModel(imageUrl: _img('post9'), likeCount: 64, description: 'Книга недели: читаю по вечерам', comments: [
    _c('azat', 'Что за книга?'),
    _c('sancho', 'Поддерживаю, читаю тоже'),
  ]),
  PostModel(imageUrl: _img('post10'), likeCount: 189, description: 'Поход выходного дня', comments: [
    _c('erba', 'Возьмите меня в следующий раз'),
    _c('aiba', 'Погода просто супер'),
  ]),
  PostModel(imageUrl: _img('post11'), likeCount: 132, description: 'Первый снег в этом году', comments: [
    _c('beka', 'Уже зима?'),
    _c('denko', 'Люблю снег'),
  ]),
  PostModel(imageUrl: _img('post12'), likeCount: 221, description: 'Завтрак чемпионов', comments: [
    _c('tima', 'Приятного аппетита'),
    _c('aida', 'Рецепт в студию'),
  ]),
  PostModel(imageUrl: _img('post13'), likeCount: 77, description: 'Рабочее место мечты', comments: [
    _c('tima', 'Чистота и порядок'),
    _c('nurba', 'Какой монитор?'),
  ]),
  PostModel(imageUrl: _img('post14'), likeCount: 340, description: 'Концерт, который я не забуду', comments: [
    _c('sancho', 'Завидую белой завистью'),
    _c('azat', 'Фото огонь'),
  ]),
  PostModel(imageUrl: _img('post15'), likeCount: 53, description: 'Учу английский каждый день', comments: [
    _c('aiba', 'Так держать'),
    _c('erba', 'Какое приложение используешь?'),
  ]),
  PostModel(imageUrl: _img('post16'), likeCount: 168, description: 'Поездка на озеро Сон-Куль', comments: [
    _c('denko', 'Мечтаю там побывать'),
    _c('beka', 'Звёзды там невероятные'),
  ]),
  PostModel(imageUrl: _img('post17'), likeCount: 91, description: 'Новый велосипед, первые километры', comments: [
    _c('tima', 'Крутой байк'),
    _c('ars', 'Береги колени'),
  ]),
  PostModel(imageUrl: _img('post18'), likeCount: 245, description: 'Рассвет над городом', comments: [
    _c('aida', 'Ради такого стоит вставать'),
    _c('nurba', 'Шикарно'),
  ]),
  PostModel(imageUrl: _img('post19'), likeCount: 110, description: 'Выпечка по бабушкиному рецепту', comments: [
    _c('sancho', 'Оставь мне кусочек'),
    _c('azat', 'Пахнет отсюда'),
  ]),
  PostModel(imageUrl: _img('post20'), likeCount: 198, description: 'Последний день отпуска', comments: [
    _c('erba', 'Хороший был отпуск'),
    _c('aiba', 'Возвращайся скорее'),
  ]),
];