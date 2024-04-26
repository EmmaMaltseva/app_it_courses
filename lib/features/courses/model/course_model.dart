class CourseModel {
  String? title;
  String? logo;
  String? format;
  String? dlitelnost;
  String? intensivnost;
  double? price;
  String? url;

  CourseModel(this.title, this.logo, this.format, this.dlitelnost,
      this.intensivnost, this.price, this.url);
}

List<CourseModel> main_courses_list = [
  CourseModel(
      "«Python-разработчик» с нуля",
      "assets/svg/skypro.svg",
      'онлайн вебинары',
      '6 месяцев',
      '2 часа в день',
      26892,
      'https://sky.pro/courses/programming/python-web-course-video#giftpopup'),
  CourseModel(
      "Разработчик искусственного интеллекта",
      "assets/svg/geekbrains.svg",
      'онлайн вебинары',
      '12 месяцев',
      '15 часов в неделю',
      56268,
      'https://gb.ru/geek_university/developer/programmer/ai-spec'),
  CourseModel(
      "Разработчик игр на Unity",
      "assets/svg/skillfactorysvg.svg",
      'онлайн вебинары',
      '18 месяцев',
      '8 часов в неделю',
      102960,
      'https://skillfactory.ru/game-developer-pro'),
  CourseModel("Java-разработчик", "assets/svg/skillbox.svg", 'онлайн вебинары',
      '4 месяца', '3 часа в неделю', 15680, 'https://skillbox.ru/course/java/'),
  CourseModel(
      "UX/UI-дизайнер с нуля до про",
      "assets/svg/skillfactorysvg.svg",
      'онлайн вебинары',
      '14 месяцев',
      '6-10 часов в неделю',
      80738,
      'https://contented.ru/edu/ux-ui-designer-pro?utm_source=skillfactory'),
  CourseModel(
      "«Веб-разработчик» с нуля",
      "assets/svg/skypro.svg",
      'онлайн вебинары',
      '10 месяцев',
      '4 часа в неделю',
      137900,
      'https://sky.pro/courses/programming/python-web-course-video'),
];
