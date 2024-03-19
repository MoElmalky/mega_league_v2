import 'package:mega_league_v2/models/player_model.dart';

class Club {
  final String name;
  String abbrev;
  String logo;
  int stand;
  String stadium;
  int? matchPlayed;
  int? matchWon;
  int? matchLost;
  int? matchDrawn;
  int? goalFor;
  int? goalAgainst;
  String goalDifference;
  int? points;
  int premierLeague;
  int eflCup;
  int faCup;
  int championsLeague;
  int europaLeague;
  List<Player> players;

  Club(
      {required this.name,
      this.abbrev = "",
      this.logo = "assets/default.png",
      this.stadium = "",
      this.stand = 1,
      this.goalAgainst,
      this.goalDifference = "+10",
      this.goalFor,
      this.matchDrawn,
      this.matchLost,
      this.matchPlayed,
      this.matchWon,
      this.points,
      required this.players,
      this.championsLeague = 0,
      this.eflCup = 0,
      this.europaLeague = 0,
      this.faCup = 0,
      this.premierLeague = 0});
}
