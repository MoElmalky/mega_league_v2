import 'package:flutter/material.dart';
import 'package:mega_league_v2/models/club_model.dart';

class ClubIcon extends StatelessWidget {
  final Club club;
  final double size;
  const ClubIcon({super.key, required this.club, required this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "clubScreen", arguments: club);
      },
      child: Image(
        image: AssetImage(club.logo),
        width: size,
        height: size,
        fit: BoxFit.fill,
      ),
    );
  }
}
