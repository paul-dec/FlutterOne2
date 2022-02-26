import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class HeroDetails extends StatefulWidget {
  final int index;

  const HeroDetails({Key? key, required this.index}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<HeroDetails> createState() => _HeroDetailsState(index: index);
}

class _HeroDetailsState extends State<HeroDetails> {
  final int index;

  _HeroDetailsState({required this.index});

  static const data = [
    {
      "title": "Archer Queen",
      "desc": "She is fast, deadly and elusive. Watch out for her crossbow bolts and don't blink too much: you might miss her!",
      "img": "archerqueen.png"
    },
    {
      "title": "Baby Dragon",
      "desc": "Makes fireballs that inflict area damage from the air. Baby dragons are born cute, hungry and ready for a good barbecue.",
      "img": "baby_dragon.png"
    },
    {
      "title": "Electro Wizard",
      "desc": "He lands with a big FLASH! stunning nearby enemies and throws lightning bolts with both hands. What a show-off.",
      "img": "electro_wizard.png"
    },
    {
      "title": "Executioner",
      "desc": "He throws his axe like a boomerang, hitting all enemies in the way and back. It's a miracle he didn't lose an arm.",
      "img": "executioner.png"
    },
    {
      "title": "Goblin Gang",
      "desc": "Five goblins appear, three armed with knives, two armed with spears, for a reduced elixir cost. It's like an eco pack for goblins!",
      "img": "goblin_gang.png"
    },
    {
      "title": "Hog Rider",
      "desc": "Fast melee fighter targeting buildings, able to jump over the river. If he hears the cry of \"Cochooon Rider\", he answers the call to the arena.",
      "img": "hog_rider.png"
    },
    {
      "title": "Mega Knight",
      "desc": "It lands with the force of 1,000 whiskers, then leaps from enemy to enemy, dealing massive area damage. Get out of the way!",
      "img": "mega_knight.png"
    },
    {
      "title": "Valkyrie",
      "desc": "Effective melee fighter that deals area damage around her. Facing a horde of enemies, no problem. She can wipe them out in a few short turns.",
      "img": "valkyrie.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.xBlue,
      appBar: AppBar(
        title: const Text("Hero", style: ThemeText.whiteTextBold,),
        backgroundColor: ThemeColor.xPurple,
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Hero(
                    tag: data[index]["img"]!,
                    child: Image.asset(
                      "assets/" + data[index]["img"]!,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(data[index]["title"]!, style: ThemeText.whiteTextBold,),
                const SizedBox(height: 10,),
                Text(data[index]["desc"]!, style: ThemeText.whiteTextBold),
              ],
            ),
          )
      )
    );
  }
}