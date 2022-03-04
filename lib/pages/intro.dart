import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/widgets/drawer.dart';

import '../styles.dart';

class Intro extends StatefulWidget {

  const Intro() : super();

  @override
  // ignore: no_logic_in_create_state
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.xBlue,
        appBar: AppBar(
          backgroundColor: ThemeColor.xPurple,
          title: const Text("Home", style: ThemeText.whiteTextBold,),
        ),
        drawer: const MyDrawer(),
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        width: 400,
                        child: Image.asset("assets/king_intro.png"),
                      )
                    ],
                  ),
                  const Text("Discover Clash Royale", style: ThemeText.whiteTextBold),
                  const Text("Win with a powerfull deck", style: ThemeText.littleWhiteText,)
                ],
              ),
            )
        )
    );
  }
}