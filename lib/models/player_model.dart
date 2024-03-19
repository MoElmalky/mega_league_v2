class Player {
  final String name;
  final String number;
  String image;
  String country;
  int goals;
  int assists;
  String position;

  Player({
    required this.name,
    required this.number,
    this.image = "assets/unknown.png",
    this.assists=0,
    this.country="England",
    this.goals=0,
    this.position ="Forward"
  });
}
