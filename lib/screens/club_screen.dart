import 'package:flutter/material.dart';
import 'package:mega_league_v2/models/club_model.dart';

class ClubScreen extends StatelessWidget {
  const ClubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Club club = ModalRoute.of(context)!.settings.arguments as Club;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.deepPurple, Colors.deepPurple]),
              color: Colors.blue[200],
            ),
          ),
          Opacity(
            opacity: .2,
            child: Image.asset(
              club.logo,
              width: 200,
              height: 400,
              fit: BoxFit.cover,
              alignment: Alignment.topRight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 12),
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                color: Colors.grey[100]),
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 150),
                  height: 8,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.grey[300],
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Pos ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "MartianMono",
                              fontSize: 12)),
                      Text("MP  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "MartianMono",
                              fontSize: 12)),
                      Text("W   ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "MartianMono",
                              fontSize: 12)),
                      Text("D   ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "MartianMono",
                              fontSize: 12)),
                      Text("L   ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "MartianMono",
                              fontSize: 12)),
                      Text("GF  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "MartianMono",
                              fontSize: 12)),
                      Text("GA  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "MartianMono",
                              fontSize: 12)),
                      Text("GD  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "MartianMono",
                              fontSize: 12)),
                      Text("Pts ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "MartianMono",
                              fontSize: 12)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[100],
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${club.stand}".padRight(4),
                        style: const TextStyle(
                            fontFamily: "MartianMono", fontSize: 12),
                      ),
                      Text("${club.matchPlayed}".padRight(4),
                          style: const TextStyle(
                              fontFamily: "MartianMono", fontSize: 12)),
                      Text("${club.matchWon}".padRight(4),
                          style: const TextStyle(
                              fontFamily: "MartianMono", fontSize: 12)),
                      Text("${club.matchDrawn}".padRight(4),
                          style: const TextStyle(
                              fontFamily: "MartianMono", fontSize: 12)),
                      Text("${club.matchLost}".padRight(4),
                          style: const TextStyle(
                              fontFamily: "MartianMono", fontSize: 12)),
                      Text("${club.goalFor}".padRight(4),
                          style: const TextStyle(
                              fontFamily: "MartianMono", fontSize: 12)),
                      Text("${club.goalAgainst}".padRight(4),
                          style: const TextStyle(
                              fontFamily: "MartianMono", fontSize: 12)),
                      Text(club.goalDifference.padRight(4),
                          style: const TextStyle(
                              fontFamily: "MartianMono", fontSize: 12)),
                      Text("${club.points}".padRight(4),
                          style: const TextStyle(
                              fontFamily: "MartianMono", fontSize: 12)),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Center(
                    child: Text(
                  "${club.name} Players",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(56, 0, 60, 1),
                  ),
                )),
                const SizedBox(height: 18),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(bottom: 12),
                        margin:
                            const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "playerScreen", arguments: club.players[index]);
                              },
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                child: Image.asset(
                                  club.players[index].image,
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(club.players[index].number,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                Text(club.players[index].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                Text(club.players[index].position,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: club.players.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/pl.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "${club.premierLeague}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(56, 0, 60, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/eflCup.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "${club.eflCup}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(56, 0, 60, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/faCup.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                                color: Colors.blue,
                              ),
                              Text(
                                "${club.faCup}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(56, 0, 60, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/championsLeague.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                                color: Colors.blue,
                              ),
                              Text(
                                "${club.championsLeague}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(56, 0, 60, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/europaLeague.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "${club.europaLeague}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(56, 0, 60, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
