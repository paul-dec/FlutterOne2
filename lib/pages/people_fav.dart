import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/widgets/drawer.dart';

import '../styles.dart';

class PeopleFavPage extends StatefulWidget {
  const PeopleFavPage() : super();

  @override
  // ignore: no_logic_in_create_state
  State<PeopleFavPage> createState() => _PeopleFavPageState();
}

class _PeopleFavPageState extends State<PeopleFavPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.xBlue,
        appBar: AppBar(
          backgroundColor: ThemeColor.xPurple,
          title: const Text("Favorites Cards", style: ThemeText.whiteTextBold,),
        ),
        drawer: const MyDrawer(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50,),
                const Text("BabyPop favorites cards", style: ThemeText.whiteTextBold,),
                CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 0.35,
                      height: 200.0,
                      enableInfiniteScroll: false
                  ),
                  items: ["archerqueen.png","baby_dragon.png","electro_wizard.png","executioner.png"].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset('assets/$i', fit: BoxFit.contain,),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 50,),
                const Text("Elec favorites cards", style: ThemeText.whiteTextBold,),
                CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 0.35,
                      height: 200.0,
                      enableInfiniteScroll: false
                  ),
                  items: ["goblin_gang.png","hog_rider.png","mega_knight.png","executioner.png"].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset('assets/$i', fit: BoxFit.contain,),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 50,),
                const Text("LeBlanko favorites cards", style: ThemeText.whiteTextBold,),
                CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 0.35,
                      height: 200.0,
                      enableInfiniteScroll: false
                  ),
                  items: ["valkyrie.png","electro_wizard.png","hog_rider.png","baby_dragon.png"].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset('assets/$i', fit: BoxFit.contain,),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 50,),
              ],
            ),
          ),
        )
    );
  }
}