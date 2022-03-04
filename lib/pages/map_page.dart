import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/widgets/drawer.dart';

import '../styles.dart';

class MapPage extends StatefulWidget {
  const MapPage() : super();

  @override
  // ignore: no_logic_in_create_state
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.xBlue,
        appBar: AppBar(
          backgroundColor: ThemeColor.xPurple,
          title: const Text("Map", style: ThemeText.whiteTextBold,),
        ),
        drawer: const MyDrawer(),
        body: Center(
            child: SingleChildScrollView(
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 500.0,
                    enableInfiniteScroll: false
                ),
                items: [1,2,3,4,5,6].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          children: [
                            Image.asset('assets/arena$i.png'),
                            Text('Arena $i', style: ThemeText.whiteTextBold,)
                          ],
                        )
                      );
                    },
                  );
                }).toList(),
              ),
            )
        ),
    );
  }
}