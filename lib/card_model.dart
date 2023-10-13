class CardModel {
  final String name, image, date;

  CardModel({required this.name, required this.image, required this.date});
}

List<CardModel> demoCardData = [
  CardModel(
    name: "Shenzhen GLOBAL DESIGN AWARD 2018",
    image: "steve-johnson.jpeg",
    date: "4.20-30",
  ),
  CardModel(
    name: "Dawan District, Guangdong Hong Kong and Macao",
    image: "rodion-kutsaev.jpeg",
    date: "4.28-31",
  ),
];
