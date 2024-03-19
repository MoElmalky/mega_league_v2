import 'package:flutter/material.dart';
import 'package:mega_league_v2/data/clubs.dart';
import 'package:mega_league_v2/widgets/scoreboard.dart';
import 'package:mega_league_v2/widgets/standings_table.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const StandingsTable(),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(
                            Icons.dehaze,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "MegaLeague",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: "MartianMono",
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: Colors.grey[100]),
                child: Column(children: [
                  const Text("Today's Matches",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(56, 0, 60, 1),
                  ),
                  ),
                  const SizedBox(height: 20),
                  Scoreboard(
                    homeClub: clubs[0],
                    awayClub: clubs[1],
                  ),
                  Scoreboard(
                    homeClub: clubs[2],
                    awayClub: clubs[3],
                  ),
                  Scoreboard(
                    homeClub: clubs[4],
                    awayClub: clubs[5],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
