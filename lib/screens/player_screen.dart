import 'package:flutter/material.dart';
import 'package:mega_league_v2/models/player_model.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Player player = ModalRoute.of(context)!.settings.arguments as Player;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Stack(
            children: [
              Image.asset(
                player.image,
                width: double.infinity,
                height: 400,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white10, Colors.white70, Colors.white],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ 
                    Text(player.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(player.number,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(player.position,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(player.country,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Goals : ${player.goals}",
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Assists : ${player.assists}",
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
