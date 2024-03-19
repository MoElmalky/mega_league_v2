import 'package:flutter/material.dart';
import 'package:mega_league_v2/screens/club_screen.dart';
import 'package:mega_league_v2/screens/home_screen.dart';
import 'package:mega_league_v2/screens/player_screen.dart';

main(){
  runApp(const MegaLeague());
}

class MegaLeague extends StatelessWidget {
  const MegaLeague ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "homeScreen":(context) => const HomeScreen(),
        "clubScreen":(context) => const ClubScreen(),
        "playerScreen":(context)=> const PlayerScreen(),
      },
      home:  const HomeScreen()
    );
  }
}