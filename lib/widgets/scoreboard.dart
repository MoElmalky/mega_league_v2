import 'package:flutter/material.dart';
import 'package:mega_league_v2/models/club_model.dart';
import 'package:mega_league_v2/widgets/club_icon.dart';

class Scoreboard extends StatelessWidget {
  final Club homeClub;
  final Club awayClub;
  const Scoreboard({super.key, required this.homeClub, required this.awayClub});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.lightBlue, Colors.blue, Colors.deepPurple]),
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(children: [
            Image.asset(
              "assets/pl.png",
              width: 25,
              height: 25,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              "Premier League",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            )
          ]),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                ClubIcon(club: homeClub,size: 50,),
                Text(
                  homeClub.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ]),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(90),
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "9:00",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "PM",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      )
                    ]),
              ),
              Column(children: [
                ClubIcon(club: awayClub,size: 50,),
                Text(
                  awayClub.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ]),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
