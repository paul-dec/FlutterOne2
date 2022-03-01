import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/widgets/drawer.dart';
import 'package:flutter_one/widgets/ranking_card.dart';

import '../styles.dart';

class RankingPage extends StatefulWidget {

  const RankingPage({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {

  static const data = [
    {
      "name": "BabyPop",
      "nbr": 7800
    },
    {
      "name": "Elec",
      "nbr": 6700
    },
    {
      "name": "LeBlanko",
      "nbr": 5567
    },
    {
      "name": "Tao",
      "nbr": 4998
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.xBlue,
        appBar: AppBar(
          title: const Text("Ranking", style: ThemeText.whiteTextBold,),
          backgroundColor: ThemeColor.xPurple,
        ),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(data.length, (index) {
              return Center(
                  child: RankingCard(name: data[index]["name"]!.toString(), nbrOfTrophy: data[index]["nbr"]!.toString())
              );
            }),
          ),
        ),
    );
  }
}