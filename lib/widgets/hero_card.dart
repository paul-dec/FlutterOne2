import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/pages/hero_details.dart';

class HeroCard extends StatelessWidget {

  final String title;
  final int index;

  const HeroCard({Key? key, required this.title, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HeroDetails(index: index))),
      child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: const EdgeInsets.all(10),
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Hero(
            tag: title,
            child: Image.asset(
              "assets/" + title,
              fit: BoxFit.fill,
            ),
          )
      ),
    );
  }
}