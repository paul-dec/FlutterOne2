import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/styles.dart';

class RankingCard extends StatelessWidget {

  final String name;
  final String nbrOfTrophy;

  const RankingCard({Key? key, required this.name, required this.nbrOfTrophy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30,),
        Text(name, style: ThemeText.whiteText),
        const Spacer(),
        Text(nbrOfTrophy, style: ThemeText.whiteTextBold,),
        const SizedBox(width: 10),
        SizedBox(
          height: 30,
          width: 30,
          child: Image.asset("assets/trophy.png"),
        ),
        const SizedBox(width: 30,)
      ],
    );
  }
}