import 'package:flutter/material.dart';
import 'package:mega_league_v2/data/clubs.dart';
import 'package:mega_league_v2/widgets/club_icon.dart';

class StandingsTable extends StatelessWidget {
  const StandingsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 10,bottom: 5),
              child: Row(
                children: [
                  Image.asset("assets/pl.png"),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Premier League",
                    style: TextStyle(
                      color: Color.fromRGBO(56, 0, 60, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          Container(
            height: 38,
            padding: const EdgeInsets.all(4),
            color: Colors.white,
            child: const Row(
              children: [
                SizedBox(width: 34),
                SizedBox(
                    width: 80,
                    child: Text("Club",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(
                    width: 32,
                    child: Text("MP",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(
                    width: 30,
                    child: Text("W",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(
                    width: 30,
                    child: Text("D",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(
                    width: 25,
                    child: Text("L",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(
                    width: 35,
                    child: Text("GD",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(
                    width: 20,
                    child: Text("P",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          ...clubs.map((e) {
            return Container(
              padding: const EdgeInsets.all(4),
              color:
                  (clubs.indexOf(e) % 2 == 0) ? Colors.grey[200] : Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 4),
                  SizedBox(
                      width: 30,
                      child: Text("${e.stand}",
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                  ClubIcon(club: e, size: 30),
                  const SizedBox(width: 10),
                  SizedBox(
                      width: 40,
                      child: Text(e.abbrev,
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                  SizedBox(
                      width: 30,
                      child: Text("${e.matchPlayed}",
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                  SizedBox(
                      width: 30,
                      child: Text("${e.matchWon}",
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                  SizedBox(
                      width: 30,
                      child: Text("${e.matchDrawn}",
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                  SizedBox(
                      width: 25,
                      child: Text("${e.matchLost}",
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                  SizedBox(
                      width: 35,
                      child: Text(e.goalDifference,
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                  SizedBox(
                      width: 20,
                      child: Text("${e.points}",
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                ],
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
