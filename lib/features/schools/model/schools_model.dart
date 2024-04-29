class SchoolModel {
  String? title;
  String? countCourse;
  String? countPromo;
  String? countReview;
  String? logo;

  SchoolModel(
    this.title,
    this.countCourse,
    this.countPromo,
    this.countReview,
    this.logo,
  );
}

List<SchoolModel> schools_list = [
  SchoolModel("Skillbox", "120", '3', '30', "assets/svg/skillbox.svg"),
  SchoolModel("Geekbrains", "109", '3', '17', "assets/svg/geekbrains.svg"),
  SchoolModel(
    "Skillfactorysvg",
    "89",
    '5',
    '47',
    "assets/svg/skillfactorysvg.svg",
  ),
  SchoolModel(
    "4brain",
    "19",
    '5',
    '14',
    "assets/svg/4brain.svg",
  ),
  SchoolModel(
    "Skypro",
    "80",
    '7',
    '12',
    "assets/svg/skypro.svg",
  ),
  SchoolModel("Нетология", "120", '3', '30', "assets/svg/netology.svg"),
];
