import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/widgets/drawer.dart';
import 'package:flutter_one/widgets/hero_card.dart';

import '../styles.dart';

class HomePage extends StatefulWidget {

  const HomePage() : super();

  @override
  // ignore: no_logic_in_create_state
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const data = [
    {
      "img": "archerqueen.png"
    },
    {
      "img": "baby_dragon.png"
    },
    {
      "img": "electro_wizard.png"
    },
    {
      "img": "executioner.png"
    },
    {
      "img": "goblin_gang.png"
    },
    {
      "img": "hog_rider.png"
    },
    {
      "img": "mega_knight.png"
    },
    {
      "img": "valkyrie.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.xBlue,
        appBar: AppBar(
          backgroundColor: ThemeColor.xPurple,
          title: const Text("Heroes", style: ThemeText.whiteTextBold,),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(data.length, (index) {
                return Center(
                    child: HeroCard(title: data[index]["img"]!, index: index,)
                );
              })
          )
        )
    );
  }
}